Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5467C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 19:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XwiLhT4SEkBmpeXIscrPftHMPStQQfF9gPdM7EhT0ek=; b=iUHqi+5lu3iXPC
	LMCMe/tIxFWf0+UzpRQ1UDaOcM5NGYHMfz4EHnNfQI4iN6e2hswYjww5fdBzg9bKP+Sxe66mHy6uL
	JFjuExrJgXDLvZZ1QuIfPcVEzRulpwcxfi7QovrLLnRaLoCUGTsYFGglmC3db7g/NXff01Wdt1fwT
	FtN5m71PPjRaJGY0qQiUxhpcA7/MU+LcvRSpa3bJd3PHTIEhOO7tCRsGZbVTf/Ypseeb4hDnisaZf
	tOxa89tEDWVhkdvVQoA3JgqDRanpgUXoU0zV/zR/TI/GdSGMVbPWs91yGh43nSjuctaVk8jA0iqaU
	W3L3svJSbNB2k+XCpAuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPUSL-003xw3-O6; Wed, 02 Mar 2022 19:16:13 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPUSI-003xus-9P
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 19:16:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 54DF03200564;
 Wed,  2 Mar 2022 14:16:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 02 Mar 2022 14:16:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm2; bh=7JH0ctkqxqSaagxX5bMNGlv2Xkd3uaCNCqeXmG
 zg93g=; b=fNVomhADktS4IfVYxMgpknvXfjU9sIOiAXTujq13pVssEl0MhMqe9I
 24PKiGmA30USgvknCQP37T+50ilUvJisJ+gOpzhJXxnHN5x24GNA4G16FxGpJgsq
 RcVZzk41h2VD3+49iWt6/n4CzSkHan514kP9lyXpAcPmPzCYG7dr8MKYThT55uS9
 xRL9mu4HNLOOsRXHWo2VBAA5ECc48xZUq3Ng7AgT09kT3ZRcTmraAHC+0Ee5oYie
 9t7VPWdqf1qrt0Hl1LUhR8fzjbNPs2NqU/OJV+x9koHefByIGfcksrNb+Y4lUwQR
 Y6aJiQfaPjjfXwJJ+ZAbimWzlaKXCJXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7JH0ctkqxqSaagxX5
 bMNGlv2Xkd3uaCNCqeXmGzg93g=; b=S9vjpAGuSpJzkgq/R/B4xvIVm5uKJswXL
 QUCHdvyAUcZ0niLSK7z5Yhv3c4B2lGXhOkGOWMDWFxghYRUZBEiaGaKSXqRoFvos
 0ufmPhbc9HJe+YQQHQfrq0Xop51XussWsiWfJKY2i6qqk7q5MTTFdiTi2WLzTaCu
 fGeBV5nrYZWeXptL9IdBF4wRLeSyz8lJMiDyE8cEVz0cHd+zqQehl8zFpSwKJa/G
 WkzZITxlySq+aXNMrv90FzNQAvsnLk1wVnFW5A803PJLleryVhxzNxKgYah4b5+3
 3IOLiIjHTw1NIAmP0BMjX8QLhb6B71ojN+/bnRt30Me86xCKLWSmw==
X-ME-Sender: <xms:eMIfYtVVz3QfWFt2zbh-N5MgmLjognrnxOuvnujjhX6QfUFiRnI3VA>
 <xme:eMIfYtkFtyH7tMERlsWNmbrypMPg4qFWIqK2d9nFOiv69egC_Db3pjOM1pJCFRbmf
 LTfuPEZp8N3NgP78rs>
X-ME-Received: <xmr:eMIfYpbLmlP4jWNH7ONDUztlhsJOOXuvOTIQG3euttM0IwtceTmawXL-ilRehAgQZoLZkbrAsSdl4KB-jGF7Hntz>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddruddtgedguddujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
 rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
 ggtffrrghtthgvrhhnpeffledvudejgfeitedvleevteduueekkedtjedvgedvgfduleet
 ffeujedvveekieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
 hrohhmpegurghfnhgrsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:eMIfYgXf_LKJQNeagbc41-v-E4RbR-fI1t-7yzvmeb0kcb5Qzco-PA>
 <xmx:eMIfYnk36ZCWYI1ZAQgTQCzE0_nozyNV0JMci0MdGyRVBem6WQo38Q>
 <xmx:eMIfYtfwlc201DIuqiuDFztjG0AQ44uQdDHf6BAhKlDQDxFl7MpKag>
 <xmx:eMIfYgBH3faQm65RAtdE9eodIIhfAsnA5vVSApS-zdKGoruXe3ntoQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Mar 2022 14:16:06 -0500 (EST)
