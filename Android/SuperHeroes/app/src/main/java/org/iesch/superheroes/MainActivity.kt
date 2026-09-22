package org.iesch.superheroes

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }
        // A partir de aqui introduzo el codigo necesario
        val botonGuardar = findViewById<Button>(R.id.btn_guardar)

        botonGuardar.setOnClickListener {
            // Qué quiero hacer cuando pulso el Boton Guardar
            irADetailActivity()
        }




    }

    fun irADetailActivity() {
        // Creamos el objeto Intent
        val intent = Intent(this, DetailActivity::class.java)
        startActivity(intent)
    }


}