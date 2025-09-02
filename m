Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A749CA1007
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 03:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09bqiukKYmCMKOHwxed2uu9VYRzucmuOlZld+TtxJUQ=; b=KOiwmI6ypZN09L
	JpirTCvLxMSq62NSaBrs8hd6zWmfoJp5ohmhxhVQBv0guAqYXZtsVbfWf0yn6W/FtvC+86A5uUSeb
	Kt9HABhsd1xtpcDNO0YOhphFtLNlKBDg3dT0ooQ1/UPF5Dk30u62u3/ducz1rXWlaqC0cK3MG7R/v
	PdNFDWQRYte3t3YMjOjL5LRTVgP+HLTzKP7rtSxFKmZZhITAxqEvSB2NUHrCADJpFk1LtBlMw9YZ0
	IBnx4RwzcRqw1uCIH3/AsIxwP+Qz2eyekBA/jV58bVq8qEjFrf1osmmv2eYWMUPvgEM/K59M+2MbJ
	BEypJdiovYo4MyzjC9UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utHRx-0000000EzN8-1Usr;
	Tue, 02 Sep 2025 03:12:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utHRv-0000000EzM1-1TFe
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Sep 2025 03:12:48 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RvOU017489
	for <linux-rockchip@lists.infradead.org>; Tue, 2 Sep 2025 03:12:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6lbDWXEgEqXhch4D00V6FHkz
	octzi7I+pGhatlsXg5g=; b=HALbmYUSYmfADHj+OKudStXby6SIFOf0cIKkYT1A
	vn8vl33kl3VesRmBYBfRvj3vwjbZ+UeGt/Cg0VL4mBi+IIoX2+ECFdyg85saPcMj
	GKtufC5IsBWP1NK1f7m8d/X7s69F85SVPZmUqUkAFtFaG5Il+fxzIs49pFkC0u8e
	aREgMEIzTwTMY31L7uxBvyfv/qFZzm7VFMIG+NK8EfhaKi8NhnyEnhMJxxQp0+Gj
	FALG/CoNAXhTtivgdFblA5APkrXERWH5r3SscEaEK2FTr3hlB3IcW4gpQPWrkuJ0
	vG70vmAbR65rSGd4AuDp2MQHgMULihwax3e3yYpcI+yGKA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8x634-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 02 Sep 2025 03:12:45 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70faf8b375cso50898446d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Sep 2025 20:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756782764; x=1757387564;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6lbDWXEgEqXhch4D00V6FHkzoctzi7I+pGhatlsXg5g=;
        b=RtBcX4wia9CpZSECpY+QWjxzRu+b2dyPFkUc8B9u6MLswD4OVfWw4ka3uPhtv3Ht4F
         gONF+uOCGRkQOUOYk/gG1TGf5qr5iuNQ5CmUnRBhnFYeAj6vc/UXu6i2ksYdZTmSIl4h
         RJnYhUHUzJaHCxyqq5fBfO/GQmCTFoHAAhFwHw6qaXyEL016ZOoftNaxui6frxa/EKtE
         HBai1hMzsgrKMge9LVDJArnKfdFYo8KtENGdBnyARbcCMEzlN73kJ2mlV1bNkqQGgKaZ
         oPZ1XxX2DXX1ofwkSczvlJzU4xuMeOOuOfkit5rBff12WajkDcbppuSh6UF87br3C0s/
         C0XA==
X-Forwarded-Encrypted: i=1; AJvYcCXPFc4KbH8THcW1n66d+vFjHLfQnJafc7jDxhSdOFm2t0cd4ArZEnBBl2ue5nYI15j19cnDc5AqeC3T2rLZNg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv1+92dzCWfkuhs7a2FtrxtuicAn3WTYUhPokzBx6OMw9YHJXm
	CUcIWccjgux8g9RFuiQbH5YK/OZSkS2jdxLb3GL49IRZtQPNv7g119jhbSU8DYFQ+/t304FfsdN
	/b9TgxibN26hJEptEdHO+MwhipSjVLNqBoyePO1PKAK3lUML/YrYm7gezGHCs3QtoFGyVCAlwTv
	U=
