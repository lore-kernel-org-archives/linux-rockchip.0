Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D79D58CD1
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hLoqzdQBi76oiorZFFIG8blx/8mslb6k2vopgPKGK58=; b=mWsc9P14mlC9KD
	rtBcVKhN6xcos470cnalTdB/UiJgHw37Nvgn/gZGKOtbkGFLbAmR2QYvwLfxLCdybAwLxLyZQ8zu3
	YrVjRCG0bl/aCk0OAbZqRZ2qFj1X9buzdi59bZSxd9Hn5JWuvaKt6wiRgf8DQ7BZuN7zQGUBTidHm
	Y6GRUUF8l+JnfOOClzxfuYiwMO3eP4t08YYaIwdPASEvd9LK1KBCq0BJsdLs+eoGhFH6lunkJpJUr
	2qiCrwjEavImBlfOklcmxeCWHGrgkfDGy22QXm+vjC02U0LFhkyPkTVUtXIueaQNRgXq31RBDH5AR
	C0psWMBCAhrIkZ277Gag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WaV-0000000FzJg-3w6Q;
	Mon, 23 Mar 2026 04:08:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WaJ-0000000FzBW-1uCN
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:08:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MGUW21545525
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AqeC/roitS7lz4atrPMGBHkG
	fv3MPIQwtd12I+kF8Sw=; b=d1R5o6ScrRpvUSm5twz1BpFPnyTr0nJI+3j9WZjW
	hauYc6RhhGiqd+eNOVlzr7CAZVGa7x8+3pn0dZP+a22f64h1IVM2t7WminprqPl7
	RHOpEQS3XEmmJiZ4Z2+lqufwyhESST5agXuk8EfBE00yytBbnZnQ6k0u09eo/Ic9
	3qVS96LHmLZFbHfSXr5GM6ssgvlgL8Ayw17+6O2sg2GqQN7jVjhYjs8S3NwJYO8h
	BvmS48hH80OR5xzCb7XjLCdOEZUQQgCGVIYKKrTpOREmP2onis8Dz3+/TUkzNarq
	szGpXPPh1RkCsb+Y0Z9k+UKIRga00lpmIy9X+lEYgm0crQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1kq5un1a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89c3d3f5799so25779086d6.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238890; x=1774843690; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AqeC/roitS7lz4atrPMGBHkGfv3MPIQwtd12I+kF8Sw=;
        b=AqHR8VWL1Wq44CC3dLNSMk/DxS9tkPtl8xXj3pd8pjcMGo44Sk3APLmBxwn6uWnhPH
         xZOydwVIECXvxsWxLQf+slNEr1DsJ16u7fHFEYFRlbCTGBIRFMg2AWPjX6amCIpzLPmm
         Pq7NXYotavFF5yLfWjLWY/xPhquQHNqxMYEAGEgIfGNhJTrtjB9TK9WzZe/ayYbZp2G5
         N5p74PnC2fOLnl//68bjU3ZklbN0Vt+sfYk/CO0frzILnglt3HQg6Zo4hm51k8HOwUlL
         LhQdig9tg0sK5hDFuHAYAURNgVaA2MnJWWpZGdGtwNpGRZvw7F7Qz29twoatxyHcgRQU
         NAUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238890; x=1774843690;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqeC/roitS7lz4atrPMGBHkGfv3MPIQwtd12I+kF8Sw=;
        b=YwnPxgDs/VowXgzOjRlJC3kb9pkmf49Zcmw4UBeJzkRFCSpVhCJyGAQxOLBN3k/sO8
         Cp3Gq+Y/jtRfZGROwipfEJSBJjAgVrmb6usKd3DOb7qP0+o644Uab7qEs6wOwCrXkecm
         uKOmq+mWlewKyC8dh7q/xPVVc88k7HtPahkuQKXI4V2X4Pv+QUH5VY7YsffWfgV884gh
         oJn4EslJWOdNqGI2a0ccAwCtGsZ6hRYb9jpxtfLJuacYdjnPeprgHHVo6I4gI3yvd+24
         AMmAlRKMwKsbVH/w9yHfFBTZJoz9ydtP8WoBaZ8TjOWa4qnTY2YFM28VCTHYLqmDGToE
         bJkg==
