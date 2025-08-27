Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFD4CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 01:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+6BsldWRnNH6rU/gUE7/Uoz+uXgsjoPr/0u4D30nF8=; b=R2hqMBF+p+44J+
	VYEy8ymfv5pr3gPhu6ZVufQ+XT5A5eXq/YWER6siRkGi329dJMRC746CSj2pNVbc/Zn4O0NnNMe3/
	LP+REpSLdy1vu5OQlWn2oyPZORavGK2asJpAzAd3mmG+YNiqLre9dtD07iGPYesP6uwfN5rskrHeY
	e8mkaAUBBMw/n+EH/NKdVzJDMd1nj0byv5d5WC0cSNmPSCE9SiGb+6x3bqR9mTRVR5DE5pwzgd2ze
	KrQgxHDf1yKXfWpKcknitb5TyWRYDm/X202N7FtircmY13cb3RjOAyHIVdHqwWzER9fe9iWiPCreg
	TLBcTt8DQpr46PjM2WlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur5Lo-0000000Dar7-2IKw;
	Wed, 27 Aug 2025 01:53:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur5JK-0000000Daeq-2DfL
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Aug 2025 01:50:52 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QHLGg1027994
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Aug 2025 01:50:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0laXQCaNkR8BdkTEIAIjvxkP
	U6e+xAcI3sMZOZG++40=; b=RtohOwq/mGWF5aMn8hEPDpMx/rZR9xAALF19Kgyn
	ABnotCfpABau8JwSOXOICFi9m0+JYeo5KRmxM7/PZXvfAVZ+xkORF/VXDwTNR3Ph
	HPx+mTISivbCf4otlZINmlEZaKzFvdI6E4ajQHq9yVGAUfZo4nLChDdFD8U1iaE4
	IS1qmtCDKjKe0bte0kvKERccexJ6lHl808lZOQbURByejcjFT3WTBN/nsM8JSd+g
	k1B3AWzsQK6lbv1D9bzTVgUEmdbFOgAkV//+43Xv1+qkGLvzB6NM7Z7dZU1NecZ0
	guNgLQYiFnm+R6mcteg49ubo9IpFgtLwxmbQpqJPkNbHbw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48sh8ah6hw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 27 Aug 2025 01:50:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2dab82f70so62268291cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Aug 2025 18:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756259448; x=1756864248;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0laXQCaNkR8BdkTEIAIjvxkPU6e+xAcI3sMZOZG++40=;
        b=fSRWml6MrwHDu9pFjhVFqrdJprMxs1qmD9/u/2q+Sh8DvOsOgEOVntYCzdtjlch9hr
         1xZQ0ThYQSQ4qphxDEYNX1h+zShXnVQHlDcGIwmnNOlimgfG9dG5xIIBjUSFMUzYcHQZ
         fvzX2QGsTAaD5t37LwXs2YMx9MrEWUMhROFTqfRJFCQTS6R/w6CsXP7grYYN+IvdjV3P
         tIt9LxPmkUbeBFnfqa8MVV1PSJDGDUY58tcrreITtZVRPz/ngSJsvDuAdNgdr9uDmKS0
         p71OLQPFgRIRKnHKLqvhPDrV+1QyvGwmsTeAzRpJRNQW7P1kuhQ3eq1E/JlBSGMY8H/7
         /Ymg==
X-Forwarded-Encrypted: i=1; AJvYcCU8D68zHi/Y9ohUBRCqsbhbhGjMHr0PgzMnP+9dbhoWWU6Q5Uovjv9Pmy7BZpfzmY7JGOkJzNI5bMtpDCp/dw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRNw3oMaVOqwRY8fCx6ZZZtFIaDG0HCZyZxGfXYLz65ZkxqZCT
	HrnAephQ3fboG60V0MYqFW+Sl4fsCY6LhY1hHTFcSMHmc1QOL9f0yDNK+zgeVejA5RHMCP3N17w
	0UklUkXvFwCvk4vO4a4k/S0UgXCItnD+GaVSrfznAx/IjpFju8IAb5YqoohKQVW96BSNkPhW8Ep
	k=
X-Gm-Gg: ASbGnctNgjjgO3F1kXWy57QeSYhBYan0xMh3VgodIGwUINwJY2Di3memqR76cV/ucOq
	GgN0jEL8t040X4OHwm1GOuZeLhIoS7s5tkrttL7RDWRQRYcCmKaKKzQL5ikYa13PU0ZmM+dRlkK
	sViyGx0KRjX4bT0JesiuWwENG+U7SyQJ5vdTrOcmZJ5crn9SJ6aCEkgKiKhnnhzJ74pneeI6FzY
	0nKIVNbmHAEkVEFDd78pkAeIiqkQHOfprBfudPDRD7k7f/jZrBE5bA3ue4Syx+dfx0BDfvV6FNa
	tJ1M3bjqNvKnEskcdBSHJ/ggaVt1FAbdujA2jN8PhAVkU4PfDELntBIX74W9D8iChXThXIaVjrP
	SmSkBkNc/G849WCe8mN+AnLFLj3UR4yactDvZ+v3DLUQeHwBfcYtc
