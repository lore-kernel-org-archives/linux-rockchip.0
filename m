Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E200C83F34
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jul 2025 10:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1lCEkM5XlzVgClWCG93FcFP6YnJTEWABG6oEH9MKyc=; b=p6IBS0UNAicJMv
	zlGIA5in99M2h1B3Aj0Vv+f+sTNiuxVuZ/6XjGkbjJsRa2l3hZJHh1aU7XZ2vZ/KtYomr8JnwWZq0
	+lC9gt1z07xk9wx0Q9EYZsyaldeh555ljQ8oUt0MCbtbEUCrfawerNPCKcXN655A+iGMitCwtAKbO
	buGWUcbOWgeIOk83QyTUpl3x/yFCombEd49/nSeli1guwUlBY4Wd+V0Q8rDYHj5NULGTP5T3b8Pa7
	fRv8YjJTzs3J1T9c7BA+hQDCJnG64lxRRlrXk6uqdvmWx8rj9gFF7/xVWzb8EALBdM0pGYPFnweLR
	rgTeO/iyVilkQXjezpeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud5CX-0000000E9lT-3Y99;
	Sat, 19 Jul 2025 10:53:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud5CU-0000000E9jH-0Zyl
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Jul 2025 10:53:56 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4eFP1004385
	for <linux-rockchip@lists.infradead.org>; Sat, 19 Jul 2025 10:53:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aqHtp61gi/MVVqpPkBkPz7nq
	zj2NZMIcHn+kla2ZN4c=; b=SdRgksaU3n0/sMpQ8XUiiDYGoQ70xrm0QbQr8PDg
	S0+acoJzMc8l4SYRgpySDuIJSlEcsc2Hwby8/Wt/hNGd90zWTuI0BQ+7oE+t49ht
	9apLGxz83+0t7M2CAMACWcMiYuCppt0E9xdoBFGUlExRGIjTvBP6mXG2regVuHzR
	qZu6bD8W4MID62X2DgD9kIkEIDjO6koIqjP7ry4/5SGzaLyayxxeNQXfaREoEUVQ
	hPUFsnGMEKXZHeHrcXFxqM41p+xgeQISAbSFix/xXhW1WDcGLBO/73pKi172Zfk+
	NMogtuaHI361nKygSHQn/MvffjIaC+BaWrXm4J6RaFdMaA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4804hmgfeb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 19 Jul 2025 10:53:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e2c8137662so504858385a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Jul 2025 03:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752922432; x=1753527232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aqHtp61gi/MVVqpPkBkPz7nqzj2NZMIcHn+kla2ZN4c=;
        b=jlAUhcP0lnWFO0tvwV2yX0rGtXUS+V7J0106TR5T3h0rMYGFvNffn2V9FyXfD9sX20
         cI8AY0haFHvEeexC9S0dJWqJDwZShPE2C1L6Ca39D7m0Jw2mR5LtqTK/RgqrZgDP4dx8
         d7WHMsIiEMtlCkhUOcHoF1rx2nGgBIceWEiadFf5uHtAcfZvwPfLW3tq3PngcQVHSe7u
         W+bFgdMCDoODwM2qsjTWTYqc5YfPACRXjV89t/xqUx+i+hDJhdjOq6c025xHnIoRNMJB
         cNL14YnredHIDku1qbkFovK2oIRJrMlaLkZZdovJGeyH2JldmnkBNCe7Rt1m1OJc7ax5
         6d2A==
X-Forwarded-Encrypted: i=1; AJvYcCWketqQyafMNz4gvdCZS20Gaey+gby8c/8byqjSX0+7oUWCWM7mYgHKbi9Vyr2Q0/AFB8zNz+QMq/oN6YYzdw==@lists.infradead.org
X-Gm-Message-State: AOJu0YygaH5rRDpkxNeKMFf6U988IhkW0QRa1YTWCKmh9ZbprswJS8xU
	u2FoZSdBgifRmC2chIdXEYtpnPHWmKZRCeuhMSk94D0YUrQ30Jg1kM+kC5XDRdCU6D0oqSVsdbn
	Tp410RHqidFVPWSKdQAaFaTD7VJ6n21pMrFCEE62XdGjlqW1naalFe6Xa0zocCX3yHVh81EPNrd
	Y=
