<div class="form-group">
                      <h2>Select</h2>
                      <select class="form-control">
                          @foreach($languages as $language)
                          <option>{{$language->name}}</option>
                          @endforeach
                      </select>
                  </div>
