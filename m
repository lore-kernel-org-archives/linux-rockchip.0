Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32F43C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 14:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX8JAER6CIQW8ux8ffKqEpXyTQwyYPYX5TkjdB6PhcA=; b=o4j9SPJKklGFcK
	jug9R1Jq7GLCrpYkrG17dmUh760FxWBI+DWPxQa6szyj0Xf66VmTlq4Py32V4glubadbyWJJJ6VYv
	vZYWEVNff1YWzZpIHEPWUde2Ea+o8KoItxl3EemYHj7hgVBfsBjJms00Drzn+YAIPOe96+Of4GCXU
	OcWNKn99s8ABg4vOsV9ASIrXG7WnijAj7Qyi5m6imnFOVuGPbO9N8vgs1vq+7UvYfv7yPlorPcFRy
	nkUr6px1pEdeVcNJzKon8khRVgZD8uxr0QCcmAsw3m1cU+MuUhaDL8Clo13CqxPn22xlp0qDjXMYW
	5bDcQTcFCp5KZvGW8nyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfejU-00000007Ewl-3gjV;
	Fri, 03 Jul 2026 14:19:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfejR-00000007Eve-3tPi
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 14:19:07 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663B04gx3108915
	for <linux-rockchip@lists.infradead.org>; Fri, 3 Jul 2026 14:19:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YKo6OPhVEgyLPX0yHK/easdg
	O+usCoQyvOamCjz3XwA=; b=X+a0dWsQ9cZuaaIyMj61+0hDJJZjyCRiqV/fZMJg
	dE+L7cUwNkPgEwelSfjEIG+7ea9v/gkwaIwvaJTiUF/lL6FWGSn1DPYWYtv9d5tK
	Q+ecSfKBk/yLVLIQBKxFLnhfn32t1/a9JPdfsf4bNzRSipOSWrAAo44yfRnV7f+M
	3E+Fds1MRs2t0WCK0a1cn06e22yQWBbA5S591GPqKd8Rdzv47tEJKWDeoU2dthkp
	GBbJC1i/3OzRAwbWPS+lRXgrA++g2Lkv5wmPHCrRmsHp8fRjlPTQNka6uwPNgKJV
	RJrUCeN+XZSgorizlNgs1FZ0QBiw2wmA6g+a85xmnPn5tA==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f60eybdsj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 14:19:04 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5bd83569844so831638e0c.2
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 07:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783088344; x=1783693144; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YKo6OPhVEgyLPX0yHK/easdgO+usCoQyvOamCjz3XwA=;
        b=VVFSEwyNHc3iqwf+QahbuzF49yxAJ3pDmFXer4d2TfH9YH77TmIyk5pYUuyOpDEBdf
         im6h/pX3nFlZmpcAMODL3qy2ECsEuSilPdfXqEB9RqXmXU2YQ3LME3LOmqCVCQRnSbnJ
         CCxZNnAmDMGFfeuhLcQX5XLAbN5XcsrKUELuQMS9Q9twTxkxf6aDlDGDAjSKCJGBPNpf
         sMqN876FiiMZ8I5zGvFr/JLRLbXsbCm6juaXv3oKBUdNPEiZCupO/sZ1MknZVzqE+Exp
         5vVzX4Dt8E+Je0Iu4Yj6/ufnmT441AtQnM9ydoEWMSIg/hAGTDbXa9/y20x5c6XmbH9Q
         P0Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783088344; x=1783693144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YKo6OPhVEgyLPX0yHK/easdgO+usCoQyvOamCjz3XwA=;
        b=WUZd0LQ5LRvtUK44hJoFT8rMDIJKJx3Ih6n+T+Zmpx5WorVcF8whU8po3q7haASdwU
         eIySxGRgOSqnfIOLRXPn8jnWq8hg4iCMndzY94qhHvLoJWXRrQEReuV08x2/KjmFTh6T
         OKm3qOrWa/2+cRctZEdD0J1XZLOf6zaKCztsv468ARRglSCtjAlrR1TTAZyodCR81oER
         vie/Mr4jMlMEHSPuO1+vO3pNqVksZ1w8lTXKLbOq2g8/SWU9whnR1oWrSGZbh9KPSR/C
         GWRD3WkhF/t0WPajaSnKJfP+AMd1g7376+rkqfWPu+iP37w1MjSBuI0eyR4gJ22cJcX+
         4x/Q==