X-Gm-Gg: ASbGnctZKhdeRJidK+SHBZxD750ZfgQ0SpOWFIKxNuqkjbSuUOKBhuKZEJaLUlrOKCp
	JCTczpjMIdczwc6690IhWgf7EEm/JuQyTC2IrUFFi8Q8AHCT2agmEB0p/VvVNiG+9FR4i3sr6v2
	WoPPIflV4AM8wjzGyzgErQv9fa8cg/wYdHWPpJk5gBGqXoRq0cVqk7b0NztoGeCE/tyCWJkB5HM
	1O0jnhD/orWSvOmUFqSuIzR6SlDmPuchfoBHdvu9LxYxIZsD438mqELt8s5x64u0kNx5K5tgpnx
	dp2a0PnFeQdzCF8jnpm1gTXExMFmAHqUaDBg9pCnYwocRvDo888Sq8qMxPxiQv2VIz8GjOrX9oE
	w6sgCNSWX6O980SDICaWOkgzfXWa85HaJID2fz8KaFnaRzzy5MNUs
X-Received: by 2002:a05:620a:440a:b0:7d4:49fa:3c59 with SMTP id af79cd13be357-7e34356c61bmr2239109985a.15.1752922432116;
        Sat, 19 Jul 2025 03:53:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPrmyV8egRcX0tplCS17IxY7fqr0+H6cJp69VeGuqF/GMP4bJno9IhBcl041AaSBLD5rosBg==
X-Received: by 2002:a05:620a:440a:b0:7d4:49fa:3c59 with SMTP id af79cd13be357-7e34356c61bmr2239105885a.15.1752922431592;
        Sat, 19 Jul 2025 03:53:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31a9b1b1sm677727e87.35.2025.07.19.03.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 03:53:50 -0700 (PDT)
Date: Sat, 19 Jul 2025 13:53:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/5] drm/rockchip: cdn-dp: Support handle lane info
 and HPD without extcon
Message-ID: <t3th2tqbnkmsqssypxvye6vsfhpw37sf7wyl53cso3r5pqa7qp@gn74pj75j4pb>
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-4-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718062619.99-4-kernel@airkyi.com>
X-Proofpoint-ORIG-GUID: z5TLiPHK22qTaDgkfc_oGkDjrwcKrq7X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDEwOCBTYWx0ZWRfX+urhBcMKkjI/
 KxaCwO8rP3g/Ev9jQ4i0NhwsJv9FfVlzZstGM27hA2pQi7yvXkfqcA3u62zffoE9Qypg/QsIb+v
 E21WfzFp04Kb5Eg1eBf2+4iWfnBluAV8SmpK2vem7Kvya/H8U/BDA4gTsQ7gcTRBuXrfyGUrxeO
 KTCia2OejyPq6lGV0puG9p+2ek8GDtAo+FaD62zkKNJr0DWjry1i26q43cRNfwXLwYtRk7EDqXA
 wYSxVHdPpEsJUToP6mDT5WU6dmo6tFlMbPOPICxyxOueV9E/BeT1NV+jkVKezZs4UegjVQaJx8I
 HMFTOTpz+/x/xkynnbzAOf4Q/c9zlW7Bm1eNgAQrwz2bJfqkVgsekhRwdjK3TWd4smtxIrGlXR4
 9Bcpi4UimOZryt3K43MPuKJ5f1H4myzzgYxCBL078DCLMH2qjZEQYPO6qnWH8GsIZODJa9fH
X-Authority-Analysis: v=2.4 cv=Navm13D4 c=1 sm=1 tr=0 ts=687b7941 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=ady2-bcLGFUvj2b528oA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: z5TLiPHK22qTaDgkfc_oGkDjrwcKrq7X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 suspectscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxscore=0 impostorscore=0 clxscore=1015 bulkscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250719_035354_182161_61626B40 
X-CRM114-Status: GOOD (  33.66  )
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

On Fri, Jul 18, 2025 at 02:26:17PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for get PHY lane info and handle HPD state
> without help of extcon.
> 
> There is no extcon needed if the Type-C controller is present. In this
> case, cdn_dp_hpd_notify() will handle HPD event from USB/DP combo PHY,
> and the lane info can be get from PHY instead of extcon.

The DP AltMode driver will send drm_connector_oob_hotplug_event() to the
DRM connector associated with the USB-C connector fwnode. However your
DP connector will have fwnode set to the DP controller, if I'm not
mistaken. So I doubt that HPD events are going to be delivered
correctly.

