Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90B7FFF885D
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 11:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7+mK0scD3RzXaac63bWYTUPoAGl6mzHlILXFuGLW1g=; b=Y3qN0inK1lo80k
	oR+Qjz+pF2oznb/7R15cIfeCzrsKijleWVM7ULyHxoE3krs4aUSvmEMDkLF+fDTH3FUdzjmqRY5n3
	O2hOKr1gyk2c4PpdSg5XEorrxV0S3+st1SBNqHNei0vQgE6o5CZgGp2iMuSWlP+Ylfzo5PsFWdYGc
	C6XVMU9wCkGlvzXzEoAJjI6DFaCDUHSQVOPN+HN4J3o3njXMHzZOBPCIEKDRteH6Nl+vxOGsl0sCX
	oHgqoMITumaMxxhV4tJvovWSFnmD3MrgttsL94p+ytxOqGCZNwVbisxVxT/yrSCBj3iBGn9Fpzak8
	4esoNSbqtq/l7jjdA3nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGanh-0000000ENI4-3kN2;
	Sat, 25 Apr 2026 11:03:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGanc-0000000ENH4-1aHQ
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 11:03:51 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P4dsiP1555765
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:03:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NGyE7KsIgE1iCIP7BFttRF0t
	KByHvA43U+zOtPNKwNs=; b=buxnuiWLQj2/Up9fdROOm92md/+ciO6Vm5XkOt00
	bBiFLPIEta5evStIw1TWwS3cQox2DW8qE1rvDaOJ3G5rbEO+CPyV9uW/NqCy3rq2
	NxW6VyEUFmaZntlnlgL3G2iCEkfn8ynKqlQrPc4ut8FZQy7JPr+mckAf/BtohmQK
	G2MUjUwP5Ob1v2vgrr0AdKirLo0DrUu+SZsN/DI0JU7GX7k+FCrTY4JilBMmT4eo
	Nq/Wwav4JPuYvldw418/mpwjLsTyVhP3HP9LnjuLnD4kLtAyGyCb0x+PYbZkpakR
	2jPJXqZnLBhAWmJiGZ9wcieiQKA/SNG/XbjdMeRT6MtCHA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drpsgrmmy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:03:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50edf01172bso158740081cf.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 04:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777115027; x=1777719827; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NGyE7KsIgE1iCIP7BFttRF0tKByHvA43U+zOtPNKwNs=;
        b=Hgm9emO+Mhb2EXKg97DKpwP6rIuQUbKOcJZf+YHkXg9zr+glVhT/uE4xO2YYSh4nt2
         tWrtaZkdJxJTc3N9p1yPYHMuipUCVTDEVKyBPFUoDrel6Btkv7uvYdBR1JoahP453Vw2
         65W2rwWVVCq7chol0/fLTy/ylHT6OJGiCrIVj5i4Qs+gN/KvAo1UYy5FsGewePDV5Tmr
         hb9Lf29Fh+7Nlo4W1KP6OSTRPtqJY08u7TExVf4RB2yahnaP0V0C6sod9G+x4Ob2LUim
         pqG1mkYIjmY5a68jANUWRFayPoAwcysJfLp9LGA9chBTbexjqbmpHfkYyL1i9BZ6L/Ve
         XZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777115027; x=1777719827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NGyE7KsIgE1iCIP7BFttRF0tKByHvA43U+zOtPNKwNs=;
        b=FjyA3qsEVL4CzJIdlvoYeAA4LbjQec/+E+6/KntvDFKUd4TRbvG2LqbaUa3t15BRjP
         yBuW7bKyEFHmGyAoaJZxpLIGgzeVO92Zw22bGRPHsQO4fyLM2eMsG7Qg5vd45/XVGik/
         LyPQ/fg0z3YQvsXAmG6hWTnZl3hteGooJlSFozrxw2w3lC0i6y0pEKRyR69lHZyDqIVo
         D5vIk+wFgnuBwX+C0MUBFjoKcjkAq7x0EV47HpnKCTNiafFOFQ2O8XPYIPKInNoVRrK1
         ySiKCmI/QxQ/326HNVO/uXSfNjjlVPQrE7jUupT47h1fIchHdYBStJZkKYf9m9Dtp2QT
         Dpiw==
X-Forwarded-Encrypted: i=1; AFNElJ+L8YM1L9Bgxqs8LdonXZ9lmbOzutMr9CdaEEdoD298uw17Z1hC7FO91QHIRgYYe6Wlh0/cfFR+mQ0XM+YOQA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8u0MyCSPFltFyRb746o0VQVxfeHADlltmUS6A6jMKyU3KpZ+/
	z6uveql1SWL4/1egqfpucFYh+ct9dOUT8bcgXzmbVJ4PoDlyb6quxb79vdIgi1AkOLriMYE95sU
	pdnZ60uHE50PL/lMn1tQ9HdNiY2qkJL5DSuajBBKWTw1cwGNXIpnjrpDWJ/I/xpnZ7D2OK2SA6U
	E=
