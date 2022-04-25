Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AE24C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 11:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFeGpaZAyaQZQJBakFeDw6xTK7/93XCprTeZNBumlwo=; b=BOWn6h0IMcVp7H
	OBipkX6xNs8GduqsKVcfC2BCE8g1gKP2z8hCKvOimktZxDdXgNR8osiMu8eBzFDQfTCzNos9rpi9j
	kR06XRhNVjVEBDkbRfoTRAbMJm76Icphz8Dk6cXGCrxbcrHXO6H3gOkJlOIQa0volainsfJAlH/WY
	j3Qd3i3lix4QkDZPG0dCRMhwRbW1EQa3ydPIc32z6dLMnBYN1aqfCPESy8CoN6NKZlHw8VgwJzvBF
	N3Ak+SKz70tYYyJrGvkQfl0gKrA5YJLV2G7/mWtWQ6iR9ihh3S5DnT4osEkYQKKH+Mk1hqPkiPnS6
	7Bwfs5Kxif4rRqr/6iTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nixFc-009Mz6-Ae; Mon, 25 Apr 2022 11:51:32 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nixFZ-009Mww-Ow
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 11:51:31 +0000
Received: by mail-ej1-x62b.google.com with SMTP id k23so29120434ejd.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 04:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hP/s+bXJsR2f7ylAqQ3NKh4ebqdk+IEj/0cSmrsMkIM=;
 b=niU2z1sWUGKKpa0aRwhK8UbXnGSPiQFhYWu28uuubRBc7Nqh0mPgptAyPTMtSBnXuy
 uVuwBateTfxHhLtB1DI8ZxP4mXhv7YyBoIoR7XtbwbenBxTTjU8eFS0//d3cPCVH1eMM
 uOfLQIvgY/P6TlKeqTbWvzURPVC8caORHnMIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hP/s+bXJsR2f7ylAqQ3NKh4ebqdk+IEj/0cSmrsMkIM=;
 b=W1f7z0B/NGcMQFcFXK75Dvn10VYvnHQL4TqBIE99jVsaZDe9M+jI99urF4d2dyh4Q6
 tFLe1aj/p8R0vy04SDv1fCjNPitNw189ScUxySmEykjv+Cum0bVKW2rt3gMuegcbLC7C
 ZT/mp4oZGCXtPgygWsRkcDkSASL+qP1abFK5KSMe2EZmkSYfchi6+f+aeGPMKeuWa4hj
 UYklFcHxAmm4fjZqDZne90nLNNnMdiLGy8gb/q2NA1HxGz/S5MwhY3eejUXT2M23pX2S
 x1WlReYNH704eCIJ71UBUzizTjP/hKevLrae9oSBdIr9Oyf84jZWIkUMQAwo1ZMmWzB9
 VUjQ==
X-Gm-Message-State: AOAM530QWNv8GycnmOYPyKMsJQAlFB51/2m/mv3/cWNX+qYCmkiFYKsA
 vnfJDRXxklc3lm6PDiW25LiQAA==
X-Google-Smtp-Source: ABdhPJwv505NJ9oogjERw7fuS0ee7BOlUGutn6aiGV+NLENIbmAZBTo1UZQTEVY3pWnT4atZlpyKXQ==
X-Received: by 2002:a17:906:9c82:b0:6e1:2c94:1616 with SMTP id
 fj2-20020a1709069c8200b006e12c941616mr15934445ejc.64.1650887486225; 
 Mon, 25 Apr 2022 04:51:26 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 b17-20020a170906195100b006e8be812f08sm3621732eje.0.2022.04.25.04.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 04:51:25 -0700 (PDT)
Date: Mon, 25 Apr 2022 13:51:08 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 19/21] media: rkisp1: capture: Bypass the main device
 for handling querycap
Message-ID: <YmaLLNXwz/0uFh6u@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-20-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-20-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_045129_864483_8AA4F27B 
X-CRM114-Status: GOOD (  16.58  )
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

Laurent Pinchart wrote:

> From: Paul Elder <paul.elder@ideasonboard.com>
> 
> When handling querycap, the capture node would access the main rkisp1
> device unnecessarily. Get the information from the most direct source.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index a7cf672457cd..94819e6c23e2 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1248,11 +1248,8 @@ static int rkisp1_g_fmt_vid_cap_mplane(struct file *file, void *fh,
>  static int
>  rkisp1_querycap(struct file *file, void *priv, struct v4l2_capability *cap)
>  {
> -	struct rkisp1_capture *cap_dev = video_drvdata(file);
> -	struct rkisp1_device *rkisp1 = cap_dev->rkisp1;
> -
> -	strscpy(cap->driver, rkisp1->dev->driver->name, sizeof(cap->driver));
> -	strscpy(cap->card, rkisp1->dev->driver->name, sizeof(cap->card));
> +	strscpy(cap->driver, RKISP1_DRIVER_NAME, sizeof(cap->driver));
> +	strscpy(cap->card, RKISP1_DRIVER_NAME, sizeof(cap->card));
>  	strscpy(cap->bus_info, RKISP1_BUS_INFO, sizeof(cap->bus_info));
>  
>  	return 0;
> -- 
> Regards,
> 
> Laurent Pinchart
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
