Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B03EEC44515
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 14:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8KV10S+rGSc5JBRADGmolBBDAeLckOknzkX/+WjyZM=; b=b6L4KDNcCuIH0P
	+tEcPmZN2vJm6E8jUh3qwcTye09hv+bzQKte7XLpXgwVOx0KTRWpK3HOGChU3zyklLX8h3WlBM1vk
	kZtLORuhfPeTIfavY73uqteSSVwtUbheT38t8V5qaTKkZRMkwTV8a7Ze40+pnADlCsQVLMSxgh+9y
	wGff32SXERbBk+m87LjXoC7JyuPPZAhz0Kb3VEq6Iy7rAheJYDk3gUZylv8J95q3Mx/mM8Nfzz/II
	opfqixogbjxCLVX8HMyXmLkx5xIjlt3SK7vsZP5Al4GG38KzQ3INLqic/hyR2CHLjvPZMoz9NGd58
	SqhPbHX3TxSAdDET4prw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloqj-00000006wnf-1Ftx;
	Mon, 20 Jul 2026 14:20:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wloqh-00000006wmi-1pNk
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 14:20:04 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66KDqX4X2962857
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:20:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sjxGraRdWr9o18D48nknKGR/TQtYQrAOX4PFkQIou1g=; b=gOFLNXiHFRrsIK1w
	rpNq7QNHCXsdyzVUgcfHx5cszS0zvJkjoXzOyBb68dxrSRiPeEpwP1os0jAD1xo0
	1TBn+YB0559oBLJM25Z1JN8Vycq0XHXc7HvAIxRlQShfBvy1hgI/DZF+EkP13uNK
	SuQUFCRJz7l+vfyc+WVjLNyRAGR0a32Tp+dobB/74sDu8ImG7QD5P2qVKEhAIjPE
	/+LIaN4IZyoBl0tU0Rb3j0J0TagttyjL2sjr+BmmExq3NSvTn6hxJ7QLTAvOih2x
	NwYp1Krx9v3yg+QenF58VF9GGAeWCX90boApEW45IrZIWlcTU0SegRFVIXDCG8Tt
	753IHg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fhfdchr85-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 14:20:03 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-520a00c7a03so103002231cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 07:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784557202; x=1785162002; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=sjxGraRdWr9o18D48nknKGR/TQtYQrAOX4PFkQIou1g=;
        b=hrtNOGCjn8ROkjymmsZ0hkhoJIX0kfmBxLsi9zPnyfrMiUuVSpIZyOQc8vud8Nc/mL
         PWJ2r7h6/lgok2m4tL2bTf9uuTrTuj+IIKl1iJ0w50ZgKlHFo1HhwzrTP6kc+7qReYMx
         dxO9N62etRinUfubhMLOzNhnVmh+ufvDB1Pfed10396elg3WPyYUyfsDR0UVIR9m5FJf
         ob9Y23eNS86Uqv9aUYdVzhWS5Qt9a0mCdL46aO7q9gnUFZm0xTc+Ij7LZxlmPcEeLu+b
         L4uCRKSxp7xVz6+nnd/c2FSV8poN9mf251ltFWp0wN/E7NdgJWPveVvn/fkrYVHybAVJ
         orAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784557202; x=1785162002;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=sjxGraRdWr9o18D48nknKGR/TQtYQrAOX4PFkQIou1g=;
        b=oLgBAgXFh5tzavyZVlPCtAcyptuuXoAMoAR/MB6gDUdcK4IQr0eMeyoqskCveDVzG0
         Wyr2wQ2NO4rMMzcyUBZNqilTtVf9tSku7jTMZ0t69h/9314XisQpl7c66hvFn4YFRD/X
         xR3hoZKcFJfiX2/3jCDhpuKFAtLmRyHE4E4ERsqSFXDzJ2ymdfD8r0LVOqYATV32oKeS
         XeJsTgDBalvjTONeGh0qFduxzsfPVE01RYgEsv/5IFF5PdKR//IjC82r5rLVHE6eDK3K
         ZkpQ8Y1eM8VKi04xcAGEg36bmNeQCm2HHMKGIHA8gpg8eFO3YfDFsF6pTAah0vq1bxdd
         64kw==
