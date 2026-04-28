Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52A01FF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 01:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxcUb/KzaWYHrnXkXAzaJ7VbgtQG9VV/Y35RxH1O3iY=; b=oFBPJnkhMxInUz
	K1uvKE1cYR0jmgV4YSLOwwSnwVCLR3DBjBJ/DXS/hKKFWvdOAKvc5TkR6rv1YkX0aD2+KlT7Fz/zT
	XFEezd+b0m0nqmis9kuWnwd+ZaN7AOmhns0fO6jtkFS5LNWcphnfRTjzSEhXWd/W25XSpNTfhfPXr
	xqsiSVLbWp/Mt4HtM5OBUB9a+aoEnyW/LQS5v5GY0L6/qH8WJNl/6zHsltAHWXYIjPE+KAsiTZKxa
	2v4/2S5dci1YQs1t4DFumeBkLNqieynfh+5YGj2jYbua8/EbPxdrhfAqe6QCTmXRhQkgYwZIEK8Hh
	fKX05gdQny4IDS6BR2qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXQy-00000000Owm-0cDc;
	Tue, 28 Apr 2026 01:40:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXQw-00000000Ovl-34Ny
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 01:40:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63S0LA4w3760747
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:40:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9m9p8k8igO9mcKqpM8R3r1LN
	43MMOEZgkj/ZwEMZ0vA=; b=UZaArr+ZaWYpiX9gsgLyMDjQLtxwvv8e5gqil9Lc
	BJrvIQVaGRgGP/+SWlFiRgpJbu9q3kAT9H6P7S+wmnCQWY4bB19PG2D7RPKeEpT5
	34iXPMXgsZXy3yGqIbnVQYKm6jax8/QFNU9NpkXw4CPM01OmohSAZW4/Bv3h0GVx
	yMNTwoCvV9mgYVjnUnsJPOk/x5tbD+RZ/iTQiJre3GRb6KSY1dnlTIbG3Mnkxr+4
	YUBvifD5McgbN37KQmQX6Ezfv7GC3ziuAY44DdPpzIdZ7TjAeQe5rxOXfbZ9cx3N
	246Db2GiaFwjNKOHJiTLnS1g5WQBgViHuV5mirTiYITZaw==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtacdt345-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:40:18 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-56efe2b00daso8868897e0c.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 18:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777340417; x=1777945217; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9m9p8k8igO9mcKqpM8R3r1LN43MMOEZgkj/ZwEMZ0vA=;
        b=XjHXAZHGs9sdsatYK/n5Wg8a+Bdmt4SkXo7K0QMwtkXub7gcpEfp2Aq/Ezvddr1Lra
         szVMAM32587/J9y20TZ9w9rU/gGnTj6JLY3KVQMtZSxoVdg2mxPqmeccqySYzYypkzs4
         Cx605JkUBzxrk4rzFAfvwex28tx8eAlhrjw84wRIt8lQDvOrTxCpCjMzJvDovSW7wnqF
         9uF7mIxN1SmT2posOF2LM0q23AY/tycNO1zAeGi2TNWOKquObs6EtQthgC8zXWcyBKaU
         DBHTi14nOoiDncHeW0SYX6dNJubv2gj2cjIS/bUzFG/hsHMHe0l6yEKq7kbOflRlsnWV
         xPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777340417; x=1777945217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9m9p8k8igO9mcKqpM8R3r1LN43MMOEZgkj/ZwEMZ0vA=;
        b=RxGFMXRvgGDqOQHO453EYv2ok3jw9NbN73qWBpprUwrusa9MLiSDjY+eAW09k34myq
         HLsLJay9dAOlezZSIxWPlFRsnXp8a16Ct245uS1pZAAD4OXW2z9ap9MZIiGRsv0qjXpP
         BnBUXptEVIMN33fMOtSSrymyCcYYFZ8RmaOsLcdnhJshKwoOkKPQDhx9qsX5ER9Jgelh
         QRhxAVAz5T7dPYujoxvHwL+LZTOE0zp/q6cUhwk+L2f6dPmlpPVfmhRlF0pdS49AG/V4
         eBsx8pxRNJksBMYVd9bTo4XFMKKbkJ0D+2oDCkr6RQxw3CteAZmTwY13tZoIRHL5tWfa
         fEzw==
X-Forwarded-Encrypted: i=1; AFNElJ8l+ls3twz1ThPUPAxwANwgTRIIAumNkIpgR7Pg9TfyjgWdqOl1uxqNAPsDd4eLxwhexRXkNOWrkjOSP12CQw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHHTapdya8+qxFAUAaJkW6mide9xTH4PqelcjbQur5gs/BFf1K
	PTgAGlVZakze1WmFqU2nKwan0L+CUTanng1M9ap45N8omd571G8Bff3pIPMzGMuMuL3jpvOi4Fi
	sXJXRjJZqJ8HFzngKu1n+io7uvMolBPddkS2y9uaBy4HTAxpAx3nTNk5cvj0MwK1U90c7B+rEkf
	A=
