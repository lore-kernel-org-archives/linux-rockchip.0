Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C747CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEi1d16jchtATKf3Hn4PwyYrGd4f9KT5truEWoZ3p+Q=; b=Ob5SN2zBUgIev2
	MR0rUETzvSJEIJ6SHln+qLkOq91e/owPfc8V/Rt9+lRjUvUmJNvpq5JiNqJdmbVORpFZa+K0ES+UF
	aJ7TqOveGN5zjj/mtZ5n6xZ2QKHnOBFUsx0HC7m0prCXAtJymY6QjiOdGZRSTK7SaJT90OP2hjxrA
	YBuiBHwbqEDLqWzReUBhwL7su5s2gTc6klzhbRUToxKVUHIlM8pRLhx0xAMHhGIGa28+YHOt1/mgA
	wb9+zGbdURtdtlKgWfupBmbFBaHC5XL4tCCLRSIWwhcTz9doL6fKbUIeWZnLNuJ3dLM9VH8lIBFY+
	ziMOeVukfLPWbjgKBe0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gyl-00000006BNT-0Jsz;
	Tue, 30 Sep 2025 20:29:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3gyi-00000006BMi-3WC8
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:29:42 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBqAYi017910
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:29:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R5sl3ZNZwJRriIGWPQB/a/Ct
	xB1WoaSGeN5QScEiQ7Q=; b=o5LOIFdVBZ//v/2E1TnvIcqUjzye/Ka5ijY8xeC0
	d9YkC/9/1wv4SoPLu4fEQ0ZW1lZln041JrDY8SwcqEguun2K84mIpjGkPm7JkD7v
	zjCVofucFtUpNFoX33CWX21J4ED2mYM8MHunzDINF63/Rbi8Sz1Z/letyLi34kQL
	t6dSAeW3005RM/Q9mur/Fg4XuhGi6fa1fTXYw4ygq/8axfnxp+9bTI6CnKXIOnQx
	Wnk8uIyreZgUPFfe9wgn4hsqEbVhMbJSqUBcHtLj4/8EdPE12sPGoqHGfRFtqKR4
	EDhz5ZYVUf46AOpEPYCN7YccyVCzqeVUb6SP7Ni0pR4QbQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93hj378-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:29:40 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4de23c3b40aso127782281cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:29:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759264179; x=1759868979;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R5sl3ZNZwJRriIGWPQB/a/CtxB1WoaSGeN5QScEiQ7Q=;
        b=vXxiYNb8oZ0Zu2SLgRp1r3FyydJsU2se5cjR2lIfAjoFhRE/xdzqqicTT6s1ILjb9K
         fhVcFS3TNjseIaQzKsEeVGXjCaBD3IPKpwjj8H206+7vlWMq0sPNdahZ0qKIjH+ObSeT
         c5u1ZSEwth/vsJKp7+DsFmCsEdnHwjTn9ZrHFVm1Vx6uWrNvjuaVLL9mRszl7mw86kJn
         ILes205J3w1oEzKVQ1bPStvULyTDHMnJbw3xtwL5TwAl8PP9NEqVZyeYAYwn+v2drQnb
         kh3he3mwC32MYZzFTIWVeiHwUSND5KNMlHpeGA7BeuM7I0+8psWF8yDe8gV/kIZQ90y3
         LRQQ==
X-Forwarded-Encrypted: i=1; AJvYcCU42+VtA4aJ25B2h6ZXeEIJmg3ZOZLiUfv7L8r/eqgzykP9oHKTcYty9SOjalge1ibi6dKB+g4umQaCJNG4LQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxH6SMFM70ZuuqkfMmrsshgZJ8I23eCfJSxwWO5ZvQI5bVc72/D
	qWWbzFB23pt3+iPiI5vVEIpw2zf+YJeqNS1DfOa8RjeeMMwTSk61D85XJla/Qd+/jfYCSL7Itt2
	EN3cgXP0EZeK1JYU36SqHm2///GY+1AqakCpHMgzFR9jo4V6v6oy/5HX2/zP4vNRMxnv7zgVuK/
	8=
