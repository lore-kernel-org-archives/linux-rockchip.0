Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0B7CCCA471
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 12:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z3z6GoPRkK+Uah5iKjhARFXihkM4uqhS5RWUUhN+iE=; b=EjVpvkTs7cEvh5
	+87hFq06H/HOWgZTvQXbENiwB2pWFgjCma6H8bVhZlQps8zsK+uoKOhguosxu99eAVuEpntZIHvea
	klMCQ/tBHvBg32Zw0x3GViD1s4/bROyM+Knr8ULwGTkCHBztSBUyKrYLFd3acyPX+6u48g8RxDU69
	ua6j2xsRFWhNYIRBtl59p5/0lHMDbTfFx0/0aXuSQhEtTVoGjjg7RugoU4qJGz3NRHhJf6K74Sf6f
	kxzxX5vDLnx0PE88Y203qS6g528UWQj5l8csePgv3C9M8oAYpUQJu5HeceA5U8srniKo0+Yh9LQN4
	+DKPOgP6X5uvI7pW4LyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5juw-0000000HXZT-3zcL;
	Mon, 06 Oct 2025 12:02:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5juu-0000000HXYh-2W8r
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Oct 2025 12:02:13 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NrlN5008637
	for <linux-rockchip@lists.infradead.org>; Mon, 6 Oct 2025 12:02:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DEIWohyV4TRe4//3qeB6UZeY
	hG+0MCT6jVtLZiAZjuw=; b=FJCPqW3Ma4T4Xny202WCSSSn3EU+uh23VWJBCeJV
	GzU1vmFYL2dJsPp5Plj7dpQ1zllyPFtXo+wGUMmybpU8WaUIBvh9osTVT1mL7r3M
	gcZUh141jzJxFzpCLygHwfPKhCYUvQIxPEZnMVWVhAsNdDe4cesdSImRt08KJN3J
	McoE0qbBv9LF/9pqwMF4uEbsqUyCArNK7U8drntVeh/CXO2LmXh5n7ehAJE0c7yR
	4/q0rw3/MPr6iubfY8v3EoZyO3xtEylij29Ik3zaOpTUYQvIcSM6YbGonso2qbpO
	XweGPqN1Bxs/+XRdC2r/wivd1widb0doQRRhfQOeiVwUpQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7kk6t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 12:02:12 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-78102ba5966so4192284b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Oct 2025 05:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759752131; x=1760356931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DEIWohyV4TRe4//3qeB6UZeYhG+0MCT6jVtLZiAZjuw=;
        b=n/ZitrCYBB96GYOs2glQ2hwsRAVxHuAezkyN9rIScWvdoSnYVwB9MrzXD1598hNoWL
         A7ShqZMHNj0u+32Jrp++f6uSgH87foUNH4ONFVJTWookyVJ0ZN6Mg7GW77FI75TFxnX1
         0wAvYBOmNGaeHkJre+20EYAnD1sGRHOwy76nOhloT+SpbqIbVUoNNfJ2C9Z55XstI4V6
         iz8LyPu3Bj1Um4Wdq88v4fdU7MaxXu+6QJ0Pa/QbfIrRq/ZkGO7CBDGj1ew1Hz8utYEV
         162O1dOFscL9tX6W6kPOkhvRj+JKypsQOR1GkdhEqOU20g2oT7io/adNgmVDNdkchsgp
         7lSg==
X-Forwarded-Encrypted: i=1; AJvYcCWAFRVkGxNnZiEW+wC9nE8agYS3yj60U7kWJDAQZ6DRWttu9p951Y4P/PmBHGBcs9FIUQgrc/FQiaIW4WMDMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiMrGH1T2VihxzpPa1txTYYcrcXDG5X31Sy3Nole5vhFPVAzM7
	QpKv0GeOaM19ZVVb8W1FnOc0YAIeS29SsYe3OcHigOD7uSMOZhny+fwaV3nhApW18B3leseOoiF
	tj+TfqktSXnh8uK+7dkGKMetgYzoG/xabYK1fylRsqYvTgJuZMiNHiKa8f9Zj0GJNcYBOgYru5h
	4=
