package trantien.tt.sqlite.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

import trantien.tt.sqlite.R;
import trantien.tt.sqlite.model.Employee;

public class EmployeeAdapter extends BaseAdapter {
    private Context context;
    private List<Employee> listEmployee;

    public EmployeeAdapter(Context context, List<Employee> listEmployee) {
        this.context = context;
        this.listEmployee = listEmployee;
    }

    @Override
    public int getCount() {
        return listEmployee.size();
    }

    @Override
    public Object getItem(int iPosition) {
        return listEmployee.get(iPosition);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view==null){
            view = LayoutInflater.from(context).inflate(R.layout.layout_employee_item,null);
        }
        TextView tvName = view.findViewById(R.id.tvName);
        TextView tvSalary = view.findViewById(R.id.tvSalary);
        Employee emp =listEmployee.get(i);
        tvName.setText(emp.getName());
        tvSalary.setText(""+emp.getSalary());

        return view;
    }
}
