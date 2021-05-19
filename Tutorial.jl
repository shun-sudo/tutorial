### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ a9f7f682-bd54-4226-949b-0ebda0039083
using PlutoUI

# ╔═╡ ef4a4519-0521-4deb-902c-4794f07de6aa
md""" ### Tutorial Julia and PLutoUI """

# ╔═╡ 7f2e9aa7-1849-4306-8869-4caaf4983432
#Multiple Code - Multiplos códigos
begin
	b = "Hello"
	b
end

# ╔═╡ 09f31489-738a-45d1-8a19-4290a29fe1a6
a = "Hello Julia From Pluto"

# ╔═╡ 2d63d58f-9ebd-490f-988e-ea25977a066e
println(a)

# ╔═╡ 5d4e0724-5e5a-493c-be69-1838ef9acad0
#Markdown - 
md""" ### Tutorials on PlutoUI
+ ipyhton widget
+ panel
"""

# ╔═╡ af4bba4e-2516-484f-96dc-a58ea4b42c90
# Features/Methods of Module     - Arquivos/Métodos dos Modúlos
#dir() in python                 - diretório em python
varinfo(PlutoUI)

# ╔═╡ 5b3c7886-a86b-4553-908c-de4eeea58954
x = "Hello Pluto"

# ╔═╡ 46d32aca-6f3e-4169-9ecc-907dc5e2a934
println(x)

# ╔═╡ 9bd303dc-05f1-4ab3-bee2-d2d36e8a0417
md"""### Displaying Result in Pluto Notebook
"""

# Mostrar o resultado no Pluto Notebook

# ╔═╡ 9dd9ffad-71ad-4d8c-b809-b863d7ca906d
#Method 1 : PlutoUI: with_terminal  (com o terminal)
with_terminal() do
	x = "Hello Julia From Terminal"
	println(x)
end

#descreve qual a variável que será apresentada através de:`do`

# ╔═╡ f2aeb88f-1f6c-4826-9d49-e676597da176
#Method 2: PlutoUI
with_terminal(println,x)

#Varíavel que já estava armazenada

# ╔═╡ f237ba1f-127a-49ce-92b9-c94b5313fc7e
#Method 3: PlutoUI:Print()
Print(a)

# ╔═╡ 0a02a7ce-d8b6-49e6-9baf-190e86eb7e4a
a

# ╔═╡ 2136f96b-0183-410c-991c-4a2437ff60d1
Print(println(a))

# ╔═╡ 4009bd29-884d-447e-bbfb-d029a5c483df
println(a)

# ╔═╡ 02da5c95-e9e5-4764-baa3-8b43639eb70d
md"""# PlutoUI Widget

+ Buttons

+ TextInputs

+ Media Files

+ Etc
"""

# ╔═╡ c3c2a7c2-6eb6-40a2-91dd-9be73e43ada6
# Buttons
Button("Submit")

# ╔═╡ 0e0dc168-dc22-4f03-863f-b4df9427c371
@bind submit_it Button("Pay")

# ╔═╡ bad71446-e64f-421f-8ffc-61788b1a0273
begin
	submit_it
	md"I was Clicked"
end

# ╔═╡ 2dfb6d97-3b69-4a58-b2a7-b30bec0ae8d9
#RadioButtons
@bind gender Radio(["Male", "Female", "Others"])

# ╔═╡ 7559f892-af1c-4b48-8a49-76afabc9b38d
gender

# ╔═╡ 07818030-1f4c-4c5e-9baa-0c92041a81b6
#Checkbox()
@bind status CheckBox()

# ╔═╡ 2666de3c-ae0f-4629-9d85-ffa5e716696e
if status 
	md"Hello"
end

# ╔═╡ 62f4a01a-91bb-4042-a106-7fdd72035c48
md"""
### Text Input
"""
#adicionar texto

# ╔═╡ d2d14441-f899-4d0a-8cab-f51cc6cc0e07


# ╔═╡ a484c656-48c4-441b-8c1a-b260490351f7
@bind fname TextField()

# ╔═╡ e3314002-0758-4c27-a8e4-7b7533414218
fname

# ╔═╡ f054bf26-c086-4161-8822-4839e5a14aae
#text Area
@bind message TextField((20,5))

# ╔═╡ 4b6ba0db-9608-4511-b83d-91acb2dba735


