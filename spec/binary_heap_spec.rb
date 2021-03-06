require 'spec_helper'
require_relative "../binary_heap"
require 'pry'

describe "BinaryHeap" do
  let(:container) do 
    [5, 6, 7, 8, 10, 11, 1, 2, 4, 3]
  end

  describe "MinHeap" do
    it "insert new largest element " do    
      min_h = MinHeap.new container
      min_h.insert 100
      expect(min_h.container).to include(100)
      expect(min_h.container.last).to equal 100
    end
  
    it "insert new smallest element" do
      min_h = MinHeap.new container
      min_h.insert 0
      expect(min_h.container).to include(0)
      expect(min_h.container.first).to equal 0
    end
  
    it "delete root element" do
      min_h = MinHeap.new container
      min_h.deletion
      expect(min_h.container.first).to equal 2
      expect(min_h.container).not_to include 1
    end
  
    it "get root element" do
      min_h = MinHeap.new container
      expect(min_h.get_root).to equal 1
    end
  end

  describe "Max Heap" do
    it "insert new smallest element " do    
      max_h = MaxHeap.new container
      max_h.insert 0
      expect(max_h.container).to include(0)
      expect(max_h.container.last).to equal 0
    end

    it "insert new largeest element" do
      max_h = MaxHeap.new container
      max_h.insert 100
      expect(max_h.container).to include(100)
      expect(max_h.container.first).to equal 100
    end

    it "delete root element" do
      max_h = MaxHeap.new container
      max_h.deletion
      expect(max_h.container.first).to equal 10
      expect(max_h.container).not_to include 11
    end

    it "get root element" do
      max_h = MaxHeap.new container
      expect(max_h.get_root).to equal 11
    end
  end
end