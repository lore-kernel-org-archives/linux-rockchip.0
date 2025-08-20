Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84BBCA0EF8
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 10:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVdZMKvdDVcZX6nuwveT+tZ5UNmz6gQAMv3M9sTr9rM=; b=j+KpGtQ8erpCRd
	Ul7WhMs9L7yGSpX3XGDawp0/QNhqGpJjvDmHOdjUUZRWzfKNFi8EbOj+ypAxBfn66h7KDSNg0Qvuk
	+li0e4nl0RqZqTj6nnzGG5bEPmsV0oqzua7dowQMdccDdXsmzeomSqs/VNr2LcMK7VJNpD+S3ZsfU
	2DwBFTBS1gJxTrmaDU/580U3HQib+uPuAmDrNNhtUi5nevNlZYKeEk5JmBIezwIUoqGX5LfNl6k25
	XDOy1IDzlkzjDDw7sL/Cw94UfUj8q569w7L9xDnruGLHfW5pfcRxMd95iw59d/gUjk1A/r8Xi9o97
	voqmS+sWPikTENnH+O4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uogMn-0000000DEf6-2TuC;
	Wed, 20 Aug 2025 10:48:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofV1-0000000D26a-1qG4
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=vS/mAyLr2b7OYnR7JU7D3yhv4WGKliyobGTdxLp6JGk=; b=mmLR4aLJ+i852e8OCjANbekzpm
	kXrGGqnAQHQfYIKiR1SEQNtqMdCqGkbBwtY0yFqjJZg3xxTdcM/fB+LfxCfS2osd5lrFwxGOLe7mT
	54D4ALKQmPcAAvOfB/A1c3b6RHKIXVT6zA3LIrEpdBiVmLfTE+2Ab4wNPxRBtHIBTSkoj68yGenhY
	O07fTPYDEeWl3XRX2dj30Qc2g10lD1vEWD8VWQ0z1gEKNeCJSUB3niKU9tzLzTah0lpY2WS2W3+E5
	QJZ4ngosW/4wL1b0jjK8ZdidNkCtFAKcIRkwkYJhk0Gonv/Ycyc6I0ryFmVUjIVp0cu9eS+Mvkg08
	LMejdAMA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofUy-00000000Hq0-0dq5
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 09:52:54 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9Zk7O001966
	for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 09:52:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vS/mAyLr2b7OYnR7JU7D3yhv
	4WGKliyobGTdxLp6JGk=; b=kzYC6ChphM9DjkW+m3Y2ie9m0ho+HuIohiI6AXbn
	TevF+7Exk39Pz0riittMo0GLI+th9Te8QDV00MGqOyvKojU9uBUfe3/2I0Pvumb2
	VHbU4TvkmmWpIXSinhNVwY2JTGbRI45gddHGk6QI+/kVPeg9+PJm2c9JGgUtSenj
	RWvXOL6YBwLCbXPucUBE3uzsAYrJ0Db1Yb2s32sYJ5Q2ot0HE2TO3/joGXt251fg
	+itwixEEZvS1drv/pkVVivZEwULllBWP2yUyXrBQxXCnkyS569qOvlgbvPVaRbU4
	0q9Ln385/pTvBYksAd1HlNCUR7eaIC5gGG22ZdlZy4Mw7g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n528s889-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 09:52:49 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-709e7485b3eso16569266d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 02:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755683568; x=1756288368;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vS/mAyLr2b7OYnR7JU7D3yhv4WGKliyobGTdxLp6JGk=;
        b=ISUn8LauLiLYpIqd83hbKQ3h6ZQ7HeC/6uqNFOBk/TX53mMSszMMhHFoHqOyJuL9As
         kg40Yx38ecLDLVvEtJM/1Xt/EPn1mWDnfP6DFKhispNeQ+nvDFWtDwTJbSL4SzIr6O7k
         PDsG4/YZdwtzrmryj8Ar5zDLQBXsmJTxEEsE8H1egGCWzC1b4xOdGsh88w/2WEkVh9U7
         gSEZ4vLUjhyOSFgeqsCwffTmyL+pFKNCpDR+kNOJSEV5D9gCy/f5EXFRAnpBaoZc1040
         NU3qibbuvQpISbDXs2kZh03G4ZeamyntK48qOLyh9oqCWzq8Wtnsk5SR1nv/qxp99vaz
         4G9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWrzieioWtLINcNfj2maHYzXm2Jq7nk58bPl0D1rIQ6BOtlTTtmT43URJDt0gopLJsujemPygKKCIYzwEUc6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+EmJkuZ+HweHMrmDgtFPlAtP9PsfCaMQ8DFFla5v/DwOgORe9
	PU+tUAm8bFHFf//4qmHmTT5HPgKoTswdw+gfNnqDl2ZwPPmZpjkcBOTcxd+JIHI1q3SNlBAasbf
	C58m/DPbcjVfbOqBpuPZYIojeLngz3CJeUQVW7yGj1mO4R0nUpnvV8IVH/lsZfCQsylY5EYOyBA
	w=
X-Gm-Gg: ASbGnct1yxE9vr87OJyYIDLHyoqWjGVpta/eDJI/Pzm8fEW2ltXIHxruYEaKIUZBrCK
	FQl/r82K1zTdgUFHI6GdhlUYkl8QrN5GPFzXmCM8mAaGLLwkAGcEMOhFLLrAiOkk/N83WwiU4N8
	a4slTDR+FbWLyfLy32jbipZBZeu53GS6wdXh8kNWoXyg394ApXg1TRPXPNZrmDLdZDajorTOn1e
	Bj3aMaVyr7Q3ooS4RYvUlOp7vBaCIemojFZfLasfQUDRh1CPBpFgHml0iFgWYE0TJypzO0Vaa6j
	CKv7AMtKsQZCU3AjedhOTms2lFDbe5pK2Ra14DcQtDBuZ9a0GHk4vpF8KyTQG9/rVu6RKoKVhOx
	6irM3LJc9xT1B8K8jYLB18ELsej294k/IM1qDOpFVFAKcRiB4/A4x