Date: Wed, 2 Mar 2022 21:16:01 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 07/16] media: rkisp1: Simplify rkisp1_entities_register()
 error path
Message-ID: <20220302191601.gqnwk2wr3ffuqcor@guri>
References: <20220227160116.18556-1-laurent.pinchart@ideasonboard.com>
 <20220227160116.18556-8-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220227160116.18556-8-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_111610_380992_191A7B22 
X-CRM114-Status: GOOD (  16.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 27.02.2022 18:01, Laurent Pinchart wrote:
> Now that all the unregistration functions are safe to call on
> non-registered entities, the error path in rkisp1_entities_register()
> can be simplified. Factor out the unregistration to a separate function
> to share code with rkisp1_remove().
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 40 +++++++++----------
>  1 file changed, 19 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 3f5cfa7eb937..f8b2573aa9da 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -346,48 +346,50 @@ static const struct dev_pm_ops rkisp1_pm_ops = {
>   * Core
>   */
>  
> +static void rkisp1_entities_unregister(struct rkisp1_device *rkisp1)
> +{
> +	rkisp1_params_unregister(rkisp1);
> +	rkisp1_stats_unregister(rkisp1);
> +	rkisp1_capture_devs_unregister(rkisp1);
> +	rkisp1_resizer_devs_unregister(rkisp1);
> +	rkisp1_isp_unregister(rkisp1);
> +}
> +
>  static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
>  {
>  	int ret;
>  
>  	ret = rkisp1_isp_register(rkisp1);
>  	if (ret)
> -		return ret;
> +		goto error;
>  
>  	ret = rkisp1_resizer_devs_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_isp_subdev;
> +		goto error;
>  
>  	ret = rkisp1_capture_devs_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_resizer_devs;
> +		goto error;
>  
>  	ret = rkisp1_stats_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_capture_devs;
> +		goto error;
>  
>  	ret = rkisp1_params_register(rkisp1);
>  	if (ret)
> -		goto err_unreg_stats;
> +		goto error;
>  
>  	ret = rkisp1_subdev_notifier(rkisp1);
>  	if (ret) {
>  		dev_err(rkisp1->dev,
>  			"Failed to register subdev notifier(%d)\n", ret);
> -		goto err_unreg_params;
> +		goto error;
>  	}
>  
>  	return 0;
> -err_unreg_params:
> -	rkisp1_params_unregister(rkisp1);
> -err_unreg_stats:
> -	rkisp1_stats_unregister(rkisp1);
> -err_unreg_capture_devs:
> -	rkisp1_capture_devs_unregister(rkisp1);
> -err_unreg_resizer_devs:
> -	rkisp1_resizer_devs_unregister(rkisp1);
> -err_unreg_isp_subdev:
> -	rkisp1_isp_unregister(rkisp1);
> +
> +error:
> +	rkisp1_entities_unregister(rkisp1);
>  	return ret;
>  }
>  
> @@ -583,11 +585,7 @@ static int rkisp1_remove(struct platform_device *pdev)
>  	v4l2_async_nf_unregister(&rkisp1->notifier);
>  	v4l2_async_nf_cleanup(&rkisp1->notifier);
>  
> -	rkisp1_params_unregister(rkisp1);
> -	rkisp1_stats_unregister(rkisp1);
> -	rkisp1_capture_devs_unregister(rkisp1);
> -	rkisp1_resizer_devs_unregister(rkisp1);
> -	rkisp1_isp_unregister(rkisp1);
> +	rkisp1_entities_unregister(rkisp1);
>  
>  	media_device_unregister(&rkisp1->media_dev);
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
