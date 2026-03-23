Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62480D58CCE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+/oiqDf9SprIiXx+wofT7HX3z/zCqcJtjze2Sxr56w=; b=V2P9d2M5S7bXTr
	qKzlnc4TfZppF4j9eTEwkRCObRlhDPgc7iyw6avzXkHNa1I8u1xVIAIhkte0c1dAM941TMFUYQJ7g
	0Jqem+ZM3unrKTqkCTyD6xlBsBnWF9nOiUAnjmCya2xwYQznnxrCF5O//4KWB4Jv5afqt5LFbMAZr
	ADQ0dohDSItu4aQ847Yjq9GpEJ8wnUsRi9+6uEGFgO23BZfMNAsLTAwBzc0JnRuU1uxSvzvKbpELa
	q0rhnWAzhVcB90wjyiQSpxtHPXHC50v9ehJC3tQVQPEg5+e6mIXz2DfL4HuGJdvf1DM5lQsk4KgQT
	3IiWJEuwofp4CS8q0w5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Wal-0000000FzVK-0nPm;
	Mon, 23 Mar 2026 04:08:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WaZ-0000000FzMZ-2eOZ
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:08:29 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MLprsi1301211
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oLpTgVGxCw1Fj4mzUbzinm41
	xv8ZtpXmsVNDwDSI2gs=; b=mmp2Iv7U/Lsn8vXrVk4G5/PqevSRVF/GQ2a682mW
	dsh8vBoTGCGHVz0180xz7QZ0lurm+hXLpwOnvgqKISfAeuakv33zx1/3ceqLh1hi
	G99OrHGzLduRuCWT7K6XEKdRpkXIAg50dMueywxC5lWJ6UqU5h+1FiLi1BYOLofB
	S3TPaxrLsqRpdIDXaDKFQwi8kJh7OEv2aG4VBQEypCFf9Zk9KKsEv/CLtbjViA3/
	SnJAZ+Z0rl9geb92WEsYOYVigUb8qA1Tovq3jOt2b8bMS28n7nv6aHKbvR6DxsYD
	FvG1PHdC5ZqJO0Al4684//nTxsN3ojxtYwenxmEFrxcPWw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1mghbh7k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5094741c1c1so307639021cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238906; x=1774843706; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oLpTgVGxCw1Fj4mzUbzinm41xv8ZtpXmsVNDwDSI2gs=;
        b=YAjUvM2rrdyKYXtinAWyZpLN1gzwqVCdZCKztH/yn7nkikJE+aI77wmjNc7asjMQwO
         nCLpVGJmCF+ywUzFE87+5uYlwH+9ivHH0mngt2Med6q3F0a156Id6ugd7Xv+T2+oCOia
         oowyYxxgxVM3uC18RxG8hvWTvW8eFyNc0xY6QijRD3pHqXCRA4pPFN8kvNfwz2CLO/xJ
         L5/AB/0RI3ohdw/WkjpazduOAi32JuoQT6D7mAcsNv4gArOAErfxXJFo5t7sXRJk17bE
         /TS3Cb23B+fdBbUvkGoPmwIBk5TUFYnQ+jdgOQszD66ff9Io0HStwLDZ1QaSH/XwrsrW
         iCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238906; x=1774843706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oLpTgVGxCw1Fj4mzUbzinm41xv8ZtpXmsVNDwDSI2gs=;
        b=AhQgqpq1Bo/IOrmpIvyaoZoaHvT4wf2G/ED+v4lq2w+A6BJW/jIgC6N6+xKlvC3sUq
         FQvOk0qJPGF9cZeFI6OpgQS4EDQ7x9Nmv8QR3uKJ9cb37pkZfp0tR/tylBwi+2bEdPF1
         j5st7gF4c8R8ZRpSuj09UUzLldJnFU6czUU6RwK7qdk2Bpy16rgmIX/pUzVUmpilbmL6
         MuBkZLyq+EZEmsWJpfmyDtnUhYvK2yF2Yd2RF69VO344EVpwGLcin1k7YbyVVlBp0X0F
         p9S6tv//7SrP+Yb/ZsU99W36jXMk+Ht1OToLeY8pVWpqvXu0Lf15NVpLadfsX2QGE3pJ
         BWiA==
