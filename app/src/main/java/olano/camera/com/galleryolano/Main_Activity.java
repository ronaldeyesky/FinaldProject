package olano.camera.com.galleryolano;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.provider.MediaStore;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.ReferenceQueue;

import olano.camera.com.galleryolano.sqlite.Actividades;


public class Main_Activity extends ActionBarActivity {
    private static final int CAMERA_REQUEST = 1888;
    private static final int LOAD_IMAGE = 100;
    private int PICK_IMAGE_REQUEST = 1;
    private ImageButton btnTake;
    private ImageButton btnget;
    private ImageButton btnSave;
    private ImageView imgView;
    private Bitmap bitmap;
    private Actividades actividades;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        actividades = new Actividades(this);
        actividades.open();
        btnTake = (ImageButton) findViewById(R.id.btnTakePhoto);
        btnget = (ImageButton) findViewById(R.id.btnTakePhoto);
        btnSave = (ImageButton) findViewById(R.id.btnTakePhoto);
        imgView = (ImageView) findViewById(R.id.imgViewPhoto);

    }

    public void savePhoto(View v) {
        bitmap = ((BitmapDrawable) imgView.getDrawable()).getBitmap();
        if(bitmap !=null){
            Toast.makeText(getApplicationContext(), "Convirtiendo a Byte...", Toast.LENGTH_LONG).show();
            Toast.makeText(getApplicationContext(), "Terminando...", Toast.LENGTH_LONG).show();
            byte[] data = getBitmapAsByteArray(bitmap);
            actividades.createActividades(data);
            Toast.makeText(getApplicationContext(), ""+data.toString(), Toast.LENGTH_SHORT).show();
        }else {
            Toast.makeText(getApplicationContext(), "Tiene que Tomar o Elegir una Foto", Toast.LENGTH_SHORT).show();

        }
    }
    public static byte[] getBitmapAsByteArray(Bitmap bitmap) {
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, outputStream);
        return outputStream.toByteArray();
    }
    private String convertToString(Bitmap bitmap){
        ByteArrayOutputStream baos=new  ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG,100, baos);
        byte [] b=baos.toByteArray();
        String temp= Base64.encodeToString(b, Base64.DEFAULT);
        return temp;
    }
    public Bitmap convertToBitmap(String encodedString){
        try {
            byte [] encodeByte=Base64.decode(encodedString,Base64.DEFAULT);
            Bitmap bitmap=BitmapFactory.decodeByteArray(encodeByte, 0, encodeByte.length);
            return bitmap;
        } catch(Exception e) {
            e.getMessage();
            return null;
        }
    }

    public void getPhoto(View v) {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction(Intent.ACTION_GET_CONTENT);
        startActivityForResult(Intent.createChooser(intent, "Select Picture"), PICK_IMAGE_REQUEST);

    }

    public void takePhoto(View v) {
        Intent cameraIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        startActivityForResult(cameraIntent, CAMERA_REQUEST);

    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == CAMERA_REQUEST && resultCode == RESULT_OK) {
            Bitmap photo = (Bitmap) data.getExtras().get("data");
            imgView.setImageBitmap(photo);

        }
        if (requestCode == PICK_IMAGE_REQUEST && resultCode == RESULT_OK) {
            Uri uri = data.getData();

            try {
                Bitmap bitmap = MediaStore.Images.Media.getBitmap(getContentResolver(), uri);
                imgView.setImageBitmap(bitmap);
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
