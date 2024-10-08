<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Поиск товаров</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="searchCity">Регион</label>
                <select id="searchCity" class="form-control">
                    <option value="">Регион не выбран</option>
                    <option value="г.Бишкек">г.Бишкек</option>
                    <option value="г.Ош">г.Ош</option>
                    <option value="Чуйская область">Чуйская область</option>
                    <option value="Таласская область">Таласская область</option>
                    <option value="Ошская область">Ошская область</option>
                    <option value="Нарынская область">Нарынская область</option>
                    <option value="Иссык-Кульская область">Иссык-Кульская область</option>
                    <option value="Джалал-Абадская область">Джалал-Абадская область</option>
                    <option value="Баткенская область">Баткенская область</option>
                </select>
            </div>
            <div class="form-group col-md-10">
                <label for="searchWord">Поиск по объявлениям</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} сом</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>