Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7929FF8863
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 11:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMsWkLPzdbdL1SI3iHOMqizMfNTXplXQV3nqeMS610E=; b=H+sawCQlWTQVgj
	0QJXmwo5HYOPNfSzvIhev9G6aJmgSzKgqx/ueTPqm4CLKuvgEGqPm/FxcOMOi8M7qN/d1XY296NbP
	8jlTHjX6Wm1wCa3nxvtiN13bPZHn2Vx43FQ3oJzS1u+yrsr0cEsHPr8P+R3xAORm7ro2RcH4J5lX2
	5+hQrgAkIirLlsttX3aRn/ya1FqNvWvg1JQ6dw3i03ctx1bzrffTRL+JzgIOfKkOfZmGzIP2/kkjg
	/Nhw9X2tBphDzEIxcpsW7fmiD80G/JpBABrvmZnXl4BmZOQbI/zQLVNJ9IXMZQj2lNIyGk2c4i92r
	DBzRdkDMpTxp7G2gKWmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGatC-0000000ENaX-3abE;
	Sat, 25 Apr 2026 11:09:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGatB-0000000ENZp-039y
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 11:09:34 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P3JaHW1727692
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:09:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=skggYkTTFObHeIE3RudQp0G9
	1CjiRon2TwvgONrTWQQ=; b=RJk2YCDyCRrYvpfj7deR0E+7F40sA7ecy3s5LwuC
	JwrLO0+41LY8A8E8LR/ubgVCS5crHRH15ux1KKMvHODIbUrQADAzhDKgh7DgKvuF
	boQxjUCJyrrvL6yo7vKI5fZ2xQpzDowy54280huGdhYwzFB9c65HxxfKNPRI4dgf
	TzvtBwc/KZplZZc4LERPGuSZRVGn6F/7kMgsRm/Bdsa4aRalN+daxsXP7WUoJgWj
	bYrYOvtt7Z3WHlGDs8HW63uk9QF9uu+0o4W20QEDD2bTA4LKfF5OGr5Xv65hOcT6
	YIz1ZbrnMAen9tBpnWm8cneIfIV5cwOaJh3zaOUNqYsNPQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnkx8swq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 11:09:31 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-56eeaefec9bso8821041e0c.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 04:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777115371; x=1777720171; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=skggYkTTFObHeIE3RudQp0G91CjiRon2TwvgONrTWQQ=;
        b=LF6eZIvNvXxOxQGW33YDDWe2/sgWpkx7bCYarjwuc6oHvLwLTkG7Cy5v3eBigqGtjz
         f0NGwUvzQ3psZZmbaQziIVapo+mgBWM2myGijvdgO1ygLf5HgSNW2Xz0s8N6SqkbclvC
         bgIIB0YIBy8qcz9t3FOp2ud72yOvVyJheRZE4EC5KJCQ8vSlJlALMtVgjBsQ1kgMFDxd
         MfRGA29SWTfXvyiIy/7lkd8H/55OHiXathBy4FKvscf82QQPLObUuxnz8nPZ449wbwIO
         MM1xMOLZHroXIUJh8LZIsUL8DKW5nY+6/fgZjctYmZWo2W5UoblsjqzFbmZAVYlnavkh
         Kgrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777115371; x=1777720171;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=skggYkTTFObHeIE3RudQp0G91CjiRon2TwvgONrTWQQ=;
        b=iPsz+vUHmsNzGo1W0R0HJ9HR49sibaGumoFlRQTq8xPQu2BuHVUOm3Gu12CRLgAYDM
         MX6fEE6wKoHJXh8z/lWBI4WnlxlyscILYCyhMh0iSaJ0MLD05a5AGLQ23K3rQQcb45dY
         HnqDAttX4HFwmjfuOtxdXyBHozdwWg9SAnh/h2dGyyRE8DVgTLu1qgDd2t8aONsdack/
         i0oL+zCCcP45LuYqeR+4stMhPMk0ZuJa7oaCNoL+0FKIVV48WetQn+xF/zIC+VLOS6SZ
         41mVmXi9DX0oaZr5iFXtuA0XM063awGc7m/6hy9iXkgw8DTo3/ea/PLQxh8Cg1uaG0qq
         L9Jw==
X-Forwarded-Encrypted: i=1; AFNElJ/Vzp5MvcNeEpJLYpoBB486vEF0QiTMKgs9WMUGsLKMI050tmy+bjizZs1HXA2HZj7JPe+ylu3oUMj9sS9njg==@lists.infradead.org
X-Gm-Message-State: AOJu0YypAaoRC1XCvmJHS7dc0rt3ENF68JI3W/YZd3t14eeN46Rfxoxw
	A68WChVT/rBBLrhdmkNNSEZko+P+qJMs1wAtmcCkkL3OXk4rEi+ElBYz9l6IKuQRy/TpN2iSchX
	eADtRKHu7s6Og/gr/CNiwhkALCkLUnX+OyzzlAjwAhPzUx4IrBqFXBRJEUXrrELZr6j+5LcoTE4
	c=