# ╔═╡ 4f7b1dcb-cc88-4d9a-8466-c20a507fb7d4
lowercase(message)

# ╔═╡ e2f43d2c-e95e-45ae-abdd-3e31e909a150
#Password Hides Input
@bind pswd PasswordField()

# ╔═╡ 1ac6df8e-98b7-43cd-a218-97fe70fc23f0
pswd

# ╔═╡ 7e83997d-0e96-4d1e-8d46-dc29ff94d571
#Date Input
@bind dob DateField()

# ╔═╡ 67beb78d-f67a-48b1-ad24-f545c928bccd
typeof(dob)

# ╔═╡ 2f76897b-775d-456f-94ea-c627cb7ca272
#Time Input
@bind mytime TimeField()

# ╔═╡ e4dbb986-9b1e-45e2-810a-1d08b6ec89c6
mytime

# ╔═╡ 385438c6-d454-4754-9864-27106c973dac
md"""
### Selection & Multiselect
"""

# ╔═╡ 2b06822f-f3a9-4f91-a3fe-7f782a8e146f
@bind location Select(["Accra","London","Mumbai","Ny","Itararé"])

# ╔═╡ 7e3a4779-7721-4fb9-9db4-bb0086d953a7
c = "I work at $location"

# ╔═╡ a01954c6-aafa-425e-8b75-7990edd5ced3
# Using Dictionary
@bind place Select(["Up Town"=>1,"DownTown"=>2])

# ╔═╡ 7c5616c0-2364-4bff-ae32-63963bb2693e
place

# ╔═╡ 94c305d3-4c8d-45d4-8c5e-451a41d5e512
# MultiSelect
@bind jobs MultiSelect(["Data Scientist","Doctor","Busineesman"])

# ╔═╡ dffc05c2-767b-4c0d-9e34-6a4e311a46b3
jobs

# ╔═╡ 3964641e-2a63-4f95-98b3-83f9304c8679
# Slider
@bind salary Slider(50:100)

# ╔═╡ 54d60ce4-bec2-4e0f-b6e5-238ed9c1125e
salary

# ╔═╡ 3c0af9c6-329a-4491-bf9b-4c58f9006bbe
# Slider : Showing the Value
@bind salaries Slider(50:100, show_value=true)

# ╔═╡ dd28d5fd-cf92-4a0c-b97c-def5f9699085
md"""
### Working with Media
+ MIME
+ Resource
"""

# ╔═╡ 2eb5c08d-f867-43de-af03-f3095247e5e2
# Display Images
Show(MIME"image/png"(),read("PARCERIA_LEBA.png"))

# ╔═╡ 83d0876b-e892-43a5-993b-9ed3e3ccc50e
# Display HTML
Show(MIME"text/html"(),"""<p style="color:red">Hello Tigrada</p>""")

# ╔═╡ 858a89c1-bd85-4a26-85bc-575149396420
md"""
### ColorPicker & FilePicker
"""

# ╔═╡ 6c5c92c2-1043-472a-831c-c17b6174d9dd
@bind mycolor ColorStringPicker()

# ╔═╡ f0fad451-78cc-4851-a543-fcd52e054d92
Show(MIME"text/html"(),"""<p style="color:$mycolor">Hello Tigrada</p>""")


# ╔═╡ 7ecc5923-b671-4675-bb87-997db0ce439e
# FilePicker or Upload
@bind myfile_uploads FilePicker()

# ╔═╡ 6d015495-2a9e-4d31-9606-4659b98b6e13
myfile_uploads

# ╔═╡ 9b8f48a4-41e7-49cd-be6d-aa11acc56186
Show(MIME"image/png"(),myfile_uploads["data"])

# ╔═╡ cd1ca608-05b4-45cc-85fb-a224bb449d27


# ╔═╡ 217aa697-a526-4acb-8d05-d915146b6d1d


# ╔═╡ d66829c3-8504-431c-bd49-07c3baab6aeb