X-Forwarded-Encrypted: i=1; AJvYcCUvZuiIbYFBLczTVkIN4sU1szJBsYllS5DHwW6Vhx+TRw4UPCaVoqUHmAjChJWWayxstSK7vYbXf2BaiLcRuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxmN6kX8fKfA9m1FPpjI2NIiSt65nng2kzyk4dlofmPe1barLeQ
	4f15Ky0UBrBCD6oM9rPDY00KIgY//svCQOtlHtqFa0ujGh4cDclsPSVCi8AR0giWSiy5WHiLyUT
	NDn1ooTnAThZ/q2zqcQW3hAavUjNz6Y9q+uO2w9dzefoP8fM2WknBpcM1fhjfM6gCXaTSevodBy
	E=
X-Gm-Gg: ATEYQzw8o01oNgfrzTK1cacdZ4yG+Rx9WNhUAbRk83wTAUrv94ow71+zDZnx1zZCT5S
	YPc/grw0n94VSISq4gfApboK/FEaiB3fNErpBGXEEheMQaQG8qqTrKd9mwO6Q5bkKsWQvzo33qi
	Jnns9qK8Awsd573hdlfgj9PDjjBvIR1M7av0xoVxKcNOUrnlaV3uXu2yqPBi/cdwp2JgoDOaaqg
	aZHl4CKxh7wXrUtOb60Mc+XLewykh4XdvbvvcxOly0zpoXKDegalj/oB4MUCpeAZeu5P3093RpQ
	/+XURoqN7EeuUkOVjP4WCl2IQKuHlkO/MNaaYJobM42Ilctc7eUHjt/toZCtDK2VhbFKeBhnYYT
	U7edSvr0Q/AjJeDPbl9rKJ2CfI661uZXKPD1hqJ+CAa/48WMOXLGeinMwoaWvpof553cBx3tfVH
	tYWOlR3i15bBrAn96XBO11KKzlypOXKh56OM4=
X-Received: by 2002:ac8:7fc4:0:b0:509:2ef7:7034 with SMTP id d75a77b69052e-50b37538e75mr168613831cf.50.1774238889757;
        Sun, 22 Mar 2026 21:08:09 -0700 (PDT)
X-Received: by 2002:ac8:7fc4:0:b0:509:2ef7:7034 with SMTP id d75a77b69052e-50b37538e75mr168613281cf.50.1774238889243;
        Sun, 22 Mar 2026 21:08:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bf99820ebsm21316001fa.20.2026.03.22.21.08.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:08:07 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:08:04 +0200
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
Subject: Re: [PATCH v3 06/14] drm/bridge: analogix: Convert to
 drm_output_color_format
Message-ID: <rf7nfbpyc7ce2t4c23melurn226egzqfhk35wt7q7yaurkgeeg@yu4qhmtblpit>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-6-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-6-f3935f6db579@kernel.org>
X-Authority-Analysis: v=2.4 cv=GNoF0+NK c=1 sm=1 tr=0 ts=69c0bcaa cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=O2P03feSXV0Fh_yUmGcA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfX5VmBiqY2G3Vi
 zFDzhp0ph2HxRrcjl1w1fHnZ1ENfZZ1/8Od1sv4kkgfOY+WIgaIKmCyUZYMaNaR0NQl8JlVz8vs
 DyKK0YZvdsUW4Gl6ypavLArc60c4cZFU20/xBoFJn5Q3KaU2MjC5rhZi3/PzRvfSOXChMKg2zh8
 5YkYYWuO8H52x3sSPLFPRVEiLlqu5DMWi1WSLVfSGLe/0MOcGb2vrOsSLyzDt6iNr2jvPb1ut5p
 ens5SER5m07OxxsI+UVefIe7GqUH3DqkOyLcUbauoBT2abl2AT2tux5wcHgp2DPbWUDen2WIj72
 RzIlQ08cgq8SNshXsluiMREngPHxbZKWrB+7MEL2RhkiyErCUi3A+uEQVbV38mQ7KzfaxoR9hKS
 8zDgVyYFtGwMNcXo1rqrBA9rpQckD7ENltXv0qJ6d4RI3tJUFILwRNfx1l5vcbLR9CzXerQidu/
 bCxVivel2KTa91RFWGQ==
X-Proofpoint-ORIG-GUID: T_QiMxHUIMGjhkiMK0z75c9yfXjnpTun
X-Proofpoint-GUID: T_QiMxHUIMGjhkiMK0z75c9yfXjnpTun
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210811_659077_12F5D3A1 
X-CRM114-Status: GOOD (  20.55  )
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

On Thu, Mar 05, 2026 at 10:04:58AM +0100, Maxime Ripard wrote:
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
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
