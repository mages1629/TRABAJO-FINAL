require "application_system_test_case"

class CategoriaTest < ApplicationSystemTestCase
  setup do
    @categorium = categoria(:one)
  end

  test "visiting the index" do
    visit categoria_url
    assert_selector "h1", text: "Categoria"
  end

  test "should create categorium" do
    visit categoria_url
    click_on "New categorium"

    fill_in "Autor", with: @categorium.autor_id
    fill_in "Descripcion", with: @categorium.descripcion
    check "Estatus" if @categorium.estatus
    fill_in "Fecha creacion", with: @categorium.fecha_creacion
    fill_in "Nombre", with: @categorium.nombre
    fill_in "Slug", with: @categorium.slug
    click_on "Create Categorium"

    assert_text "Categorium was successfully created"
    click_on "Back"
  end

  test "should update Categorium" do
    visit categorium_url(@categorium)
    click_on "Edit this categorium", match: :first

    fill_in "Autor", with: @categorium.autor_id
    fill_in "Descripcion", with: @categorium.descripcion
    check "Estatus" if @categorium.estatus
    fill_in "Fecha creacion", with: @categorium.fecha_creacion
    fill_in "Nombre", with: @categorium.nombre
    fill_in "Slug", with: @categorium.slug
    click_on "Update Categorium"

    assert_text "Categorium was successfully updated"
    click_on "Back"
  end

  test "should destroy Categorium" do
    visit categorium_url(@categorium)
    click_on "Destroy this categorium", match: :first

    assert_text "Categorium was successfully destroyed"
  end
end
