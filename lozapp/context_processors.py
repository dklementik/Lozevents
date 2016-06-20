from .forms import SearchEventForm
def search_form(request):
    return {"search_form" : SearchEventForm()}