X-Forwarded-Encrypted: i=1; AHgh+Rov3NkDc6XpXR+syfl4SNaEuZAgJOYTZq5MMliTPlW3hdeMBbn81GnBcRRp/ixqwXS9giaYzb2MwFYlVb2Wnw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjPSvVCIUJA+xSMzWdhy1u/bO5v6/XMWvFIHfukm3MbmDWsLrq
	1pUOE9kUlMzf00E/sjPVwcUWWp9wrOkmSxwVWeHGKkXf6srjpNjPfO25dQwu4dRB0o/JqfVWbv9
	7WROhKn8eblYezqv/gH37YI9+xXfLIm3RNa2gG0q2YNrGXtNoWa38MiP7arkITHJHV/g8vyXgU5
	I=
X-Gm-Gg: AfdE7clRE0Nhqw+1l73gBopK33mbB5NcDVMZfuSZfo3Hd8D7bUIGtESiDwL+baVA11w
	ew3SPuoL290s1uds5xf+MjlXnQCAWe41y+OLGZA5TRTlt71WrDO6qGgxUFV6cr9F8AHt+Pqs6yp
	cNk5CQ2/D/cwWn1wJWvq0r8X8yDtHXO6nHI5rQSnx8K0RWPiEgYRjVkMOqOZLHrZmM6x1/ZmEty
	nErV4VsZ1Wz5tQ2FEvEIQwxwSVFJ7Lcb7yyrwLFAx9lNfbS4Lqye+vO29WDTJyiLYI6j3UU6/F0
	g7+SHYHiH4C0vx4K28tYGr/UI9n+/SrDj6I6uzWuQp6k4PU1qU/onmI0FT6e/mBuVpUIEGdgEZu
	hCSJ7mbIre/lqJKxG7qvJ1rIYfjmS2RBZWuFmy7G8BcOydMiWnhOwF63nNRbrl46LFBPibms4Qp
	/xJZ1LoAqC1IfgMpBJ0q2jzpXu
X-Received: by 2002:a05:6122:8b0f:b0:567:4e8a:fb13 with SMTP id 71dfb90a1353d-5bddf5de64amr4308823e0c.8.1783088343842;
        Fri, 03 Jul 2026 07:19:03 -0700 (PDT)
X-Received: by 2002:a05:6122:8b0f:b0:567:4e8a:fb13 with SMTP id 71dfb90a1353d-5bddf5de64amr4308805e0c.8.1783088343359;
        Fri, 03 Jul 2026 07:19:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed1377180sm514920e87.33.2026.07.03.07.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 07:19:02 -0700 (PDT)
Date: Fri, 3 Jul 2026 17:19:00 +0300
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
Subject: Re: [PATCH v8 03/39] drm/display: bridge_connector: Pass HDMI
 capabilities through caps struct
Message-ID: <eqnr2hfclbdkry2jqe2kuufss5kus6qpjblewq35upnjwlhxhl@4awqxpwrnxk2>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-3-d79890d00b6a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702-dw-hdmi-qp-scramb-v8-3-d79890d00b6a@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDE0MCBTYWx0ZWRfXz2M7MEYYse60
 tMJOU5cu6y1xB6lN4AXczZyLXey8RNxIa3vJr/qCB+ayPp4amZjcmiwba+x6j5M2H04RagP9Vaq
 0R1QzMbVEvzfcSq4TVScBOuiMOvonCgvJAPt/Qdsf+z+5opd7w18vcTZPxfa8FZB5frs0zAV16p
 IIDm8UbMMPr+Xnr8u1A9AZ4cZrgb+gC2wCzyUKkEo1r/1bC5bKzMvcp3fO8xj+sMDtd4gxyh+0U
 9dIlHMWWXK9T9Yn9UyvZyN3srgesuQP9vGdYZG/ciZcEh19Ux0TUIttae44h9Hu5zPwdEyvri9E
 HKz0AqXUcmuDfMorp4vumjFQvQQIyl71+pjPySvxN9joLwWqVAYSBEN3Jb8xGi0l37f03lMab1N
 oJg4WVBJgvsc16roo9NPhOf7iUbgfyJQyHG7F/hlrtcrn2BhzyZaZltYCL4anhz+g5JG7MNksqS
 2au+UjCEcRa6HXG467w==
