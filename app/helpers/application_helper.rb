module ApplicationHelper
  def default_meta_tags
    {
      site: "テレアポ課金型で継続率No.1!!結果の出るテレアポ代行なら『アポスク』",
      title:"<%= yield(:title) | 株式会社Ri-Plus' %>",
      description: "テレアポ課金型で継続率No.1の実績！課金型なのに高品質リストに架電するためアポ率が高く、非常にご好評頂いております。",
      keywords: "アポ代行,テレアポ 代行",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],
	    canonical: request.original_url  # 優先されるurl

    }
  end

end
