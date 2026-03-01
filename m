Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB38DFD0058
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBIj69oaMcwmJEICZKsGmrlNjg7WziL2uExwo3C6Hls=; b=rAUitKOEULsZaQ
	3ToCFbD37uAgFVSa4XK/dioHTY0/Djon6yN8F3LtnyDkCZdiMqQEoEOS+VUnmTDnvUH+utoq5Aq/0
	JXs58yZBXtjFKRj2rQLL+usx7+MTjZ8ENF4k7Us/CmR5rW2m11Gd/YjxZjaoeb0pFwHSTemPYEn2k
	jesM23sCKZyyb/jRSTUyrUIE6PoKEhMFLx7gMRF9QdSDTWdRpgVUdU9im/E8Ev5Mq5FaWZ+uGpPIT
	pL2oZbI7ICzq/3U7qzhuSy8M9Dfy4X0sfQHEKY9BYyrsNtFp9yI6ATEf/DX6CcfQeeBfeHjzCx0Cz
	cvQ8xJnsJJDgHUMpoTCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwjsW-0000000BfpC-3MXi;
	Sun, 01 Mar 2026 16:42:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwjsU-0000000BfoR-1Gaq
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Mar 2026 16:42:47 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6219NLnI2572669
	for <linux-rockchip@lists.infradead.org>; Sun, 1 Mar 2026 16:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UUK6gQUiNTqa63dauhB4oNrf
	uTLkXg9Yv5hlRkbvUf4=; b=He8pARc8xKIWQNSUN5iKpE5loEd11TA19/vijzUy
	CYWHw9Xaap0rWw4bWeDfmBphXjBNU8zWqkLN0XTsTFglTLJRWiXYf7jqZnnW+NXb
	bE7DV5GnSj7UFtEJXNVoI/V8AkgNAOOfa8AS8aXm3UPmIjCkq1IvovuIL8iR56GT
	HRJ3BdNAUBEeqwYnPCAapQzOa8+GpTl7+m4P3BikpDnkGNGJzkOtqB0piXklqmXN
	BpoJDnESMWRskJpZaShiXRIapbYJ7FzjH3VJbf0wPkAje0oqUMrHemOdFsakXWe8
	VFIVqmFmDzPzK9WZ6poJpgk3/7NVdg6uXmSnFPyYJ7aewg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf6jx1d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 16:42:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-506bfa0441aso673459661cf.3
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 08:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772383365; x=1772988165; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UUK6gQUiNTqa63dauhB4oNrfuTLkXg9Yv5hlRkbvUf4=;
        b=PW23beknQrYSRF8h8A8HvUdyCKDfYYU95yvXzURHr3mBMmR9Pt974cpURtISiExBh+
         wl/SMCaX+ExRopcWfgqgoMh0PIlgNtkg03MRH5R1GIOcH895g94C1IhhNhbZy6KAWDZM
         19NPO92c8b2vq4BL9URAnZlALavVuFGc+LqUa49SzZW7w7XBqs+QhT13Au2mBvMP+jg7
         VPNlIIYfmx0zbQlpHlDchw8DbnnnGSjndVfzccB2QQinj1zB7mRwaMkXDuQicwx1w3+X
         R4u9s5W0FmW5s26Hf0pzLPUDXjEq61czJll/s9kRmtm4T/MnG3wpr35UeNCGDoIgMjTu
         FC9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772383365; x=1772988165;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UUK6gQUiNTqa63dauhB4oNrfuTLkXg9Yv5hlRkbvUf4=;
        b=cr5GC6G6/R9MXjlfGScIflvWhN+5yuzt4GOBr1V///KQ6qztlu9M6NqBILUuhe/Bs0
         L/LUda9Wwq0S9QbPcvjp9QrD9a5ojr4YoXlnH3c8KnLZui0CcMTctEVTfPCz0kDRszha
         u9RVjAAi4v3iP2tiDpOloJubgnfObkjcX382FIr91fqihYM/8U1JMB5wwHndtir5a36G
         BnbWJTBX1zweXSzhO6JHtdG8hJk6r8SF9CUC2isBZ1yBnYgadq/72vHciJKf2+JNZNVe
         Zi4Hq7jzrkRTwWm2LMasHh7JKrG3KsS/g35ij+Eekc3XHAJzD6/OQS2ewFq9zt27dRfK
         3lzw==