X-Gm-Gg: ASbGncv3o7XaegLJbR9l9SMtg9bW4FrQ5SPpQERamZPE+CKMQCSCDW3INtOJ6M9Uujf
	aQupEsjUKt8gTDpXxukraQ2FxumqT8eXXexYACv9tkuUCq/EflgBvUPQpO9mw453KkFrNfG/oqI
	/U59p1zwQyB6vlDaylR+8bLX13/WRIfLzBpuHpKHgS0onf8jidPyRod9aXFuExvQD0LECoXxUQk
	f07jfKqfaWbX2DeeqYwOLyrzkC9nDZp95BjrUcKGBAX4D2L96EEsghuYoSkXAn9I6smWb2AXmUa
	8/Z/q5d9SCJ30x39i+BYEn2kitV9z6V4enfRy4hjjIuL322xA6iA6YRduILGM0KqFirgZZWfWKM
	LCO/2FBAZtg9oweGAm94BkQ1f4HK3/cyM4V5B2qjjpUrOQKkuENi4
X-Received: by 2002:a05:6214:5195:b0:70d:f30d:926e with SMTP id 6a1803df08f44-70fac75a8d4mr95814706d6.15.1756782763438;
        Mon, 01 Sep 2025 20:12:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGh+aJ/m5oTiwm+rskkcePX5cAOyjDOxdmOvAbEJz1ZfqKko/eqgSi/7Mh11qb5m3SqAxkBDw==
X-Received: by 2002:a05:6214:5195:b0:70d:f30d:926e with SMTP id 6a1803df08f44-70fac75a8d4mr95814496d6.15.1756782762755;
        Mon, 01 Sep 2025 20:12:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560827b3dd5sm312381e87.148.2025.09.01.20.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 20:12:41 -0700 (PDT)
Date: Tue, 2 Sep 2025 06:12:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
Subject: Re: [PATCH v2 1/8] drm/connector: let drivers declare infoframes as
 unsupported
Message-ID: <rkxdyzm4uwvq5nxw5q25qv2xqqqvirgn77u54jydebm6a2wrk3@m2y3y3zcjb4j>
References: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
 <20250819-drm-limit-infoframes-v2-1-7595dda24fbd@oss.qualcomm.com>
 <20250820-artichoke-silkworm-of-election-521b5e@houat>
 <v7w7xkefm6ap7delx7wsvxmc76fwptqhe4ehokzfh4baueb7hr@acrx36exv42v>
 <20250827-adorable-ocelot-of-adventure-ba88b7@houat>
 <jrvjvayhjczgb4yx3xshbv3e6ndzkmb7uu3ynoes2maniwjg37@hamxu5mzqmf7>
 <20250901-illustrious-dark-kagu-f4ef76@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250901-illustrious-dark-kagu-f4ef76@houat>
X-Proofpoint-GUID: V0vo8gLB9fQTZCpSdIN3TqJtNbu3bK4m
X-Proofpoint-ORIG-GUID: V0vo8gLB9fQTZCpSdIN3TqJtNbu3bK4m
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b660ad cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ZZMQJF9JEhsP1qjey_MA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX2qkK2pD/NfrT
 9O+YaxRbqcCvoHhs9dCzGG71ATq9Ee/u9Sff404330HDuLnbpmqfkIXu32kSUV1B/wSuXSquB38
 FlG+l+dByUpJ5BSM4nF2ffQQkOuw+ats8w6wtmS1nHMKt+SHCmxsABBD7cPguq9Jvz5MXJclzAw
 sJOfFfytDDOc1po6LQ2w1F51MC0G7UgUuUYUV895AYaiOKvRG73Fwt8dL9SjmCdly0F7lQZU7EF
 jxtKYg84kyFf8CkyE4a9ECxVca5QAlGtM9EeoSeWyP1gn4RxttzDaA2e0lIp+TOph9fm/1wF5sC
 PHSc0dpEbSzxq2nR34CTwmwXz41hOGVBcV7cDqhvynWLxqDG0zvQhSnR/s5RCDaJgg9JZDOK1aK
 DU/A375J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_201247_387651_B8FCD38A 
