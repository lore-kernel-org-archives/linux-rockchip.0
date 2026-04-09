Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 240ABF364CA
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 22:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfKIvOxPFbdgiBTzy0iCgYSYU4N223eA5Qjq3zisAB4=; b=hR+sHu0d8aF7Y6
	Or0/KawnVJEiE6MQcKtLH2RkKrjl0elGOK8CS4h1eLE7n2nLFi7tb4KUaj3Ac0+sa3w7shL87be8a
	wL/Ua0qoJDtnd7kzeTwAHt0uuaQv9uWN2kO8sBLJcBcj97gM2HCP//NXZbQpWcfsW1/9taNe+inVx
	u50kytv310a1GhhCixh193ghtMkyA8H+YAGP2ZIVqWjwArrA4XwgicErkGenVPWp8zDeO4gIVV9sp
	2wJVy2xIfWIvhegNBUwOvA1nzU3Y5f3+pLmu61st/c86eXDR323kD/kRTFn68xjHvW3NAoIO5JFCJ
	llSe2851myt4fAVsmXTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAxYh-0000000BGca-3Wx1;
	Thu, 09 Apr 2026 22:09:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAxYg-0000000BGbM-00ru
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 22:09:07 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 639L9ETs1730291
	for <linux-rockchip@lists.infradead.org>; Thu, 9 Apr 2026 22:09:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0HMFaKZjpgyXaau/0X9Mxm/w
	GN/42VWp/aAAASGyGoc=; b=kNv/mPHEw/tFjVBnkayEOYmjoDA8xsri9s1Fx5AI
	j1rghVQSftnAm0tVvn+YyX5kR6NxS6O3dSqWEcQ/9lSZ+hrdwdG1+gilPhovXIoD
	gNr0mctsDpiBtOOepvYk2JQV1iPFChb/nlhXUGmm85iCETuMErjbBM/gwSw4nRtJ
	TuhcWuPxw7Wm3KU5go4mRE9Jh4bmK3YUSGd4dmcq9UXo52BVx7jxPFeFAqhdLoqA
	hqNgGZhxbOWpGXFD2ueRY9MHdyKwFe7ReAxa1BSeJFtvdMjnD+rEtIyQTkwTnTcs
	gX/v09P9lvNyi4ZmJgZQgtoEGgqdjnNr002UF6Z1Acb45A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4deckxhttx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 22:09:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d8dac6233so29308871cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 15:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775772544; x=1776377344; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0HMFaKZjpgyXaau/0X9Mxm/wGN/42VWp/aAAASGyGoc=;
        b=dgT/BtmDwOpaadg36T9vsr4aWIO48cs7HEqdvVF9DmqwzWxJWKjgNzFlLlXyamL6B5
         Ux5ZC5N0baj9Kx5W7eM7TqDZg3Wvss8Y8aNLX5zvm7/iLOirygLcFP3h32ddXpvcPdws
         3XSJnpe60sa7rjQ/bmc6HJssxk39P+mAv+352XdVNILHlBrz+fijXkSnDmCbVDxGJkvB
         Uz05PFgzoPHVUFr+dkceO7Io68LJrggFUXOpLGTd/iPIkkN/QDcokVWpnc0QZgsvNhjG
         hXn2AZr/Gl/PsZRBLaWHMkfXsaDJkjETgqDMkfLgMgTCpdk1DkhEleVsTtJQWSgfjPP0
         hoGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775772544; x=1776377344;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0HMFaKZjpgyXaau/0X9Mxm/wGN/42VWp/aAAASGyGoc=;
        b=Ns3fme9D2/55ta3DwilBg3IVphBCR+HOVIPMxRTTMF59suuLxxCJblsWP7Tp8II6FU
         H/dhoEnvapjsCKQCLhqsSOUWVJBWvrm81x09QOUAKOBJobFvcPi1AgUAMWd0Te13V/1H
         F9GMMsDXvqXyEZrW6dyv+R4KHr0lxtFiyx3IONqVAWMAaTqTEOtfWlnJ8igwn8nycizf
         SfQCVgPFr949eFisH8Vqt/s4PowJfJOxYGAdILu6OOLvir9CDW6WjmRppmns/XPK3/8D
         EK2NmDZjMtHAyeGNXAvWoXCbZWY+cHxiMRObQrtkuHasxsp88KEIvhogcewwLlv2XmO7
         c3qA==
X-Forwarded-Encrypted: i=1; AJvYcCXgxRGe5aSy3B7RbUk2JOneBBxokRba5d6H+I1md1ngR7Dt02EUXDz4jnHoQLHoZmxbdjwkEfUHMUsdhOZQlQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRqsOmnnjwikHjJER7iaQph2Pv+VdxWc7ltV+G8lZHmdC8uDQg
	wyVJVj66FWZWUrVBA/lLRgz/p+GOy1jWvx4VMlRzndaFl49LjNxcWIHZOZOCv35BHbrNT6JI5+N
	nCBm9Qb1gtLPpWD2rldT68Nr7bWnB18D83172KysV2HumtGlKwjgmZoL09xQ5B8zG4DhV/cLXv+
	E=