X-Received: by 2002:ad4:4ea1:0:b0:70b:ca78:4f52 with SMTP id 6a1803df08f44-70c67846f04mr66771836d6.14.1755683568434;
        Wed, 20 Aug 2025 02:52:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNbZVfxSxGCwPd3oehLj8RTp0Pg/kMsu5jl3xY9Xrr59eonPeKRysDyx2GcL/dNxiu6DA0/Q==
X-Received: by 2002:ad4:4ea1:0:b0:70b:ca78:4f52 with SMTP id 6a1803df08f44-70c67846f04mr66771546d6.14.1755683567880;
        Wed, 20 Aug 2025 02:52:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a48b46bsm24544711fa.36.2025.08.20.02.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:52:46 -0700 (PDT)
Date: Wed, 20 Aug 2025 12:52:44 +0300
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
Message-ID: <v7w7xkefm6ap7delx7wsvxmc76fwptqhe4ehokzfh4baueb7hr@acrx36exv42v>
References: <20250819-drm-limit-infoframes-v2-0-7595dda24fbd@oss.qualcomm.com>
 <20250819-drm-limit-infoframes-v2-1-7595dda24fbd@oss.qualcomm.com>
 <20250820-artichoke-silkworm-of-election-521b5e@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-artichoke-silkworm-of-election-521b5e@houat>
X-Authority-Analysis: v=2.4 cv=fpOFpF4f c=1 sm=1 tr=0 ts=68a59af1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=lQ937gVn5cPVmAjJ5oIA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-GUID: eogjVFk7aguM9jmLczYoyFXighj0L1BG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5zcWaEgZLIlP
 3OYl3ZG9RLvWiq/IM3vLkVtLtUwarJ6Ky0opBrwiOYi1DfoYsHY/ODeQnH7np9JiOrJ6K9qTqwM
 +9i/MBYS4RzMJRdS19Zwz/B9GcajunmBP5nnQmpsj9KcENDSmVdXKFMh9qJhMWfYDyAXIpq+kCu
 u0r17QPtgN6sG8daeq+XwiIjbO1Tx9CvRrHB8S1sgnAF7f6UfpEE8tMp6vgWx2dqc8JCvHzSfOZ
 PkhuNtOfPWIMSw0dW1UWp90eQgsBAIR7tkgCAN//iECozRVZWJ5LdJLSePc8nmOIg1l0K5gS7pE
 579cG9kwZtPq7TnZ5pNL5DHxcaHQKQPsuMFoLZz+d6PIzL6ovYbsq8DCZsz1vman3g9H+R3vdvi
 YQa2CyoJFKDUvr10kgOlwlBBGS2Nyg==
X-Proofpoint-ORIG-GUID: eogjVFk7aguM9jmLczYoyFXighj0L1BG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_105252_527855_95E4B347 
X-CRM114-Status: GOOD (  30.84  )
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

On Wed, Aug 20, 2025 at 09:15:36AM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Tue, Aug 19, 2025 at 09:57:30PM +0300, Dmitry Baryshkov wrote:
> > Currently DRM framework expects that the HDMI connector driver supports
> > all infoframe types: it generates the data as required and calls into
> > the driver to program all of them, letting the driver to soft-fail if
> > the infoframe is unsupported. This has a major drawback on userspace
> > API: the framework also registers debugfs files for all Infoframe types,
> > possibly surprising the users when infoframe is visible in the debugfs
> > file, but it is not visible on the wire.
> > 
> > Let drivers declare that they support only a subset of infoframes,
> > creating a more consistent interface.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> I'm not really convinced. Infoframes aren't really something you should
> ignore, AVI is effectively mandatory, HDMI kind of is too, AUDIO is if
> audio support is enabled, DRM is mandatory if HDR is used.

Nevertheless, sun4i, innohdmi, adv7511, it6263 and rk3066 drivers
provide support only for the AVI infoframe.

Some of them can be extended to support other infoframe kinds (e.g.
ADV7511 has two spare infoframes which can be used for HDMI and SPD).

> SPD is indeed optional though.
> 
> So, it's really dynamic in essence, and not really something we should
> expect drivers to ignore.
> 
> I do acknowledge that a lot of drivers just silently ignore the
> infoframes they don't support at the moment, which isn't great either.
> 
> Maybe we should standardize and document what drivers should do when
> they don't support a given infoframe type?

The chips might be generating infoframes internally. This series was
triggered by LT9611UXC, which does all HDMI work under the hood in the
firmware. See [1]. The series I posted hooks HDMI audio directly into
the bridge driver, but I'd really prefer to be able to use
drm_atomic_helper_connector_hdmi_hotplug(), especially if I ever get to
implementing CEC support for it.

ADV7511 likewise generates audio infoframe without Linux
help (audio-related fields are programmed, but it's not the
infoframe itself).

Maybe I should change documentation for this field as 'support sending
infoframes generated by the Linux kernel'.

> Something like return EOPNOTSUPP if you don't support it, and we warn in
> the core if we get one for a mandatory infoframe?

[1] https://lore.kernel.org/dri-devel/20250803-lt9611uxc-hdmi-v1-2-cb9ce1793acf@oss.qualcomm.com/

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
