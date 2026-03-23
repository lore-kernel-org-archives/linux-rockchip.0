Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E506D58CCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2Mhql90i2tUlFDs0VuGRBN2GCeXAclgw/02HdTDr5E=; b=hyZxKvBeFayFpW
	/M+KWtM+1+IHUaBbHli67W+GmfcMdxr6lhZQatRdDYUI2agX9UXszA+tH2wPpQ1XDegBdF10dTtWd
	IGM3aNnZtjHILaik9XoSg29kRHPQFn6bBYvzZxkXlo6cgGocPxE41gyQgexHolvLt0lIjhDBdBe06
	lRsm1SW4XhyC52kmM+HZV+k09illFPw9J0K3q19KuCDrkXPAD7gvme6J+fM+JTbXihP8rj2SiBZ/b
	23cQxS5v3N8ulg+uXwEK+7jYpRPhZpXK7C7JZO+mJyyLMtxINsOLXDNvOZ8rXqMd6oY/LRNlViwhX
	ufV904XUhemKMtX7ie5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WaS-0000000FzGg-0Cxg;
	Mon, 23 Mar 2026 04:08:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WaB-0000000Fz5g-3VBz
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:08:04 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MNTmHL2370531
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0ieE8/etbiGBriPXk9aLuLM0
	adGVcwwwVV2c9dNbcDA=; b=QgFuGqQYpMk/v6+sTtS2E6AyyL6NO3xR8buOH2KD
	I3JgL+cLyjr3rD+QRimtloHVuf84G7DYRVfjZc/Qxf9yfzASQhU9ZBd16DDsgBO6
	vaFOhHq3zID9O+Ha5ORB1e9/Wua7BqsCXQHRipSHX4TG1eXT+w9VP/d1upa2ziJP
	ddhAHSVS3NzQAcUyIA0yvDZM019E1fuTODHJUMC2DRD23C4ba90Gx/VhTxXEv8cP
	Ji0TYJVfBHZR6KCpef/ctsORGlbMTjsWeK4J3pEai57inymGl2dJRY3fK5149XRu
	AA2Xsdw0/jLjQIpUTSqF+CyzbyH1vkyaESJ3DaUDrWCBxA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1m3cuh7x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:03 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50b5f675be9so69048201cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238882; x=1774843682; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0ieE8/etbiGBriPXk9aLuLM0adGVcwwwVV2c9dNbcDA=;
        b=D6EFxhcvEMPBiZSQsvktQl+oq2cXG3fCX7Immu7GqXxtHlLbDR3VWupw8t2SGEFpPC
         rpmgnkeR6ROZ12IiE4FOd2/icD8rNsojoZWdj360mF5sSzK9W54c28S8bHRMLGdZl1ql
         dGVJXcXY5iVuyIaOiHNpLWd6MsawKzYBgxOlQt0qS7sv7WSWxgAy/BCQ+GBu1MKRSux1
         6V2Ou38WZ6WVqPzhLMU6fQKPEisf817hwHH78zh3DSMQnLwu/gRRlEtRaWJ4XKO2R8gO
         KQZId+1MO5pPXZGMGVTrlv+ewtcFCAXl9C9lPF9rcyoic1r471WVrNjo112uddQH44TS
         VfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238882; x=1774843682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ieE8/etbiGBriPXk9aLuLM0adGVcwwwVV2c9dNbcDA=;
        b=pa1JediZnnpcrIn1lU8XrSQyBY+9UjYR1dR0xAVhHThT+fh9Vc8NrpgvBrjVk2q9TI
         X6jGsd64n217r+8luj7Z0rAGop0EjkXgEfXsPeUWvn7IDiuRQI84eU21I2lg1n6VnK8e
         pJtF4cLgb9pZD0WAs0V3insgWWs0fTEmlDSgIGyY013jsgnvwpLocaj49nq8SBCV/Nvb
         3KDeGAz0/yMH7f9EV7dzohic/QYdCq1b+aIqArtQZyH3KPOSxHwoTYMveMZ6VczuPEkq
         1vSBP65kYVUgYoTdcDzpVYPY09a25R9hohKqrJaH00UNqE8ShExEOdHrMrSL3FJeFrNf
         tZ5A==
X-Forwarded-Encrypted: i=1; AJvYcCUlPI28pgDkdFEOn5fHAyurGRUbvHQ1WkQLzAkj/a8km1BuJqKZgCypK4yspVyq4htEOSQlRRBolv2WiDcOwQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzRQEGjnsFZZa1UBX4ECedtN2EusE+MeBP9HXTfhWeEFXpFXW8P
	zq79xuphhjD3fEhimOoRfAX8iGApat6ABbT3oHeQGwymPxBzHkrzuBQWzlG9/BpBSA6nVhK8Dqs
	gSKuviep+cYFXn9j3lWzEDRSF76d0Zng/3hgth9xvMJCD9nV15yRZjLoBaCcHXHTHWGRliWYUQ4
	YllXDpm60=
