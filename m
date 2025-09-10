Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D08C9CA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 15:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXSJzGZ+tRQp90p6K8vpCVaxplbl1Zuh08b4IfRUW2c=; b=qNZAPBNAP7b02d
	tN0HwX2jR+euceREOAOKlwki+YpHFV4aHMmI7+37uc0VRpehrZERj77Gb3pvcye1lpuV7eXpoCvYJ
	WgWEQDR+DNpA8c5y15F2Haf6k9hOKLDK365CEAKzt4J8k5BghzUhSa7fCWKmbHIKR5U9JORHrpU68
	Fy9P29oMyHxOWa1R3EQJOoR+hqrztWF7T0Db1pfbqhEvkdtNEr5RFDVzJd9LwannZ5HPnEUOGZKft
	bsQpeWq9oN1VQAzZL9VVo8/2nLr0q462dAiUNQI5wThihrQiNdc0BmCcFivzpXbxdwhhJ2Ig7ibBx
	dK4IgDa7+PeRAnwIoamA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwMYm-0000000F2JU-2ZMo;
	Wed, 10 Sep 2025 15:16:36 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwMYh-0000000F2FG-1CYo
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 15:16:33 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ACgqup014102
	for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 15:16:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kKm0FaL1IsnsJ1lRYNU+N3Fz
	JdUYvVMh5dXRjU0QCk8=; b=p5Fq26fYWFQBv4jsqwoICAN3BPzWKiJ1nDETM99M
	qYaJAlGyDaaHmKO1z93fcVW5AWkmOt1ObtdBYRcfscs2Dt3fBbzvs/SnkRo7Ifc7
	7qQs49X1iUmV7tciI/bLswt8v/1P0apmUMCxq2pWlPemmfz0K+EN1BqxZmDlcNZl
	bLdSmNTQrd3J1EQJDwspX2Q9ESFL4yeilX8M+0j6cs5FnriK3LpIIxOF/IS2qvFW
	h2XMguo7EqCiriV+JKtDR6nQZ029MA6bgpufcFu2wyf6OrdEfBOOq63E4qNt7jkc
	OXyLqkyUxTB3D9koO2CbE2l2L4cEK+a9ar/TSU1vg9bq9Q==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ac6rr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 15:16:30 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-545f436ad2dso9813146e0c.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 08:16:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757517389; x=1758122189;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kKm0FaL1IsnsJ1lRYNU+N3FzJdUYvVMh5dXRjU0QCk8=;
        b=f682GoIG/T21YRWILQL7o2D2W2A5yFRLHk/nVMzxjZ08gfc+Dkq83YihtR54/6d+tF
         MNfcvNrp/Po81zQtxV5jsaVhV5qQNPC+fZbo7QDsO9X3z14d2gsn/gQeXZcO+wXZFgE1
         oY9ew0d093njjWa1zWC/trJdQb/Wvd358t+2ui7K2Z5jiOTRlhZVeUNsig1PHUgMro1h
         yPG5Vt9FRsg8wueXDu0nzQdkJT2iL2cG5Yblytd2GJsNMiKOHW4qxi6CUaGZSACyXUOV
         OzCgNvTZSOFMY5Jipvt887GCI+zV2zGa5eeUa9ThP2C/pmxpYmHN/LNKLBqHEoZf/aqM
         WA2g==
X-Forwarded-Encrypted: i=1; AJvYcCXgwRhj63SfJkssYql9lgCLdTrlnLlixDsSelwq05kNLZ4o/k0KaUxEego48o5cMcfE+0x9xDMoD8TT2BMOhg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwfHZ76No/d7Ku+8t9VX36X5NYzrS8jqT5FShj0VnUjgZZT3ViB
	1vgbI49k37V0rETQdP76Dv/m8VgbwXakVdaShLbt61Z+qMFtE+sdee5HS3NhBkoiS+T+DTU2JvI
	e3mVDeGpI4SrAH88BkOBv+Ij9wefzgMIa60Ne1/1gnSSB6eP4CSMn9VetiT+KnE7rosDdPkCcj/
	A=