X-Gm-Gg: ASbGncuQyHzPai9nqVoRQwLLZHFnqn5DfGGFL8Pp/wQct6WMWulmkuPcim2UIZbSlZO
	nTMDl2HcdUBvBaUSA3gkJEbTU/vIb5W1fOpAwas9b34DiBo6qBVcA5avORaQUbVB5cB+b2p01M3
	Htnl3wBwKyAtTrlf7GFV+iIkT5YAvS/eV4ZAixeaicF8g1nLn5EctSafuzv3W34n3Ihlo7/cpsS
	hJ3RkRFxOQLV5dbflJX1OeaaEfx0XkZ0zom0Sohjx3IeYHWKrIwrLsRkZG+pu1X1/z6axI9lITV
	rLa3WtvoPEWUE9YHlMmQLOTEAl1wnh4p0IRigBU8Gs9zZlnpMxJemF5vhwee5vc/0Jb/oHic4Wq
	1wumy4Jq61Nxrgotgtop2oNvWWda7dy6P1mZYDBy5oRhnennzM8yn9zEgbQ==
X-Received: by 2002:a05:6a21:3086:b0:306:51fd:553e with SMTP id adf61e73a8af0-32b61e58357mr13767915637.18.1759752130965;
        Mon, 06 Oct 2025 05:02:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnZ6Jftw4/I+2aJuBHfcBIzABFc5tCF963mt/Fx5kOV89uuJNQzyr0DGxxoXdMJk4kqaEwrA==
X-Received: by 2002:a05:6a21:3086:b0:306:51fd:553e with SMTP id adf61e73a8af0-32b61e58357mr13767850637.18.1759752130392;
        Mon, 06 Oct 2025 05:02:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0112439csm4998490e87.18.2025.10.06.05.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 05:02:09 -0700 (PDT)
Date: Mon, 6 Oct 2025 15:02:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 2/5] drm/rockchip: dw_hdmi_qp: Improve error handling
 with dev_err_probe()
Message-ID: <gai5hfvu6xbbqpk4mu3i6nejolijeokjy3mkzca5xwzb4xwic7@jmee36svmwnb>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <20251005235542.1017-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251005235542.1017-3-laurent.pinchart@ideasonboard.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX2NIPTK8bJfY/
 PyY2xZX0JpNheg3cvfOvIMmzE0y55gqTWhBP5ARbtiiwpV04aekutWfjTd8NT3ktpeHYul2q2vn
 KHSFoSCpPdpy5J4vccKmoqQdX0HyoaYL68IPAPJtHpFCeB0cCwPUGIv3I0rSas4xaHQWesA6fib
 lO4mjQS9PJacP+7W60220Q1juD548dMNIzwJK6TkPIkfDXlPJaWZmyE/pfHpKERnvosAk3PLUWQ
 ogjHQCwc3ZjCyxI6Sy/4lyEIS01B8yd29/+7Onus3UMhgdwdnfREVH4je3wCqyHmF3pW03jDaRV
 efoWYBfINr1xV/pBVimTv0EVeUn0Omp0NSDq9m95JX0/W4hdfgpZWs6X+k/tbEI0IHFKscncAYF
 t7Vi1keJYfcrhfttWSiKwMop/DnSxg==
X-Proofpoint-ORIG-GUID: y_iUZ76hrxSgGuxl9ZaCGpuXlCxibxcz
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e3afc4 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=QX4gbG5DAAAA:8 a=P1BnusSwAAAA:8 a=nUXw1gjoltVkaJc6RoAA:9
 a=CjuIK1q_8ugA:10 a=zc0IvFSfCIW2DFIPzwfm:22 a=AbAUZ8qAyYyZVLSsDulk:22
 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-GUID: y_iUZ76hrxSgGuxl9ZaCGpuXlCxibxcz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_04,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_050212_646893_33C57AA6 
X-CRM114-Status: GOOD (  27.40  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Ondrej Jirman <megi@xff.cz>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Cenk Uluisik <cenk.uluisik@googlemail.com>, Alexey Charkov <alchark@gmail.com>, Maxime Ripard <mripard@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Oct 06, 2025 at 02:55:38AM +0300, Laurent Pinchart wrote:
> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> 
> The error handling in dw_hdmi_qp_rockchip_bind() is quite inconsistent,
> i.e. in some cases the error code is not included in the message, while
> in some other cases there is no check for -EPROBE_DEFER.
> 
> Since this is part of the probe path, address the aforementioned issues
> by switching to dev_err_probe(), which also reduces the code a bit.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 62 +++++++------------
>  1 file changed, 24 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index 7d531b6f4c09..4e7794aa2dde 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -457,10 +457,8 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  		return -ENODEV;
>  
>  	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
> -	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback) {
> -		dev_err(dev, "Missing platform ctrl ops\n");
> -		return -ENODEV;
> -	}
> +	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->hardirq_callback)
> +		return dev_err_probe(dev, -ENODEV, "Missing platform ctrl ops\n");