X-Gm-Gg: AeBDietW8emgwRhvYbw0aNQDBNR8ZPv/jPXc9U9W3lUZyS3A0T/LwWP5CMIRQfdxZRD
	qh/2g42CsoJT4pI1xcqsu/cCRd9VzDFu+We8wBapS7FHK9ZQiMyo8BWdADi0X20Lp59IyQZzkGT
	7HPxvjXClruB6TdRrU3uQs1F/eyDQSvyRJvC9kPa9ZUD6A+ON/GQDdZWlityB+mF6aHxez2N+E2
	hIgB6YbIWh4q3lGGWq2+CDAwI6Lo5N/T1l7pBcNLTGqnnpM6E6BbRfBvRZX7wPZ1z7bbYZK0JyK
	QBDzuGWjSiaYvoHqkdo8QphqVj5DGF9FYndMS7ieBWEUhQbMOUaGMCzcuHDaWA+tqfJ2zx2//LH
	uV6zSZ5uYJrmTr01fpkrEOcgAEDE0j1vRL2skPAFco8cVwLPCDi2aBSvFh28sqmuXUVHEs1wBot
	AgMvS8onxUIKMxmGfYIk7MyhoUJKp+3uCQm6aZ6D272tVjaQ==
X-Received: by 2002:ac8:5f4d:0:b0:50f:135e:d68 with SMTP id d75a77b69052e-50f135e1259mr360464611cf.58.1777115026552;
        Sat, 25 Apr 2026 04:03:46 -0700 (PDT)
X-Received: by 2002:ac8:5f4d:0:b0:50f:135e:d68 with SMTP id d75a77b69052e-50f135e1259mr360464161cf.58.1777115026099;
        Sat, 25 Apr 2026 04:03:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a6335ce587sm2078590e87.70.2026.04.25.04.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 04:03:45 -0700 (PDT)
Date: Sat, 25 Apr 2026 14:03:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
        Rodrigo Siqueira <siqueira@igalia.com>,
        Alex Deucher <alexander.deucher@amd.com>,
        Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Tvrtko Ursulin <tursulin@ursulin.net>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Shuah Khan <skhan@linuxfoundation.org>, kernel@collabora.com,
        amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
        wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v14 06/28] drm/bridge: Act on the DRM color format
 property
Message-ID: <e3lpzsodpfemx62ye2rshiq7xnexiihzwxtj5ouqddxip5xnxo@q75ujeicb5p5>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-6-449a419ccbd4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260423-color-format-v14-6-449a419ccbd4@collabora.com>
X-Proofpoint-GUID: UEIgwz2xdHj8TNzGP76GqJTtEWhYnDjw
X-Proofpoint-ORIG-GUID: UEIgwz2xdHj8TNzGP76GqJTtEWhYnDjw
X-Authority-Analysis: v=2.4 cv=Y+fIdBeN c=1 sm=1 tr=0 ts=69ec9f93 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=zO9H7474j3G4b47APuEA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDExMCBTYWx0ZWRfXzR1g63WrsXIV
 CqxQ30O3ejbHdPkVFZJiAWjyIyjW5nIIz4pHDpTuf9BN49/tiHIKqL2bNpv0gGoxhG5R11QGnyp
 UlTd1EEnvVPfBjTEbn6aavRcqxdMiVtYjD6wF8OwYmTWrWmeVu9qsAPisVpLb3Eky4e3RD+6GTF
 TZxyqxqeMQfSw2gYltyErLEsYK+m1JfTO1xRWE7KK1q+hPoP6DmXOgzbKY8bqJwh3cN3aMJ9/NK
 shBN8Ircz/LveSXa1uHdTR8xn+wGaBAX6ttW4JM9jHxzqZDmIUDi8jdwS/uhIosIbu5PZMC88Mb
 4nsnYDy5TMpAWg6lSVn3K4iByaJ3BJNJ7aziXHXZiuVLaYlivw3Z0v3CpPSsvYXYRbX6T6PH9+g
 RBIEugLMpt5zHQEdcuYch6oucq8fsn4xX+GfsC0KdNBhoQS+X1X+p5+i8qeho4W1ryZPoW2M0md
 UfoRmCo79TZnQtkALYA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604200000
 definitions=main-2604250110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_040350_887425_86DED88A 
X-CRM114-Status: GOOD (  18.88  )
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

On Thu, Apr 23, 2026 at 09:03:29PM +0200, Nicolas Frattaroli wrote:
> The new DRM color format property allows userspace to request a specific
> color format on a connector. In turn, this fills the connector state's
> color_format member to switch color formats.
> 
> Make drm_bridges consider the color_format set in the connector state
> during the atomic bridge check. Call into the connector function to get
> the connector state's connector color format. For bridge connectors
> including an HDMI bridge, this will make use of whatever the HDMI
> implementation set as output formats, and AUTO will never be part of the
> rejection logic.
> 
> Reject any output bus formats that do not correspond to the requested
> color format. DRM_CONNECTOR_COLOR_FORMAT_AUTO is always accepted as a
> matching color format for a bus format, meaning that non-HDMI bridge
> chains will end up picking the first bus format choice that works, as
> has already been the case previously.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_bridge.c | 64 +++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 63 insertions(+), 1 deletion(-)
> 

Nice, generic and easily reusable for DP!

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
