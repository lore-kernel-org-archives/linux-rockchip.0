Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE41CA0FFD
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 22:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuuqLmVhYpZLp1y2SIJO2+3Z28vVGpgv7WkFYW2eU9o=; b=wn599UAJjFhJsW
	S2B+PdyWkt9NzEWEUQ+PkditjMT0t77jmc9lguC8p4wDeC4RM8jQ13Jp4m9tRikMsehTHmkW1yfFx
	Rsx0yPwVcDGBj9lx8LrqTb5I1h60cn1dbrAPI/qCec/zfDQ9ab3zlGtSTKpLAMPQN0QgPatPhFHta
	2zk9FEGJXD3C65elOsZ1ndWZep3eAhCe1g3Sjl6TkgX0qKNP1uKUrVUiGw5Tc2LCO2BpIuB9VV707
	LtV6I7KMtlq84R+cscy/CjJcNVgOCyme4l4ZKWSeAm9oVEodwYJuPfUz7wLz5+hPjP0dublTvZYl6
	W4ouA5uIaRdiQzbiNaTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usU4Y-00000008Uib-20TW;
	Sat, 30 Aug 2025 22:29:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usU4V-00000008Uhw-3xGJ
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Aug 2025 22:29:21 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57UKqQ9S021933
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 22:29:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GNi6qlMhUO/dlDLKPCpe1Eoh
	MUP/BhLmz8wF/QSm9/A=; b=i3GnX8W6MzF7/jJqLQfusJdMEK+lmRXnmxPfHHY1
	JPvU271NEVX0/v6y7ODjamnq+H35oviI2R0naUJNBJpMjQ372GejEdRgYAaVwriD
	UuP6g6EZHnfjp6jRkib7fwem4DSzBXnuwGFWs8Bx/dKken7qgT+Q47BDBEnHD/fW
	AOjVS77HhoxWByxt9zCkSoPxghyGfIfk80XXJk/y483CHjFMaGP4kjQ/AcYT6ciI
	i0qD3LFPO0B/sa8mnRCx5iomQnAJyXkhrVP00urFpwzbtyFGPxJgQ03tWBSnsQAX
	T1fqATL+5HD27JlCxMLfLyKmM7EZNQWozZhMbvA9sqGkOQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscus7sp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 22:29:18 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70dd6d25609so75081766d6.0
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Aug 2025 15:29:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756592958; x=1757197758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GNi6qlMhUO/dlDLKPCpe1EohMUP/BhLmz8wF/QSm9/A=;
        b=GOtWzNWsKvaZPS3mEhfZV6l3CTbUeA1LnGTpkWcnCoBpPISopM38KopJt6CzATiE2L
         vd4pIvkFozW0vlrdAOLu4FQEurJhcwRDBdhOXynbimbDHj2BR6O20j76ZNNBaq2pT8Gh
         Cj1LvOwDY+u+X4SMHGaA9WDGojEzMdR4QtXl4oM408XcqHyHc6JuI11HgWYw0PslHiHc
         T/OEgjSl4qBn4ps3wBESiMdX/aO1qjaKEOrJ6jnKNqgkvn2xLyLOwyYBW7TsjPxG6kgk
         bAybIjdp3HYgmbfvlPPk4rFqBiaDC8/5SRskAunMmurPOt10c/CuY2UYyUEzPUZZvdqA
         vC6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUIgtUXbl1FZWvnNQf/Arr4HXURGVtwaGXqgonEiQJ3uS6dt2x/axnTAcshpxE3t5jIdWlqpywaD246eymRTw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6Tugt1pnlab47ZDSWz8FxxOlO5Ud7PrqGIDuvYncNHBoWSqBm
	kMuCowoG7Yh26ynrlwEBcPpr8YQzUQyxxt5TxkYRy5bQOA1Q7dljx1HsipP072pZgWEK8cZz61Y
	+kNxbyB6JOy8fP4m/VEdBP7vThttiAhvOK7jPYYzGng8AnC6jPkHtxuXgHyOShhRU/mFcJAgCh4
	Q=
X-Gm-Gg: ASbGncvfK7IAQT+OCyB7WQdVUCARx3nQ3MLxbxAg4awRgGcQXcHT3qxCrqX1OTreWfP
	pgCET31glk7fcf/+eZaPjr+yP9iaZX7CexqpcDPB2foFgzxTD1Rr0sP1NacNwpIvE3ZYtIbSggH
	gjAJXK+wZ7oz8EosS/lTqp2WdDmg+kFz4KBRQGGLbtKdYLrVAW8mKkq9dO2sUK+z3MK4XvDsf0y
	dJLcJU0dUljrLtdwnS4w9X6b//uJt0oKcWWbmiM0IiEXHog8b6gA6StSsUwPi+fGz9ORQ7njsmy
	QxAM58lr318dBeNFzVesR2iMwOXBxd6Hn8IAYGJWvyj9A0OLqmnOIqsYF5bnCv+9I/DEccoEEHF
	+fHnRUI61CBI4CmAfCvcKr2BqU/YXTllAEJunb376qaJlNbXbi7ra