This only makes sense for the purpose of unification.

>  
>  	hdmi->ctrl_ops = cfg->ctrl_ops;
>  	hdmi->dev = &pdev->dev;
> @@ -473,10 +471,9 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  			break;
>  		}
>  	}
> -	if (hdmi->port_id < 0) {
> -		dev_err(hdmi->dev, "Failed to match HDMI port ID\n");
> -		return hdmi->port_id;
> -	}
> +	if (hdmi->port_id < 0)
> +		return dev_err_probe(hdmi->dev, hdmi->port_id,
> +				     "Failed to match HDMI port ID\n");

The port_id can't become -EPROBE_DEFER, so it also unnecessary.

>  
>  	plat_data.phy_ops = cfg->phy_ops;
>  	plat_data.phy_data = hdmi;
> @@ -497,39 +494,30 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  
>  	hdmi->regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
>  						       "rockchip,grf");
> -	if (IS_ERR(hdmi->regmap)) {
> -		dev_err(hdmi->dev, "Unable to get rockchip,grf\n");
> -		return PTR_ERR(hdmi->regmap);
> -	}
> +	if (IS_ERR(hdmi->regmap))
> +		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->regmap),
> +				     "Unable to get rockchip,grf\n");
>  
>  	hdmi->vo_regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
>  							  "rockchip,vo-grf");
> -	if (IS_ERR(hdmi->vo_regmap)) {
> -		dev_err(hdmi->dev, "Unable to get rockchip,vo-grf\n");
> -		return PTR_ERR(hdmi->vo_regmap);
> -	}
> +	if (IS_ERR(hdmi->vo_regmap))
> +		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->vo_regmap),
> +				     "Unable to get rockchip,vo-grf\n");
>  
>  	ret = devm_clk_bulk_get_all_enabled(hdmi->dev, &clks);
> -	if (ret < 0) {
> -		dev_err(hdmi->dev, "Failed to get clocks: %d\n", ret);
> -		return ret;
> -	}
> +	if (ret < 0)
> +		return dev_err_probe(hdmi->dev, ret, "Failed to get clocks\n");
>  
>  	hdmi->enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
>  						    GPIOD_OUT_HIGH);
> -	if (IS_ERR(hdmi->enable_gpio)) {
> -		ret = PTR_ERR(hdmi->enable_gpio);
> -		dev_err(hdmi->dev, "Failed to request enable GPIO: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(hdmi->enable_gpio))
> +		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->enable_gpio),
> +				     "Failed to request enable GPIO\n");
>  
>  	hdmi->phy = devm_of_phy_get_by_index(dev, dev->of_node, 0);
> -	if (IS_ERR(hdmi->phy)) {
> -		ret = PTR_ERR(hdmi->phy);
> -		if (ret != -EPROBE_DEFER)
> -			dev_err(hdmi->dev, "failed to get phy: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(hdmi->phy))
> +		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->phy),
> +				     "Failed to get phy\n");
>  
>  	cfg->ctrl_ops->io_init(hdmi);
>  
> @@ -558,17 +546,15 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  
>  	hdmi->hdmi = dw_hdmi_qp_bind(pdev, encoder, &plat_data);
>  	if (IS_ERR(hdmi->hdmi)) {
> -		ret = PTR_ERR(hdmi->hdmi);
>  		drm_encoder_cleanup(encoder);
> -		return ret;
> +		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->hdmi),
> +				     "Failed to bind dw-hdmi-qp");
>  	}
>  
>  	connector = drm_bridge_connector_init(drm, encoder);

This one is also not supposed to return -EPROBE_DEFER.

> -	if (IS_ERR(connector)) {
> -		ret = PTR_ERR(connector);
> -		dev_err(hdmi->dev, "failed to init bridge connector: %d\n", ret);
> -		return ret;
> -	}
> +	if (IS_ERR(connector))
> +		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
> +				     "Failed to init bridge connector\n");
>  
>  	return drm_connector_attach_encoder(connector, encoder);
>  }
> -- 
> Regards,
> 
> Laurent Pinchart
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
