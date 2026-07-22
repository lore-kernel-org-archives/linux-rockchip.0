Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DB6C44533
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 07:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/fEW4hiIR3Xco5J/LeD2fpZvuO7/sqRhHaYyd8iSpM=; b=0KneDCzf5Q0UQe
	DGdDy04yzW0/m+JBbBFuy9bJuw+KYNoODvm9Fs2w66Ge6YEKQ+1LBHdx387yq3XQ7gRkufAHkDMxv
	dyWg7XyIi8DxoBExP6ivqqjOBnySHIONZdPykRdAzciUehDUyrSamVZTqsE4ZRceX+3f/wyj+tnVH
	LQaXCQUD7Bs1JBC3vfNxlLqyBNwFKW5jPVuiFhz+84HEMoC8CX1tUv0LEFyHhhiiwWm4Vyyc2cNcK
	tlQvJex7XjviivAVN0YSAy8MErFo2sTyuq2dOIxMvXk6UdqXT8vH46jadKuOJcJGFVS9ozQCDETHE
	s2gihjj3XP8adSrG88Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRXA-0000000B5ro-0esh;
	Wed, 22 Jul 2026 07:38:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmRX7-0000000B5qR-0k8j
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 07:38:26 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66M53wr03996358
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 07:38:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FcjqAeTgLsiht+7guJ7zeeOB
	F1xXICcGZUBcywGzczU=; b=GuOcay4k3SiU6XYW1TYKYeaOIB1q6iMvGt8XxwgE
	163liQqUGE2TrlEk1nkbZ6ioNv5JA5t3kPcOO9JfUwmLE4sEaLhjj7tVXQjcm7GW
	IJ1ZAcYdoD2IzEIQdjg/5dKsxjrkZpkASJfp511nIVGX/JDPxpn9aQr3sz6iWMuF
	hcqiKhFfWbruZPaVbhWij2HD1vIHZTD1PHgz5pHFzIHlgNztZ9iya0Ty/t1yMAVs
	2iP4Wa5DN67DBVUHMGeMQqL+bFV6A4FIns/X35qe8Mv9ZuQfzpiRFuR3tn4yOkWj
	yfs7oUzk0Ts+ZvG6DVp+bWQVf7Yq4qs9pJCqvxdtWaxu8g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fjd6d2uhn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 07:38:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-51bec738909so144865151cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 00:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784705904; x=1785310704; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FcjqAeTgLsiht+7guJ7zeeOBF1xXICcGZUBcywGzczU=;
        b=gpYjfiAOfZ7z6s0hYSCXbgGfA7hvopUkRMzAqJokDWQP5z86SHbLoW3JgWg6RGv5WF
         EDLNVPBk71lz3Ch16rY7dFPQAB3ismoglNtORlJqnBkWSLskuRHaH4HMcg9ZS6qyeFqn
         /PugIEbQz0XJ7ZHpfT8v0PUAkkkx6w2/WEFcOfXhwUPZ3SQIRjA4kN5c6LOXKGEikFJG
         NUH6ilbsfCGujD2qbA11xLOSYL7ahfgZoscSbAKpXRJ02U8Kt7QnCvlWRpSrQ9gUG6MU
         8DsVmJy0TOtleWnqr6WLkFZYKNX9pxST/wAtIvbPixg5HZ9MHOdIe0I/rAEiWJ72BDl6
         jeWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784705904; x=1785310704;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FcjqAeTgLsiht+7guJ7zeeOBF1xXICcGZUBcywGzczU=;
        b=BA83g0lAAJSa6qV0JmkI6ea+A9kXhOFA98DUKWtikaKzksSEjKz/X0dLHFZ5vG7gIi
         s3OFZfjIDsERVqCbA9UFybLPk2f0ZAILI+wcZj+RIkaoG7YgIoBO2EGn5B80/choTI2q
         Od5SPgDZGAtkW2u9/m3PTIS5jIVolPfc2fJaXrSDt4RU+1qeZc1/GdcmapO5m5vwm0P3
         Afdgh4I7RAnbhCFMqToo112i6s99hw370pvc27UGjMkhB8nZ93EwJiEOBtXrjK/iqRQG
         ittIJWPdyoiWLXSwK/1U3d/R7KCMSW7khE6AtSD8jRtPk8g1ukZmtFqAQxHYQqRGeH2f
         +J7w==
X-Forwarded-Encrypted: i=1; AHgh+Rrir/v3LA8Ibb8GG9605HZE3Vi5BVUyXrzRSZ7jAf4QmCMLpGFP8vxuCYMtYKSvaeUYPb7PZUUtzRMFY1rPVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzkHbHl9LKqGz102RC5tyoT/1JviNBw70jKAxfwaqzWL8DGvDkN
	XiQuRpNoKcowa6WlQH1oU2+IZY+9okPr6NBKnOgcGt7JsxlmzwFpfTUuSZwwLPa8SYVYct3QhO9
	HB/XvbgvIORrGCtbS5Iu5t5tYIi/JAJfN1J5l1RwL8ksBVQNJYZfWM2+pwRnFn0gZVOf0ITU5Pm
	M=
