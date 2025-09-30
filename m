Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E37CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdurpGPnj09JgK8i3bioD8/d4aXWRGG7yJfrryOls0Y=; b=TD6hXMf+jiBkal
	EKLYtb4Fyhw4zbZjMH9PwstaYUTsGuo+fiFwSQvpIjYF7nVMv5f3Fa9Bdet5oGiUpCFVUAnB86mQn
	7YsMXwrobJSnvjn7q7dxJcMlQa2+kZ6LNOaLIQfmxlnR09QiehV2poCrU0fYkgl8igVhUclyRqrcp
	iDjunstE+SdFiZc+6CTnbvly3IPXmA7c1Bi1NKGMTgYjWH5jQzhYlcwpz0Z4037ZNw4Zz8yd7ex4P
	JAusCg8nvuyxbIT3TpiMh4f243acBiRB3J2c0vFT4w2u7bGYMgz8mTSKzeWXLUyA3zbRgOGomz2nE
	nvrBdPAZmFWl6uFykFGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3h1R-00000006Bjw-1yYY;
	Tue, 30 Sep 2025 20:32:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3h1O-00000006Bib-19SY
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:32:27 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCBqsL011523
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:32:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aQIv8HbSGU/ItL07DFk6fn1p
	HIrebqBCTmh7KKahI5w=; b=cOGafGbMemrEy2Yp9eUfawzJXf6Q3VhICbNjmOkF
	ZQlv89/gJcQ7aiAnGhnt7WtH9I94mOdfDhXrfWQ7cYlIKq8ZwyhqFIEP7gxNScp+
	HKS1hy/sLSced/c5RpJZFqqrGC/XYZ0lcT6/CYa5dktC2CdtUeLXlnMATvI+iqKG
	7a/vhWiA+zZuxZU/vUq+EP6h2Py0g/SttYNjLwE95YkMubbYblZz3b11AuSF2bdm
	gVPCIpzCK6b9PyUK/v9b0XNC0L8tbhuo81DoZb85/IJVoNsainh6NwDE9gJi6dp6
	/+mr7+cL+r5c6nDDV2XPfMl+/jyVqfLWLlRceevEMNtY/w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mctqw1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:32:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d7f90350f3so6000531cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:32:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759264344; x=1759869144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQIv8HbSGU/ItL07DFk6fn1pHIrebqBCTmh7KKahI5w=;
        b=QycdBXQFQYRpzi94AXQxohGbdLNs9TZ9sIwtPzHxpMC5RVpgM+vJx9PmrgruU/K+62
         SikzdoRZ5XayZNGl42EH8q2AkPOrZOvVaXkpOmwInqPvyTxhasDhn8w/0CkYEUGmyTPK
         LKYkh73BbCS9XhhRC4Ps1QZvDv1NFP9uOp2yr7IA1yKM0mIRwUtWBP2imLxQ+vnUbscs
         qdjoMmG+vzNoY+nrXGYIuAr4sYYj7C3zqcEWSpYRmuyhfMjJC6sfww2Y5HBHP/gdAGpN
         r36LYbKcXkXAVdVZ39QmgwBktYdIO8E9QhgabCZGdgBKU66OmfxjVu2DFHdKe34w9/Z7
         1/fA==
X-Forwarded-Encrypted: i=1; AJvYcCUXoejew1VyBysRWaqxX64BEdSDgh+3QL1CtBklKLw7GI7vJw3nzuNXTt13GWrvADJWuK5WKopHbwut7VZklA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQuZhGaRAANeMruZYkF65NiRuM0TLFy8igvPPnITci/s1rsNNh
	pOpDzWJBoB65geU1ALFSUu7WMXVrnO72AcxPBMjcYBN5FL3FsuGZLg3xXBuqhygDq4dSys0ahKO
	VPtUunLHWTv/lR9Arzv09vqJLMhR2WUnliqu0wXXP3zrErH864/uZfCT3qFlweHyS0qn1+JDiwI
	M=