X-Forwarded-Encrypted: i=1; AJvYcCXwkKQ3mUIeCmqHAJc8KyvIYq7Sq97AZ+BnVAjFGyZqq8hF3ueyMLt6AbA3pU9hYcqMQ/uIc6g+wu0rJzZVgA==@lists.infradead.org
X-Gm-Message-State: AOJu0YydQmfwqiXnTLDwrYcIRyhSTjueyj+6AFOeINsU4CKOMoIzoBsA
	uE/7BiGUMo0TsU4DtB4zwgAFJ2ga3kOcpj8w8rs0JYqAmrBD6CIJ7QKvILaCijxfb7ueVEqZo3c
	fPEg8EHwcvbo7n2msHPtXc5yr+wRgS4HRqtN5QrBkWTK6y0gnfH4kfuJr6EHVv19UeRvkThde3s
	8=
X-Gm-Gg: ATEYQzx1v14mXiMkBsCq/J5SzMGKDhUv+lFPPVBPExQb7ZiYWh6mM+2v2m110EtzWVn
	s/hzPrIgDWna+AhmTwmCJUUcPMCOk5q/VzyICL0KhKfubXrKoOjRFnRtB1i+VY1H5k07BNkoddK
	nIPUL2kPzP9oebSgcVT1Taf3eGEo869NaEdrwoQt/+bX3xu0f80nBrPsKViLCMEge2PNOHl9346
	pcyKGZnq7BhmivK+erp+ZNhA+IDQULtEwQ96zCLyrLHJTuq5+BsQuYWo9vgVY72Ks/xsJZ97rmV
	BJDXwbPNqzXjRe+4CZGPDDnX0CquklOUOAZa1U+52ABeFHQ4uKyWouGGka6xob8gThSwDp7qzBJ
	C9N2yNj+fbb/oZHRXtBruoxqCkLAbMrwTV2iLWZu62khKC5zJbOBO+yb8fiqpg5dWJiZ0/R3BVj
	imYFtgYTI7afu+vj50BIs5KsyjqKGuaThBgQ4=
X-Received: by 2002:a05:620a:40c4:b0:8c5:32b7:210e with SMTP id af79cd13be357-8cbc8ead9f6mr1058571385a.82.1772383364328;
        Sun, 01 Mar 2026 08:42:44 -0800 (PST)
X-Received: by 2002:a05:620a:40c4:b0:8c5:32b7:210e with SMTP id af79cd13be357-8cbc8ead9f6mr1058568585a.82.1772383363834;
        Sun, 01 Mar 2026 08:42:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bca1e5sm1139257e87.26.2026.03.01.08.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 08:42:43 -0800 (PST)
Date: Sun, 1 Mar 2026 18:42:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
        amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v9 12/19] drm/bridge: dw-hdmi-qp: Implement
 atomic_get_output_bus_fmts
Message-ID: <hocqjcusieyqmsai4bxtgjon446yae6m43dmvqzk34ul44pvfg@ithgwadiwx2j>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-12-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-12-658c3b9db7ef@collabora.com>
X-Proofpoint-ORIG-GUID: kcXR72gZODoBKGPR5O05Kg9Bh8lqfqx0
X-Authority-Analysis: v=2.4 cv=JoL8bc4C c=1 sm=1 tr=0 ts=69a46c85 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=QX4gbG5DAAAA:8
 a=J_biHfMZ8pKUvqPgpkYA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1MiBTYWx0ZWRfX/ILyMKBzJelm
 Rcod1buX5zvafRaE4bR/x6hWEsDQPvlYVjAxOIML65zA8Xcxo82u9OWGd5GRIuDRb6nfjdtVkT4
 UJ+rKpiO1yrkbqC8BEXYE5Al3j8cTNYnBWOvxuVwlSYOgMbAEXzSupJgU5S/KU2EpD1R30+qjhn
 I5B+X3as9bGB0+SNS845vv8v1/btDHTd3/5rfNKJJgBWQ0buEEzbVcSKi/mQSL4r9hsfCHfg9nj
 ETb3pjvS/IYahr2/D+TL5qLiYqSNMyuxXp4TJtdIXNaRgO/LcZQZhvoWFFWFbPjnSwaWG9OeMMT
 U07tloPtvkHp951Fux8LgeLOhYqkzU11kLbJKlS8XbQlh0npSOax9YP+/gTEnAzWBYcs2oEH5u+
 Dueg2gGWBHDs5WRadRZgzIxo3H0Ktio4UcLlRUZe8pNehNx7ckFsiquloOX+mf6I1hxqvIfqjxZ
 6hYxaKIAQlI4oWU8TTg==
