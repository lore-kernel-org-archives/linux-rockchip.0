Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1966BD58CBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 04:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsB6kh7afWiVOh8i1vUxghk7bOu1lOBqjrZZ9plqe5Q=; b=nvsL8uFVmKKXRf
	U4PVNq5hnR3EOsKvnatkTXo1L/ggDRJxQ/TcuK1DNmiqOzJceE6xUg2W570Ylel+QvQZFE4PvhGyD
	k3RbGmfIZLO0kOkE/mf+ImcVXG8ort+nGWYaf5x5Sf8M4FLprqezNhhV45FdIMUmFCKRVK3MITO8d
	FwrJEMorWfrf/Td0Ii6z30esKWzILzTXXPrsKHpyFkr07PmChwTpxGXTYfkEUEMFrPHFIzSimUwkx
	+jtpEnsDFibe29vwwBp9AMoccYfcTfWFcZLAg0A1VFm9ZIbObi/Dp3jB/0LToYAY8HTb0Vg/rO0Da
	lr+AS83P6OiZPc0Jn+8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4Wcd-0000000G09j-3rN7;
	Mon, 23 Mar 2026 04:10:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4WcX-0000000G07n-0ugR
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 04:10:31 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MM0JlS1203145
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:10:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=sQGEJXGCGP1VT5nokRdn3QZg
	aBAAwrlU3lx1pdI7M98=; b=i7kecrEVBLxO1WNf+l5nmTc2n+Uzo/nysllO0FnQ
	hbeqyVQsO9lmxoRPFiatAESTJXCA8eVSpw5OfaSJbcdhkTF/N1TPrtV/f/q0FEYl
	VlWbN2Ms4pzCJGQp0A4A0hnIfUhYvgig+FROqZ3fKWWu8EjxjsKBg7+fzAaBis03
	GEkWpvszzEevqzO8lVdYQMInB4zOdGLjJgW7M8nsg0VsQnzLtoIKQz9qNccJz67X
	9j0TO8uUebepnxQM4MMlABNs6ApY1DEps+N15UmcVqtj2IaOXoHw/MG8hWlNRAfT
	vOekq4oJi59jpYJwBZnCYkszmNMG9AtJDnL5BsKdqUB9yw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1kq5un69-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 04:10:28 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5093b92f327so289998801cf.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 21:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774239028; x=1774843828; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sQGEJXGCGP1VT5nokRdn3QZgaBAAwrlU3lx1pdI7M98=;
        b=YEV7XVnjQk77AIFxm5PFxr1tJcVmtHpZL2TnyhOXVOIDgqmSIg+EzUcl0vhpcvyj2z
         KTCJfwEnpMes+ZPds4RpUeDxItXtmqxu3cHx1f4zjF0/jior4lwLJp7KaG8no8DuSPZU
         UuE5Twjp2wE5QDBVDjOm4V+oer44mbzTW9PTyseSmO73CUvoom5fXbod2T7EOs0RBVd4
         fiU9zF2FDSn4ro7rhbiuWqOAJ8+mssQFCFtOOdP2m4bP0sz3Zb741E2kDxzMdk0XRZg3
         BkGIKwaUlH6PiWVJ2PnxCeJqjLl0yNie1HrXz/UE8qnGvt1H41hgNuN9DdIqd+69RoQ0
         CHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774239028; x=1774843828;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sQGEJXGCGP1VT5nokRdn3QZgaBAAwrlU3lx1pdI7M98=;
        b=bX69BeUbpLDVPpKUyJTrBw/0YN1CG/kaJM7QaiZcKaT8V/hF3EmmQ0sebkdrngkeEv
         DXo18FG52bJtlGBOksuwcj3UN0DSXDxWU4uCtjOIQHVVZEeJRAcj8Onp+h+i00kNcIxS
         NmqXPBio/ocOHjsVHy1VEVAOTtBc8uoyRHxbfLQoj8EBcUFXik0I2IfMDN2dIAiounK5
         50hFQ6GB7xGfH/NxUZh7wvW4cMlg9f80bhrSit4/UjvqHjZE/2rTmee+ok+6rDqlFxGJ
         yM7Ho4bCdQoprBnI+G6EiLPPO7hHlak0ZDRhXdeZa1sLy2HpgsrIDA/o7BZRoaiGN9xC
         RoHg==
X-Forwarded-Encrypted: i=1; AJvYcCXv1fCk6PDXad4oYy0pnwAUc8ahJPdhB1pb/6JzN1g9cmTmDByulo4A0XUfwXuU3eZee/pQ9MoGQZTl8Rvtcg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQxknXKGkOZHggJuBvgGFZUwghSKvTAyCQ5JhXn6TSXeTHq+ez
	E7bFT1J1kzsgClXqOvfNeU0FZ4cAVcsw5NWpT8PEGUVIv/DeVFWMiGkewaQ3QfJvd0sTf3EGF3Q
	vhCXMgyOeB6BTPlb7tEWheFYzxkpYysdBX1zcAv3QjA0ZRNKwVjuPJLOphSIzoapRHt5TYtna+b
	U=