> 
> The extcon device should still be supported if Type-C controller is
> not present.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v2:
> - Ignore duplicate HPD events.
> 
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 37 ++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index 24f6b3879f4b..b574b059b58d 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -156,6 +156,9 @@ static int cdn_dp_get_port_lanes(struct cdn_dp_port *port)
>  	int dptx;
>  	u8 lanes;
>  
> +	if (!edev)
> +		return phy_get_bus_width(port->phy);
> +
>  	dptx = extcon_get_state(edev, EXTCON_DISP_DP);
>  	if (dptx > 0) {
>  		extcon_get_property(edev, EXTCON_DISP_DP,
> @@ -219,7 +222,7 @@ static bool cdn_dp_check_sink_connection(struct cdn_dp_device *dp)
>  	 * some docks need more time to power up.
>  	 */
>  	while (time_before(jiffies, timeout)) {
> -		if (!extcon_get_state(port->extcon, EXTCON_DISP_DP))
> +		if (port->extcon && !extcon_get_state(port->extcon, EXTCON_DISP_DP))
>  			return false;
>  
>  		if (!cdn_dp_get_sink_count(dp, &sink_count))
> @@ -385,11 +388,14 @@ static int cdn_dp_enable_phy(struct cdn_dp_device *dp, struct cdn_dp_port *port)
>  		goto err_power_on;
>  	}
>  
> -	ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
> -				  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
> -	if (ret) {
> -		DRM_DEV_ERROR(dp->dev, "get property failed\n");
> -		goto err_power_on;
> +	property.intval = 0;
> +	if (port->extcon) {
> +		ret = extcon_get_property(port->extcon, EXTCON_DISP_DP,
> +					  EXTCON_PROP_USB_TYPEC_POLARITY, &property);
> +		if (ret) {
> +			DRM_DEV_ERROR(dp->dev, "get property failed\n");
> +			goto err_power_on;
> +		}
>  	}
>  
>  	port->lanes = cdn_dp_get_port_lanes(port);
> @@ -821,6 +827,17 @@ static int cdn_dp_audio_mute_stream(struct drm_connector *connector,
>  	return ret;
>  }
>  
> +static void cdn_dp_hpd_notify(struct drm_bridge *bridge,
> +			      enum drm_connector_status status)
> +{
> +	struct cdn_dp_device *dp = bridge_to_dp(bridge);
> +	enum drm_connector_status last_status =
> +		dp->connected ? connector_status_connected : connector_status_disconnected;
> +
> +	if (last_status != status)
> +		schedule_work(&dp->event_work);
> +}
> +
>  static const struct drm_bridge_funcs cdn_dp_bridge_funcs = {
>  	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
> @@ -831,6 +848,7 @@ static const struct drm_bridge_funcs cdn_dp_bridge_funcs = {
>  	.atomic_disable = cdn_dp_bridge_atomic_disable,
>  	.mode_valid = cdn_dp_bridge_mode_valid,
>  	.mode_set = cdn_dp_bridge_mode_set,
> +	.hpd_notify = cdn_dp_hpd_notify,
>  
>  	.dp_audio_prepare = cdn_dp_audio_prepare,
>  	.dp_audio_mute_stream = cdn_dp_audio_mute_stream,
> @@ -1028,6 +1046,9 @@ static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
>  	for (i = 0; i < dp->ports; i++) {
>  		port = dp->port[i];
>  
> +		if (!port->extcon)
> +			continue;
> +
>  		port->event_nb.notifier_call = cdn_dp_pd_event;
>  		ret = devm_extcon_register_notifier(dp->dev, port->extcon,
>  						    EXTCON_DISP_DP,
> @@ -1120,14 +1141,14 @@ static int cdn_dp_probe(struct platform_device *pdev)
>  		    PTR_ERR(phy) == -EPROBE_DEFER)
>  			return -EPROBE_DEFER;
>  
> -		if (IS_ERR(extcon) || IS_ERR(phy))
> +		if (IS_ERR(phy) || PTR_ERR(extcon) != -ENODEV)
>  			continue;
>  
>  		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
>  		if (!port)
>  			return -ENOMEM;
>  
> -		port->extcon = extcon;
> +		port->extcon = IS_ERR(extcon) ? NULL : extcon;
>  		port->phy = phy;
>  		port->dp = dp;
>  		port->id = i;
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
