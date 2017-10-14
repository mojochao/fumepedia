defmodule Fumepedia.Cigar do
  @moduledoc """
  The Cigar context.
  """

  import Ecto.Query, warn: false
  alias Fumepedia.Repo

  # Cigar Brands

  alias __MODULE__.Brand

  @doc """
  Returns the list of brands.

  ## Examples

  iex> list_brands()
  [%Brand{}, ...]

  """
  def list_brands do
    Repo.all(Brand)
  end

  @doc """
  Gets a single brand.

  Raises `Ecto.NoResultsError` if the Brand does not exist.

  ## Examples

      iex> get_brand!(123)
      %Brand{}

      iex> get_brand!(456)
      ** (Ecto.NoResultsError)

  """
  def get_brand!(id), do: Repo.get!(Brand, id)

  @doc """
  Creates a brand.

  ## Examples

      iex> create_brand(%{field: value})
      {:ok, %Brand{}}

      iex> create_brand(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_brand(attrs \\ %{}) do
    %Brand{}
    |> Brand.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a brand.

  ## Examples

      iex> update_brand(brand, %{field: new_value})
      {:ok, %Brand{}}

      iex> update_brand(brand, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_brand(%Brand{} = brand, attrs) do
    brand
    |> Brand.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Brand.

  ## Examples

      iex> delete_brand(brand)
      {:ok, %Brand{}}

      iex> delete_brand(brand)
      {:error, %Ecto.Changeset{}}

  """
  def delete_brand(%Brand{} = brand) do
    Repo.delete(brand)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking brand changes.

  ## Examples

      iex> change_brand(brand)
      %Ecto.Changeset{source: %Brand{}}

  """
  def change_brand(%Brand{} = brand) do
    Brand.changeset(brand, %{})
  end

  # Cigar Lines

  alias __MODULE__.Line

  @doc """
  Returns the list of lines.

  ## Examples

  iex> list_lines()
  [%Line{}, ...]

  """
  def list_lines do
    Repo.all(Line)
  end

  @doc """
  Gets a single line.

  Raises `Ecto.NoResultsError` if the Line does not exist.

  ## Examples

      iex> get_line!(123)
      %Line{}

      iex> get_line!(456)
      ** (Ecto.NoResultsError)

  """
  def get_line!(id), do: Repo.get!(Line, id)

  @doc """
  Creates a line.

  ## Examples

      iex> create_line(%{field: value})
      {:ok, %Line{}}

      iex> create_line(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_line(attrs \\ %{}) do
    %Line{}
    |> Line.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a line.

  ## Examples

      iex> update_line(line, %{field: new_value})
      {:ok, %Line{}}

      iex> update_line(line, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_line(%Line{} = line, attrs) do
    line
    |> Line.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Line.

  ## Examples

      iex> delete_line(line)
      {:ok, %Line{}}

      iex> delete_line(line)
      {:error, %Ecto.Changeset{}}

  """
  def delete_line(%Line{} = line) do
    Repo.delete(line)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking line changes.

  ## Examples

      iex> change_line(line)
      %Ecto.Changeset{source: %Line{}}

  """
  def change_line(%Line{} = line) do
    Line.changeset(line, %{})
  end

  # Cigar Vitolas

  alias __MODULE__.Vitola

  @doc """
  Returns the list of vitolas.

  ## Examples

  iex> list_vitolas()
  [%Vitola{}, ...]

  """
  def list_vitolas do
    Repo.all(Vitola)
  end

  @doc """
  Gets a single vitola.

  Raises `Ecto.NoResultsError` if the Vitola does not exist.

  ## Examples

      iex> get_vitola!(123)
      %Vitola{}

      iex> get_vitola!(456)
      ** (Ecto.NoResultsError)

  """
  def get_vitola!(id), do: Repo.get!(Vitola, id)

  @doc """
  Creates a vitola.

  ## Examples

      iex> create_vitola(%{field: value})
      {:ok, %Vitola{}}

      iex> create_vitola(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_vitola(attrs \\ %{}) do
    %Vitola{}
    |> Vitola.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a vitola.

  ## Examples

      iex> update_vitola(vitola, %{field: new_value})
      {:ok, %Vitola{}}

      iex> update_vitola(vitola, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_vitola(%Vitola{} = vitola, attrs) do
    vitola
    |> Vitola.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Vitola.

  ## Examples

      iex> delete_vitola(vitola)
      {:ok, %Vitola{}}

      iex> delete_vitola(vitola)
      {:error, %Ecto.Changeset{}}

  """
  def delete_vitola(%Vitola{} = vitola) do
    Repo.delete(vitola)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking vitola changes.

  ## Examples

      iex> change_vitola(vitola)
      %Ecto.Changeset{source: %Vitola{}}

  """
  def change_vitola(%Vitola{} = vitola) do
    Vitola.changeset(vitola, %{})
  end
end