X-Gm-Gg: ATEYQzzI0PghmKl5CbdOP5CeKKLFCAO7UgkPgqlj9Bzvm+FJjen3CnuB3vC9bFCKFEx
	wP1p+bz1dbcXazFwRLw72horylMmUZggwWh+6QQnY/KLhUwTfEHKZDQa5I8Il9wfv54hPfPAHDy
	YzFwmIAIY3rmB6H2fxAYFFA9i1mjN03a7D6gEXjn/4QK+dGJHqd9Ges/Y2U/+o1edKLQtZsVYj+
	VFgwNUq64jCCS3PI68nZinWHgsghH235cS7VZSBO0MTQ/I9756qTOFdNUx9ksCTgjJLs/Flr8FB
	AHSBDeFT8sam7GkukjEJxkUurJUj8qWo9T2AauxdZvzy9Jbk7UUwzf7UKsOYhxPB8/Ex7HJYyRe
	5PfmJ45GUMeU7SOcHKGpDn2xQQ9BT4hj3207WLKfXF5yZ8973CAmnHWT60fgK1iGvoLVFtUxXGr
	j2dIdH0Ay3x6pDiWsV0F1t/vyLMrTuirOt1bU=
X-Received: by 2002:a05:622a:4287:b0:509:f36:497d with SMTP id d75a77b69052e-50b374a7a76mr157306191cf.30.1774239027579;
        Sun, 22 Mar 2026 21:10:27 -0700 (PDT)
X-Received: by 2002:a05:622a:4287:b0:509:f36:497d with SMTP id d75a77b69052e-50b374a7a76mr157306021cf.30.1774239027086;
        Sun, 22 Mar 2026 21:10:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a285192b44sm2215746e87.5.2026.03.22.21.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 21:10:25 -0700 (PDT)
Date: Mon, 23 Mar 2026 06:10:24 +0200
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
Subject: Re: [PATCH v3 14/14] drm/display: hdmi: Use drm_output_color_format
 instead of hdmi_colorspace
Message-ID: <gcl34au4vrbew3gtr7z3ui5tpkiehiatiicrawe7ls7ulq5vk4@tecy3vwgihcr>
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org>
 <20260305-drm-rework-color-formats-v3-14-f3935f6db579@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-drm-rework-color-formats-v3-14-f3935f6db579@kernel.org>
X-Authority-Analysis: v=2.4 cv=GNoF0+NK c=1 sm=1 tr=0 ts=69c0bd34 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=QyXUC8HyAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=PZBe32_PtwNt9AllZ3gA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDAyOSBTYWx0ZWRfX/shliGpVvt4d
 ThbteOElk16xeLBKPIRG99aKEbbYNLPRQ4TwDuI3E6erve8QMgGHr/vbfTfitMrdgij1jE8Fz3T
 STX6GZ75ewnCGuBOwF7/B2m8y94djDjj7wsIg+3k2isrotxLsAAHqWifRflN5JJKo2S4OxWDKA4
 5fmefjJIxAmcN67CB87RLC3o08Wt6cg0v3sRAlnvQmPFAorV2cMSRAyd7iV9KFToD1rQC8BRIzS
 ozgCOHJjg4pVg6WqbBm/X8S7Q4r0xFzloxXbgTFJWeps02nCMmbJZk5uRQcApvfgtc5wInR/D7x
 jJ5VfadTokdlNKQiWw0KdojsIl5Vj25/KjvbH88V/lTQHmMqIXr59U9m392Y8v8yenjpKgzhGkV
 fCQ8jraAjfT1kUWDch1P0q06eTUZ5H7tF+iZwqh9K7nuTkReuHuZ5keTFG850CgHofghWkFDIhV
 Qo7R2P79tubeHNgg+2Q==
X-Proofpoint-ORIG-GUID: 6tOrcIdkIw4Nk3e8fFZ02RtHSBrz2eUU
X-Proofpoint-GUID: 6tOrcIdkIw4Nk3e8fFZ02RtHSBrz2eUU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_01,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 spamscore=0 adultscore=0 bulkscore=0 phishscore=0 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603230029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_211029_372482_6B2B565A 
X-CRM114-Status: GOOD (  19.25  )
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

On Thu, Mar 05, 2026 at 10:05:06AM +0100, Maxime Ripard wrote:
> The hdmi_colorspace enum was defined to represent the colorspace value
> of the HDMI infoframes. It was later used by some HDMI drivers to
> express the output format they should be setting up.
> 
> During the introduction of the HDMI helpers, it then was used to
> represent it in the drm_connector_hdmi_state structure.
> 
> However, it's always been somewhat redundant with the DRM_COLOR_FORMAT_*
> defines, and now with the drm_output_color_format enum. Let's
> consolidate around drm_output_color_format in drm_connector_hdmi_state
> to facilitate the current effort to provide a global output format
> selection mechanism.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/bridge/inno-hdmi.c                 |   6 +-
>  drivers/gpu/drm/bridge/ite-it6263.c                |   2 +-
>  drivers/gpu/drm/display/drm_bridge_connector.c     |   4 +-
>  drivers/gpu/drm/display/drm_hdmi_helper.c          |   7 +-
>  drivers/gpu/drm/display/drm_hdmi_state_helper.c    |  52 ++++--
>  drivers/gpu/drm/drm_bridge.c                       |   2 +-
>  drivers/gpu/drm/drm_connector.c                    |  16 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             |   8 +-
>  drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c             |   2 +-
>  drivers/gpu/drm/tests/drm_connector_test.c         |  80 ++++-----
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 182 ++++++++++-----------
>  drivers/gpu/drm/vc4/vc4_hdmi.c                     |  18 +-
>  drivers/gpu/drm/vc4/vc4_hdmi.h                     |   2 +-
>  include/drm/bridge/dw_hdmi_qp.h                    |   2 +-
>  include/drm/display/drm_hdmi_helper.h              |   3 +-
>  include/drm/drm_bridge.h                           |   5 +-
>  include/drm/drm_connector.h                        |   9 +-
>  17 files changed, 213 insertions(+), 187 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
