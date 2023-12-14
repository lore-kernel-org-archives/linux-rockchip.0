Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97071C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 11:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBNCEsx680fnA0gewl6Cc9I770rNJo4kF4ObZYrIin0=; b=PtHWfEOeeqNRys
	7exv9EFf4Ehlith/UiomKWBeH6dbSTc4mdXukqIY7DKH5JFkWApiMr261BfPwS92jI6vW9BqHq3RE
	L6fvH7bfvmoYFOZq3Idb+4NjWsS0gXqVM2+u2avaEkNGLlRRnUeM1tyJYsuHnIiyBW/gICghMeCx4
	pSOvVbfaKZD1JSUS3rV4OPUUWEoFlGrnUr5ysWYMoSEKzSPGSabMJN/dxthRLeVEeO4xLf+w1bOVw
	YM7vxlgAy3s8vHORUcMI264tJnXC7yhJZPSztjL6mvlwXjpTsXtztEWCwKIarjlKi3Kza/jK3LDyG
	9g58f58/RphOl93SVyJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjjA-0000yZ-29;
	Thu, 14 Dec 2023 11:18:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDjj6-0000vQ-2l;
	Thu, 14 Dec 2023 11:18:02 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rDjii-0002lZ-0Q; Thu, 14 Dec 2023 12:17:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Maxime Ripard <mripard@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/11] drm/rockchip: inno_hdmi: Correctly setup HDMI quantization
 range
Date: Thu, 14 Dec 2023 12:17:34 +0100
Message-ID: <3053311.k3LOHGUjKi@diego>
In-Reply-To: <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <w7cj24se5gjomfynp5yindnh3s2pea4p3f46u6y7lcci7hri32@62i6hg26pheb>
 <5f4fc919-681f-44ec-bd44-5788e5b718ca@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_031800_892038_FDD4D982 
X-CRM114-Status: GOOD (  39.69  )
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

Am Donnerstag, 14. Dezember 2023, 12:12:08 CET schrieb Alex Bee:
> Hi Maxime
> 
> Am 14.12.23 um 08:56 schrieb Maxime Ripard:
> > Hi Alex,
> >
> > Thanks for working on this!
> >
> > On Wed, Dec 13, 2023 at 08:51:18PM +0100, Alex Bee wrote:
> >> The display controller will always give full range RGB regardless of the
> >> mode set, but HDMI requires certain modes to be transmitted in limited
> >> range RGB. This is especially required for HDMI sinks which do not support
> >> non-standard quantization ranges.
> >>
> >> This enables color space conversion for those modes and sets the
> >> quantization range accordingly in the AVI infoframe.
> >>
> >> Fixes: 412d4ae6b7a5 ("drm/rockchip: hdmi: add Innosilicon HDMI support")
> >> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> >> ---
> >>   drivers/gpu/drm/rockchip/inno_hdmi.c | 40 ++++++++++++++++++++++------
> >>   1 file changed, 32 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
> >> index 345253e033c5..32626a75723c 100644
> >> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> >> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> >> @@ -33,6 +33,7 @@ struct hdmi_data_info {
> >>   	unsigned int enc_in_format;
> >>   	unsigned int enc_out_format;
> >>   	unsigned int colorimetry;
> >> +	bool rgb_limited_range;
> >>   };
> >>   
> >>   struct inno_hdmi_i2c {
> >> @@ -308,6 +309,18 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
> >>   	else
> >>   		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
> >>   
> >> +	if (hdmi->hdmi_data.enc_out_format == HDMI_COLORSPACE_RGB) {
> >> +		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
> >> +						   &hdmi->connector, mode,
> >> +						   hdmi->hdmi_data.rgb_limited_range ?
> >> +						   HDMI_QUANTIZATION_RANGE_LIMITED :
> >> +						   HDMI_QUANTIZATION_RANGE_FULL);
> >> +	} else {
> >> +		frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_DEFAULT;
> >> +		frame.avi.ycc_quantization_range =
> >> +			HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
> >> +	}
> >> +
> >>   	return inno_hdmi_upload_frame(hdmi, rc, &frame, INFOFRAME_AVI, 0, 0, 0);
> >>   }
> >>   
> >> @@ -334,14 +347,22 @@ static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
> >>   	if (data->enc_in_format == data->enc_out_format) {
> >>   		if ((data->enc_in_format == HDMI_COLORSPACE_RGB) ||
> >>   		    (data->enc_in_format >= HDMI_COLORSPACE_YUV444)) {
> >> -			value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> >> -			hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> >> -
> >> -			hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> >> -				  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> >> -				  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> >> -				  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> >> -			return 0;
> >> +			if (data->enc_in_format == HDMI_COLORSPACE_RGB &&
> >> +			    data->enc_out_format == HDMI_COLORSPACE_RGB &&
> >> +			    hdmi->hdmi_data.rgb_limited_range) {
> >> +				csc_mode = CSC_RGB_0_255_TO_RGB_16_235_8BIT;
> >> +				auto_csc = AUTO_CSC_DISABLE;
> >> +				c0_c2_change = C0_C2_CHANGE_DISABLE;
> >> +				csc_enable = v_CSC_ENABLE;
> >> +			} else {
> >> +				value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
> >> +				hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
> >> +				hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
> >> +					  m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
> >> +					  v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
> >> +					  v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
> >> +				return 0;
> >> +			}
> >>   		}
> >>   	}
> >>   
> >> @@ -458,6 +479,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
> >>   	else
> >>   		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
> >>   
> >> +	hdmi->hdmi_data.rgb_limited_range =
> >> +		drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED;
> >> +
> > This patch conflicts heavily with my inno_hdmi patches here (patches 22 to 38):
> > https://lore.kernel.org/dri-devel/20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org/
> I'm aware of that and I mentioned it in the cover letter. Your series is 
> not merged yet and it didn't get much feedback so far. What is the 
> status there? Especially because you are removing things from inno-hdmi 
> driver (which aren't really required to remove there) which will I have 
> to reintroduce.

Sadly I haven't found the time to look closer at Maxime's series so far,
but I got the impression that it separates into multiple cleanup steps
for a number of controllers.

So the sentence below suggests that Maxime wanted you to pick the
appropriate patches from there and incorporate them into your series
(as it looks like you developed a nice working knowledge of the inno-hdmi
driver). So there is no need to first drop and then reintroduce stuff, but
there may be other interesting cleanups there.

> > I would appreciate if you could test and merge them into your series.


Heiko

> > In particular, there's no need to store the range here: enc_out_format
> rgb_limited_range is currently not only used for csc, but also for for 
> infoframe creation. So it makes sense to have this stored  to avoid 
> calling drm_default_rgb_quant_range twice.
> 
> > is always RGB, so you'll always end up calling
> > drm_hdmi_avi_infoframe_quant_range(), and you'll always have the same csc values.
> 
> I don't think that's true. Non-VIC modes like 800x600 or 1024x764 want 
> full range RGB and csc must not be done in those cases.





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
