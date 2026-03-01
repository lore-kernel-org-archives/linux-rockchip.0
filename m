Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30396FD006D
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 16:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xI5TDOrzSy1U9h0ugPR9OJbRQY6g58fibwDijY24+Lw=; b=XPeAtVArK5sZ/Y
	pQSLAzPVrFY/TNaw95bEHVIMSKTj5Bd/KUt1ufhPL8LgteEFjlh8qXX5lsZTqd4bdToWpCInre8lk
	O25HRdmkHa5Xd8JdVNPixx6KHOp1WWPl/F+klslOydGTp2dtoqjGH9RpfI0TaZ/xopoCliX6SIeKk
	oZxKWp/ejYnkw9rzqqHfBXnqOfZT8bBe/koIh7T4eFkRypySIH1bevKMuhPmvgCqpuPfNBfbpbImA
	FYWMz5u3kKTkGOq7f7HEJC823vM90q+p7hg6nLZXjoLb2QuwMH/LSxN5fBpKMH+/A/PZtqybEUMAL
	NL4qUI1txWVGoOW+30XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwk7m-0000000Bh7y-2xXa;
	Sun, 01 Mar 2026 16:58:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwk7j-0000000Bh6v-3hHF
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Mar 2026 16:58:32 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621AU6hN2979634
	for <linux-rockchip@lists.infradead.org>; Sun, 1 Mar 2026 16:58:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yZjRbJ2gpSOpi4BD2wRxX0dJ
	2Njlip5bE4IRh4tsp0k=; b=fkhYPumSL/QAlMbXMLtEWChiX97tIzcJ8VeBIX4T
	7342qTqQUCnt0S7oDq9sQfzhyGpEUUJellGBOuoJYTfsmMFHgnXodEk5AC55z1iG
	c18u06r73+Pdj0npRxhtTGO474kenLYedhcwWpbRcBC3ivwUaTrgm50Dsqk4R6aI
	+2cwuKSHZdg1z1b9ojEBXDyD89t9uzig7w2KMFQb1bUwamY01WeikQvsTWQDMhlM
	wS7Axd8o1A+YDbnxSksJB4wZ0i060owQOeU4T2ACD8MJ4tYn9Af87F/Z+bjux2Vo
	fOz++88nKgW1Zk3CTwm94ccFlRFF5WRpv6fuV0NvlWcAeA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksf8k1kw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 16:58:31 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cbb8040f48so3485700385a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 08:58:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772384310; x=1772989110; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yZjRbJ2gpSOpi4BD2wRxX0dJ2Njlip5bE4IRh4tsp0k=;
        b=VQPDE4IeJXJEafWqDoJaR4Iz8ohl3PMuxkIR1TGJ6jtsPr78E1N1vks0YRNo7ULo1Z
         hsMY82RZk5kRVtpnwQMOUzuQXMy6dWuM1zIXmttu1LawFwOhw/29VMwkFuyRBKCblczD
         4/lp9qoPdM4SjGnd4XXFgbargODnLtMSq9Ut6lzbUQJvq8xm+NuxGOKB0aCQVHGPN3Ma
         pZAatt28TrczagThVa7OgyENnSELGLmzHW8XlBuW2PdPZJfDQqd5pNx/Szo+xHhV9ca1
         T3KRvPmaI1ftVDCYsOIOteI2ro6UoM3Z+vT4Yy1beSHUluathD2qdl9ka8kSmpWa45/m
         7k0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772384310; x=1772989110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yZjRbJ2gpSOpi4BD2wRxX0dJ2Njlip5bE4IRh4tsp0k=;
        b=lR9T+H8afb/XLFbLrPIZ3VF1ZIQZUXnfw82WtqbjRnPcAmp/L7wZ/EcNmvNpzqaDl/
         2MOXHJjAq4wDtHefC34F9+s+m4/AgB093QopB6ImknhtSZBLDhc2UfeuHoKsv/BOHxVb
         M+4D+Xi3xcGhDPgOgsVNL5gP5+H87Ba4rclKrwB8oPq8s1rs/YYO2/hBt6zY0h0ygVbY
         F+71De8K6ph7hpgDPZau1NIsEeKHezFWOAnmRHqC1tfTnawk2x18RTVv5Z8OtqtD6Xos
         TE68XYriD8zZdQvIS3eGFejToRuP4GrZhBX9j50hK/soabW5Z1egQAPCVdjJt0h+H/Sx
         NXqw==
X-Forwarded-Encrypted: i=1; AJvYcCXh63R3iEFC2a8DNtkY3IECGQecX3OyswVGZZxLgBW+vsg+dpC6Tt6ZWXS1qipr7yPNQPmbEHBN6YfV11SzUg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWXqf/0PpIXNo2xLqpfdDwlaWtSQONr6tdq4saC8fRGnmp+4ca
	9/VvRpWJg5jmlgaPHE9anKtVPOJLBsSlCBvTLiEfXbbfN9AgvNhlpBUhyMR4LFbI6KLkP+QORPi
	PyYjVYK+bnfG7dVcUuuBBvVbA5TI3SwGqGeNrBpbG9NihxtaBTWKrxt73qvheZ4mzorqwVUScif
	o=
