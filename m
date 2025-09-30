Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05B6CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+orjx7v97sZCbpAqL08hfUq1bHOgEtiBP+hql5Vy2tY=; b=e/zJVZITwSQO1r
	5tv0QOdvysx+iSAyjFJgu41fWimw+wUqlbKplyyQtpDFZozAPN/Bee0CIwm768TY91g7hlzseiFUN
	g+9ZYvzogQHjjY4dAoJfQhkPDRedGRg/kwscw9Sk/bkXAskFOTQboy1R5ZikNWs+pYTQXcDyFpblO
	wxodWkBT1nrwMVuKG7iwQUmMYy+l0SBPKjWrxBj6WIdvKlK0K1uqziX20u/OMRc1aDujaOp3up+aF
	GfIRBeS4suQqiETvWo7qxmYz8diCs+697HUbIUkmCEot+NlrqX0f1VGpnkrzAYJOzGwwxes6NFcs/
	fXA7ofGwq5+YhHY1a2iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gfy-000000068o0-3A1V;
	Tue, 30 Sep 2025 20:10:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gfw-000000068nS-2Hqr
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:10:17 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBcvCF011599
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:10:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HUh15XTlHhQ6Q1q/DhGrQFrr
	yiPIaucH02PqHMC1azU=; b=ffJrJ0PSTxvIAskznd1HN89PYvrtK1jPtX4SKcyO
	n9M360aQdp97l/HD2LB0hM7I3AIBClvyVjFNX4Pe/4gDkw4p9PlD04eunPSwsfaU
	bBZ2YMmmJnJdJ/GcYahlQn8cIUTUvbx1ueAUfOYhx8IYeK88/xQZh9o48wuAIdXR
	ijxVM3znvZbccrA6V9xUPuFJsIrCrN59afxk7F0fEZttLODdeHJQTFWQBJf6Bxa5
	gtEUZJv9MH7ZwXBQq/ay7K9XBo1P0u8OSz4pSDBjqaBB/TGe9u3vSOB94F4KoOj+
	jyc8+qidoq5LZ/0oKAzmhM9or2F0L1OrF6O3XA/5b+R9VA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mctpem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:10:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4dd6887656cso118275591cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:10:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759263015; x=1759867815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUh15XTlHhQ6Q1q/DhGrQFrryiPIaucH02PqHMC1azU=;
        b=lygHUQIJMeh461FdpxnSfRL4nuEf4S2D/hUid1yh1avtd2+24KNr8rU+ThsTKhp0Uy
         HFq+RSumFoKq0IliCllu7/TFGtUDSCHeePH4h2pgUvzP7yDPT3uSYcMOytpWyhlcjoK9
         qMbZ4h+FkTTjIOONTBE+RqGO0j9x30//TLwVRUfr91AFqAChhd8i5xmE6K+zuUl3+S/L
         fbskfD5CUZwaGD5sfFf6FZTfu4bu7gvg7IAdvaaTgrLxVVD38wbYhBLeSDP1RqWjWk5x
         CtjUuNOG8ytocUg+0OSYDQ+h67Wxqm8Y6HtAq/JUUImyVikz5EXTMr3LaiM5U3IeTcqK
         3eKA==
X-Forwarded-Encrypted: i=1; AJvYcCV6HjsP8f65XMBpkliUkUDLtf0fMmoUXbCNcLNIftuY7xrS+P6AbKzHejCSpw/lBKbMN72XVyyNcumIdjuPgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yye/dxs3Hi+AJXhydu2wS1g9L+icK3SVAWIvyEV+Ne21/GmyMO/
	2wtu09jrkLokoNK8/TqKoVvUfbo6JxSiMKDJeL1YIrD8cRtuH83dgd0DU+JnOjV3ffOxtuLglGz
	Qnv/5TBVZ0QlvzkqXnEuth5UbGrBeiXh0ZCjCK8zkqCFedbpS7cSsTnXwGq4Y0dtuMQR5hj/rSM
	s=
X-Gm-Gg: ASbGncsbRmIjo44D0qLmMqQeDGtI5Bg/nKzMJSEPH1CN+w+ycwl8Zc9BVE9MSomKhw4
	4Xn57/NfymId2G261nRoVfYWxiwxqRAqiCMI7N97OFOQltv5CYdOL9MEB+ntHWcrCgS908e8QZ4
	Uc7spytqEpnxp4yM678BmroetCsHmstrpLUvnPSVIR1g2GUk41hEbxVfuuN+IK+MOWu/ekDx+Rd
	5gnJJgLoOUEdUQ1DcYil++2aykYSZQfHL7BK0ifC2RpWnITDySaZyxtzgcfD7g6Wn7cqQ2PicqD
	UGxN1kVWpREu8tb4+Rf47UoHnkvHOBSDyUveCpknVKtcv478kC64qHxRKjn46DeUXgaFWdwEWYJ
	mO0TgeJC7zfJHypbX5Vubn+JORcf9qcrk49+43otWJPXOT1wNx3mpFcdM6w==