X-Forwarded-Encrypted: i=1; AHgh+Rr/fneDYj5VuPCl9mHmZpI3del7cS1o7t88IEpFTKvuoYQtxVpywfzUGkyUtvwj9IGntuCgds1H/njxNtH04g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNy7QzCSOkVvVacHlJuMx5DaKIJgOztCgJHBh5/nb0VMH4rwS0
	wzS1wWgManOdElz0JB+sjLwjNyYl2DDG8ghnRQUBH0WoJhv0qA82FSc4J7Uy1CNX4VqlmDoXRHQ
	Qb8RuVN85t3mtEaR2CB9NWkZh5DoHbP5goZ9su82+hNKzgU8Jk3rFqKnGY1m6uzOXCyABigdzID
	A=
X-Gm-Gg: AfdE7cmbqnxQmaZNz381NxanKWGXbpDRGJBth8mdgfsKfzzNMYOpr/XmFKoQYbIqMRE
	L3E1JBrJ1M4JIS8ZaBfIDIg7UpeC76Rc70zC4uxqV/99c+7OH+dvpS7S3GIEoZ0gVDJOlGG+zBz
	sPzu5lo19khJ5BKddxpSIqa+XtVgUnZVT63HDNRqIJkO3V9R21YqRbOm6l3NsIdOLzfybeNFDtH
	4BJUewF+PELku36WTshYtwjsrved/7w6C6RvuPlt0SDvVUtOZc8ONYaGXl3NeLF3WMhe37wUStO
	4tPUQuMVu2+5vWfyGJOyjnsJux26R2sxyO3uSnp0H6WnZ/DzQQVOwpTOIO2Hgv/rhyna6Uvl8Ku
	T4Zs5RWgbYVOiXZ9qXQqP+pkbvX2BoiT0FmwbYG/a3F2xcpuM+BgQv7cQtifqpM3srDvE1MwEbe
	y3RnAMldKA2iH9sA==
X-Received: by 2002:a05:622a:1186:b0:517:6804:3732 with SMTP id d75a77b69052e-5213e77cf30mr120810371cf.55.1784557200378;
        Mon, 20 Jul 2026 07:20:00 -0700 (PDT)
X-Received: by 2002:a05:622a:1186:b0:517:6804:3732 with SMTP id d75a77b69052e-5213e77cf30mr120806691cf.55.1784557199310;
        Mon, 20 Jul 2026 07:19:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b291e245e5sm2381076e87.71.2026.07.20.07.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 07:19:58 -0700 (PDT)
Date: Mon, 20 Jul 2026 17:19:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>,
        Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
        linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Thomas =?iso-8859-1?Q?Niederpr=FCm?= <dubito@online.de>,
        Simon Wright <simon@symple.nz>
Subject: Re: [PATCH v4 5/8] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
Message-ID: <al4ujA5d6B5s23C4@umbar.lan>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
X-Proofpoint-ORIG-GUID: _h9Q4HBBH7a2DwEUaWVO16P2VbCDw5Uq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfX+g/ownZKPtSq
 zHnnZUol/ZN3B+O8tSvdgZwEBRKpn8XfWErFTZmf3wevpqcoWKrujnImAoowJACMfGJq0jOEyih
 NDW0fdg0AqRF37HlGE65lSSoKlV4DYP8k181qzzYKELhJDtvbeTYyHSg5V7cW4QM/gL3s4e9I3e
 qj6Xv9+Tdn2YygDUR5fnvWYyOY+QPjdgV7BDotIHQY6U43sEpHP2V2p1ZCIvC2fl1UH8OK1YlOJ
 c3NL/9N/zv+d0crUjuZcekARduLT/eB+4eGFm99ul07q9xfWmkrIMaJEd4+qoS8WbN6LwHXI1Em
 CgUGEgeUOevsFR7DhbsZ1AhLAKCurqxUMXt0PidAeAmgUw1BNjLGlqQnE/5vBPowS9JXVx+EfUf
 XhtMgLuWZQY26EmBm0Ml1Pq/9T+7B9r23cL54HCHmpfgHhmaBRsOo+LJGI9jhaURMuL70XpNgLx
 u10NNsCzgAAS0sGK2Iw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIwMDE1OSBTYWx0ZWRfX+pEFptO7HptH
 bjweQLEsZrxgXfjHJ3OnBvtzYJJqKNVj1aHaBIQWsfLQuLZ/VqOhgB+d/WTKRJ/OJKjEr9/OiEp
 6huDKr6G5worcSFIpn50rsUcztgh7/Q=