X-CRM114-Status: GOOD (  71.89  )
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

On Mon, Sep 01, 2025 at 08:54:18AM +0200, Maxime Ripard wrote:
> On Wed, Aug 27, 2025 at 05:04:53PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Aug 27, 2025 at 09:30:20AM +0200, Maxime Ripard wrote:
> > > On Wed, Aug 20, 2025 at 12:52:44PM +0300, Dmitry Baryshkov wrote:
> > > > On Wed, Aug 20, 2025 at 09:15:36AM +0200, Maxime Ripard wrote:
> > > > > Hi,
> > > > > 
> > > > > On Tue, Aug 19, 2025 at 09:57:30PM +0300, Dmitry Baryshkov wrote:
> > > > > > Currently DRM framework expects that the HDMI connector driver supports
> > > > > > all infoframe types: it generates the data as required and calls into
> > > > > > the driver to program all of them, letting the driver to soft-fail if
> > > > > > the infoframe is unsupported. This has a major drawback on userspace
> > > > > > API: the framework also registers debugfs files for all Infoframe types,
> > > > > > possibly surprising the users when infoframe is visible in the debugfs
> > > > > > file, but it is not visible on the wire.
> > > > > > 
> > > > > > Let drivers declare that they support only a subset of infoframes,
> > > > > > creating a more consistent interface.
> > > > > > 
> > > > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > > 
> > > > > I'm not really convinced. Infoframes aren't really something you should
> > > > > ignore, AVI is effectively mandatory, HDMI kind of is too, AUDIO is if
> > > > > audio support is enabled, DRM is mandatory if HDR is used.
> > > > 
> > > > Nevertheless, sun4i, innohdmi, adv7511, it6263 and rk3066 drivers
> > > > provide support only for the AVI infoframe.
> > > 
> > > Yes, but it's still something we shouldn't paper over. The spec mandates
> > > it, if drivers want to deviate from it it's something we should warn
> > > about, not silence.
> > > 
> > > sun4i is a good example, to me at least since I have the doc. The
> > > hardware supports AVI, Audio, ACP, and SPD. HDR isn't supported, so DRM
> > > isn't either. The only missing one is HDMI, but the documentation isn't
> > > the best so it might still be supported. In short, it's a driver issue.
> > > 
> > > adv7511 supports AVI, Audio, ACP, SPD, ACP, and looks to have a
> > > mechanism to send any infoframe as is. So, again, driver issue.
> > 
> > I've send a patch, enabling SPD and VSI (HDMI) InfoFrames on ADV7511.
> > 
> > > 
> > > I couldn't find the other datasheet, but I'd be very surprised if it
> > > wasn't the case for these too.
> > > 
> > > > Some of them can be extended to support other infoframe kinds (e.g.
> > > > ADV7511 has two spare infoframes which can be used for HDMI and SPD).
> > > > 
> > > > > SPD is indeed optional though.
> > > > > 
> > > > > So, it's really dynamic in essence, and not really something we should
> > > > > expect drivers to ignore.
> > > > > 
> > > > > I do acknowledge that a lot of drivers just silently ignore the
> > > > > infoframes they don't support at the moment, which isn't great either.
> > > > > 
> > > > > Maybe we should standardize and document what drivers should do when
> > > > > they don't support a given infoframe type?
> > > > 
> > > > The chips might be generating infoframes internally. This series was
> > > > triggered by LT9611UXC, which does all HDMI work under the hood in the
> > > > firmware. See [1]. The series I posted hooks HDMI audio directly into
> > > > the bridge driver, but I'd really prefer to be able to use
> > > > drm_atomic_helper_connector_hdmi_hotplug(), especially if I ever get to
> > > > implementing CEC support for it.
> > > > 
> > > > ADV7511 likewise generates audio infoframe without Linux
> > > > help (audio-related fields are programmed, but it's not the
> > > > infoframe itself).
> > > 
> > > Implementing the write_infoframe hooks as a nop with a comment in those
> > > case is totally reasonable to me.
> > > 
> > > I'd still like to document that drivers should only return 0 if they
> > > programmed the infoframe, and -ENOTSUPP (and the core logging a warning)
> > > otherwise.
> > > 
> > > That way, we would be able to differentiate between the legimitate
> > > LT9611UXC case, and the "driver is broken" sun4i (and others) case.
> > 
> > I don't want to end up in a sitation where userspace has a different
> > idea of the InfoFrame being sent than the actual one being present on
> > the wire.
> 
> It's not ideal, sure, but also, what's wrong with it? We're doing it
> *all the time*. Modes programmed by userspace are adjusted for the
> hardware, and thus the mode reported by the CRTC turns out different
> than the one actually used in hardware. Audio sampling rates might not
> match exactly what we're doing. The quirks infrastructure disables part
> of the EDID the userspace has access to, etc.
> 
> And all those are under the userspace control, which the infoframes
> aren't.

