class PublishingApiGoneWorker < PublishingApiWorker
  def call(content_id, locale)
    Whitehall.publishing_api_v2_client.unpublish(
      content_id,
      type: "gone",
      locale: locale,
    )
  end
end