X-Proofpoint-GUID: _h9Q4HBBH7a2DwEUaWVO16P2VbCDw5Uq
X-Authority-Analysis: v=2.4 cv=bv58wkai c=1 sm=1 tr=0 ts=6a5e2e93 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QX4gbG5DAAAA:8
 a=zwdtIQzbwfcTUTQlMeAA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-20_03,2026-07-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607200159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_072003_475139_08BBE5EC 
X-CRM114-Status: GOOD (  24.55  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 12, 2026 at 02:45:24AM +0300, Cristian Ciocaltea wrote:
> Since commit ba9c2fe18c17 ("drm/rockchip: dw_hdmi_qp: Switch to
> phy_configure()") the TMDS rate setup doesn't rely anymore on the
> unconventional usage of the bus width, instead it is managed exclusively
> through the HDMI PHY configuration API.
> =

> Drop the now obsolete workaround to retrieve the TMDS character rate via
> phy_get_bus_width() during power_on().
> =

> While at it, get rid of the extra call to rk_hdptx_phy_consumer_put() by
> moving the statement at the end of the function.
> =

> Tested-by: Thomas Niederpr=FCm <dubito@online.de>
> Tested-by: Simon Wright <simon@symple.nz>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 27 +++++------------=
------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/=
phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 25bd821cd039..35997087d61c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -1660,22 +1660,6 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  	enum phy_mode mode =3D phy_get_mode(phy);
>  	int ret, lane;
>  =

> -	if (mode !=3D PHY_MODE_DP) {
> -		if (!hdptx->hdmi_cfg.rate && hdptx->hdmi_cfg.mode !=3D PHY_HDMI_MODE_F=
RL) {
> -			/*
> -			 * FIXME: Temporary workaround to setup TMDS char rate
> -			 * from the RK DW HDMI QP bridge driver.
> -			 * Will be removed as soon the switch to the HDMI PHY
> -			 * configuration API has been completed on both ends.
> -			 */
> -			hdptx->hdmi_cfg.rate =3D phy_get_bus_width(hdptx->phy) & 0xfffffff;
> -			hdptx->hdmi_cfg.rate *=3D 100;
> -		}
> -
> -		dev_dbg(hdptx->dev, "%s rate=3D%llu bpc=3D%u\n", __func__,
> -			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
> -	}
> -
>  	ret =3D rk_hdptx_phy_consumer_get(hdptx);
>  	if (ret)
>  		return ret;
> @@ -1701,9 +1685,10 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  		rk_hdptx_dp_pll_init(hdptx);
>  =

>  		ret =3D rk_hdptx_dp_aux_init(hdptx);
> -		if (ret)
> -			rk_hdptx_phy_consumer_put(hdptx, true);
>  	} else {
> +		dev_dbg(hdptx->dev, "%s rate=3D%llu bpc=3D%u\n", __func__,
> +			hdptx->hdmi_cfg.rate, hdptx->hdmi_cfg.bpc);
> +
>  		if (hdptx->pll_config_dirty)
>  			ret =3D rk_hdptx_pll_cmn_config(hdptx);
>  =

> @@ -1716,11 +1701,11 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>  			else
>  				ret =3D rk_hdptx_tmds_ropll_mode_config(hdptx);
>  		}
> -
> -		if (ret)
> -			rk_hdptx_phy_consumer_put(hdptx, true);
>  	}
>  =

> +	if (ret)
> +		rk_hdptx_phy_consumer_put(hdptx, true);

This looks likes an unrelated change. Could you please split it to a
separate commit?

> +
>  	return ret;
>  }
>  =

> =

> -- =

> 2.54.0
> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