X-Gm-Gg: AeBDieuPw3PtNGLIJYRGXVY+kvuAQpMyGoQ1Npc/dfJsNIJ06+k96aXHYGJpQFi8uSP
	Ld3QMRqdnGWwOUIxSaoX+PgKhka/DlU1KFoVVN75EPtNm3iNpZTL1Eih1CkrAu8wEouuUIK3e5c
	tHB7Kbzd/hNUssM4I4rjMYORGFqNoXTPW9I86DXcMKR25OPQGt8O6aFhCThC8YNAep1ebkur+Vs
	CylGrwwBhdf5EAw07jCE27Otu/Jur0TIOBHlaNDXJgpaSGEocSgiSrOw69dnEpwY6p4YBEUiOh2
	J8J6jLGN6DTAlBORZgAcuN8TX8PIw3Cr3GqFu1cDdmKGWgzjp5tNyZ1F/84DAjvQTgQdSitnAe2
	+biM5jDyiE9v3GxltgW6kceLTXzyCxF8xDTEc46DAdAEMzASTZ1fguaQpoSmKFsr8NeqVlYWpl8
	FEvi/2ssZXrCTogkE2ZFjBS+CUktwXql3657VXGxBcvA1kyQ==
X-Received: by 2002:a05:6102:1611:b0:605:7a45:c7c0 with SMTP id ada2fe7eead31-616f70f0572mr17646760137.13.1777115371002;
        Sat, 25 Apr 2026 04:09:31 -0700 (PDT)
X-Received: by 2002:a05:6102:1611:b0:605:7a45:c7c0 with SMTP id ada2fe7eead31-616f70f0572mr17646746137.13.1777115370439;
        Sat, 25 Apr 2026 04:09:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38ecb5f64ebsm50476681fa.10.2026.04.25.04.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 04:09:29 -0700 (PDT)
Date: Sat, 25 Apr 2026 14:09:27 +0300
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
        intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org,
        wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v14 04/28] drm/connector: Let connectors have a say in
 their color format
Message-ID: <5uit4utjrezpuqok36apjrkojaklze4ftgp2r4zrqolus7gkcn@nu2hsrhaj6zy>
References: <20260423-color-format-v14-0-449a419ccbd4@collabora.com>
 <20260423-color-format-v14-4-449a419ccbd4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260423-color-format-v14-4-449a419ccbd4@collabora.com>
X-Proofpoint-GUID: 3vsDVEGWVe6SpW3O3pRYIQm6XRz2Cg0M
X-Proofpoint-ORIG-GUID: 3vsDVEGWVe6SpW3O3pRYIQm6XRz2Cg0M
X-Authority-Analysis: v=2.4 cv=TuPWQjXh c=1 sm=1 tr=0 ts=69eca0eb cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=vpl3xS56dgtxGFZ4nZMA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDExMSBTYWx0ZWRfX7yUOtYtay94Y
 /y3sP6WuPJLjtZyh5EVkQdZ5HTjb1hHKdxpuIznsBno7aI8jsLYU3ghFji2iW3h5LJL/Lxar6kp
 p1+H8MHsiDu1tr8QEZb269pOVpr9VpizKjOCf1RmPOMeIL4hrZqPeBj7Tc2pAuFjpAy6DAurH35
 Y/YitBlw3i99mqOaDFemIEn8O4v62gS7Tefp/ScqzW4bJB9oHvyALWQuZ6eAvCtZMh9vZ1oz8Ir
 CuxpNnUC4ohYHgfP46oGLzV2zIBoZbCxR/wc8DEAO4BQV7y8MmZlWStzylLlaGNV+sIeYv+eDKl
 o63dwO1FA28IX2U+r0ayX2bvxlWj9JjCkfgzeWNeo+vqIUFedC7UxWaVIw836bw7UFPNXjHhvxu
 PQgCrWhXD48KufjLPmGQQGnF9e5xZFpWD6/xz10uv2Sibo7ApTVf4CxA688yVnJHQkEW28BpPaB
 GUvHZdevula1oBP6W0w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 impostorscore=0 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_040933_173209_9487D9A7 
X-CRM114-Status: GOOD (  16.25  )
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

On Thu, Apr 23, 2026 at 09:03:27PM +0200, Nicolas Frattaroli wrote:
> Add a function to get the connector color format from a connector state,
> and a new function pointer in drm_connector_funcs to allow connectors to
> override what connector color format it returns.
> 
> This is useful for the bridge chain recursive bus format selection code,
> which does not wish to implement connector implementation specific
> checks like whether it involves HDMI.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 16 ++++++++++++++++
>  include/drm/drm_connector.h     | 12 ++++++++++++
>  2 files changed, 28 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