X-Proofpoint-GUID: 3YfQjbIVrC6k6QSStCsY_Xx1SEBKSBNX
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDE0MCBTYWx0ZWRfX0WHm0APOzweU
 m+WRFNSu8Iz4rZ1SzC4/pzGV+c0sV/hNJKWVXsrjUXX1Xqz7aQb1Xz3QFaordLFvNVvt7Gf1Y1T
 WFEwg+HFIKkBRDiZkAplec2VxvQ1aNM=
X-Authority-Analysis: v=2.4 cv=SPRykuvH c=1 sm=1 tr=0 ts=6a47c4d8 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QX4gbG5DAAAA:8
 a=VsKdElH_S0EtIKHoY5UA:9 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: 3YfQjbIVrC6k6QSStCsY_Xx1SEBKSBNX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 spamscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_071906_075904_6BDBF05A 
X-CRM114-Status: GOOD (  26.05  )
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

On Thu, Jul 02, 2026 at 05:46:16PM +0300, Cristian Ciocaltea wrote:
> Switch drm_bridge_connector_init() to
> drmm_connector_hdmi_init_with_caps(), collecting the bridge's HDMI
> properties into a stack drm_connector_hdmi_caps so future HDMI 2.x
> capabilities can be plumbed without growing the argument list.
> 
> Introduce struct drm_bridge::supported_hdmi_ver to let bridges declare
> the HDMI specification version they are conformant with, and forward it
> to the connector layer through the new caps struct so HDMI 2.x features
> can be gated on real source capability rather than guesswork.

And it's left uninitialized by the bridges, which doesn't mean anything.
If you don't want to touch all bridge drivers in one commit, please
provide some migration path and hopefully get rid of it by the end of
the series. At least, there should be a drm_warn() if the version in
unsspecified.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/display/drm_bridge_connector.c | 29 ++++++++++++++------------
>  include/drm/drm_bridge.h                       |  6 ++++++
>  2 files changed, 22 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
> index 92f8a2d7aab4..796069dbf1a1 100644
> --- a/drivers/gpu/drm/display/drm_bridge_connector.c
> +++ b/drivers/gpu/drm/display/drm_bridge_connector.c
> @@ -823,8 +823,10 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
>  	struct drm_connector *connector;
>  	struct i2c_adapter *ddc = NULL;
>  	struct drm_bridge *panel_bridge __free(drm_bridge_put) = NULL;
> -	unsigned int supported_formats = BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444);
> -	unsigned int max_bpc = 8;
> +	struct drm_connector_hdmi_caps caps = {
> +		.supported_formats = BIT(DRM_OUTPUT_COLOR_FORMAT_RGB444),
> +		.max_bpc = 8,
> +	};

I'm really not sure that we need separate caps. But if we do, it would
make sense to embed it as is in the drm_bridge instead of having the
scattered fields.

>  	bool support_hdcp = false;
>  	int connector_type;
>  	int ret;
> diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
> index 18f3db367dc1..2d8b5e4c64ba 100644
> --- a/include/drm/drm_bridge.h
> +++ b/include/drm/drm_bridge.h
> @@ -1176,6 +1176,12 @@ struct drm_bridge {
>  	 */
>  	const char *product;
>  
> +	/**
> +	 * @supported_hdmi_ver: HDMI version the bridge is conformant with.
> +	 * This is only relevant if @DRM_BRIDGE_OP_HDMI is set.
> +	 */
> +	enum hdmi_version supported_hdmi_ver;
> +
>  	/**
>  	 * @supported_formats: Bitmask of @drm_output_color_format listing
>  	 * supported output formats. This is only relevant if
> 
> -- 
> 2.54.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