X-Gm-Gg: ASbGncsT0NnYwwx3SryVeAkMezcgRJcjdYxK30ed4YXasSDJmvDRtDB3Qu8++iH3dwt
	UAWbH3ADksR7Blb25JGr8P+oLDncVIjJqsJzVW7/ib7kx/zGJphc86eu5xMOdXvN3RWBAsuWJKZ
	nEr8ERSY1TsmGA6yKLKNUP2SMa6k0cRAmF8C6oxBtMVQoLLUSZBOLM0kxTQdWVfDTZqr8w3C4fL
	Qs0DW3gjxe1ytOBfyGN8qW+yVdmUUU9GCP/DNLEuRz9+0EzcMWMPagij9WIqBU9YVgzIaLqcnew
	9uwUdtwdb7cnHy094IhJ96jF9IQFtjmegO6wsWq7B2vb6Zp/Vm9gwmRAke3CDpJp+bLtjzvYhIP
	Zirg8OdfUkf48+b5tzcxA/udKr0XuDCzKxUOdd5ZfxvHdeutfi92j3Pc59A==
X-Received: by 2002:a05:622a:58c3:b0:4b5:ffc4:d87b with SMTP id d75a77b69052e-4e41e25672cmr12693061cf.63.1759264178880;
        Tue, 30 Sep 2025 13:29:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFWqYNQ5DcdbJzz/fom5G6oGKnCTXV+GrXUnR7tUKQp7CbjCVYz/Y9aUaVBAEusZAM09X6HlA==
X-Received: by 2002:a05:622a:58c3:b0:4b5:ffc4:d87b with SMTP id d75a77b69052e-4e41e25672cmr12692511cf.63.1759264178263;
        Tue, 30 Sep 2025 13:29:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665671csm5160974e87.75.2025.09.30.13.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:29:37 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:29:35 +0300
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
Subject: Re: [PATCH v6 00/18] Apply drm_bridge_connector and panel_bridge
 helper for the Analogix DP driver
Message-ID: <hvakijaevs7ucwvlnf6x6aqj5k465g2rc3ba7zexjmamy7mxg6@gnyhlf5jj3wn>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930090920.131094-1-damon.ding@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX02e+BdF0T950
 IkW0ZbGCu3iyC5qH5OA0QwaKNk/YHvrDUU4QjeUgaUhAqq875mEYxKPkLzbw1TScYhLPHB6tC9g
 ndhYcvF+ygzixHooYD/DawO1FyrmvnHg2/9ZhW4vsrD3NMZZ75UdyP4uEb9l0V3SHKcLFb5PHPg
 Ql4VXFfGEPffc5zoLyKTHFXVuE34+QKZGTHO4LC3Bu6ckOFb0TqT5ModdTXzfRJkqthvCIVDMg/
 Ow0puKdLKdE0EFM0BAXSRcW9YbiL4maNI/V9/gjLloSIWS0BlfOmEDl2OjsLaYH9eXtyICG7A3F
 krvakLKyKDly9uJEIbj6EKcwlFj1ytkQ3zkrUlyAoP/bVWsOPPSpSGw6sA/zxXlUT/wcyq5YB9o
 yBmHtms67cOJrxr0+vgkKDJHwhuIdw==
X-Proofpoint-GUID: B2h5HjQ3yQI6w9UEON0gxDVlFcocNZGB
X-Proofpoint-ORIG-GUID: B2h5HjQ3yQI6w9UEON0gxDVlFcocNZGB
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68dc3db4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=hD80L64hAAAA:8 a=6YOL-LhRVAKcL1tHTEcA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_132940_887921_72A0B9AA 
X-CRM114-Status: GOOD (  14.15  )
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

On Tue, Sep 30, 2025 at 05:09:02PM +0800, Damon Ding wrote:
> PATCH 1 is a small format optimization for struct analogid_dp_device.
> PATCH 2 is to perform mode setting in &drm_bridge_funcs.atomic_enable.
> PATCH 3 is to add a new parameter to store the point of next bridge.
> PATCH 4 is to make legacy bridge driver more universal.
> PATCH 5-10 are preparations for apply drm_bridge_connector helper.
> PATCH 11 is to ensure last bridge determines OP_EDID/OP_MODES capabilities.
> PATCH 12 is to apply the drm_bridge_connector helper.
> PATCH 13-15 are to move the panel/bridge parsing to the Analogix side.
> PATCH 16 is to attach the next bridge on Analogix side uniformly.
> PATCH 17-18 are to apply the panel_bridge helper.

Note, only patches 1-13 made it to the list:

https://lore.kernel.org/dri-devel/41c2a141-a72e-4780-ab32-f22f3a2e0179@samsung.com/#related


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
