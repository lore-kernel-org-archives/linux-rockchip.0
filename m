Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43856C5AD7B
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 16:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgtE9JYuJ1qwVQ9MfMo3kaTP2TLwTAglOK6FYf2T2jk=; b=e37zvR+cUU+Gip
	h+um/wnOKdXmJmsETtshydFlvtl2FLD3xflrE3HzqU/O5mncMSxfrojdI/FW3i2cXVuSs14Anl2Un
	3Jr6djvH7Mpd0wWE1b62bdxjeK5ZSXJqWKroX98UkIEOMIiL6wHzCe0KIWebP8YPIC/mXWUSYsrs5
	auchDnOqloWu+btbeMbuwFxLh427yUWU5/jXFMmWaqzl8TcefNofLlUd/XZ1aAZZClPlf0NUdMFR0
	2yJSd7QLVmU6OmEd04Pg95abgvYeyaumglp/tAZJHp01baOFFEr5srVBuf29eqU2lQfGWEvxM2l0n
	jE1yQ9UVuFjPD9LKkvzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtSVo-0000000CLPt-0SNo;
	Mon, 10 Aug 2026 16:06:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtSVk-0000000CLNf-1EaE
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 16:06:02 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWNUt2344985
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 16:05:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mPujkJTOGc0TWj04uUMCHTdn
	NQgumaeuC61sBKnEmUw=; b=i1NhVVUeZGJGLT8al0W51NbX1Ojh2Qui6aK1blgY
	nf5Hemwv+rLSF9HlTgPlTtzK17bJBtvOcfZZ0YPauxCuPGO/jMG4NuAY9ZoLs/mM
	zIkZqDbeYAdlR9w6vN75ApPo9EXklL9N5vmqwz6aPd0JGo9m6rzQ/rj3q0/+3cf5
	RQU+WXKePt8GryifKZjNFwxXOlAJY+M0vEx6HUq1EFiv//d4uBmNLKbjnBwQuL98
	zE0lxPhVZNKaLiCEOoJy4ewYYTX/ebf+d9c4mCKHzeJQBhWd3mGKVDEG7omg8vck
	U1C7RLiN8fMswq5+ZS+gMtEh1NbzTIEtAitvXNjzAeaAMw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy18xuf8c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 16:05:58 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-96910ded42cso52045241.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Aug 2026 09:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786377958; x=1786982758; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mPujkJTOGc0TWj04uUMCHTdnNQgumaeuC61sBKnEmUw=;
        b=LZO8H7sIYduLUovgayI3uN8wmKZFVBWadcAuQ0rY5yt5nnrjoKur4mtVOGRpvZV+s9
         xbSBLPA0BQLquHW08NyWBDV0l+HyHSlc/HBvfsxYLBKr85CNQW3tUhaymNW49vjDAnVU
         TSqZPB5qQUmefKMHNrgIckKfx9EEhDlp6MStpG2+WcQODse8p9m/nPS7VAv0zhT5wuKO
         sBqAnPW148BhwaTLkBZAcSnMaVdwclPhrX4dg/7PWYWsjM+lBawTaiavL+1Xogq8mr+i
         HnwIW63WPZQc5YhW4W37YSn/BBUiYvESNAJ5bKvE1xi5GjVJ0KFg8/Syo1Pa4FyNCzj/
         vN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786377958; x=1786982758;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mPujkJTOGc0TWj04uUMCHTdnNQgumaeuC61sBKnEmUw=;
        b=g4AQp+GrBsIG7wC9Vy3Os93QjrEKPPZ+6z/lDVAL7L1v8UV1QpbcKXHp8URFtN+JmY
         YBlWSfll7H/JbU2WofthTuqYPuDtI98zRTfi9RZcvDiCUxSLrwMqFzjRsryX6qlBK8Ov
         wAQByqg9suVLivu3e3hq2uwjCvzgEoGJ81jucatYXT94PUzgFPckc3WuNeYj6+M9gfZ/
         dp+twewE7kzHSEEDrTyWLvHqASIAiTz40yk5vpBQRg1EB44vjUFJfKOyJcHOQOOS1jvJ
         14aCV3L00lhUW/IYCRAJvNY+vo856v8YqJWAeAUmexyWvaPcdfmkyI0wSTKdRpY66/iy
         hhwQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp3oHDogqbpGI9vwk4gNIM1ky/2lRzS1+Q74sNDuyBll6WzPB7X6C7pw96AEq9tMn/GmmDHc9hPFExdpIbvAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzbz4qRTyky3Sa6eM9gXXlZlD5Aj9aUE8z8Loyql5Y5fIWPR3Oo
	08ezQmguV9AJMZoVraDGvApp7Khqr8oR0NtbiIJjmILrJgQf746J+UYxKEBXttCUg6gF+ZabQ1M
	N82l1DKjByO7D7QQLtqMnRFvCz8mGTDVwqcvIMWXq/VOiY4mgAguXFxyfQ8SDJeHaenSzIehkZz
	k=
