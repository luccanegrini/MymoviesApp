//
//  ViewController.swift
//  MymoviesApp
//
//  Created by lucca negrini on 08/03/24.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007 - Specre", descricao: "descricao 1", imagem: UIImage(imageLiteralResourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "descricao 2", imagem: UIImage(imageLiteralResourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "descricao 3", imagem: UIImage(imageLiteralResourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "descricao 4", imagem: UIImage(imageLiteralResourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "descricao 5", imagem: UIImage(imageLiteralResourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "descricao 6", imagem: UIImage(imageLiteralResourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "descricao 7", imagem: UIImage(imageLiteralResourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "descricao 8", imagem: UIImage(imageLiteralResourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "descricao 9", imagem: UIImage(imageLiteralResourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "descricao 10", imagem: UIImage(imageLiteralResourceName: "filme10"))
        filmes.append(filme)
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme = filmes[ indexPath.row ]
        
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath ) as! FilmeCelula
        
        celula.FilmeImageView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        celula.FilmeImageView.layer.cornerRadius = 42
        celula.FilmeImageView.clipsToBounds = true
        
        return celula
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilme"{
            
            if let indexPath = tableView.indexPathForSelectedRow {
                
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewControlerDestino = segue.destination as! DetalhesFilmeViewController
                viewControlerDestino.filme = filmeSelecionado
                
            }
            
        }
        
    }
    
    

}