X-Proofpoint-GUID: kcXR72gZODoBKGPR5O05Kg9Bh8lqfqx0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603010152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_084246_483821_5F1ABFE3 
X-CRM114-Status: GOOD (  31.48  )
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

On Fri, Feb 27, 2026 at 08:20:17PM +0100, Nicolas Frattaroli wrote:
> The atomic_get_output_bus_fmts callback is used by the DRM bridge layer
> to recursively select a suitable output format in a bridge chain.
> 
> As a bridge that outputs to HDMI, dw-hdmi-qp will have its output
> formats determined by which formats the platform-specific integration of
> the hardware supports, and the chosen HDMI output bit depth.
> 
> Implement this callback. The returned u32* buffer is supposed to be
> freed by the caller of this callback, as specified by the callback's
> documentation.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 64 ++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index d649a1cf07f5..4556494f9bb1 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -11,6 +11,7 @@
>  #include <linux/export.h>
>  #include <linux/i2c.h>
>  #include <linux/irq.h>
> +#include <linux/media-bus-format.h>
>  #include <linux/minmax.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> @@ -749,6 +750,68 @@ static struct i2c_adapter *dw_hdmi_qp_i2c_adapter(struct dw_hdmi_qp *hdmi)
>  	return adap;
>  }
>  
> +static u32*
> +dw_hdmi_qp_bridge_get_output_bus_fmts(struct drm_bridge *bridge,
> +				      struct drm_bridge_state *bridge_state,
> +				      struct drm_crtc_state *crtc_state,
> +				      struct drm_connector_state *conn_state,
> +				      unsigned int *num_output_fmts)
> +{
> +	unsigned int num_fmts = 0;
> +	u32 *out_fmts;
> +
> +	/*
> +	 * bridge->supported_formats is a bit field of the HDMI_COLORSPACE_* enums.
> +	 * These enums are defined by the HDMI standard, and currently top out at
> +	 * 7. Consequently, BIT(7) is the highest bit that will be set here, unless
> +	 * the standard runs out of reserved pixel formats. Therefore, hweight8()
> +	 * will give an accurate count of how many bus formats we'll output.
> +	 */
> +	out_fmts = kmalloc_array(hweight8(bridge->supported_formats), sizeof(u32),
> +				 GFP_KERNEL);
> +	if (!out_fmts) {
> +		*num_output_fmts = 0;
> +		return NULL;
> +	}
> +
> +	switch (conn_state->hdmi.output_bpc) {
> +	case 12:
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_RGB121212_1X36;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_YUV12_1X36;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_UYVY12_1X24;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_UYYVYY12_0_5X36;

This looks like very generic code. It uses bridge->supported_formats
only. Can we move this to the helpers library?

> +		break;
> +	case 10:
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_RGB101010_1X30;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_YUV10_1X30;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_UYVY10_1X20;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_UYYVYY10_0_5X30;
> +		break;
> +	default:
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_RGB888_1X24;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR444))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_YUV8_1X24;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR422))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_UYVY8_1X16;
> +		if (bridge->supported_formats & BIT(DRM_OUTPUT_COLOR_FORMAT_YCBCR420))
> +			out_fmts[num_fmts++] = MEDIA_BUS_FMT_UYYVYY8_0_5X24;
> +		break;
> +	}
> +
> +	*num_output_fmts = num_fmts;
> +
> +	return out_fmts;
> +}
> +
>  static void dw_hdmi_qp_bridge_atomic_enable(struct drm_bridge *bridge,
>  					    struct drm_atomic_state *state)
>  {
> @@ -1192,6 +1255,7 @@ static int dw_hdmi_qp_cec_transmit(struct drm_bridge *bridge, u8 attempts,
>  #endif /* CONFIG_DRM_DW_HDMI_QP_CEC */
>  
>  static const struct drm_bridge_funcs dw_hdmi_qp_bridge_funcs = {
> +	.atomic_get_output_bus_fmts = dw_hdmi_qp_bridge_get_output_bus_fmts,
>  	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
>  	.atomic_reset = drm_atomic_helper_bridge_reset,
> 
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
