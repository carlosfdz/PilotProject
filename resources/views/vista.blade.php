                  <div class="form-group">
                      <h2>Select</h2>
                      <select class="form-control">
                          @foreach($categories as $category)
                          <option>{{$category->name}}</option>
                          @endforeach
                      </select>
                  </div>