X-Gm-Gg: AeBDieu/saps6O9eLZ0UlQp45myGW12Ve7dPsdAV2jEORS5FC9rwZay6rTf20M6dw1v
	ErIT0TxM51Hg8KaN4SeJ3DCNbdPzBJNPKLXxUNPvqQZIsdv3vR3gnijwVLw+k5nks5AuGQBlLVw
	QfQsIR9BDAhr+35BGurheogcPehAT2C9/L5GQw1KN0LWtYcKr548bH1UGhKun30+ynXRM1dyDsH
	W0v/TWbLJG97HmCDkt+nTFBESv2b1RK5EWCTouZiasXGFc4vg3mBIcZncjKtqJ72ynhsIdpgDJ0
	/DrtM6IrXHigf3zJc+EBVt2uv0Imfqr6WWeZqjATL6W6F1dUp2uVCf6gr3iQy9UdLYpTl87YbrI
	kFsQBAAJ7Fj6z36gh8JwEm0ftzAIfLqgS2O3N/Vp8auuHj79FjiuwgWRdiSyATqVSzPmEwW2+Dp
	4n2+6mn+q+CHnOJE3JZ/B8033wMjl7PrPvmB4O6+g/BVE2jg==
X-Received: by 2002:a05:6122:134b:b0:56b:8e1c:582d with SMTP id 71dfb90a1353d-573a56ec536mr488125e0c.14.1777340417159;
        Mon, 27 Apr 2026 18:40:17 -0700 (PDT)
X-Received: by 2002:a05:6122:134b:b0:56b:8e1c:582d with SMTP id 71dfb90a1353d-573a56ec536mr488106e0c.14.1777340416627;
        Mon, 27 Apr 2026 18:40:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3923f55f0bdsm2693041fa.30.2026.04.27.18.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 18:40:15 -0700 (PDT)
Date: Tue, 28 Apr 2026 04:40:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 07/10] drm/rockchip: dw_hdmi_qp: Add missing newlines
 in dev_err_probe() messages
Message-ID: <6ud63tddjz6ztmnifaocerrowml6ut75ciakaj2i7t7be2r7is@dsgdghnieyqs>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-7-d778e70c317b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-7-d778e70c317b@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDAxMyBTYWx0ZWRfX59oxx7EIHrRO
 /OqGZDQgauRw1iWacezRN33wGOHqLFF0ka0jr1/wmqJzrRVZz04u3UGVF/hp7jPGmAeZZ7Zbv+X
 b4qK1X03oyqRG8FukuCC2tjySmYcWXTOl7DAmabUS2dhYK+Q2o5NUvN8FyTKY/xWGa7LhgzIMW3
 ifAnAFdKFlSIQlM6PVc4u5L7bcYc5RNfHxQaTKX5SGDN641e3/BdU4YbFDe8PR0bnXRj6KCecQo
 N30MHrDsD51iRPXTZkAN24Y79Dkx6a6KoKZUYtyyXchdWdnDRt3bA6+8QSIunCrS/a/QdZnLLyo
 jkA+NrkJZVL889dGN/O2sZaMOttMijsSnhkNJgiumHH7SZkt3aji62ku6NG6jokbh5SlwRsVgTU
 7TFIRJPF4McfumyHi0DvTRsy3g11+S3c6/Vp0HtS+eXPdEEaz0s1sn6ymp6/FhBe2OINb5pRvVV
 tOb1M7w6bk3gr8sR9+Q==
X-Authority-Analysis: v=2.4 cv=QsduG1yd c=1 sm=1 tr=0 ts=69f01002 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QX4gbG5DAAAA:8
 a=yOO0I3MQnx59eK1zbP8A:9 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: EixDb5eqTJFi0vNbuBfYqMXW45xzMK4F
X-Proofpoint-ORIG-GUID: EixDb5eqTJFi0vNbuBfYqMXW45xzMK4F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_184018_779584_962FFD92 
X-CRM114-Status: GOOD (  18.60  )
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

On Sun, Apr 26, 2026 at 03:20:19AM +0300, Cristian Ciocaltea wrote:
> Add the missing trailing newlines to a couple of dev_err_probe() calls
> in dw_hdmi_qp_rockchip_bind().
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Missing Fixes tag.

> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index c78db7f8ab6c..d9333ad8996b 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -589,14 +589,14 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  	drm_encoder_helper_add(encoder, &dw_hdmi_qp_rockchip_encoder_helper_funcs);
>  	ret = drmm_encoder_init(drm, encoder, NULL, DRM_MODE_ENCODER_TMDS, NULL);
>  	if (ret)
> -		return dev_err_probe(hdmi->dev, ret, "Failed to init encoder");
> +		return dev_err_probe(hdmi->dev, ret, "Failed to init encoder\n");
>  
>  	platform_set_drvdata(pdev, hdmi);
>  
>  	hdmi->hdmi = dw_hdmi_qp_bind(pdev, encoder, &plat_data);
>  	if (IS_ERR(hdmi->hdmi))
>  		return dev_err_probe(hdmi->dev, PTR_ERR(hdmi->hdmi),
> -				     "Failed to bind dw-hdmi-qp");
> +				     "Failed to bind dw-hdmi-qp\n");
>  
>  	connector = drm_bridge_connector_init(drm, encoder);
>  	if (IS_ERR(connector))
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
