Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DF10CCD183
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 22:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UszQrrWP+3yv0V2cjtYuIDDyVBRKPvv8ZESgdhddnE=; b=wYquxNvzFqXdeR
	RHW1wEty1HSzx1Oah7FDJP8hF2/5fqlwV3ig7yieHG+bvAi5pNnM2KK9MRZT9Qi86Sdbx6O8tqDz+
	3I/Up6p0UhYY2yeI+PDCyBH6XTgTW6T4wzbnxXh1LNNinHAsQxIVNhyYWQwNAM7Kt/pJIdRj0iEKw
	Z0dRBRHLnZ2YwgHxZ1fTlLaBDNeYmpVwc6EdU0ziP6dm/1QGPJvVQXzCCaBGmfKlgVZCJa5BIYZwC
	k8ScFxdQkDvf1Qaq9doZ7yY2kowpbG3EYBXgk8HPjSOoMUbWn9yTM0D8Y5+V2N33o3H7G/29bUdmi
	L/FYh76GZm4oFmIQ5IGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6z9T-00000007F7S-2TJX;
	Thu, 09 Oct 2025 22:30:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6z9Q-00000007F5i-2nlu
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 22:30:21 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EmiFV029796
	for <linux-rockchip@lists.infradead.org>; Thu, 9 Oct 2025 22:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7u9Umol56pcPf/8TeFs1AIjO
	6NYonp9MTQXBusmiU+Q=; b=MOz0kaNI3z1KFLWKgm67QvZsO4sKsIlmf3KfrSp8
	x871heTRYJHsSvvYs7zGLng62g2qwVsoLrOrPI/2rc8wC5st46CBRuKREuimw5Vt
	P1KBQZscb6ADHPZ4WDWSwG7E7Y/f6pCBi2hgIWAj3aTmav3nV5jicx/C1rC4knro
	CBsSwuMT1Ev7PilVMh6uY0c2SiQjPVjOhasPsih6JznSzDn/2rfbeR+SuqAAh+uN
	7aEyJby90yISJd3FUYWHZuesr0A9Wu4GL4PWfDQ16CWYce1edLgM1dAY2NlwhcVD
	ZRKfSKmGh9Ct6nAeusAQkEJcrv0JmkDdAHb08IIzOI37Kg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ncesr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 22:30:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4dfc05dec2fso83393371cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 15:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760049016; x=1760653816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7u9Umol56pcPf/8TeFs1AIjO6NYonp9MTQXBusmiU+Q=;
        b=FKL8pUmK7mVYUHxRGbKnEWNqYSteJTCkipmpTcSAzqkBwrT07rJ76dvUAR4+u1izDT
         XD83/ZwmZeyrhGTRnrdwXdiUmvj8RSizXkxF1G2oRCupocoU5x3W4ZqjIoGi7NjdjK6w
         s3v1fmIgsgFcuqhATkolAzbsh0zaBC8/A3p6ECH+mdKbhqhv63JK3ElCgZASy5aFIsXf
         6dI4P0CLazRljmSOHBjcX/LwQhwxu263H03fufT0kKA7XN9OaVGaViQ+d16YlQ0e7fll
         2LT1MQNTC+ueGrEcvDscaYjhGbsFUkMHjX1dq5qzd540LbIo32wERcwbJQg06xd/rdiW
         3/sw==
X-Forwarded-Encrypted: i=1; AJvYcCXDva8+q3M5+u1PTGD++LB55uUXBn3PWPCdgM6vZtnHOEopfuZ19vFDIpv6LHRld94aI+n58B3gsmjR4usf5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnraspVyI4iZFPMJD5Mm1UsEsDOdhsq/uyHIEHes2vfKJ/72rl
	aDVFbWFC/HP9ne0lOuq38KB13XKSK604AMEd7irxESzmXlA7qIVoyjWVfCyfnaVa8B98oGgJt70
	Rk89ayeBC+bhso2aDBkAxPFbPrb5vvL6Kdo8mcHf08vxn9FClocE7GaoJLAFVB2aGE8Wkgpxf0z
	A=
X-Gm-Gg: ASbGncsBobx7skUgl/tDLwJ0/IQdrTOKL+tKyvQWHkwQGlcg28XhCdNO56dLBfLAx5G
	WXoI4UbhNpOSjSR4gWNjTVjw3wVVHUEteYxr3u2l1E+d1phPY8o1JaqitOeP22W0TZvDxEeZ1m6
	EY6/Tqyd4EobJPRbeQc1X84fcnv+YxNnGaf0Y51T6zWxbTZ/96GPLWgdWBnE/KuznCsB7GTNvvc
	hnXphdHlroSJmsqu5IDatZuqPrO7USI2kUBqYjS1UOBKIj/437rBTQXpPcNwGbNIiYiu14km14F
	9QS28haC0le1TKa+pHSikFnsCOuqqOPl05v3XjKNmEyvXp8Grm9zQypFtXyZCNlGi7MYJoOQIEo
	/MEMct6kS2Kq7QKMD8BGrRE9evcQsveCvpHOwiEJsvSFhHPI/TRXD8l8/bg==
