package olano.camera.com.galleryolano.sqlite;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;



/**
 *
 */
public class Helper extends SQLiteOpenHelper {

    private static final int DATABASE_VERSION =  1;
    private static final String DATABASE_NAME = "GALLERY.sqlite";

    public Helper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {

        db.execSQL(Actividades.CREATE_TABLE_ACTIVIDADES);

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL(Actividades.DELETE_TABLE_ACTIVIDADES);
        onCreate(db);
    }
}