I think there is a differnece between 'change userspace input',
'knowingly mangle data' and 'lie to userspace because the driver doesn't
care'. This is especially important e.g. if a user is trying to debug
AV issues which can be caused by wrong information in the infoframe.

> 
> > It seems, we need several states per the infoframe:
> > 
> > - Not supported
> 
> Honestly, I'm not sure we need a state for that one. If that infoframe
> was set by the framework, then the driver must support it. And if it
> wasn't, then there's nothing in debugfs.

Yes, I ended up dropping this and having two separate flags.

> 
> > - Autogenerated
> 
> Do we have any way to read them back on those?

Usually not. E.g. I don't think I can read back Audio InfoFrame on
ADV7511. Nor can I read InfoFrames on LT9611UXC.

> 
> > - Generated by software
> > 
> > E.g. in case of ADV7511 we can declare that Audio InfofFrame is
> > autogenerated, AVI, HDMI and SPD as 'software-generated' and DRM (HDR)
> > as unsupported. LT9611UXC will declare all (need to check) frame types
> > as auto.
> > 
> > This way we can implement the checks and still keep userspace from
> > having irrelevant data in debugfs.
> 
> If the only thing you're after is to prevent inconsistent data in
> userpace for devices that can generate it automatically, then I guess we
> could just implement an (optional) callback to read an infoframe from
> the hardware when reading from debugfs. Would that work?

As I wrote, this is not always possible, so I'd skip this.

> 
> > I will update my patchset to implement this, but I have another question
> > beforehand: should we just declare VSI support or should it be more exact,
> > specifying that the driver support HVS (00:0c:03), HVFS (c4:5d:d8), etc?
> 
> I guess you're talking about HDMI 1.4 Vendor specific Infoframe vs HDMI
> 2.0 HF-VSIF here?

Yes. H14v-VSIF vs HF-VSIF.

> 
> If so, the toggle should be HDMI 2.0 support. We'll need that toggle for
> other things anyway (scrambler, YUV420, etc.)
> 
> > I'm asking, because e.g. MSM HDMI controller has hardware support for
> > generating HVS frames (but only HVS, the OUI is not programmed, register
> > format doesn't match 1:1 frame contents, etc). I instead ended up using
> > GENERIC0, because it was more flexible (it's like SPARE packets on
> > ADV7511, the contents is being sent as is). However if we ever need to
> > send DRM infoframes, we might need to switch from GENERIC0 to HVS, for
> > the price of being unable to send HVFS frames.
> 
> Section 10.2 of the HDMI 2.0 states:
> 
>   Transmission of the HF-VSIF by Source Devices is optional unless one (or
>   more) of the features listed in Table 10-1 is active 1. If such features
>   are active, transmission of the HF-VSIF is mandatory.
> 
> The features in question being 3d.

Or ALLM. It's not on my todo list though.

> So unless you're supporting 3d, suppporting VSI only seems ok to me.

MSM HDMI controllers can support some bits and pieces of 3D. Nobody
bothered to implement that though. Maybe I should try getting a monitor
which supports stereo output.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
