yieldUnescaped '<!DOCTYPE html>'
html(lang:'en') {
    head {
        meta('http-equiv':'"Content-Type" content="text/html; charset=utf-8"')
        title('Spring Boot Groovy Template')
        link(rel: "stylesheet", href: "/webjars/bootstrap/4.4.1/css/bootstrap.min.css")
    }
    body {
       div(class: 'alert alert-primary'){
          strong('Spring Boot Groovy template engine - csdcodes.net')
       }
       div(class: 'container'){
           form(action: '/insert', method: 'post'){
               div(class: 'row'){
                   div(class: 'col'){
                       input(type: 'text', class: 'form-control', placeholder: 'Product title', name: 'title')
                   }
                   div(class: 'col'){
                       input(type: 'text', class: 'form-control', placeholder: 'Description', name: 'description')
                   }
                   div(class: 'col'){
                       input(type: 'submit', class: 'btn btn-primary', value: 'Add')

                   }
               }
           }
           table(class: 'table', style: 'margin-top: 20px;'){
               thead(){
                   tr(){
                      th('#')
                      th('Title')
                      th('Description')
                      th('')
                   }
               }
               tbody(){
                   products.each { product ->
                   tr(){
                      td("$product.id")
                      td("$product.title")
                      td("$product.description")
                      td(){
                         a(href: "/update/$product.id", class: "btn btn-info btn-sm", style: 'margin-right: 5px;', "update")
                         a(href: "/delete/$product.id", class: "btn btn-danger btn-sm", "delete")
                      }
                   }
               }
           }
       }
    }
  }
}