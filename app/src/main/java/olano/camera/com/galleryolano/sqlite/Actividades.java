package olano.camera.com.galleryolano.sqlite;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;


/**
 *
 */
public class Actividades {
    //

    public static final String A_id="_id";
    public static final String A_IMAGEN="imagen";

    public static final String TABLA_ACTIVIDADES = "ACTIVIDADES";

    private Helper helper;
    private SQLiteDatabase myDb;
    private final Context mCtx;

    public static final String CREATE_TABLE_ACTIVIDADES =
            "create table if not exists "+TABLA_ACTIVIDADES+" ("
                    +A_id+" integer primary key autoincrement,"
                    +A_IMAGEN+" text );";

    public static final String DELETE_TABLE_ACTIVIDADES = "DROP TABLE IF EXISTS " + TABLA_ACTIVIDADES;

    public Actividades(Context ctx) {
        this.mCtx = ctx;
    }

    public Actividades open() throws SQLException {
        helper = new Helper(mCtx);
        myDb = helper.getWritableDatabase();
        return this;
    }
    public void close() {
        if (helper != null) {
            helper.close();
        }
    }

    public long createActividades(byte[] imagen) {

        ContentValues initialValues = new ContentValues();
        initialValues.put(A_IMAGEN,imagen);

        return myDb.insert(TABLA_ACTIVIDADES, null, initialValues);
    }

    public Cursor getActividades() {
        Cursor cr = myDb.rawQuery("select * from "+TABLA_ACTIVIDADES+";", null);
        return cr;
    }

}
