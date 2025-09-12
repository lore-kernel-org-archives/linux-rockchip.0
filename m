Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31E60CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 11:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQDuf1n2mnqjw0OJZxA3W+1eXbx/C0ou4hyC4giVHLE=; b=yz9V9/kAspl7wX
	CVBP+OJr8whmv0dFFZcTm5tq2oUJP8ptyuzv1yxyRg/JnJ9Io04qK0Rgamyn7RAKZIH/eGPh0YJUv
	zvoGon1k4FNr2Bd7KZY8Q8rMtKtz26myqZV7kqs4MwKzpsEvq5hIntI/PAfHnoIe7B0lD6j2T8Unw
	K6F6OYBQwzvyosrMLm09zoJ7bX+7XQFBfayED5FeonL7GRw7faLsYHfB1sCxJ2vBB+qyYxYImJz/5
	dWyBATOgXYZSF2Ln8w/qxiQ0bwNbpvc2ZJbULxwv0DKzmRyMxwi0Cx0Fjy8FvMOCI+ufDj1mGQ68j
	R2mdorvmGRVSyChJ1A0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1av-00000008lh3-0VkS;
	Fri, 12 Sep 2025 11:05:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1as-00000008lfk-164Q
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 11:05:31 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fK8x017582
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ohxWiDpU3AbnS+UuB5k3uTeL
	Adfv2H657D5P1upIvkQ=; b=MW+FPQwl0WXbDItnUmSLSyc0GbmzLyjyN+1txKc9
	AT8xH8wJevXZk+3JGPM/TL/TeFRxNl3xa+KYO+gVkQJibvA1hRV14iyuYwuCQD/k
	H6TQpfFx6o9mf+cU9fgLeQWIvyXyz6gBoLqL44Lh7tsBn89d2vYo2EdJBDoMeqpt
	TT0KXvoKXXTNMHzTHYymhlwEPkYue4dvA1klpbeN+GBZIqZeU/yPXK29s1Nmj+NK
	lH2MLswbDAoOsfcI6fFPUnlcyNvueBJVPGA/xxt4gjfJXJRzefcTAKNoYcHr9XpY
	Bvy0I3PdXjtYA4YgRe7OaVCk+4JsJLwYYDlNZvhHIPwr2A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bwskj0x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:05:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-76a9a9327e8so8006846d6.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 04:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757675128; x=1758279928;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohxWiDpU3AbnS+UuB5k3uTeLAdfv2H657D5P1upIvkQ=;
        b=KBhDaCOp4EGZboCbvd2H4j/XKLpBnsSWIrPoXryR67eqbiesQxkQ1EztXzc15wsNdh
         A4oB8gFU+buVMsnfx3vHxbkvftNfoBzUUA/HWfhYd6e/ciFGWL4yg/vnu9oA7xSIlpRC
         zZjygXuWVC6FljjR0zNK8CCRpPKuJfWbCN+IcGkviUESGSyjS6nRr+RbOWmDDeaYB9jO
         If2MoetAc9+PueKw27n78dzAK1WxmsICCjU00MmP6nmGyD72SffTvOagB1Nnzu8B1Yw+
         eQG7v3KhG6gmXyYBH3o4wC1dlRfIMd/zvD66geRHRCu9cNi1feV0ZwuLCLE2/UWW4rw3
         kVOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtHtk9lG8yFhp4WgzFHK0C7UVuVHTH65TiayHiJ11owdyUw/ezD9WmQXKGCMGyIC+w50FjKOAn9VBLigGL4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxaloMlYhIKUWo99YsmaSgimFHymwK9xsuaC27He9Nh6Y/lAVEp
	+StrgpE8nKDTELEq5bGayJ51rPikfxnsrMtfOPQqIQ0Eaajq8vLmTbftiRVE6Prl10Nnd5MWYnw
	+rqnvznJELgSfupRdRHYaZYsI6dHVx3s3VgOrTmUjc2XphWngZBelDR6thHHcgvEqRnX3vOKd9V
	g=
X-Gm-Gg: ASbGncsjto6wajgJQ2yO8BS/kiwXukoipPfpGtmG9JOmTVuNYeymfLLaUQsyctB2VZ2
	P2L0cRpzANMI3ogWyzkMTlsfWVr+nOPFqxahWAN7AxlyxI+UD79OB39zak1Y/G7yl7C1ZOMjy2D
	QGhTT4OKpe14k7sv4Ik6sU/j/zUrbTM4jOES3SH0yRPSOHI11z7AxzN8uNaJ1KzLwJtcRorUjIU
	teAvx84JqmIDnQE1wrveDHVIfk8nLMwHOeE1QKSN1ihARXiiPfJQro5RYlNrg4lKZTc5HUI5rcW
	1F8h8nZ1m1pIg+L9nnlXrol3qWMVUd3IYL6vaiqEyf4opysYA3XecHfnrdLARWSNphhxWhNuM+p
	nNQc62ptBECD6xB4EdeiQIBOjbouBGPFRuU4TjnKSTK3881j7XNZ2