X-Gm-Gg: AeBDieuV6Fp0DmcHlSfeOz1632GDEVVc9iKsS/WdpOu9Rw6DUCP61ZyabZ+jEZCOn2Q
	lYoGmrhVQSDvi7PTxrSemdv9eWGM5C94bmnB6SLpKZdepJV+TPc9JSCcCQCm6Squujy1FGkXCAA
	1pHGU0yHKEqfwTTzwrAng5LUA69I1rVxAyywxxgW8cjsy+bX6LYtLIaKmOyKu7Phz9P7IrpnS/y
	qqw9lYf80gZZHN+fiKQkmMew0+E8OKKkcaU8yWKLSzGSer4D9/9483yVSwWIeCnTZWRj+rMXcJn
	FMs1OYYr1MNaXcf16U/A/Tl0BEt71lTRHKGsSGnAjqEWsN3NLFkH9NH0EzNFCMe3PrIfq0iacF7
	j0x7BPslF7zUqrCYkLxHSwbVBCsoHY44Kz/6cg+tzjwUWRUPipSIj/CfxxMqiIagfqnhtrzLu97
	Jdvcp85GudeaSlrkR+ZzvlDdBeQi76F/7aujM=
X-Received: by 2002:a05:622a:2485:b0:50b:50bf:5bbe with SMTP id d75a77b69052e-50dd5adbf6fmr15603931cf.22.1775772544406;
        Thu, 09 Apr 2026 15:09:04 -0700 (PDT)
X-Received: by 2002:a05:622a:2485:b0:50b:50bf:5bbe with SMTP id d75a77b69052e-50dd5adbf6fmr15603721cf.22.1775772543912;
        Thu, 09 Apr 2026 15:09:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eee864a2sm196421e87.2.2026.04.09.15.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 15:09:02 -0700 (PDT)
Date: Fri, 10 Apr 2026 01:09:00 +0300
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
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v12 05/25] drm/atomic-helper: Add HDMI bridge output bus
 formats helper
Message-ID: <47l6v3hxfnl75heek4o7fmhybafk44ewsrr66sdw55ahjv5oof@sku3nqbhg2tx>
References: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
 <20260409-color-format-v12-5-ce84e1817a27@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260409-color-format-v12-5-ce84e1817a27@collabora.com>
X-Proofpoint-ORIG-GUID: Z1D1oJTLso7-38jze3D4ZLwqaHP-9g5n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDIwNCBTYWx0ZWRfX0ebSib+DE5TD
 2HRTulziZNT1op7XpfNvJCqdexGkcF1kzWEOwOaO1UuIWJBEa2sRw4L9bkFcw4B1MvpcXFIDo77
 6HEW48ojInXyQzfc4TkaYNn0gapqBvAL+sofSa3AB07l9mMad7myUeClgQfKAxEZ5z1shH8ZWYi
 0SA1wtGSqoYp1jc/hMx3A1jqsGeFzim2eHMJibn/eCZdIDJRQYAsdtbbAh2bV6OQuezcGsoS5Gd
 9QEe4enGMN32CJDtmykgyE9vGGq0JQ58qOkuOMJCXs/ztVWqpgULBO7vAdBRNMT5rnB+Jcxl2qR
 IJPM5mSvHOoJNQJ824b4HBqLRAV/3ytX7eHT0koVdggZFwu1hkYnDdXyJ4XDMEseAisDsjw0Mdc
 Hr6If5xnOcH8fcUJ8vS1/jMfw9A8nhaQBzezOmzXZr/a4SCRD6eJHka2Ix+669snIQLzcEFX2HI
 QKqmJ8vykvh40DQKaBQ==
X-Authority-Analysis: v=2.4 cv=OMcXGyaB c=1 sm=1 tr=0 ts=69d82381 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=FnALt_FR2tA_ePdYDbsA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: Z1D1oJTLso7-38jze3D4ZLwqaHP-9g5n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_150906_047894_3DB33691 
X-CRM114-Status: GOOD (  21.29  )
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

On Thu, Apr 09, 2026 at 05:44:55PM +0200, Nicolas Frattaroli wrote:
> The drm_bridge_funcs atomic_get_output_bus_fmts operation should be the
> same for likely every HDMI connector bridge, unless such an HDMI
> connector bridge has some special hardware restrictions that I cannot
> envision yet.
> 
> To avoid code duplication and standardize on a set of media bus formats
> that the HDMI output color formats translate to, add a common helper
> function that implements this operation to the drm bridge helpers.
> 
> The function returns a list of output bus formats based on the HDMI
> bridge's current output bits-per-component, and its bitmask of supported
> color formats.
> 
> To guard against future expansion of DRM_OUTPUT_COLOR_FORMAT outgrowing
> the hweight8 call, add a BUILD_BUG_ON statement where it's used that
> checks for DRM_OUTPUT_COLOR_FORMAT_COUNT. The justification for not
> using hweight32 in all cases is that not all ISAs have a popcount
> instruction, and will benefit from a smaller/faster software
> implementation that doesn't have to operate across all bits.
> 
> The justification for not defining an hweight_color depending on the
> value of DRM_OUTPUT_COLOR_FORMAT_COUNT is that this count enum value is
> only known at compile time, not at preprocessor time.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 81 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_atomic_helper.h     |  7 ++++
>  2 files changed, 88 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
