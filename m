Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF33C44512
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 06:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1a6e6QRCfdw2mtOtZ7a9VgqATPYg0EA3p6WLrTCi/+U=; b=JZj0A56S8HFy9i
	T3cAOe8cs0SjCfR48Y/T4K2nalVGv4CtKWvwppqHQKcm8EAZIHQ7UdqeuojvBD0ZwbInQ0ZLBJGSj
	D3Iyn4jfBG2i9lfJiwPDlvG5RJcBPG3hmRDvjEQY7OvjsF3QuSF/YMSYGZ9nvuOcYytAfSb+OGynM
	/dw/dIvNMhUThIY1ETdyuaOkd8Nb6vUomsGHXMperlNRmDbY9jvS0an4+5wU0XoYe76tamL+cDRk4
	drJphZFGZasUTveBuxQ0gSCMXWhLR4KC/rmRSPoNdK6cfMZoMtbrHfJY7xuovA95bPhO9w0x9KYjd
	Noda0kDJaDhblYRn2f6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQjp-0000000Azq3-3kov;
	Wed, 22 Jul 2026 06:47:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmQjl-0000000Aznw-1cno
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 06:47:26 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M61qox984391
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:47:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4HIgg+cAUIBu82rEBIKTHLC0
	oAMQkhK8PpibsSCULDI=; b=RVv4zsQ14AR8ddWCZC62vuMvCiMr9+pZAnOfQy8T
	m8KgZQGXsw7XWXHl54mAkKhUSFPcmxLelpEIC2hO2dzUiqaPKNSqhuMb47JCnwkY
	jP/M5Yf3T6DG3QRP/i9w0/Y62bPMVGH7HTLjrUi3+coETR0OHFlaqyZc6I5HctlT
	jk49fh3VWaLszWgBEBAY8UjtDAVw7aTWkZCOsbvUXz06a6ROLdT91e6XYcY+HqDY
	JMUsL6znu/a+1LJJdT1aYt0G9gv6UizBCJa+WlREq37htnqiS2ADK43PrBmYpgSF
	LK/0armdjZMTHiIexOxDsPaMQlwdEVLTTk4r/MMcYzc5GQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjr8385fs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 06:47:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51a8db414c7so212302961cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 23:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784702844; x=1785307644; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4HIgg+cAUIBu82rEBIKTHLC0oAMQkhK8PpibsSCULDI=;
        b=BJ3eWFbujmrOySj7UYV7Qqmmqu8Fhs0BV+Xc9LWhZl8MVrpnOkO7YUOHwvO5nlp5cD
         /hQ3Qgc2tNJgHHcMt492ggPIp4PGuBv8zR6Y6RISfI/nitYDhx1HenUPACxtDnoHLNlh
         sWO6Nm5JHP0NEFdfzVxomBuvBr8t44iqOD9DlGe4/s4cn4BUxVN+5g8yDGsJZYLPgEJU
         mPvp6QF1Bpmc2sYr0gv/hVXJnrlmUdTev/M5jGntPYdzGY9H+1cwhz3z5SiEsrau6yqw
         NmHr6iNPD75ru7vvbdhS4ktoaCeo+4IollopxO/S1vClf32IS0bK7CnfGX4CTZvXCRIN
         gAwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784702844; x=1785307644;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4HIgg+cAUIBu82rEBIKTHLC0oAMQkhK8PpibsSCULDI=;
        b=g4Q9iicA6zFPa9+4oRoN+xvpYyrdGCIuR+3LP5dGiUNW+TIJMecbntDBtGKggd77aK
         vUysyrQ08BuITDvhlSxprJGFIL9Mf9aBJH+F3KiHEmILN4Ose119kHdZ2jK5srXLRFGR
         O23TB3PNpKIM5EAfDZe8VnjnBAsQp77YrWHPBVClQKWgzks1n7KeIgXrnNUz97/GdoOR
         /eCb4mUoA939Kqy8qXZ0MSdexqov2coeI5RUqGz8INxDSXYvahfs0ciY4A7DWIYjlq6s
         TScYoIyhac5bjoqaZ0yC0n8JPCowyeMdFjDF+CuSFnCaAevZEsm0VgEn4sDkO4Utcz7A
         yQdQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrg0HszyENVebc/eM0S7zSJNSsTghVX107y75ZSB3UevWJV9tMBX77Gr1xrikiOif8G8QsBWU8Jbf9+K4mAew==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy389Q+Hy8HG9PFWtrL/ELXhBNhGepzdpQUjE7wyI5gGUCN20mE
	luKcaedMuVjb4ChGC4A/2llIAiMzR3G/hOyESUUmu8TlNqfuB7mNt/lgBPJin4vC7KWA87PlYSM
	NMrMjNRnw/KcAfJT2y+3YFqBIo7dj4UAYPn5FCLsHYpP2TdWLtKXQnoFOywaGwmxu/jlHNM8nmp
	Q=
X-Gm-Gg: AR+sD12bnsHbXXSClgC5K8Gz0PKmPo6bceXfH+rNiKiesV5PvqSZeYcSFdjou8GFo9G
	IxmPxpqLT74+FsVT3EDW/d+pkCZOwRqCqiv9z8SOpi7ud37m5Hb6wHBvqvNomNzMdHk7JB9EUZL
	hxmgnOEXNaZS2z2QMhxrVplRFXcICAIzM6ySezjO6/zSK0KiEjGArIdPrQG0gCBLqBerSNWECJ4
	BMIktnmlqQWFVb29K6XANGSJCHT+heSZBhoMnFt+7YkZQpH5KFx8YpACdviEPtOpT6IbNS3tngS
	2ZOx8teHhSZnRgMNX4FqeFmCcM7KnyBxmJD8qT19wMzz8AU8mL7/QgR1WzeSE0/3KDVBqGaihG+
	qU+gsgll+E08Wjs2OClP8qyJNfyqG3Mw2s/Z3SYMkdP/ijcYw6oOqrxf4WOKoKf+egH52nyATsy
	c2CujoXw7YpBOdHg==
