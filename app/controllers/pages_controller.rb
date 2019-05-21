class PagesController < ApplicationController
  def parse
    # 百度搜索的关键字，可修改
    @keyword = "宝宝" + params[:word].to_s
    sentence_type = ["是什么", "为什么", "怎么办", "症状", "正常", "要注意"]
    # 创建一个agent对象
    agent = Mechanize.new
    # 发送get请求获取页面
    page = agent.get 'http://www.baidu.com/'
    # 根据名字属性定位表单
    search_form = page.form_with :name => 'f'
    # 填表，搜索框的name是wd
    search_form.field_with(:name => "wd").value = @keyword
    # 提交表单
    
    
    search_form.field_with(:name => "wd").value = @keyword + sentence_type[0]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_b1 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!')}
    
    search_form.field_with(:name => "wd").value = @keyword + sentence_type[1]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_b2 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!')}
    
    search_form.field_with(:name => "wd").value = @keyword + sentence_type[2]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_b3 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!')}
    
    search_form.field_with(:name => "wd").value = @keyword + sentence_type[3]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_b4 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!')}
    
    search_form.field_with(:name => "wd").value = @keyword + sentence_type[4]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_b5 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!')}
    
    @list_baby = (@list_b1 + @list_b2 + @list_b3 + @list_b4 + @list_b5).uniq
     
# 妈妈
    @keyword1 = "妈妈" + params[:word].to_s
    sentence_type = ["是什么", "为什么", "怎么办", "症状", "正常", "要注意"]
    # 创建一个agent对象
    agent = Mechanize.new
    # 发送get请求获取页面
    page = agent.get 'http://www.baidu.com/'
    # 根据名字属性定位表单
    search_form = page.form_with :name => 'f'
    # 填表，搜索框的name是wd
    search_form.field_with(:name => "wd").value = @keyword1
    # 提交表单
    
    
    search_form.field_with(:name => "wd").value = @keyword1 + sentence_type[0]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_m1 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!') || item.include?('宝宝')}
    
    search_form.field_with(:name => "wd").value = @keyword1 + sentence_type[1]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_m2 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!') || item.include?('宝宝')}
    
    search_form.field_with(:name => "wd").value = @keyword1 + sentence_type[2]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_m3 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!')|| item.include?('宝宝')}
    
    search_form.field_with(:name => "wd").value = @keyword1 + sentence_type[3]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_m4 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!') || item.include?('宝宝')}
    
    search_form.field_with(:name => "wd").value = @keyword + sentence_type[4]
    search_results = agent.submit search_form
    doc = Nokogiri::HTML(search_results.body)
    @list_m5 = doc.xpath('//h3/a').map do |item|
      if item.text.include? ('_')
      item.text.split('_').first
      elsif item.text.include? ('_' && ' -')
        item.text.split('_').first.split(' -').first
      elsif item.text.include? ('_' && ' -' && '?')
        item.text.split('_').first.split(' -').first.split('?').first
      else
        item.text
      end
    end.reject { |item| item.length < 7 || item.length > 13 || item.include?('【') || item.include?('!') || item.include?('宝宝')}
    
    @list_mom = (@list_m1 + @list_m2 + @list_m3 + @list_m4 + @list_m5).uniq

    @lists = (@list_baby + @list_mom).uniq
    end
end