X-Gm-Gg: AR+sD12k6LLjNYYpiSnl5RNHsPSbp2QWogDPXZ9zGbkihBK8oiIjswZc50EMa6ySi5t
	BAxslQzCsJtSTaZ/sVJC0fM5Gac0avwIjBskBEYF6wVlT9zYj9c7DxX1wdbhd6xk8uMEkk3iFtr
	PLblWoQsy7KjBUk8vllPaBBQg2FliLuYq0qlNO/K6PV1zxGS1SuvdsCsZ6HrS0qUjaCWK9ZV1AV
	v3zDjsBTC0FG2hCYG7V6ncx4vHL2yz6puYMKriBlbR6Wd6xUkUyXTWAGs/3y6MhG2Inm+oUdBpm
	9TsF2+GJiAeGdU85BAWlKiUZleqVqM+CvP1NcpWmZ8Oi3snilwWMDGSFS7cp6lQzfBUtq3ClrrK
	g5VYqCW0znKRZFOA6pAWbtPmxUE7yIcb/+qaH4zJDA5esp9kKpBo+0ffFhWtIrVIkaAbJ1Rovhu
	17KwpTmZoJkL+pfA==
X-Received: by 2002:a05:6102:4b07:b0:760:418c:8a9f with SMTP id ada2fe7eead31-768e8c52790mr739657137.13.1786377958194;
        Mon, 10 Aug 2026 09:05:58 -0700 (PDT)
X-Received: by 2002:a05:6102:4b07:b0:760:418c:8a9f with SMTP id ada2fe7eead31-768e8c52790mr739648137.13.1786377957798;
        Mon, 10 Aug 2026 09:05:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b304fd1c38sm2066473e87.12.2026.08.10.09.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 09:05:56 -0700 (PDT)
Date: Mon, 10 Aug 2026 19:05:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Inki Dae <inki.dae@samsung.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v9 1/2] drm: add <linux/pm_runtime.h> where missing
Message-ID: <gfhkrmgrdmqf2zmfdoqnmc3a7ifcwxdyoiqptg65nigdwvmwvv@4pt57y73ucrb>
References: <20260810131314.452865-1-vladimir.oltean@nxp.com>
 <20260810131314.452865-2-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810131314.452865-2-vladimir.oltean@nxp.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzOCBTYWx0ZWRfX58u4lBc6IUgW
 13OC64v13PUAY1h7infVh53vS3s6GVEXhYniY/ju4TvtwCZXkOaKT8cqY+ZTIOr57pDBbroTpWb
 YGjuVPnD+QtYecq0FY7Kt4FB8d+x6SE=
X-Proofpoint-ORIG-GUID: UOqoqAfe6tTfmEZ2dBV4mpnEkwYp1cub
X-Proofpoint-GUID: UOqoqAfe6tTfmEZ2dBV4mpnEkwYp1cub
X-Authority-Analysis: v=2.4 cv=bfZbluPB c=1 sm=1 tr=0 ts=6a79f6e6 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=8AirrxEcAAAA:8
 a=QyXUC8HyAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=P1BnusSwAAAA:8
 a=pGLkceISAAAA:8 a=hD80L64hAAAA:8 a=iP-xVBlJAAAA:8 a=EUspDBNiAAAA:8
 a=xt7DZbCNmi909WKh4bIA:9 a=CjuIK1q_8ugA:10 a=TOPH6uDL9cOC6tEoww4z:22
 a=ST-jHhOKWsTCqRlWije3:22 a=cvBusfyB2V15izCimMoJ:22 a=D0XLA9XvdZm18NrgonBM:22
 a=lHLH-nfn2y1bM_0xSXwp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzOCBTYWx0ZWRfX+YfhCuc9+K7M
 Yq3Z+M1QzasqLxW/wc0zMqX1FCC+bh8gwMbZWmAwTHFaJWw6lxUjGmEJkUAYHN3SWmVYAVBY17f
 tt9WmTx1oMScQYZFmt3vvFupB3RVFOvrRegpdOQR/p+tKPEQir241GevquCaJvxlkupA8s3OcaK
 NqFfFaCdsb6FvMfn+s1n60E/+B36vyfyaky8L70uGZsOuV7wt4q3aHrAvGLNVNqHRC4x57OMu8X
 7smCmHn7NkMlyt0cvZ/3izCzROxXZYMINBxV/aCvvGXLPUTsHLq75sog7DFJtTtQ0wpqz4dlw7L
 ccZnZICkHE4U5V08Fv1tR5s8wmyE+PttKGwUeBVHgUu/XrvCV2NNFrZJi1yhxdmzB2nPdeZIE/Z
 OJYWGcZ+k33ho/6Jak8gS4K5JBEfdw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 suspectscore=0 adultscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2608100138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_090600_445191_B0AFD03D 
X-CRM114-Status: GOOD (  16.98  )
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

On Mon, Aug 10, 2026 at 04:13:13PM +0300, Vladimir Oltean wrote:
> Multiple DRM bridge drivers use runtime PM operations without
> including the proper header, instead relying on transitive inclusion
> by <linux/phy/phy.h>.
> 
> The PHY subsystem wants to get rid of headers it provides for no reason,
> so modify these drivers to include what they need directly.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Inki Dae <inki.dae@samsung.com>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
> Cc: Dmitry Baryshkov <lumag@kernel.org>
> 
> v1->v9: none
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c  | 1 +
>  drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c | 1 +
>  drivers/gpu/drm/bridge/nwl-dsi.c                    | 1 +
>  drivers/gpu/drm/bridge/samsung-dsim.c               | 1 +
>  drivers/gpu/drm/msm/dp/dp_aux.c                     | 1 +
>  drivers/gpu/drm/rockchip/cdn-dp-core.c              | 1 +
>  6 files changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
