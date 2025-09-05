Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A70B8CA1012
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 02:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAX+xfAfpqMc7V0586fEHFeyRtq19VJXedm59JppXf0=; b=UTI5UbFg8/lEkL
	0Iprj1qM7mWWRIDGhIem85rWO0sLHg3bQUS5UY5qLBfBun08mbjC0P+npJwJjKnbq8C7OG0vJD0BM
	WEt/epVyraWAWW7yz3dzq1tokHt+v07l4p9tuA0Wii+LNuya6d0qoVL4QZE7QsMMpAaSJecypMoYZ
	rCRR/840NtL0K2UZO+rTQ4lLLYQsbBGztZLJD2h+CGOXii6DZTAIZ6d2UwFAEAyyY/dYnruB1QWRh
	g0M0HsKmyjxiv0kA2T7cV3SsJfcsadR8m6sYcQhNnybEJ10bCRbHN0WSBGILLCCzbIJ+MIkGJxfRZ
	s0OPuYXCTHfEvCEL2IGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuM6h-0000000G5wt-2Btu;
	Fri, 05 Sep 2025 02:23:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuJx5-0000000FKiN-3gUI
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Sep 2025 00:05:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584IxYSu022433
	for <linux-rockchip@lists.infradead.org>; Fri, 5 Sep 2025 00:05:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FnmVTYg5qyuC90TtxfAp5dg0
	tH1WOGwDVnnWVDmLEjk=; b=ANr/enwScsWo25ym6A1EbFIwB93CVeITfG6TuTZx
	pQTNyfMDG8Xa7Ezx1E9lXfol9wnfY20WWcZ1cZbJBBou19QgAkT0glyuuZeIOeX4
	a0AUMxBP/GE1bFIpcGJYPUCVVxQk/ijPxwWqETOQFecWo+4FmKDfIATFMBdGst8V
	W28PAhm3PTEduaRGkkrY+HBb19Vq1TAfQ6NLhOd7LSXCmRq9NgZ4SJJcV8x3tDFd
	KYh+Zx/N7Hx78Jd+fhI5Q8Weu1SFTncOM1BU5XYGP44AQRj45IRkTo/HdeWdjqCc
	sAFxdBG1xZQexXDbkXRlAiULQIOCiOTywAEo4UTXGN251g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk993aq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 05 Sep 2025 00:05:14 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e86499748cso556349085a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Sep 2025 17:05:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757030711; x=1757635511;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FnmVTYg5qyuC90TtxfAp5dg0tH1WOGwDVnnWVDmLEjk=;
        b=nKvf8/Z/wD33PxtTDgATqY4H1Gh1R/fzc7ntDYRn4xK7hZe52CfmBikTv1WuQVxCpx
         GqrmFclmeGMHt5sDDJFa9SgZEl3dM0Ks2Hza3ZbWg7lf9uTCtdSk8ACN0ssvJPWVJgZp
         OXhs2imAif8f4bsUBbAE1Sz/7CRHVlTRikKcNM2qnjlTxVTDO5ykaydWAA0g9tO57oOY
         klVsCXTbu84Ri9RUyQ09SkUlqs4bwEjXrR111NuNGLfY2E9AqoedVyyjuogXUk0GvSin
         h8pyILq4/mYizSBJk/9x729h/Vhlaq2Vouhwe2xsIuAXARmA8qS14WZoofxpxh8G9lga
         0V/A==
X-Forwarded-Encrypted: i=1; AJvYcCVtk3o8adBuIjymsF2NRQLUlnlToch7XSY+xdSWgzaA2Rul92XvaLELmW3ZyS7NsFhrGNce0jzwuvajKq/uqQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3IAcZdTWz5WSaZ0EGz8RbQaZ8vTnKdhXHc39ddt5AcJ3y1j7u
	hgJG3tGiK+UrbkOxXS0vgH0sKsZy58A8gxtZzgcwR6+8htEAvnsx0MZU2jlH8Kuy3P42Oi9RU2t
	lj9ysfb8QmOstsV+Z7d4tOuEDQ7E3InWgSL6qkMoWz8AIlMay/MLwKnjs9T8YCndLQ/RoMfdf+5
	k=
