package thutrang.tt.test_listview;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    ListView listView1;
    EditText inputText1;
    Button btnAdd, btnUpdate,btnDelete;
    ArrayList<String> foods = new ArrayList<String>();
    ArrayAdapter myAdapter1;

    Integer indecxVal;
    String item;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        listView1 = (ListView) findViewById(R.id.listView1);
        btnAdd = (Button) findViewById(R.id.button1);
        btnUpdate = (Button) findViewById(R.id.button2);
        btnDelete =(Button) findViewById(R.id.button3) ;
        inputText1 = (EditText) findViewById(R.id.editText);

        //setup listview
        foods.add("PHP");
        foods.add("SOS");
        myAdapter1 = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, foods);
        listView1.setAdapter(myAdapter1);

        //add items
        btnAdd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String stringval = inputText1.getText().toString();
                foods.add(stringval);
                myAdapter1.notifyDataSetChanged();
                inputText1.setText("");

            }
        });
        //select item
        listView1.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                item = adapterView.getItemAtPosition(i).toString() + " has been selected";
                indecxVal = i;
                Toast.makeText(MainActivity.this, item, Toast.LENGTH_SHORT).show();
            }
        });
        //update
        btnUpdate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                item = foods.get(indecxVal).toString() + " has been UPDATE";
                Toast.makeText(MainActivity.this, item, Toast.LENGTH_SHORT).show();
                String stringval =inputText1.getText().toString();
                foods.set(indecxVal,stringval );
                myAdapter1.notifyDataSetChanged();

            }
        });

        // deleter
     btnDelete.setOnClickListener(new View.OnClickListener() {
         @Override
         public void onClick(View view) {
             item = foods.get(indecxVal).toString() + " has been deleted";
             Toast.makeText(MainActivity.this, item, Toast.LENGTH_SHORT).show();
             String stringval =inputText1.getText().toString();
             foods.remove(foods.get(indecxVal).toString());
             myAdapter1.notifyDataSetChanged();
         }
     });
     //show delete

    }
}