X-Forwarded-Encrypted: i=1; AJvYcCXnpCjfqS6pT9j6sHmNUKS/RV+Wh3/RvdTPXNx5Pb2gfeEB7NEwfY0iF+u8eIsCUMRlE1wGnpe9JU8tvBzgCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwT1/Td27MWeP+qs1sqMK4Na/5YRea8MyoFoNF/MCXgxXfWYEgi
	GAPvGJjozvNtuehdp7FaEnIRvRhsiepjX970KFo2ZAa2woRxY9n7Y0x3xUhAUuwsMqaELfxmMJN
	dHs4XzmnopLnqdF8c5kkfiOBUbqshFDFGssHRN/zyugKN15sl26/0u8yKYaxvsiAVegxUhX8K5Z
	Q=
X-Gm-Gg: ATEYQzzIL/eonYy5Rz+QMh6oEjA/zezE8OknmNSrzk6SLQmWEWOZH7VvVLFpubsO7IA
	byGNvQl5KghMMbNb7Ix1gkMmfzJRs1HRE05xC0KPf9Q7JD5imvJHfy06RoyeeqHPcDsS7Kh1ZBt
	zna0t5LD+P6uepowE/xVXuUUnWBnJ5bT2CSI5yRkyUhUBsQin54rgTPVgIYbIAvFnopQ2aIiX1l
	dvdBAj5XS6Hv4yohRep+BGeCETyc1mrClEJyXTKC+sG4ecD1SBSuTYT1i/2E1RGzCyyPPalSXbm
	KcFjiEf4ydvvLaI7OEsdj8zKJwmRbbNau2JC0AIKg2dkytKqcsoj114WVhI8nZhN1u8IwViofSV
	wpeOc+rBnkPpMmAI3yMn/odw9kBd7RlVQ6ZNqBjW1T5tP+O35LStTs+6GAzefVj1P9IbIvwabNm
	xEwHrF5endB60iuPBKa0Hk1jxFko4TwkVfuxc=
X-Received: by 2002:a05:622a:8a:b0:50b:5491:ddd8 with SMTP id d75a77b69052e-50b5491efd2mr63479631cf.58.1774238906016;
        Sun, 22 Mar 2026 21:08:26 -0700 (PDT)
X-Received: by 2002:a05:622a:8a:b0:50b:5491:ddd8 with SMTP id d75a77b69052e-50b5491efd2mr63479501cf.58.1774238905598;
        Sun, 22 Mar 2026 21:08:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285305e07sm2236969e87.66.2026.03.22.21.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:08:22 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:08:21 +0200
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
Subject: Re: [PATCH v3 08/14] drm/bridge: synopsys: dw-dp: Convert to
 drm_output_color_format
Message-ID: <a4k7m57gx6gevmip3pkhpoxklzhki2r4ipjwftpiwefmoleomq@2ycnpl55t7ne>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-8-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-8-f3935f6db579@kernel.org>
X-Authority-Analysis: v=2.4 cv=HI7O14tv c=1 sm=1 tr=0 ts=69c0bcbb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=CKux1-rmGPvPLlrhUF0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: GH0i0YJDsZDAgMkWn0vpgtRGVTSFoNM6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfXzAHszNf7IXot
 sf9zEPGXg4ArWmbPvFLZtZmvp3F+jV0udGwsAJTqN+/7lXb48vBr33MK/siBKeOFShav6siNMnF
 e0+OW/alxaNYbHXIuXg4rrD2/QJVV0rJROkfXu4XjJEK6pozD9BLBf9mQC0OzJ1Buh6UAjzXPuk
 9FVAMKrp5iVgQy5HyX+H8AitKARG68wXQPaNbnG2dIOLdt/5kxNe4hA0/WX9TEA5nF4Sc2VFuE0
 tZYShH6j2y2aYmbeI7/AO0MCOTwES2gphr+zWjzvjMIGCMZQjQ7etbRa8u0bWmwzx2XdVysefh7
 ZN5e3uz/2qoj+pqDCh/sb/rXGH9qEt/anzIYV7GEqzSxv9Jk9x8AP3uH2+BCQGkd0UQXZ2hlcTn
 +9z032PvpKD57JyEWjsm2LJqivlEMpcxYoMwyq97HU1uNx168dR22r97bs93GF4eThRT0x+4OCh
 UpndofhWsqDMS9T807Q==
X-Proofpoint-GUID: GH0i0YJDsZDAgMkWn0vpgtRGVTSFoNM6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210827_727288_4A24818C 
X-CRM114-Status: GOOD (  20.28  )
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

On Thu, Mar 05, 2026 at 10:05:00AM +0100, Maxime Ripard wrote:
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
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c | 71 +++++++++++++++++----------------
>  1 file changed, 36 insertions(+), 35 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