X-Gm-Gg: ASbGnctVlMk8DFg2yQ+kGWRqRvK0KKdXS2ruzqHN/HXZb1U4U7SwqYxNUMq4hhzmcLJ
	INZp/IEkxvvfB8AYTn22SIPhDhvSMZrBYXTnQwzM4rGP+sisHbgjKYANK0RPuHMankFhjHRAopB
	o7DbPWdAYvwxZB6xjZsA0LzC5dbNJPJb35SZD6TMc9cgeocKKR8eyfnxhblqPtQYpTXnol62pYa
	Uk2R0VcSXBDbSDfAr+M2bH/4g8xRSMKI3gUoNFZfgPlIOczBAnPQWyer0mtIduNVjCIosCnWzhX
	fHqlgc2cwAvUlCbFW7aFG6Yv9h+r5jMmI8h80pvIa8CfweRTwmr6PslPzXPmJ0CWVzTIEHFSHef
	uYnsTrvl817B6KyNnFeXFUNfwPHYO11Wjxxfjg6v9VYWzLavocxWM
X-Received: by 2002:a05:6214:2025:b0:70f:a558:2955 with SMTP id 6a1803df08f44-72bc355d107mr23891006d6.22.1757030710942;
        Thu, 04 Sep 2025 17:05:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuz7rSIAfCmUlEAAoYDamxMn3kE6MVpgENng2PopXAtvFP/43O0lsMhMkHtfYx9Az0yrIbYA==
X-Received: by 2002:a05:6214:2025:b0:70f:a558:2955 with SMTP id 6a1803df08f44-72bc355d107mr23890406d6.22.1757030710379;
        Thu, 04 Sep 2025 17:05:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ad4d3efsm1478298e87.146.2025.09.04.17.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 17:05:09 -0700 (PDT)
Date: Fri, 5 Sep 2025 03:05:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
Message-ID: <u72vkfojufgvuqwuqpvgvnip3wogpgdcuc7bn46zo3bp7ogbu5@fmqotgyahrsn>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250903110825.776807-2-andyshrk@163.com>
X-Proofpoint-GUID: icw87aAaPkIXNGs6PiuAEv99f613g95e
X-Proofpoint-ORIG-GUID: icw87aAaPkIXNGs6PiuAEv99f613g95e
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68ba293a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=s8YR1HE3AAAA:8
 a=kdxkXz20giiO-m4nxtAA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX2tX8TN0O2ZV+
 EJ/NB5PA3VfFrVTMz1MTeNBn+zQaRfJxotpGnRSjBxqK6raS6+WIv4uimSRwA+fQROBhlQcx0HU
 /RcxGF/gEefUytQ6JVnQZe86/yACIdnO34RuzcLun016KWTOeb0cu/N94wiaeWjpJ/Yq4u/Gycx
 No0m8OKusMCQBrovt2q9wuHshhcFEy9r33XDFMYMJw0kjsrdKzvSy9YfIaPKk8zagMHLOdqKLKE
 NyyGoF9nmr/LenIPgrp6dxVECwlHDrr+v9AKK734UUJV1arT6gvxXEPVWFgJNVtAcnRNyIyn9pV
 RExgQyjeTbcNMQR560tqpWriVJYyYVBkW67fQ8ZhCJUHBa6XnPUwgHxzERSXrvproCv8bjEXCDO
 8I5PbTDB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_170515_926488_3BAF0506 
X-CRM114-Status: GOOD (  25.71  )
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