X-Gm-Gg: ASbGncu2n57Jj8EYqN5SQod6YiH0GBI2BSkDKeEFgsCjqip4BXI9N86t4xKSMR6npm9
	giiYNHSdPTqmLSTymAQp1wKRYxfTBwEIcl2HjZUlcxqOi9OSaiVk87BUYMe6rhWci1f4PEclzVq
	gVoGKIpPR584E+WFDurAVxsw1qrRoZwT+QnOarKBSIVROVSr0avFGaApEUHA8lJkS2OuwP8kof6
	RNriyv5MzE4bEk3J4hJ+mFwtq+4o9FK6QRkIrcmfZ7RHnWsJWi7hxswTXknezsP5DMwZUDx1aJv
	DFJdnS3bAcSm9O/EsDeCEivxC04qVDp2Vxh3tVgYnivoSHf/+/QDxEcmRxUAxhHNtl6tcJdDnTa
	PgEKFUVDytV+aOauUaPH/cKxp3dNP1nGLm3HpznXnE5UimgiFbKpp3bGk/w==
X-Received: by 2002:a05:622a:245:b0:4be:9bf7:74f6 with SMTP id d75a77b69052e-4e27d7c5f55mr67499061cf.4.1759264344558;
        Tue, 30 Sep 2025 13:32:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjMsa1KUO+Xb2y8JXrARVlbLY0nhFqxX54cw9WXubdWIf7Qf3oigc8c9WVQu/MUBv6yKFVYQ==
X-Received: by 2002:a05:622a:245:b0:4be:9bf7:74f6 with SMTP id d75a77b69052e-4e27d7c5f55mr67498601cf.4.1759264344072;
        Tue, 30 Sep 2025 13:32:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139fab10sm5324346e87.45.2025.09.30.13.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:32:21 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:32:19 +0300
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
Subject: Re: [PATCH v6 16/18] drm/bridge: analogix_dp: Attach the next bridge
 in analogix_dp_bridge_attach()
Message-ID: <qqomsrix67lmx7rth7tg44bxjltw2d7s4dwojqd26duf45uf32@krpb756s6q6q>
References: <20250930094251.131314-1-damon.ding@rock-chips.com>
 <20250930094251.131314-3-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930094251.131314-3-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68dc3e59 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=z1Cm9R5qtz1vL6CzoToA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: nPd2Olgk9PmcVhlzsngz7H88IToe4HOW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX3JJ5lrBnYaVp
 aRsYJtPJsYTge42ZxqUaOUFGpDMKxwK+nbUY5kej8WMGp2BD9I79AVoTRP1B0udjh/SwxGM2qBc
 gsU/5FR10s29sQQ4vDXZanTnTTQNZ/qZPI4cak8Wr54DCQa7+IJxJJezRUO4CgzSOupSlhaepzu
 fxu3ul9t1I/zFyE+7hElLO6bJ5rdVt7QYgS4wlC1LfWRJvJEtYrepzj44O5iTODJ8FMtrjUo8VV
 nTZUTCIuvgfNu4pI6CVb/lbyl9gZGeQsvNaI0h4ZLGyJNpiMZDTVhBih8ZfTmbYYEOIQwXrV7qb
 aPQOfgKKtARn9NeWgI8Zcf/KhoHzs2SSKSXsKUroQO5je/UqQVIpEpVTRQsE3WGidNb9PbVx+sc
 52bsCAU5kgQjkYGjIW2/pwl6KQ3PWA==
X-Proofpoint-GUID: nPd2Olgk9PmcVhlzsngz7H88IToe4HOW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_133226_314589_B3086FAC 
X-CRM114-Status: GOOD (  16.44  )
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

On Tue, Sep 30, 2025 at 05:42:49PM +0800, Damon Ding wrote:
> Uniformly, move the next bridge attachment to the Analogix side
> rather than scattered on Rockchip and Exynos sides. It can also
> help get rid of the callback &analogix_dp_plat_data.attach() and
> make codes more concise.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ------
> 
> Changes in v6:
> - Move the next bridge attachment to the Analogix side rather than
>   scattered on Rockchip and Exynos sides.
> ---
>  .../gpu/drm/bridge/analogix/analogix_dp_core.c |  7 ++++---
>  drivers/gpu/drm/exynos/exynos_dp.c             | 18 ------------------
>  include/drm/bridge/analogix_dp.h               |  1 -
>  3 files changed, 4 insertions(+), 22 deletions(-)
> 

So, here is the rest of the series. In-Reply-To header is different for
some reason.

Anyway,


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
