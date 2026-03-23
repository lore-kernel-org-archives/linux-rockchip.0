Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC842D58CD0
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZnOV1r0zeRRuU/CH4EyJ3dEx5IfiwQWudPeSEWwRco=; b=jTNIE/xRPCoXUX
	lj8WYEKTszCv7g/cme4+pV0tduifZ7JxRvVVZwwYoN4Zrugy6zPdDDZe4l7VPVtObK0NJS35kunoj
	E6kBZRScItkWbDyQrN5vBwJupsf/15KtssdnqonV8urDpJvsPd9ivdsYgIGGlebAK7VfIsNsbcHXz
	oClkqdxdKxkO2Gmd+kpeFqdhIqSqK3j6LWcqGaCnsDs26ViAgU8gj7YpkANfsHdmAfznkwbqDt2Zs
	8b9+gLwSM5QdbSGhUvhJ/GkrysYXyhkNZUX4GQDv3v87fXlKW8Ks69xofzBRhcWFzQTju0ZIFFpYH
	rGk6FnVO6+LDC+ENQ/qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Waq-0000000FzaA-3H0b;
	Mon, 23 Mar 2026 04:08:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Wan-0000000FzX7-3P3x
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:08:43 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MGTRxo353326
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=L0DNNdGHDR5wlsCt28DXVO7/
	ykGGtL6iZ7ih/B1pDZQ=; b=Hm87qYBK6EpqLzvsAKKiVfisJdYCA29Rw9vKImJz
	lU+T3ZSsQtEyN0sicc1mVQfFiOJsMlFjJdAn1ibQornp8c+1tT3rdXIfazxKoT+0
	r3paTKRMYcrOnDzrgpbSpH8tw/vChxTcx0bH62Dg3aYq57KgrNidMW8QBuaISVjp
	9YDOiKfjC+4FZQ48QIHNEtaGcdKhYgUIL8v1syDcBi7YbkbLuQbMbfbS/qXtxWnO
	xii5Fg3z6LruZZPDsJ/9otr4vKpZK54kJwDez+Wlgw8qNYeYn6a45LXb7YJua2dX
	FswqKzTSGkiGIaMaAod2Kfk0A9WqVRW8/qqRoxGYxhQxuA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1j9rbp6n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:08:41 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5094741c1c1so307652881cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774238920; x=1774843720; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L0DNNdGHDR5wlsCt28DXVO7/ykGGtL6iZ7ih/B1pDZQ=;
        b=CbSxRpMzIn12x7UEicZXYptQVONVJU4RYVr/l9y4jk9+o/c6ATe7A7YzPvhkvCEZr0
         Ae6Ph++LwLtI7YPu3Ol9qIYdySzgL6vMskluPWSZs5w4POMO6unOPxMsaIcRSW5N4C1v
         K/KKop10Oq3zWqvjRMvZ/Eub/TTRbSthb/Ol4MBVvXZ7T3agcoVqj1tRUPwJX0lXw5YE
         MXgtdBaDH3+gSxnFPj84RXiT20EZ9b2S68NIOyji+/FK10Bm1f+OoCOHgpM/JhbfJDbF
         GsjRy5FKhmNwTPHtav6hNexyoQB6N8DS2LkKnjnKD2fP5MxfPnIt0hIYf17fbn7kj0Qw
         3PvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774238920; x=1774843720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L0DNNdGHDR5wlsCt28DXVO7/ykGGtL6iZ7ih/B1pDZQ=;
        b=mltNPwcXMznJiz7dsjtcZS4arEMedUQ+OaArCIVeLvR58M8vHlvAQwe+BrZ1Ic9uY+
         9DrbPL66YAKPOissi7n7mfsmkwoM1/iAM3ShS7Ib+PZUhVdg/QMScZo+DvzgBT3q4SZh
         hvIzZBLquDEiL6Zsq+6+ectCfPqjdVV2/I62G1XcO038GOkSzdnVvkRL/vecbb7a6up8
         nlNkN2X9qNu+tdX2/vheq4KfikCeOBqxsqUGfM2Vkiy9eHMjCGuIBb6iy8txZi78c9B7
         IAzxHGbJoC/ZiD3xaGJxgbA8vKe7smpmAgylmKQdJ6+KMybloF7/E1omGAWhEhEX2rKh
         zLlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHTrLuXwY+4IbW5hUNzt2IdpBZEWn4nDVubEW5OVL09wuWLaqnpAEEZmzR7uKH4WR0ZNKNufxdxTVJh3A5mg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwloGzv8J+4EdKalvL0Fa3o4P5TztXAWbIkZqh/2KXHRDPy1y6t
	PODckHq80T5rLhkatlC7hGmC/1PYlpunt+PebIXcXMUEiyHctjXRaU49eIk4KyTG5cFciDFsqV+
	c09UIFA326L3Xm0xiZ/kutJ5okF6TqcV/luSUG11EhzMoe9HfxLmLg2raR8Cuyv8teXnHNp3ogB
	w=