X-Received: by 2002:a05:622a:3c6:b0:4b2:f4e5:8eb1 with SMTP id d75a77b69052e-4e41eb14998mr12848321cf.55.1759263014526;
        Tue, 30 Sep 2025 13:10:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkOHi3Cw4K9bHAEsEdXynVuyKt+2OCerw8APvAAWKM2bNTs+Ga5p28b3x5snKdH664Kuc9Vw==
X-Received: by 2002:a05:622a:3c6:b0:4b2:f4e5:8eb1 with SMTP id d75a77b69052e-4e41eb14998mr12847201cf.55.1759263013780;
        Tue, 30 Sep 2025 13:10:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-586b0c1f9d4sm2610582e87.49.2025.09.30.13.10.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:10:12 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:10:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, jingoohan1@gmail.com, p.zabel@pengutronix.de,
        hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
        dianders@chromium.org, m.szyprowski@samsung.com,
        luca.ceresoli@bootlin.com, jani.nikula@intel.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 04/18] drm/bridge: Move legacy bridge driver out of
 imx directory for multi-platform use
Message-ID: <x2fpm4rb7ermb2tyjefdwwbvwvzt6uosd45ad7ku3tp3yqkmqc@bayzgz3jsqkp>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
 <20250930090920.131094-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930090920.131094-5-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68dc3928 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=_9FxbLpkiinsEApfcMMA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: wNHSm93TPautmuCN6AEK97EMgp1EZOap
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX3QW23szT10gV
 eVGi09rOxPlBj+nEktkLiSIgx7aUDT/lIasEO4yPcjuXEWhRYnd9cSdUU5BqY0A6qRj7duth/oL
 6/1SRCj0KkUIMh8mmnPimiqOcGGkmIQ2NVNdVArubl1b+F5AS9lMNsdeBsZs3U7yYapPP0gdjZJ
 kycWn78m9xW5ROIXe/4KS0heXSsAVaM0g/JDYh6nPukCyS2gkj1LrzKaTxEFgZaKM5RffBzOIbh
 mpM6KTqxU7d+3Y7/vz4v3DttOOhbiuhlX6IjlIvu9t7N0fkiWXbDct1gpjSYUUfL88jlrroyUIs
 jYIxKAAW5w9lMKyzxA78TmlQvnb5Rg6NmFsdwyhkAWROeclBmZxwZn+mcJV+Pu19ZnBILsqXMFv
 Z8v21762i00+tKu2A1oi3X/G8XuLQw==
X-Proofpoint-GUID: wNHSm93TPautmuCN6AEK97EMgp1EZOap
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_131016_584514_DB518407 
X-CRM114-Status: GOOD (  19.17  )
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

On Tue, Sep 30, 2025 at 05:09:06PM +0800, Damon Ding wrote:
> As suggested by Dmitry, the DRM legacy bridge driver can be pulled
> out of imx/ subdir for multi-platform use. The driver is also renamed
> to make it more generic and suitable for platforms other than i.MX.
> 
> Additionally, a new API drm_bridge_is_legacy() is added to identify
> the legacy bridge, allowing specialized handling for such cases.

Why do you need special handling for it?

> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig                | 10 ++
>  drivers/gpu/drm/bridge/Makefile               |  1 +
>  drivers/gpu/drm/bridge/imx/Kconfig            | 10 --
>  drivers/gpu/drm/bridge/imx/Makefile           |  1 -
>  .../gpu/drm/bridge/imx/imx-legacy-bridge.c    | 91 -----------------
>  drivers/gpu/drm/bridge/legacy-bridge.c        | 99 +++++++++++++++++++
>  drivers/gpu/drm/imx/ipuv3/Kconfig             |  4 +-
>  drivers/gpu/drm/imx/ipuv3/imx-ldb.c           |  6 +-
>  drivers/gpu/drm/imx/ipuv3/parallel-display.c  |  4 +-
>  include/drm/bridge/imx.h                      | 17 ----
>  include/drm/bridge/legacy-bridge.h            | 18 ++++
>  11 files changed, 135 insertions(+), 126 deletions(-)
>  delete mode 100644 drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c
>  create mode 100644 drivers/gpu/drm/bridge/legacy-bridge.c
>  delete mode 100644 include/drm/bridge/imx.h
>  create mode 100644 include/drm/bridge/legacy-bridge.h

I'm slightly concerned with the name of 'legacy drm bridge', It was fine
for 'i.MX legacy', but now it might be a bit of overkill. Maybe
something like drm_display_mode or drm_of_display_mode bridge?

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