X-Received: by 2002:a05:6214:21cb:b0:70d:c6b9:c256 with SMTP id 6a1803df08f44-70fac94115cmr30677666d6.58.1756592957753;
        Sat, 30 Aug 2025 15:29:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaqdCzqqQwp+xBjOwKvWSPX4p3qiZ0ZzV9L7+TYukjcGa33kntlWRwDlkYGow/owafc/jjnw==
X-Received: by 2002:a05:6214:21cb:b0:70d:c6b9:c256 with SMTP id 6a1803df08f44-70fac94115cmr30677306d6.58.1756592956994;
        Sat, 30 Aug 2025 15:29:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-336d0e3f3absm4929391fa.37.2025.08.30.15.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 15:29:15 -0700 (PDT)
Date: Sun, 31 Aug 2025 01:29:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Daniel Stone <daniel@fooishbar.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Liu Ying <victor.liu@nxp.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v3 00/11] drm/connector: hdmi: limit infoframes per
 driver capabilities
Message-ID: <57ekub6uba7iee34sviadareqxv234zbmkr7avqofxes4mqnru@vgkppexnj6cb>
References: <20250830-drm-limit-infoframes-v3-0-32fcbec4634e@oss.qualcomm.com>
 <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rNDtfEYV88Ue0bFXJwQop-zy++Ty7uQ9XfrQ2TbAijeRg@mail.gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX+TIOXDl6jBke
 vh9qqNpiYtsc/2OilqFKLzj3tWEe9iY8OrN6gBNKbWTtLlfJr4sn+pnASKHK7iSO7gSQN4AaXG7
 BdHf5hONLZzsEnXPake1pusa0eXFNBuVhkEAMmRCxlyvAB7DYG1IEHw/JwhLzz5pUfy/iZH6vxM
 AmxzEWjNOXSWXT5tDYshX/HYMgloh4Jw9RP9ze2wHSC6AqAYbZVTgYx38dbpl1OmC1WP7n5/nu7
 5PUUSjRxnXN9AVPzjQHo6hMBskKtkdr45fbq5dF1AjsHONoq4CgTAq2+rMpMyzNGNd4tJ2IRvjd
 7eiEemGh/RwoFYm5Fsulxd++kv9/w+/HGBQ/W2oY6d1WW865BE2FHwLa5Q1d/eM0MHfgwnB6AnE
 RLQaahq/
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b37b3e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=eLVs-IFDZWC_gK9YM6cA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: Tl6xyOYFLJdIbw_rsMxPRJyJwpb6KA1V
X-Proofpoint-GUID: Tl6xyOYFLJdIbw_rsMxPRJyJwpb6KA1V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-30_09,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_152920_101588_E5DFDCE8 
X-CRM114-Status: GOOD (  29.64  )
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

On Sat, Aug 30, 2025 at 09:30:01AM +0200, Daniel Stone wrote:
> Hi Dmitry,
> 
> On Sat, 30 Aug 2025 at 02:23, Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > It's not uncommon for the particular device to support only a subset of
> > HDMI InfoFrames. It's not a big problem for the kernel, since we adopted
> > a model of ignoring the unsupported Infoframes, but it's a bigger
> > problem for the userspace: we end up having files in debugfs which do
> > mot match what is being sent on the wire.
> >
> > Sort that out, making sure that all interfaces are consistent.
> 
> Thanks for the series, it's a really good cleanup.
> 
> I know that dw-hdmi-qp can support _any_ infoframe, by manually
> packing it into the two GHDMI banks. So the supported set there is
> 'all of the currently well-known ones, plus any two others, but only
> two and not more'. I wonder if that has any effect on the interface
> you were thinking about for userspace?

I was mostly concerned with the existing debugfs interface (as it is
also used e.g. for edid-decode, etc).

It seems "everything + 2 spare" is more or less common (ADV7511, MSM
HDMI also have those. I don't have at hand the proper datasheet for
LT9611 (non-UXC one), but I think its InfoFrames are also more or less
generic).  Maybe we should change debugfs integration to register the
file when the frame is being enabled and removing it when it gets unset.

Then in the long run we can add 'slots' and allocate some of the frames
to the slots. E.g. ADV7511 would get 'software AVI', 'software SPD',
'auto AUDIO' + 2 generic slots (and MPEG InfoFrame which can probably be
salvaged as another generic one)). MSM HDMI would get 'software AVI',
'software AUDIO' + 2 generic slots (+MPEG + obsucre HDMI which I don't
want to use). Then the framework might be able to prioritize whether to
use generic slots for important data (as DRM HDR, HDMI) or less important
(SPD).

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