X-Gm-Gg: AR+sD134C5CSzi3qyAW/5XI8dGW73qEAIO/5sXLJ67W1R7XxzhhiAvRXpKaE7uk/mtk
	S8tPnHo25BFytTRTzONd01C/8aKQGPycv9DcUe7HXdZHrfghBjfytblOp/+A99wt7KCBslCGtmj
	cdIVVM7AmESdIBTsiWW85WIt2Pd40rkkESa9xYF4kuRUUnDuQkhcbT7JSivVqt3VSvPdKOQw3zB
	0Gf3ZrMCdqV5xQSwPIVlCGi+2s1sXtuNoD4ZvqR6RgfiqK3RM50wHoWLmlH1UhvxK84NndHSgNa
	nXYMIbDKaWOb48ahjwnpYYPNeB3MJnnDChC8mPDZQaf7h99OQ3eV72iFXFHxBn0lJIMmDZMfMiK
	aCHDbR3uvFPysVj3+epe8XFFRmA61OPYOkGkbTY/9DvSYvIx51FpIYcoXwRWhDvu7r0AG5Nttrg
	mWjNSnXW82lE9J/w==
X-Received: by 2002:a05:622a:1b9e:b0:517:7b6c:445b with SMTP id d75a77b69052e-5213c5f1d1emr190722221cf.20.1784705903328;
        Wed, 22 Jul 2026 00:38:23 -0700 (PDT)
X-Received: by 2002:a05:622a:1b9e:b0:517:7b6c:445b with SMTP id d75a77b69052e-5213c5f1d1emr190722051cf.20.1784705902886;
        Wed, 22 Jul 2026 00:38:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9e44b97sm324394e87.61.2026.07.22.00.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 00:38:21 -0700 (PDT)
Date: Wed, 22 Jul 2026 10:38:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
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
Subject: Re: [PATCH v7 08/30] drm/bridge: Add HDMI 2.0 scrambler bridge
 operation and callbacks
Message-ID: <wvkcamiigekyjdmlsngeccjzkjtfetnmb6aavikvhqk6ave464@5fs2g6uc7axx>
References: <20260602-dw-hdmi-qp-scramb-v7-0-445eb54ee1ed@collabora.com>
 <20260602-dw-hdmi-qp-scramb-v7-8-445eb54ee1ed@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260602-dw-hdmi-qp-scramb-v7-8-445eb54ee1ed@collabora.com>
X-Proofpoint-GUID: wyXthyQsS_uWNezkhUsepBtSpfc0cNRK
X-Proofpoint-ORIG-GUID: wyXthyQsS_uWNezkhUsepBtSpfc0cNRK
X-Authority-Analysis: v=2.4 cv=XaG5Co55 c=1 sm=1 tr=0 ts=6a607370 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=PX8HVTZbq2s29_-t98EA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzIyMDA3MCBTYWx0ZWRfXwej9nePYSpER
 o0TYS0cbCG7S9wtYO2nALXeHeCbyAuFuatKohBQvDuyax7M5Vp+kpRxqDEg8LlgXR9LthrXpD7O
 zn8whCSFHkmnfqUk5KH79eAQDhBDk6Ojv7z2CRyRbnSkJu4iuuIlFvx0OZs+7VBfRRNhFFd6uwx
 M5BuOQhnoJZIyV5WilwRlJvg69C+dZTMrhZF4z8Q3PLj0DnMlokCpCsy4INL4oKsnyHeV0DJ4F5
 PBsmE+XxqQwYGqcvj+L1JEkH8Yr9qf4NNq82b3++70wRDhhZXJfebV5U2fuLPFdOjYRYDCZuoPz
 Waxo4eAI5jhK0QJ49nbyQ0J3psFbPQsZPDC6+zfB/8oemS5XTsm2v3nn4S6vM8tLUqRvbwRqx9l
 cW3kvep7UHpRR+5Zywndt6k3ey0DiOJqK0yJCoCNPbQoqZcyVoDlX2QEfqjnCrCGLt3jk3NL3EW
 AlAZlQv61UkNJb6CuNg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzIyMDA3MCBTYWx0ZWRfX/bHhshiRZMiM
 i1eNHelZGbDl4vjTgcwwohcMh1s87QirVAk1FqPA63D2XSqKcKXkqCyCj2hW/XOYzX6+XLj1luu
 8F+woJXjwNPXI9uhCpzsvP6qCx/GZWI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-22_02,2026-07-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 clxscore=1015 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607220070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_003825_349935_C6DED790 
X-CRM114-Status: GOOD (  14.09  )
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

On Tue, Jun 02, 2026 at 01:44:08AM +0300, Cristian Ciocaltea wrote:
> Add DRM_BRIDGE_OP_HDMI_SCRAMBLER bridge operation flag and the
> corresponding .hdmi_scrambler_{enable|disable}() bridge funcs callbacks.
> 
> Bridge drivers are expected to set DRM_BRIDGE_OP_HDMI_SCRAMBLER to
> advertise that they implement source-side scrambling control, which the
> bridge connector layer uses to wire up the connector's scrambler
> callbacks.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  include/drm/drm_bridge.h | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
