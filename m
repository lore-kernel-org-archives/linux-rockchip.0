Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B55A4FF8868
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZho4SgZPQdNZoThhseh6A8WAY1DT6SaafWGTUr62CU=; b=kUPkc7k+2v5W7B
	R5KzVE0nnhHLx/KZgdsSTiu6p7NQlXGIBdcwGoWNxf1fzlCo6fMYTWDB2cZhsUSHUy8oTfCd2caZF
	fK6D4tCUdWWuKa0edpxozYdaM+SYjNoAHvCjjRJRqMaWO5D7ltR9Xe3T3oUyPNAhQeTIVUG8z1JdG
	1cggxJOaMjWs/aUkOm0Qpz9OVR6ssMKoCdf3PWmFPMC7g9dd0CphTLem4IKikeGMT9NxZ6gaPeVS+
	O2H97UC9DpJnpcDMiSVyyrreBHkFjAGXLtP/gc+4d76w6t7HpUX56IkGKuD1EmuWeIyuLPejoDXek
	00S95MWlnUPEGBFX726Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhlc-00000001S2c-0mKS;
	Tue, 28 Apr 2026 12:42:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHhlZ-00000001S2C-0pWM
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 12:42:18 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63SA41pk3275348
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 12:42:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TMl0fceSXKB31QqIGUfwYqRH
	eczNPrV43yKASyx3Yc8=; b=QIvMrmKJEm4qlgUHtl2HEaD+sQ9Ll0L4s+3yaYIZ
	ZvU2SLCvPE/hfHnycy6rtGcPEFINGVF2ZkFaIJQmFDH0ftvCLDfD6ziq8HulS9Kn
	4o9jao/OpJ05+HdV+nUF7OuYPdeVjLUOWya18JvFfn1gfOTYhPZOw2bTOyow30SE
	y92KnZBMxd+3i1CGiQ+Xo5Yt/nTGQEZRW5YkIFmAJGWezTDElGCsRkIsa+69cWi3
	Orz/3eoVbhHqoguUJG2M8mPN4vOiKQ77cmDtjaVRApAXJAAxA4NNnVv7BKI5G/5D
	o5wY6V0OVwKNHRSnKYF+ZDwj5/TnYCgQnBjFQacBwx/62w==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dtttjgh48-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 12:42:16 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56f67ce97a7so7354807e0c.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 05:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777380135; x=1777984935; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TMl0fceSXKB31QqIGUfwYqRHeczNPrV43yKASyx3Yc8=;
        b=dqr34gR2L5zCe5A3UVeQBAHGe5ZqsTq1vLFj6yelLWoj6V4OeXl+1lz9xtQlVu/IJg
         ++dYWKW6FECrX/y4fRPpGM61+aVvg2QNPKR1CRrX/rUZPsQSHCTb/w+px2x3BQ2WSJ7N
         nuDQSV0y7mwnHzP7zga45cKiYrIrCNLek5+UzQZ3CjspbLNiqsKju/u8aBbDJYMG0Zro
         BWJaq9kj+i2ug0Zor6DjkvMlP51lFLkWnIvhdjvPub5LSUMMdr+Hx9PwOd5e+PSN/yIO
         TlhvHLYLCAkCTcuml2WMAf4zl5FFTD124g7vRgaOpw9tTejChlP8FJ7u5ydtOBnMXaWo
         Qj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777380135; x=1777984935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TMl0fceSXKB31QqIGUfwYqRHeczNPrV43yKASyx3Yc8=;
        b=mLYzi9Pca7higvSSLUJm6G+LfilVpnTTBbvq3uWwUVGJKIDh5d/0lYcuL5NF0jSGVc
         zKVZxVGymGnHy3X+rLMLlsGuZynvrqlLw6DL5dhfPoHhEoevH0NH86Gv7b+z8x8alv3w
         r/Od/HxO4CcSouktgT1iWzncU5a2X9rkVrWOQADNEdMrlacvHmrwysIqJ5oO/EPRrGI8
         ic7NiDh0iIly8THIduiewSGxV+WdXjpvU5Szjd6Vjl9KsWWkLvWV2CvtRBhteaQWfEPs
         A0lJsXHAl91hRE7SZ2AF7D7SWp3ammnKb+2qFd42y8Ig11haVJIkllt/9EU8tNo7Ow5s
         nzlg==
X-Forwarded-Encrypted: i=1; AFNElJ9HjHNlVHjwl64F9QZP/MsNdP9lgK84gZo3zu6k6uVkxUXBP91sr02vff+rhMkgmrkXrqa2KWXxDXa3zlbaWA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzGIi97b59KIV5BdPrKIVJbUvb8aKscNykN1zS3/75AQhi3ypLf
	rJ4pwvtQy48kxXZ8XFnZDwq1f5LkBW8R/TBnnweaczptyUwhqu5UtL8Y1eg0HqkeGmQw5rzJxUk
	rORYrGYRsydIiseMLeekIVB+jEtDsw05zAT9rNBcEgv2vLS/ndXQosMkP04qomHYrZIao0cgE96
	Y=