X-Gm-Gg: ATEYQzx8Q+ZZXptLyeytgS4h8x3yxD/OBD/KFAIumf43lnMGpJ3JS/C3ZzmCuRtMO87
	zbQUESEiXgCdl0QrWP+Jq2ak/0bvStP8XieSWWQF5s0DoEnhXNfz4lFAzv4nsetoj7Eru7+QYAu
	N4MYgLGq3fNmpMBRczsHnDcS0Q/tB9D0cuH1j31FUsFgv0SuiNfQeRHrAo7oIR+5IA2LjJt8JoX
	EMw7AVVcMEWulAOBxsrVNvZqVb+2jouiUr3d/n5MsTucG++N6MY9N/46HAF67SlUVkYpajtNO5v
	kfcBx6azZ3CxkzZeDzpSCx+XVEyZgfRMD4beWZHty64eRuS9e0rOxtq494CVbEvxDLSdVeGSzQr
	S1amVhik+turtjEbXRw9w2ioXA3seK4pOUuUYTua+lNz/Gv9cCes8XOp9f15QnK94TxZOxPzYT7
	Vgipj3lPhgdT84kLE34n+ZIs1ocJx3dI122TU=
X-Received: by 2002:a05:620a:3952:b0:8c6:e8f6:2c7 with SMTP id af79cd13be357-8cbc8e4b725mr1252713985a.38.1772384310465;
        Sun, 01 Mar 2026 08:58:30 -0800 (PST)
X-Received: by 2002:a05:620a:3952:b0:8c6:e8f6:2c7 with SMTP id af79cd13be357-8cbc8e4b725mr1252708585a.38.1772384309937;
        Sun, 01 Mar 2026 08:58:29 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bca0dbsm1204999e87.41.2026.03.01.08.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 08:58:29 -0800 (PST)
Date: Sun, 1 Mar 2026 18:58:27 +0200
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
Subject: Re: [PATCH v9 15/19] drm/connector: Register color format property
 on HDMI connectors
Message-ID: <mxfdm4rrsizf3jzjbeoxosb5lhm2wrzqipn6rvly4ukrodltgp@vcu2fkgwagdx>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
 <20260227-color-format-v9-15-658c3b9db7ef@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-color-format-v9-15-658c3b9db7ef@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDE1NSBTYWx0ZWRfX8EAa3dAWij30
 rzPmyfoE5b68R/059xujEv2Yx02Pe6PHH1BgZsY4MwZlNNdxKCHdecdaGiXACoeFyG8E9pulhJF
 qIq3/5CpREUvmDuavV2a8iZlzznhtQ4ZyVqKsgpr86JL/YL0WQ3iRAjQF1UJ2ZFjoqDhtWpmLGn
 Stx5bw3YziNQ7npn5HkM7g93F/oNyYsoyU3xSZgmyozoXzMTJTvt2vDlLGz6eSmNxwHpo+vSDas
 glyi+4jl+3VKrvyMMTkClmWrlOuWJuu5gy3f9zxUOPxv7zmAwC/z55MPzJR+C/XR58/uUrbF3bq
 9I/KfFQf5ww1Y6RGB/WfRTNfrjz9xWaphTwsn+hpmzVgiiDGlhpaRJ9UZdlqQly9jsCYvEqHmsQ
 s8AE3+OWYfQ+vwH3b8LDh8JVqtsDRPPFkF1pdywnGXwZ62xFbP6fUk3OWInweQ41WhLrUV0Tf2j
 5Qi8MO6+8lZUKjuqzUQ==
X-Proofpoint-ORIG-GUID: PwdzE2ScNFaMxnBDn1-LHo5dQxR4JoQ8
X-Proofpoint-GUID: PwdzE2ScNFaMxnBDn1-LHo5dQxR4JoQ8
X-Authority-Analysis: v=2.4 cv=I5dohdgg c=1 sm=1 tr=0 ts=69a47037 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=VwQbUJbxAAAA:8
 a=QX4gbG5DAAAA:8 a=QnxT5sWzqww7kDut_5wA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_085831_946427_4C41383F 
X-CRM114-Status: GOOD (  20.29  )
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

On Fri, Feb 27, 2026 at 08:20:20PM +0100, Nicolas Frattaroli wrote:
> The drmm_connector_hdmi_init function can figure out what DRM color
> formats are supported by a particular connector based on the supported
> HDMI format bitmask that's passed in.
> 
> Use it to register the drm color format property.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index a4907e15dfc5..0f4e24446a9e 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -627,6 +627,9 @@ int drmm_connector_hdmi_init(struct drm_device *dev,
>  	if (max_bpc > 8)
>  		drm_connector_attach_hdr_output_metadata_property(connector);
>  
> +	if (!drm_mode_create_color_format_property(connector, supported_formats))
> +		drm_connector_attach_color_format_property(connector);

It really looks like:

   drm_connector_attach_color_format_property(connector,
					      supported_formats);

> +
>  	connector->hdmi.funcs = hdmi_funcs;
>  
>  	return 0;
> 
> -- 
> 2.53.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
