require_relative "../lib/prob2"
RSpec.describe TodoList do
    describe "#add" do
        it "adds a todo to the list" do
        list = TodoList.new
        todo = "Clean house"
        list.add(todo)
        expect(list.todos).to include(todo)
        end
    end
    describe "#remove" do
        it "removes a todo from the list" do
            list = TodoList.new
            todo = "Clean house"
            list.add(todo)
            list.remove(todo)
            expect(list.todos).not_to include(todo)
        end
    end
    describe "#todos" do
        it "returns all todos" do
            list = TodoList.new
            todo = "Clean house"
            list.add(todo)
            expect(list.todos).to eq([todo])
        end
    end
end
    