X-Gm-Gg: ATEYQzwh8O3TZo/LRxOTN3kbmvwOlLkeYMAWzks4l8IPxqrlKJlWRazA01C8QVp12KN
	u8wH8tUXnEVQWpuV9K2hP8ZCGy/5vYgZhK/P+epd+nAD34ZR9XNpWWPN/Upo/+dUGeGJGLqtOSX
	wpM3wku745AwuxC6b01vYi5jYAOuGFDi3KXxIvYwPtTtNsn31YSDjt0lxk+WSYKveh7+ImQaWjs
	RomjcYihPcEjPXrJ4zv8wI7IBMQ01pXE0vw7Vfh2pCnGCp9RlCsyQVdY1EUR32/Dp6AJk0O51Yv
	1VC68DvSnlAZXXoRLLw5ZgoLAL22jtpCjokKjbfd+muNul6G/xecuSnYMrLgRlkJIFsqoMzwr8K
	eDcwGTuuP3soxPItqJJoEV+NXwi1eUyRidvKldF8t9lTAyG0A2XDngUfTPEiSC+FBfzYbZFZbms
	ucoL+afxAW6wfv4cldrrwbn5y/NQbRDYDys2w=
X-Received: by 2002:a05:622a:901a:b0:501:b1d8:637a with SMTP id d75a77b69052e-50b37597952mr157492101cf.61.1774238920226;
        Sun, 22 Mar 2026 21:08:40 -0700 (PDT)
X-Received: by 2002:a05:622a:901a:b0:501:b1d8:637a with SMTP id d75a77b69052e-50b37597952mr157491621cf.61.1774238919820;
        Sun, 22 Mar 2026 21:08:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285206f73sm2204742e87.54.2026.03.22.21.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:08:38 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:08:35 +0200
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
Subject: Re: [PATCH v3 09/14] drm/bridge: synopsys: dw-hdmi: Convert to
 drm_output_color_format
Message-ID: <dahh4njgirmhll7tttfxe6dlqaz5qhpyz7g2vztgvbys6xysyq@ord6abbyjt2i>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-9-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-9-f3935f6db579@kernel.org>
X-Proofpoint-ORIG-GUID: dE41Tw-BeJW_QGDeBjlXpBb3CE6VIgpZ
X-Authority-Analysis: v=2.4 cv=ZPDaWH7b c=1 sm=1 tr=0 ts=69c0bcc9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=TUq2ns179Pknwtu5XVYA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOCBTYWx0ZWRfX63Qm1Y0BHgva
 FGuK8JHr1vx896yZcvOPGwowcq8Q5Cd7NXUfp2icwCH7yX20cIKm9oTu3VjZPHaGG5uVpOXfjX8
 N2ktsFAWMCo2JKXiq/3UfhOv++TSAohov0Rvl5BnblxM3Jgq//cYWZNrmcsEDEYB+2xdHgf2Jze
 m2ocFKyWpKxG4fzB/weXIUZO9zodob3+9z32l6gmh6SMdsEHRwZ0orbR+UgBr/vVYwW7XUFGvWL
 tjpe045m8qBzEcpmu1/T0xUvRFfHdN+NjHB61PWAWG8MmeYghbTeFBCB8FP7uCHY6KhJtc21uIf
 q/ud6YVZjG/5eHDIfYiVnEkdOEatEDZKz4u3Xj2M2lyJnUkM/wKRM6YuhZvA5sks2j4LLghIehY
 Dbt0BqklR59D1W5/0k8VrcKA2dgfDOHYOSxXVOfZm2B7Zsv7BgGlFw4ReAo7cCRGpRa6XetGyOI
 8Bu19Q4ELNG+CLAl7Nw==
X-Proofpoint-GUID: dE41Tw-BeJW_QGDeBjlXpBb3CE6VIgpZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 impostorscore=0
 adultscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_210841_928526_6899DCC4 
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

On Thu, Mar 05, 2026 at 10:05:01AM +0100, Maxime Ripard wrote:
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
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
