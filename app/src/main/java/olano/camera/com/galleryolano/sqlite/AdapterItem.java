package olano.camera.com.galleryolano.sqlite;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;


import java.util.ArrayList;

import olano.camera.com.galleryolano.R;

/**
 * Created by Kelvin Thony on 20/03/2015.
 */
public class AdapterItem extends ArrayAdapter {
    private Context context;
    private ArrayList datos;

    public AdapterItem(Context context, ArrayList datos) {
        super(context, R.layout.item, datos);
        // Guardamos los parámetros en variables de clase.
        this.context = context;
        this.datos = datos;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        // En primer lugar "inflamos" una nueva vista, que será la que se
        // mostrará en la celda del ListView. Para ello primero creamos el
        // inflater, y después inflamos la vista.

        LayoutInflater inflater = LayoutInflater.from(context);

        View item = inflater.inflate(R.layout.item, null);

        ImageView imagen = (ImageView) item.findViewById(R.id.imgItem);


            return item;


        // Devolvemos la vista para que se muestre en el ListView.

    }
}