X-Gm-Gg: AeBDievTQJeglsCgtleMBykwIMsgeU7a6pn3hIq/BqWiJplPz1QNenesXo8tX3GgsWl
	OjM/wIuaxTDaGyeGvE77+Jvz48R4+Gbnyx8UL4763B90MT/kA1q1xK60QJXi4NUDqXnE28bTWig
	sYRUwwwwGcW+sQpxViteWiFoRhmQaviyWd/zGjTv2WetqVsLrF/meaXaGFgrPhTfMMrLwBffaWv
	y4DXOgEdOzHMCVejqv6+Qu2c1q24h3r+geUrdz0HQyvKlIrLXHO8tSAtc15Tl7mjVKVr248ebaE
	qu5LDPZtIXS/jFM8F0ydjTIQ6SSHDeoDoaSCyGq1NoWkKEXIeCfJ0UasBzYJflpg+l4pgjrNtvI
	DV/uMyarxCTDiPhwSgwMjvd1Ku4y68hGJGk5QqdBoN9/YAn/OwEwj8ClTQv4dBSMKM82Yb3ygKi
	CRfq+934dcFZfpOF28XkZjDeuPG4tyU5/nWaL7Yl3+bjFihA==
X-Received: by 2002:a05:6122:20a6:b0:56f:7300:37c9 with SMTP id 71dfb90a1353d-573a5674d9emr960551e0c.10.1777380135283;
        Tue, 28 Apr 2026 05:42:15 -0700 (PDT)
X-Received: by 2002:a05:6122:20a6:b0:56f:7300:37c9 with SMTP id 71dfb90a1353d-573a5674d9emr960538e0c.10.1777380134745;
        Tue, 28 Apr 2026 05:42:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3923f55f0e5sm6587151fa.34.2026.04.28.05.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 05:42:13 -0700 (PDT)
Date: Tue, 28 Apr 2026 15:42:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Christian Hewitt <christianshewitt@gmail.com>,
        Diederik de Haas <diederik@cknow-tech.com>,
        dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 12/13] drm: bridge: dw_hdmi: Use
 dw_hdmi_connector_status_update()
Message-ID: <nsgxyv5sflscs66kxcgbyapivu3yjskfqzeqkt4yhnjfomyfav@rkxft2e6lqbd>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-13-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260403185303.80748-13-jonas@kwiboo.se>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDExNyBTYWx0ZWRfX6KczzHXt0LR2
 +vb4OHFjQsKXbJXafywdAmbrXHP59kK1tga1bFXUP0Vxpdx1U4kzJTYbb64K2ao4HZfdUf9sCnG
 IophorGLhzEPx1hJFUY+WoAgcVU5b44n9ccDzlJg2y0fUgLjI4pEvc6MK7sF2Ymt53t6Wrvf3Dj
 pli2m+6Kk58nc6B7hYge2CdBa2bOvDAg1yojTnDepMF8d13rzDpNv+/6swpFIfJ0Oao5g+VVVdU
 7xmxPo+mf58epvPnEsHTkvcIImxIMxlFxA48//fQRxH2f4dbK6OyTFmAd9+ZUNbeyPMdaWt4jLo
 FHzyFAdH20v8LXXyyR2TLTfNKYo/AyEQfrFfyvzI58t0Wp4ds+H2JbkRKmjo28VhqibpH5mB9uK
 0c0e+k8a68SX6KnwZqz1K7M5gx2KiU4PUbFZQeDMrhrBlLfowxkGtywL/LM6m/cWhRENm5B2NY0
 2Dvzjn5chvgsnnFD25Q==
X-Authority-Analysis: v=2.4 cv=TZKmcxQh c=1 sm=1 tr=0 ts=69f0ab28 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=sWKEhP36mHoA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=6So5M6-r7czCO2SscSEA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-GUID: NXbj_7aM7NnbubqgXbJO7HovMSIhO6kj
X-Proofpoint-ORIG-GUID: NXbj_7aM7NnbubqgXbJO7HovMSIhO6kj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-28_03,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_054217_362797_2780CB79 
X-CRM114-Status: GOOD (  15.95  )
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

On Fri, Apr 03, 2026 at 06:52:58PM +0000, Jonas Karlman wrote:
> Update connector EDID and CEC phys addr from detect and force funcs to
> ensure that userspace always have access to latest read EDID after a
> sink use a HPD low voltage pulse to indicate that EDID has changed.
> 
> With EDID being updated in detect and force funcs, there should no
> longer be a need to re-read EDID in get_modes funcs, so drop it.
> 
> This change make the dw-hdmi connector work more closely like the bridge
> connector does with a hdmi bridge.

Please consider using drm_atomic_helper_connector_hdmi_update()
directly.


> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v3: Reworked 'Update EDID during hotplug processing' patch
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++----------
>  1 file changed, 14 insertions(+), 10 deletions(-)
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