X-Gm-Gg: ASbGncvtJrEJEZWL0CDJ3ijPfPzMVBM9OTjROh0TWK99Qk3W9iesJ9lBZQ4P/kT9cNP
	bPzRe1JkT3QRg2WPczta38233i9BQY7VtaChK1Booub7ty48Yr6MUSzxxOuY2u1lxwQUBKUQRqv
	tFDhpV0wJ0jfFNjMnb72PutuGyBImeS4HhqtfyOekOhvEkYwC+j/Ilh18Yhr4KViO2n2SL8n1Dw
	QD/BNVtuc4biU4nkoUsqAH+JlgTvsIRJXsKfUrxClObFqpBe4WwaDUNDxqnb14XjtXu/0XvjXhd
	rnRdsNEcOdt3s5wdnXLUeHafhDWYMKLJ6rk1scpVBYJaBWzNz6WbdPwb0T6rHQPzwVUTkXhFl+y
	a9ocscrX3+bZmOO6xWTai72GZU4M/R9nhhTlc01fXocgq80vPQnC+
X-Received: by 2002:a05:6122:2a42:b0:543:6ff8:d6d7 with SMTP id 71dfb90a1353d-5472a0088bfmr5155450e0c.1.1757517388991;
        Wed, 10 Sep 2025 08:16:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEV+Ok0B9ImEfUJn+5MDsBCd0a1EnbrepGzoV/kCIfMR/JnpVKik3JbAUvvY8M2wWHlz+5tjQ==
X-Received: by 2002:a05:6122:2a42:b0:543:6ff8:d6d7 with SMTP id 71dfb90a1353d-5472a0088bfmr5155361e0c.1.1757517388194;
        Wed, 10 Sep 2025 08:16:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5680c4246c2sm1301330e87.17.2025.09.10.08.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 08:16:27 -0700 (PDT)
Date: Wed, 10 Sep 2025 18:16:25 +0300
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
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        Daniel Stone <daniels@collabora.com>
Subject: Re: [PATCH v4 01/10] drm/connector: let drivers declare infoframes
 as unsupported
Message-ID: <z333ysst5ifakomo35jtbpydj44epqwwn4da76rcnsq4are62m@32gsmgx2pcdi>
References: <20250909-drm-limit-infoframes-v4-0-53fd0a65a4a2@oss.qualcomm.com>
 <20250909-drm-limit-infoframes-v4-1-53fd0a65a4a2@oss.qualcomm.com>
 <20250910-furry-singing-axolotl-9aceac@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250910-furry-singing-axolotl-9aceac@houat>
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c1964e cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8
 a=Hspkq7dj2dKET-HI0ioA:9 a=CjuIK1q_8ugA:10 a=hhpmQAJR8DioWGSBphRh:22
 a=ST-jHhOKWsTCqRlWije3:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: _gD6t6Ty8sqSGUssVxD_8tDK43Nue-6G
X-Proofpoint-ORIG-GUID: _gD6t6Ty8sqSGUssVxD_8tDK43Nue-6G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfXwriWVbAgz3ei
 /vb6lqERo92jMLQ/0beOfwDGHgYMyhEg/NoOebgWx0giMbsNHAFEA7VrlFhjeOZrl149d/vFp2I
 yKd+Jiv4qCkbhQnHRwGr0Ah82Cs0bujOkRTwaRmk8ICIWAPLmQegRoZOMns+N2P/nlLwSboJnGO
 T2w17o+qTV+NLG94qYLT+W3YtksCdN4FGm3jrvbCLMwKG9rxALFW4RbomI+3UVpkO2NxbM5nylL
 Br0f90zeSr/n/8UB7XFRATXi1ujOFK3Id9WlFhGnz5M9jR/9DDrsLPMlh6vHnnzJ8CmbyacW0y/
 7xY7cTVsqkRwLT4GfOLw97EmkhQuAysMnKLIUNCZ7685ehMFzNiTkqyhXYYxAx4ixwX8AOOT4jH
 EVeUxkcW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_02,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_081631_338733_4A6C9FF5 