X-Received: by 2002:ac8:5c88:0:b0:517:a7ff:935f with SMTP id d75a77b69052e-5213c8e343cmr223366481cf.9.1784702843650;
        Tue, 21 Jul 2026 23:47:23 -0700 (PDT)
X-Received: by 2002:ac8:5c88:0:b0:517:a7ff:935f with SMTP id d75a77b69052e-5213c8e343cmr223366211cf.9.1784702843171;
        Tue, 21 Jul 2026 23:47:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39ef68883dbsm2999371fa.2.2026.07.21.23.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 23:47:20 -0700 (PDT)
Date: Wed, 22 Jul 2026 09:47:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        kernel@collabora.com, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 03/39] drm/display: bridge_connector: Pass HDMI
 capabilities through caps struct
Message-ID: <zp7qqyaiir2npq3kzf23kqu26y3cr2fa7bdqtqnca2xggd3fvw@f4plbn6lzqng>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-3-d79890d00b6a@collabora.com>
 <eqnr2hfclbdkry2jqe2kuufss5kus6qpjblewq35upnjwlhxhl@4awqxpwrnxk2>
 <f74ffd53-5776-4fae-a6fe-eeace5c3fc5f@collabora.com>
 <20260708-bold-ruby-potoo-c6c949@houat>
 <dfe104fb-a132-4871-9dc0-52c157a2f08c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dfe104fb-a132-4871-9dc0-52c157a2f08c@collabora.com>
X-Proofpoint-ORIG-GUID: 0tVlsJzLFiiW5jxxaijM1w1ofFAnoKod
X-Authority-Analysis: v=2.4 cv=VfrH+lp9 c=1 sm=1 tr=0 ts=6a60677c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=agHu-2L6Iul8mJwuYagA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 0tVlsJzLFiiW5jxxaijM1w1ofFAnoKod
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA2MSBTYWx0ZWRfX9i53d3UEMN/h
 MH6uQHRXDHOHtU+pfyiKdYqHuZW2NB40jasCz+BeCTEA/eqtyD9CWuVY00pzQEGTrHo7Vn1mGY2
 n7MJ30Z6rbh2ZJFAEaFVjLhoSjT0n2ULdIUGeD/6XN5i2kK1VIb3g1By0bEzoQTYJGstnjI2zoE
 C9y3S4uNkMZJ2F/fqNj857OAlaAjn5fQC72oGJUtpc2gfRAV/zsHci+26g+Zc+f9Qi5pVkn2U37
 1nXG0aQ4XQi1NlDYsEaEg0Lg6oXw8xz1Bpf7ginz4eantTCMXmUMMtoRWBQl27J7s6mFzPETr+l
 sdHa5OqOmN9iqHrBxkQduTR/ic7QMHMTK1/QHssLdqBY4AuRHFyEbfDY5HkgI59GjOh7TvEj2ZS
 t1dVnsONZpVY9GkpfCFZNOUThoW1uXfNvU5PxA3brWybZIwNoJQjDA9XL68CXt79VRz6PLnOc9V
 HXxShAXuwCJLQFgCbqQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA2MSBTYWx0ZWRfX5Jz545PANFzK
 j7/wk85hC8rr9UJ9Ls6aTvO/TYob+DLT5M+K+/ssReFXXsq6Q17k0WXjua05AbStvYDJzawd2uA
 11XDm8SFLmEsmCSs4QBdJRbnDzc0m8w=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_234725_475732_1AA0207A 
X-CRM114-Status: GOOD (  23.25  )
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

On Wed, Jul 08, 2026 at 01:19:23PM +0300, Cristian Ciocaltea wrote:
> On 7/8/26 9:46 AM, Maxime Ripard wrote:
> > On Fri, Jul 03, 2026 at 10:55:09PM +0300, Cristian Ciocaltea wrote:
> >> On 7/3/26 5:19 PM, Dmitry Baryshkov wrote:
> >>> On Thu, Jul 02, 2026 at 05:46:16PM +0300, Cristian Ciocaltea wrote:
> >>>> Switch drm_bridge_connector_init() to
> >>>> drmm_connector_hdmi_init_with_caps(), collecting the bridge's HDMI
> >>>> properties into a stack drm_connector_hdmi_caps so future HDMI 2.x
> >>>> capabilities can be plumbed without growing the argument list.
> >>>>
> >>>> Introduce struct drm_bridge::supported_hdmi_ver to let bridges declare
> >>>> the HDMI specification version they are conformant with, and forward it
> >>>> to the connector layer through the new caps struct so HDMI 2.x features
> >>>> can be gated on real source capability rather than guesswork.
> >>>
> >>> And it's left uninitialized by the bridges, which doesn't mean anything.
> >>> If you don't want to touch all bridge drivers in one commit, please
> >>> provide some migration path and hopefully get rid of it by the end of
> >>> the series. 
> >>
> >> Sure, one question though: at the end of the migration, would it be fine to
> >> stick with drmm_connector_hdmi_init_with_caps() and just drop
> >> drmm_connector_hdmi_init()?  Otherwise I'll rename it back.
> > 
> > Absolutely, it doesn't make any sense to keep both variants.
> 
> I was referring to whether option 3 might be the preferred choice in the context
> of the earlier patch discussion.

Plesae exuse my ignorance, what is option 3?

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
