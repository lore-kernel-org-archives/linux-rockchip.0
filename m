Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C4EEC2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 17:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNHggnG9JrzGz8N2Bp1mFxF1X6A/9BjIydaWEhWLWBE=; b=VNjFrpKzyLdmRv
	fiKEcZdM+V7Iw3zTi682oa565odPuUhLkCpboFNWjN1kkkW+smdCWTGS6tjym3Dx/z8UjnhqfvUO0
	ttZ79l35dIQCk6uF0VETojNfCArwpWjDxEzVZdV5zyTBZnujtfFQhz2i1hCfAhw8gXXkGeqwvXrUy
	hqp/Xvo7+q8rRLCFbXXNDeBbha4bRScvNZh7K149chuhbdnTpFPa9eUMW0xS+2Zg9Bp23ya06FcvY
	pqfNhbCLEsuMXR915DFVpy8LY82VYkBCoumTU5yHf+IXMcsXsNGibA2unzGAgccU1sSmGUXyHz0er
	CJzchgmoRNl43/im7ijg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r57je-00Dasx-13;
	Mon, 20 Nov 2023 17:06:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r57jT-00Dagv-0d;
	Mon, 20 Nov 2023 17:06:49 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r57jP-0000mH-3V; Mon, 20 Nov 2023 18:06:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, Johan Jonker <jbx6244@gmail.com>
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/4] drm/rockchip: rk3066_hdmi: Remove useless output format
Date: Mon, 20 Nov 2023 18:06:42 +0100
Message-ID: <4308014.ejJDZkT8p0@phil>
In-Reply-To: <bb5cac77-a705-738e-13ae-667ea87f1cb1@gmail.com>
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
 <bb5cac77-a705-738e-13ae-667ea87f1cb1@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_090647_359877_998389C0 
X-CRM114-Status: GOOD (  20.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hi Johan,

Am Donnerstag, 2. November 2023, 14:42:19 CET schrieb Johan Jonker:
> The Rk3066 hdmi output format is hard coded to RGB. Remove
> all useless code related to colorimetry and enc_out_format.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I guess my first question is, is the hardcoding happening just because
of missing functionality in the driver, or does the hardware only
support RGB?


> ---
>  drivers/gpu/drm/rockchip/rk3066_hdmi.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> index 0e7aae341960..f2b1b2faa096 100644
> --- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
> @@ -23,8 +23,6 @@
> 
>  struct hdmi_data_info {
>  	int vic; /* The CEA Video ID (VIC) of the current drm display mode. */
> -	unsigned int enc_out_format;
> -	unsigned int colorimetry;
>  };
> 
>  struct rk3066_hdmi_i2c {
> @@ -200,14 +198,7 @@ static int rk3066_hdmi_config_avi(struct rk3066_hdmi *hdmi,
>  	rc = drm_hdmi_avi_infoframe_from_display_mode(&frame.avi,
>  						      &hdmi->connector, mode);
> 
> -	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV444)
> -		frame.avi.colorspace = HDMI_COLORSPACE_YUV444;
> -	else if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_YUV422)
> -		frame.avi.colorspace = HDMI_COLORSPACE_YUV422;
> -	else
> -		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
> -
> -	frame.avi.colorimetry = hdmi->hdmi_data.colorimetry;
> +	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
>  	frame.avi.scan_mode = HDMI_SCAN_MODE_NONE;
> 
>  	return rk3066_hdmi_upload_frame(hdmi, rc, &frame,
> @@ -329,15 +320,6 @@ static int rk3066_hdmi_setup(struct rk3066_hdmi *hdmi,
>  	struct drm_display_info *display = &hdmi->connector.display_info;
> 
>  	hdmi->hdmi_data.vic = drm_match_cea_mode(mode);
> -	hdmi->hdmi_data.enc_out_format = HDMI_COLORSPACE_RGB;
> -
> -	if (hdmi->hdmi_data.vic == 6 || hdmi->hdmi_data.vic == 7 ||
> -	    hdmi->hdmi_data.vic == 21 || hdmi->hdmi_data.vic == 22 ||
> -	    hdmi->hdmi_data.vic == 2 || hdmi->hdmi_data.vic == 3 ||
> -	    hdmi->hdmi_data.vic == 17 || hdmi->hdmi_data.vic == 18)
> -		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
> -	else
> -		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;

while I can understand the RGB output format, why does the colorimetry
also get removed? This looks like it is dependent on the mode itself
and not the output format?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