X-Received: by 2002:ac8:5e12:0:b0:4ae:6b72:2ae2 with SMTP id d75a77b69052e-4b2aaacef55mr186156871cf.40.1756259448003;
        Tue, 26 Aug 2025 18:50:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMxKJaOrtRDBj0yHJf7PhiEmF+htiaol/DYqvG4rG8Xn2tdgOPzsKsBrI5J0XgVP0gDX2TkA==
X-Received: by 2002:ac8:5e12:0:b0:4ae:6b72:2ae2 with SMTP id d75a77b69052e-4b2aaacef55mr186156351cf.40.1756259447377;
        Tue, 26 Aug 2025 18:50:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f4b46d050sm989200e87.150.2025.08.26.18.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:50:46 -0700 (PDT)
Date: Wed, 27 Aug 2025 04:50:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Louis Chauvet <louis.chauvet@bootlin.com>,
        Haneen Mohammed <hamohammed.sa@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>, Jyri Sarha <jyri.sarha@iki.fi>,
        Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Russell King <linux@armlinux.org.uk>,
        Manikandan Muralidharan <manikandan.m@microchip.com>,
        Dharma Balasubiramani <dharma.b@microchip.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@tuxon.dev>,
        Inki Dae <inki.dae@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>, Liu Ying <victor.liu@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        Edmund Dea <edmund.j.dea@intel.com>,
        Paul Kocialkowski <paulk@sys-base.io>,
        Sui Jingfeng <suijingfeng@loongson.cn>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mikko Perttunen <mperttunen@nvidia.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Hans de Goede <hansg@kernel.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev,
        linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 26/39] drm/msm/mdp5: Switch to
 drm_atomic_get_new_crtc_state()
Message-ID: <dc2sfo6edj4w3qiwldoglaanbi2h7mmev7x4pklwbl7x6x6rah@kjyc52pv2xqy>
References: <20250825-drm-no-more-existing-state-v1-0-f08ccd9f85c9@kernel.org>
 <20250825-drm-no-more-existing-state-v1-26-f08ccd9f85c9@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-drm-no-more-existing-state-v1-26-f08ccd9f85c9@kernel.org>
X-Authority-Analysis: v=2.4 cv=cLDgskeN c=1 sm=1 tr=0 ts=68ae6479 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=viL_tbrIvFpnGUkEXy0A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDE1MyBTYWx0ZWRfX44VY6U47VGOJ
 I3cUcqM+wVehhxBe9h4nlkYxyMd6fVnDql7QGnsyFfiZSPVoeDL8mB37VeAgbQr5KmIy/sN/cPN
 WBI8pWofEpswkYe2k6V4MsZzBFsHMdqIIXgfcrL1uXfjMY1baksowV6qJNZGKcrkFThIhdgYeMW
 jezoC44LlrmTP9q4RWx91kPS78NUNdDck3WxAQwjHGB4nSfPjXsXHonI2h3U1Mt5Q1FBD4NmGnT
 UGlAh+dyB21Pu8TD2CJfcAmr9sH/3FfZzwsgX7zNn5VLWDxeIzYeGjtRliCf3/k6QMuvSNTt2YW
 uKIIX0c6ef86XkUxUxusmv02G+rbE2Meu8KD0NICMmeAH2lTSn6bVhSeha5ZBtIu4Gb7tSq1Rpi
 PVRnz4ig
X-Proofpoint-GUID: ARhIZCuLz1br1q6X1tj-94XyVE8fzPkz
X-Proofpoint-ORIG-GUID: ARhIZCuLz1br1q6X1tj-94XyVE8fzPkz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508260153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_185050_592730_54EAD8BF 
X-CRM114-Status: GOOD (  18.78  )
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

On Mon, Aug 25, 2025 at 03:43:31PM +0200, Maxime Ripard wrote:
> The msm atomic_check implementation uses the deprecated
> drm_atomic_get_existing_crtc_state() helper.
> 
> This hook is called as part of the global atomic_check, thus before the
> states are swapped. The existing state thus points to the new state, and
> we can use drm_atomic_get_new_crtc_state() instead.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/msm/disp/mdp5/mdp5_plane.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

To merge through drm-misc-next:

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