X-CRM114-Status: GOOD (  38.29  )
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

On Wed, Sep 10, 2025 at 01:03:47PM +0200, Maxime Ripard wrote:
> On Tue, Sep 09, 2025 at 05:51:59PM +0300, Dmitry Baryshkov wrote:
> > Currently DRM framework expects that the HDMI connector driver supports
> > all infoframe types: it generates the data as required and calls into
> > the driver to program all of them, letting the driver to soft-fail if
> > the infoframe is unsupported. This has a major drawback on userspace
> > API: the framework also registers debugfs files for all Infoframe types,
> > possibly surprising the users when infoframe is visible in the debugfs
> > file, but it is not visible on the wire. Drivers are also expected to
> > return success even for unsuppoted InfoFrame types.
> > 
> > Let drivers declare that they support only a subset of infoframes,
> > creating a more consistent interface. Make the affected drivers return
> > -EOPNOTSUPP if they are asked to program (or clear) InfoFrames which are
> > not supported.
> > 
> > Acked-by: Liu Ying <victor.liu@nxp.com>
> > Acked-by: Daniel Stone <daniels@collabora.com>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> Again, I still believe that it's a bad idea, goes against what the spec
> states, and the framework was meant to be.

Please correct me if I'm wrong. The specs (HDMI & CEA) define several
infoframes and whether we should be sending them. If I'm reading it
correctrly, CEA spec explicitly says 'If the Source supports the
transmission of [foo] InfoFrame..." (6.4 - AVI, 6.6 - Audio, 6.7 MPEG,
6.9 - DRM). For other InfoFrames (6.5 SPD, 6.8 NTSC VBI) it just defines
that sending those frames is optional.

We can't even infer support for InfoFrames from the Source features.
E.g. CEA 6.6.1 defines a case when digital audio is allowed to be sent,
without sending Audio InfoFrame.

As we will be getting more and more features, some of the InfoFrames
or data packets will be 'good to have, but not required'.

> 
> So, no, sorry. That's still a no for me. Please stop sending that patch

Oops :-)

> unless we have a discussion about it and you convince me that it's
> actually something that we'd need.

My main concern is that the drivers should not opt-out of the features.
E.g. if we start supporting ISRC packets or MPEG or NTSC VBI InfoFrames
(yes, stupid examples), it should not be required to go through all the
drivers, making sure that they disable those. Instead the DRM framework
should be able to make decisions like:

- The driver supports SPD and the VSDB defines SPD, enable this
  InfoFrame (BTW, this needs to be done anyway, we should not be sending
  SPD if it's not defined in VSDB, if I read it correctly).

- The driver hints that the pixel data has only 10 meaninful bits of
  data per component (e.g. out of 12 for DeepColor 36), the Sink has
  HF-VSDB, send HF-VSIF.

- The driver has enabled 3D stereo mode, but it doesn't declare support
  for HF-VSIF. Send only H14b-VSIF.

Similarly (no, I don't have these on my TODO list, these are just
examples):
- The driver defines support for NTSC VBI, register a VBI device.

- The driver defines support for ISRC packets, register ISRC-related
  properties.

- The driver defines support for MPEG Source InfoFrame, provide a way
  for media players to report frame type and bit rate.

- The driver provides limited support for Extended HDR DM InfoFrames,
  select the correct frame type according to driver capabilities.

Without the 'supported' information we should change atomic_check()
functions to set infoframe->set to false for all unsupported InfoFrames
_and_ go through all the drivers again each time we add support for a
feature (e.g. after adding HF-VSIF support).

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
