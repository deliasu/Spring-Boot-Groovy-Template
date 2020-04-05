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
           form(action: '/update', method: 'post'){
               div(class: 'row'){
                   div(class: 'col'){
                       input(type: 'text', class: 'form-control', value: "$product.title", name: 'title')
                   }
                   div(class: 'col'){
                       input(type: 'text', class: 'form-control', value: "$product.description", name: 'description')
                   }
                   input(type: 'hidden',  value: "$product.id", name: 'id')
                   div(class: 'col'){
                       input(type: 'submit', class: 'btn btn-primary', value: 'Update')

                   }
               }
           }
       }
    }
}