X-Gm-Gg: ATEYQzwaZl/HB9+Dy06tQXh5Nmpfu1cjdVcptt0VxwzMLajNXCa4BoOrUhjFVX4qADz
	HU9fKEhPOVlEk7apenjgymAxZoPdj/p7/2PlKGHSX3UCphG+f+QWf99Ig0Uo0fmuKKL2N38uZCk
	yDyBHOwuNAl9hqO11nUm5dBPm1fMoc/OB4tlj+PNUoBoEYh+s34FakN7I52TWZKyBinjcXZHcbL
	cFiHp/cv8vdJnjLGqLu/T9aw57kIasqJ2usUeZuQSRsKVlg+jU5eopfKRtbas12g041Wkip/JUq
	+xwrqiHMhNV/tNQENtD7KLFiMweS/01LFR3ZnN4iRytSbUQ3TBF2G7ZJCTQuUe9JZulyUweTcvo
	6XKHcQOI7sTjF/o18awusapX+o1pnrG1LI/vCoHBdJUzbo7HgmuKvZiTOabH6fn/5SbYOOC8Cjq
	ktN7sXn2mWIITOSfJJxpeL4G/NyThijL+jYKk=
X-Received: by 2002:ac8:5813:0:b0:50b:4e65:95d9 with SMTP id d75a77b69052e-50b4e6598f9mr88672691cf.64.1774238881942;
        Sun, 22 Mar 2026 21:08:01 -0700 (PDT)
X-Received: by 2002:ac8:5813:0:b0:50b:4e65:95d9 with SMTP id d75a77b69052e-50b4e6598f9mr88670581cf.64.1774238877393;
        Sun, 22 Mar 2026 21:07:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285192b5esm2239889e87.16.2026.03.22.21.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:07:56 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:07:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Andy Yan <andy.yan@rock-chips.com>, Liviu Dudau <liviu.dudau@arm.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Liu Ying <victor.liu@nxp.com>, Chen-Yu Tsai <wens@kernel.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        amd-gfx@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 05/14] drm/bridge: adv7511: Convert to
 drm_output_color_format
Message-ID: <orzixmg2drbnkygv4wz77ddlvbfbkmhg3hydt67b6xittdx3qf@2hghjym3ggon>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-5-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-5-f3935f6db579@kernel.org>
X-Proofpoint-GUID: 4lkNbKCk8QI47F0X-XJeQwGNP6PXGBjl
X-Authority-Analysis: v=2.4 cv=Z5rh3XRA c=1 sm=1 tr=0 ts=69c0bca3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=O2P03feSXV0Fh_yUmGcA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfX//v3+wqYf3yQ
 lWWnziPT/z2AA/MDIMLwfKMayFAMICcxntfcUSQ9RlZTS8mIZdOyg9LqVyTS1vO1+F6/vZqzv4D
 YdEHcxWdtvZldWZGpolytjZZmcMbqRKrzkNZBZ/yQvwNExY+J+AHNi/Nd4h7IMEPJujCKwX4NOs
 mqzA+qzseO9oNyLxL7CcLcRHmz+kRq3a5medAgfoWRgcTMznBfGmXOdNS51UsYfsYVDaE4qNsJn
 GYV7qrTJisg3mmyXTcQByy7L9BYiY3SQubpz8gFQrYWaHcdtT4y3Ns9PchVJ3EJHgD6Ixsdj03A
 qD/7YU/sQvQe8GRTHpmzIX0C3BX5XJlOZqypPEikF/k8VgWShPDJBT8Ku+CwFJAlQDHFhTVWoS9
 PGHrJOPQW4XiCQd9XqY4wtgQDBdG45YzpM4/UUsu56hjVGqMyfoadAfhCpwWLvhGrQzVzxzMxXx
 QXbYk6l5X88yfDg2rxQ==
X-Proofpoint-ORIG-GUID: 4lkNbKCk8QI47F0X-XJeQwGNP6PXGBjl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 spamscore=0 impostorscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210803_917631_D4E9D88E 
X-CRM114-Status: GOOD (  21.21  )
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

On Thu, Mar 05, 2026 at 10:04:57AM +0100, Maxime Ripard wrote:
> Now that we introduced a new drm_output_color_format enum to represent
> what DRM_COLOR_FORMAT_* bits were representing, we can switch to the new
> enum.
> 
> The main difference is that while DRM_COLOR_FORMAT_ was a bitmask,
> drm_output_color_format is a proper enum. However, the enum was done is
> such a way than DRM_COLOR_FORMAT_X = BIT(DRM_OUTPUT_COLOR_FORMAT_X) so
> the transitition is easier.
> 
> The only thing we need to consider is if the original code meant to use
> that value as a bitmask, in which case we do need to keep the bit shift,
> or as a discriminant in which case we don't.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/bridge/adv7511/adv7511_drv.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