# ╔═╡ Cell order:
# ╟─ef4a4519-0521-4deb-902c-4794f07de6aa
# ╟─7f2e9aa7-1849-4306-8869-4caaf4983432
# ╟─09f31489-738a-45d1-8a19-4290a29fe1a6
# ╟─2d63d58f-9ebd-490f-988e-ea25977a066e
# ╟─5d4e0724-5e5a-493c-be69-1838ef9acad0
# ╟─a9f7f682-bd54-4226-949b-0ebda0039083
# ╟─af4bba4e-2516-484f-96dc-a58ea4b42c90
# ╟─5b3c7886-a86b-4553-908c-de4eeea58954
# ╟─46d32aca-6f3e-4169-9ecc-907dc5e2a934
# ╟─9bd303dc-05f1-4ab3-bee2-d2d36e8a0417
# ╟─9dd9ffad-71ad-4d8c-b809-b863d7ca906d
# ╟─f2aeb88f-1f6c-4826-9d49-e676597da176
# ╟─f237ba1f-127a-49ce-92b9-c94b5313fc7e
# ╟─0a02a7ce-d8b6-49e6-9baf-190e86eb7e4a
# ╟─2136f96b-0183-410c-991c-4a2437ff60d1
# ╠═4009bd29-884d-447e-bbfb-d029a5c483df
# ╟─02da5c95-e9e5-4764-baa3-8b43639eb70d
# ╟─c3c2a7c2-6eb6-40a2-91dd-9be73e43ada6
# ╟─0e0dc168-dc22-4f03-863f-b4df9427c371
# ╟─bad71446-e64f-421f-8ffc-61788b1a0273
# ╟─2dfb6d97-3b69-4a58-b2a7-b30bec0ae8d9
# ╠═7559f892-af1c-4b48-8a49-76afabc9b38d
# ╟─07818030-1f4c-4c5e-9baa-0c92041a81b6
# ╟─2666de3c-ae0f-4629-9d85-ffa5e716696e
# ╟─62f4a01a-91bb-4042-a106-7fdd72035c48
# ╟─d2d14441-f899-4d0a-8cab-f51cc6cc0e07
# ╟─a484c656-48c4-441b-8c1a-b260490351f7
# ╟─e3314002-0758-4c27-a8e4-7b7533414218
# ╟─f054bf26-c086-4161-8822-4839e5a14aae
# ╟─4b6ba0db-9608-4511-b83d-91acb2dba735
# ╟─4f7b1dcb-cc88-4d9a-8466-c20a507fb7d4
# ╟─e2f43d2c-e95e-45ae-abdd-3e31e909a150
# ╟─1ac6df8e-98b7-43cd-a218-97fe70fc23f0
# ╟─7e83997d-0e96-4d1e-8d46-dc29ff94d571
# ╟─67beb78d-f67a-48b1-ad24-f545c928bccd
# ╟─2f76897b-775d-456f-94ea-c627cb7ca272
# ╟─e4dbb986-9b1e-45e2-810a-1d08b6ec89c6
# ╟─385438c6-d454-4754-9864-27106c973dac
# ╟─2b06822f-f3a9-4f91-a3fe-7f782a8e146f
# ╟─7e3a4779-7721-4fb9-9db4-bb0086d953a7
# ╟─a01954c6-aafa-425e-8b75-7990edd5ced3
# ╟─7c5616c0-2364-4bff-ae32-63963bb2693e
# ╟─94c305d3-4c8d-45d4-8c5e-451a41d5e512
# ╟─dffc05c2-767b-4c0d-9e34-6a4e311a46b3
# ╟─3964641e-2a63-4f95-98b3-83f9304c8679
# ╟─54d60ce4-bec2-4e0f-b6e5-238ed9c1125e
# ╟─3c0af9c6-329a-4491-bf9b-4c58f9006bbe
# ╟─dd28d5fd-cf92-4a0c-b97c-def5f9699085
# ╟─2eb5c08d-f867-43de-af03-f3095247e5e2
# ╟─83d0876b-e892-43a5-993b-9ed3e3ccc50e
# ╟─858a89c1-bd85-4a26-85bc-575149396420
# ╟─6c5c92c2-1043-472a-831c-c17b6174d9dd
# ╟─f0fad451-78cc-4851-a543-fcd52e054d92
# ╟─7ecc5923-b671-4675-bb87-997db0ce439e
# ╟─6d015495-2a9e-4d31-9606-4659b98b6e13
# ╟─9b8f48a4-41e7-49cd-be6d-aa11acc56186
# ╠═cd1ca608-05b4-45cc-85fb-a224bb449d27
# ╠═217aa697-a526-4acb-8d05-d915146b6d1d
# ╠═d66829c3-8504-431c-bd49-07c3baab6aeb