On Wed, Sep 03, 2025 at 07:07:38PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Convert it to drm bridge driver, it will be convenient for us to
> migrate the connector part to the display driver later.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v7:
> - Rebase on latest drm-misc-next
> 
> Changes in v6:
> - Rebase on latest drm-misc-next
> - Link to V5: https://lore.kernel.org/linux-rockchip/20250512124615.2848731-1-andyshrk@163.com/
> 
> Changes in v5:
> - Split cleanup code to seperate patch
> - Switch to devm_drm_bridge_alloc() API
> - Link to V4: https://lore.kernel.org/linux-rockchip/20250422070455.432666-1-andyshrk@163.com/
> 
> Changes in v4:
> - Do not store colorimetry within inno_hdmi struct
> - Link to V3: https://lore.kernel.org/linux-rockchip/20250402123150.238234-1-andyshrk@163.com/
> 
> Changes in v3:
> - First included in v3
> - Link to V2: https://lore.kernel.org/dri-devel/20250325132944.171111-1-andyshrk@163.com/
> 
>  drivers/gpu/drm/bridge/Kconfig                |   7 +
>  drivers/gpu/drm/bridge/Makefile               |   1 +
>  .../inno_hdmi.c => bridge/inno-hdmi.c}        | 502 +++++-------------
>  drivers/gpu/drm/rockchip/Kconfig              |   1 +
>  drivers/gpu/drm/rockchip/Makefile             |   2 +-
>  drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c | 188 +++++++
>  include/drm/bridge/inno_hdmi.h                |  33 ++
>  7 files changed, 366 insertions(+), 368 deletions(-)
>  rename drivers/gpu/drm/{rockchip/inno_hdmi.c => bridge/inno-hdmi.c} (69%)
>  create mode 100644 drivers/gpu/drm/rockchip/inno_hdmi-rockchip.c
>  create mode 100644 include/drm/bridge/inno_hdmi.h
> 
> @@ -637,14 +584,13 @@ static void inno_hdmi_init_hw(struct inno_hdmi *hdmi)
>  	hdmi_modb(hdmi, HDMI_STATUS, m_MASK_INT_HOTPLUG, v_MASK_INT_HOTPLUG(1));
>  }
>  
> -static int inno_hdmi_disable_frame(struct drm_connector *connector,
> -				   enum hdmi_infoframe_type type)
> +static int inno_hdmi_bridge_clear_infoframe(struct drm_bridge *bridge,
> +					    enum hdmi_infoframe_type type)
>  {
> -	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
> +	struct inno_hdmi *hdmi = bridge_to_inno_hdmi(bridge);
>  
>  	if (type != HDMI_INFOFRAME_TYPE_AVI) {
> -		drm_err(connector->dev,
> -			"Unsupported infoframe type: %u\n", type);
> +		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
>  		return 0;
>  	}
>  
> @@ -653,20 +599,19 @@ static int inno_hdmi_disable_frame(struct drm_connector *connector,
>  	return 0;
>  }
>  
> -static int inno_hdmi_upload_frame(struct drm_connector *connector,
> -				  enum hdmi_infoframe_type type,
> -				  const u8 *buffer, size_t len)
> +static int inno_hdmi_bridge_write_infoframe(struct drm_bridge *bridge,
> +					    enum hdmi_infoframe_type type,
> +					    const u8 *buffer, size_t len)
>  {
> -	struct inno_hdmi *hdmi = connector_to_inno_hdmi(connector);
> +	struct inno_hdmi *hdmi = bridge_to_inno_hdmi(bridge);
>  	ssize_t i;
>  
>  	if (type != HDMI_INFOFRAME_TYPE_AVI) {
> -		drm_err(connector->dev,
> -			"Unsupported infoframe type: %u\n", type);
> +		drm_err(bridge->dev, "Unsupported infoframe type: %u\n", type);
>  		return 0;
>  	}
>  
> -	inno_hdmi_disable_frame(connector, type);
> +	inno_hdmi_bridge_clear_infoframe(bridge, type);
>  
>  	for (i = 0; i < len; i++)
>  		hdmi_writeb(hdmi, HDMI_CONTROL_PACKET_ADDR + i, buffer[i]);

It's not an issue for this patch (and I think it can be fixed after this
series is merged). I took a quick glance at frame programming. It feels
like the clear_infoframe should be poking at registers 0x9c / 0x9d. And
write_infoframe then can support HDMI, SPD and Audio infoframes in
addition to the AVI. I don't have hardware to experiment (nor time :-)),
but would there be a chance to improve this?

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