X-Received: by 2002:a05:622a:254:b0:4d5:229c:9d1f with SMTP id d75a77b69052e-4e6eaceb25fmr123334801cf.32.1760049015800;
        Thu, 09 Oct 2025 15:30:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF77+YGORmN/1V00YnubDd/uwhGM0Ew5duFJ5RpvkZg8bhb7cpDezBj+R100Q6pO/HZIsgBYg==
X-Received: by 2002:a05:622a:254:b0:4d5:229c:9d1f with SMTP id d75a77b69052e-4e6eaceb25fmr123334311cf.32.1760049015316;
        Thu, 09 Oct 2025 15:30:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088579e01sm238719e87.114.2025.10.09.15.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 15:30:13 -0700 (PDT)
Date: Fri, 10 Oct 2025 01:30:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: damon.ding@rock-chips.com, m.szyprowski@samsung.com,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/bridge: analogix_dp: Fix connector status detection
 for bridges
Message-ID: <v6aqic6kffc3x42dkb4bika5tvoqdpmmloroqio2656g74pkws@7fe3bsfzbasn>
References: <20251009193028.4952-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251009193028.4952-1-heiko@sntech.de>
X-Authority-Analysis: v=2.4 cv=ZJzaWH7b c=1 sm=1 tr=0 ts=68e8377c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=hD80L64hAAAA:8 a=Zt2WjO-vMssICJJY_9YA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ZC9iaMvSWW6IhpueeU8oZAJhfQiljX5x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX6fqUszPzo5Ad
 hYvYCAW3Ki59bJjnoAQ/9TITnM4pd3ZBVFuLKPngCO/vc5d1LVjRXoC8hJojjos1lPgxWa6qqen
 hKgVxX4gyRLneMFRONtlY3XYvF5fphpEJaBDGrqtjBmN5fsivqYtH169y4a6QsM/PyXM09Ir10t
 bNPr/XkgJLxocERgpd3FYMYLw34Lc8JnFTTKO/jCJGdLPN3FcU/iTG4wm2n94/r8NBUmJdK8d7M
 AWSGDWNFfnM+sAby26tcxhXrE89PZZIbuhTPJAcWpi/UCmxJDqjZOTSKuvhvuvsxxW4ThfLHQ5u
 4Sm0oJVojUbPITOH/3krbLBB8GeRONVOHR8PCaS7X9MF8JNEA39pUp72dCrpyRA+JFY/DGsr2Xy
 XtChxDn0nyXqKNCfMXMU5N34iAAztg==
X-Proofpoint-GUID: ZC9iaMvSWW6IhpueeU8oZAJhfQiljX5x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_08,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_153020_726376_CFA5CAAA 
X-CRM114-Status: GOOD (  32.08  )
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

On Thu, Oct 09, 2025 at 09:30:28PM +0200, Heiko Stuebner wrote:
> Right now if there is a next bridge attached to the analogix-dp controller
> the driver always assumes this bridge is connected to something, but this
> is of course not always true, as that bridge could also be a hotpluggable
> dp port for example.
> 
> On the other hand, as stated in commit cb640b2ca546 ("drm/bridge: display-
> connector: don't set OP_DETECT for DisplayPorts"), "Detecting the monitor
> for DisplayPort targets is more complicated than just reading the HPD pin
> level" and we should be "letting the actual DP driver perform detection."
> 
> So use drm_bridge_detect() to detect the next bridge's state but ignore
> that bridge if the analogix-dp is handling the hpd-gpio.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> As this patch stands, it would go on top of v6 of Damon's bridge-connector
> work, but could very well be also integrated into one of the changes there.
> 
> I don't know yet if my ordering and/or reasoning is the correct one or if
> a better handling could be done, but with that change I do get a nice
> hotplug behaviour on my rk3588-tiger-dp-carrier board, where the
> Analogix-DP ends in a full size DP port.
> 
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index c04b5829712b..cdc56e83b576 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -983,8 +983,12 @@ analogix_dp_bridge_detect(struct drm_bridge *bridge, struct drm_connector *conne
>  	struct analogix_dp_device *dp = to_dp(bridge);
>  	enum drm_connector_status status = connector_status_disconnected;
>  
> -	if (dp->plat_data->next_bridge)
> -		return connector_status_connected;
> +	/*
> +	 * An optional next bridge should be in charge of detection the
> +	 * connection status, except if we manage a actual hpd gpio.
> +	 */
> +	if (dp->plat_data->next_bridge && !dp->hpd_gpiod)
> +		return drm_bridge_detect(dp->plat_data->next_bridge, connector);

And it's also not correct because the next bridge might be a retimer
with the bridge next to it being a one with the actual detection
capabilities. drm_bridge_connector solves that in a much better way. See
the series at [1]

[1] https://lore.kernel.org/dri-devel/41c2a141-a72e-4780-ab32-f22f3a2e0179@samsung.com/

>  
>  	if (!analogix_dp_detect_hpd(dp))
>  		status = connector_status_connected;
> -- 
> 2.47.2
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