X-Received: by 2002:ad4:5cae:0:b0:725:cd10:3d1d with SMTP id 6a1803df08f44-767bc5e525dmr30639226d6.16.1757675128291;
        Fri, 12 Sep 2025 04:05:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKv2Tcc0omb5IKgx/KH/GT6a7+rHlMbIBMJwADkJ0xx5dKz4aNr6q+JalITdK6SvCqNVjAPg==
X-Received: by 2002:ad4:5cae:0:b0:725:cd10:3d1d with SMTP id 6a1803df08f44-767bc5e525dmr30638416d6.16.1757675127615;
        Fri, 12 Sep 2025 04:05:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e65564946sm1077186e87.127.2025.09.12.04.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:05:26 -0700 (PDT)
Date: Fri, 12 Sep 2025 14:05:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, dianders@chromium.org,
        m.szyprowski@samsung.com, luca.ceresoli@bootlin.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 13/17] drm/rockchip: analogix_dp: Apply
 &analogix_dp_plat_data.attach() to attach next bridge
Message-ID: <2cu3ge6kjeibfznvt6c52xn2rp5zb3wk3pkb7gly34qrjlueem@7wqyowascpn5>
References: <20250912085846.7349-1-damon.ding@rock-chips.com>
 <20250912085846.7349-14-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250912085846.7349-14-damon.ding@rock-chips.com>
X-Proofpoint-ORIG-GUID: 2Z7sgi-m7g_iOSc5xS2Iq6YTN6a0KV4p
X-Proofpoint-GUID: 2Z7sgi-m7g_iOSc5xS2Iq6YTN6a0KV4p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX5r4xXI361BGE
 4zPobpqrMrVRGoqX3vSPp5CsJYN2DMs30XpEyKZua7kGq+uEpiTstIGOfj4+e9rO/krwg9XSnXN
 Ug5TgeUollboJZ1XE4DLTF/8JbBf+DpRxmDsfdfLbFK4vcru3jT+syOpHwlQyovtixG6pTsixEK
 QGv/TB6vW+X+pNpp8Fmh0DNo7Sak3xBE/gLM2K9vtFdcl62Jww+6eFQQNGon9SBb9DeWvi38aWB
 NhdAjfAesgJumDsfeCHw0z3JvfHeWpulgW71O8Drx2tn++pFg42VcswPcevXD722pIsVgoVpf47
 qDcrvFZbuYNhD62UJu7RlAHot2987qf1uzWveENYr6bLD4bFBk3gYkThi0KgQ+G32NIjYeCv3yw
 8HyjyKbg
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c3fe79 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=Fz8SCyDB7bCRA1NsBX0A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_040530_307335_A8B33305 
X-CRM114-Status: GOOD (  22.47  )
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

On Fri, Sep 12, 2025 at 04:58:42PM +0800, Damon Ding wrote:
> There may be the panel or bridge after &analogix_dp_device.bridge.
> Add rockchip_dp_attach() to support the next bridge attachment for
> the Rockchip side.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> index 0784f19a2ed9..39f1ed293c75 100644
> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> @@ -164,6 +164,24 @@ static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
>  	return 0;
>  }
>  
> +static int rockchip_dp_attach(struct analogix_dp_plat_data *plat_data,
> +				     struct drm_bridge *bridge)
> +{
> +	struct rockchip_dp_device *dp = pdata_encoder_to_dp(plat_data);
> +	int ret;
> +
> +	if (plat_data->next_bridge) {
> +		ret = drm_bridge_attach(&dp->encoder.encoder, plat_data->next_bridge, bridge,
> +					DRM_BRIDGE_ATTACH_NO_CONNECTOR);

Can this be handled inside analogix_dp_bridge's attach callback?

> +		if (ret) {
> +			dev_err(dp->dev, "failed to attach following panel or bridge (%d)\n", ret);
> +			return ret;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static bool
>  rockchip_dp_drm_encoder_mode_fixup(struct drm_encoder *encoder,
>  				   const struct drm_display_mode *mode,
> @@ -452,6 +470,7 @@ static int rockchip_dp_probe(struct platform_device *pdev)
>  	dp->plat_data.dev_type = dp->data->chip_type;
>  	dp->plat_data.power_on = rockchip_dp_poweron;
>  	dp->plat_data.power_off = rockchip_dp_powerdown;
> +	dp->plat_data.attach = rockchip_dp_attach;
>  	dp->plat_data.ops = &rockchip_dp_component_ops;
>  
>  	ret = rockchip_dp_of_probe(dp);
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
