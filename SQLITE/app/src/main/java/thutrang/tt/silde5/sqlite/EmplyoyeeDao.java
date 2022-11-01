package trantien.tt.sqlite.sqlite;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

import trantien.tt.sqlite.model.Employee;

public class EmplyoyeeDao {
    private SQLiteDatabase db;

    public EmplyoyeeDao(Context context) {
        DBHelper helper = new DBHelper(context);
        db = helper.getWritableDatabase();
    }

    @SuppressLint("Range")
    public List<Employee> get(String sql, String... selectArgs) {
        List<Employee> listEmployee = new ArrayList<>();
        Cursor cursor = db.rawQuery(sql, selectArgs);
        if (cursor.moveToFirst()) {
            Employee emp1 = new Employee();
            emp1.setId(cursor.getString(cursor.getColumnIndex("id")));
            emp1.setName(cursor.getString(cursor.getColumnIndex("name")));
            emp1.setSalary(cursor.getFloat(cursor.getColumnIndex("salary")));

            listEmployee.add(emp1);
            while (cursor.moveToNext()) {
                Employee emp = new Employee();
                emp.setId(cursor.getString(cursor.getColumnIndex("id")));
                emp.setName(cursor.getString(cursor.getColumnIndex("name")));
                emp.setSalary(cursor.getFloat(cursor.getColumnIndex("salary")));

                listEmployee.add(emp);

            }
        }
        return listEmployee;
    }

    public List<Employee> getAll() {
        String sql = "SELECT * FROM nhanvien;";
        return get(sql);

    }

    public Employee getById(String id) {
        String sql = "SELECT * FROM nhanvien WHERE id=?";
        List<Employee> list = get(sql, id);
        return list.get(0);
    }

    public long insert(Employee emp) {
        ContentValues values = new ContentValues();
        values.put("id", emp.getId());
        values.put("name", emp.getName());
        values.put("salary", emp.getSalary());

        return db.insert("nhanvien", null, values);

    }

    public long update(Employee emp) {
        ContentValues values = new ContentValues();
        values.put("name", emp.getName());
        values.put("salary", emp.getSalary());

        return db.update("nhanvien", values, "id=?", new String[]{emp.getId()});

    }

    public int delete(String id) {
        return db.delete("nhanvien", "id=?", new String[]{id});
    }
}
