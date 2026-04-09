Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C55F364BD
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 21:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xAo2EWTv68S9zzRrshYBPeuu3Aq29jw/RfEI3Q1HDog=; b=fSJ2KJerGHo4di
	QiG3/OMhVCW6QjZdXgnQE43YZQNZ56DTDWWIHwt9LkgQauE9gXL2smld1Ves22D3RzbYywcBXO87G
	vhtyTZXxHJXC1cduBXHcGSs8REedMDBvKGUgzIT6n6QqZZL6ry3U5hblfgG5Q7AxO2qOFkP60CICs
	5n8hRHKUYvIDDUJE76BHiWItPmZFePMs95gxebR7j9Q91NhO5SQLXiGvdna8si2xPhoVrV/ZuWFmH
	l3OGYr9srpV63ZjZMLtA46O/j71P4J4BsucmNcjiE0cg9b858CYP24Qv87eMkce9KDdK/ljHtgLt7
	eCVtgNIbskX6VCfxqlmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAwWU-0000000BCrA-0TyE;
	Thu, 09 Apr 2026 21:02:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAwWR-0000000BCqJ-1GAq
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 21:02:44 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 639Ibf19779506
	for <linux-rockchip@lists.infradead.org>; Thu, 9 Apr 2026 21:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fy24ThaE7zxCmOTOVBB95xQI
	Swb2qBaf1w/hIxxQ6/A=; b=iwt83TLdksEzI97LSyWc2oo6OTCnetVF+TBZtYiw
	jVvR93rQ0vMOjI9AGB43I1+Z3MGaVKHQYJUcZtCZqTVo/msgQFETyPAZX7TmH5lP
	Er7k8jHnbsNkbtFBIu0Bgw9oaNxRBDsuYIdIpXeBbsrwTQVqSDNe4wmGkL8Osx90
	32VlGgSVpKG0UmeHh5TgbJx0etVjXLB0VhbY7KIvrSqkcHv7uR9Nuvpuxgvc+/6x
	qIpPaf8zT4TNVfSO7dpdO+FYiF3Pa89SwQWrkYQaWb+0/dujQoFTymbuiXbHzp26
	jgNmLP0WYZRPyl6YuD5rT2Ob8d92OA/BnC1ECwM/vs9AYQ==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dec8hsw50-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 21:02:42 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-689b18091ebso2768245eaf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Apr 2026 14:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775768562; x=1776373362; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fy24ThaE7zxCmOTOVBB95xQISwb2qBaf1w/hIxxQ6/A=;
        b=SqfYQEK/b2FBvLbcUlyk5U9258qsWLJPxtBRCln7GJvnUSHdhB7WNzui3ePA8CaD7w
         nSFsTe0kN/Icb1WDrAwDIP3y8iblZWij5V9YM9iJt7Kr0/xyOF1O6xEG92WicXB0n0uI
         YQzs7fbPdiSMouNfiXoEUJScYrZpW+5IkolQcu34r14cLxwd9akz/zolvztAq/neM0ey
         xk0lZCExmFtRWuPZUt/R9+l1k84Cza/9hEhUfsb/4LbNKRrDY77uqfHsbgwIY2xcgrGF
         O+5KZI0kBzattqKKPxXczbTHDo6TgOv3GtT0JhXHa1n4899yX2lQnRTSogjyB+XX4CB9
         8wWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775768562; x=1776373362;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy24ThaE7zxCmOTOVBB95xQISwb2qBaf1w/hIxxQ6/A=;
        b=bQo8ZxXeOZPkGjF8UxK9eiQU2SNveVZW4cCtq+sBOjg2Fd24/xacHkrkXlWVf/aYLc
         VgN1ZIdGqL7qWvOlClGCUI0eNPyM3RPT4E4FLYdf1oie5g+6skatDpEuvXyCFFfajC4E
         TC3EblV2cS9PuZgN4h+k7ZGR4RBVaFrWuNmLT3uHGtq8aVQFiydLeA8nlnZPLlg36kXY
         39kXlRIKm8MJl1Vhe73ACIIhLDSAjMbfabXPP//DxHHmsaCxZoExR5P0lUI7lk9H7wN2
         gwadktSWOj54mZyOrJIPSn14XfZnXojgURXbAzy/xugBa1M+AMQwzcb8k5gmLhsmurk2
         6iUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpskPd55F/lhTsyb/4eAfySJ+3q2BeWRNBcbqfWXsvHDmn0BBAH+ed7HCjR+FY86Tdjt0/l1sCQbOIZ30KfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkJAy8u0pxxU16MrGlDprEaQWfLRsbrT4DfCM0y3+Lu2LjXZRE
	sRD958IQQokBr/mfxjutkZA8Nx19hbhjpO3DY2kJx+E9eslzUwtt5qTpgPIgw9GUBsPhZaKAhG0
	lfMh1/q7IoMr+9oQy6kKsgxUmTCUeeMBgdOJ4LvbKOLk686IYTQhqa9/JsvI7bE65qieXBaNyHh
	g=
X-Gm-Gg: AeBDievcAshaHKeRV1TkoyHqBGMO1Bts0L5OSEWqWNnvoiE/G81X8wEWUkEE9gMVXA/
	PvEp6eXxsLLnbWpTqssEEJjYpnH+Lpo838oJ9TXBjji/Uvzv5I6LTP9HvPCRrbxLDga+AgGlHok
	oyFvowNZE34nAS3Y4pCdwjVxrtBl9HNml0ih0plKaC7VxzcxVuFzcZtBnHO7oue7k4HpbZVq5ef
	0z+5mtAEqrnycQNLghPZ+jUPYF/P+nojv41/kCZoGQwrMWpeWPV8i2+FpOV+ter3fPR7qR5rZ0f
	/Avgzax3YOxJya/7B53O3ey49OXsenoK1ifNUIT1RhdLN0gk7z86FGYAzi33Wa0SnZzu+rjmUkr
	YdcedO+yx4xPtDIuLxQNlzXyBJqBNYr/Hv+CXS2XvmLFSt0jsL7kwEvSwF08p7SZX2LazexoZBT
	hvAywGJurLOo3zq1ahYMzbeq59n+ahgv4qPAs=
X-Received: by 2002:a05:6820:678d:b0:68a:3b31:1bfa with SMTP id 006d021491bc7-68a68d5fb3bmr2094618eaf.13.1775768561813;
        Thu, 09 Apr 2026 14:02:41 -0700 (PDT)
X-Received: by 2002:a05:6820:678d:b0:68a:3b31:1bfa with SMTP id 006d021491bc7-68a68d5fb3bmr2094597eaf.13.1775768561356;
        Thu, 09 Apr 2026 14:02:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eee93264sm160532e87.29.2026.04.09.14.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2026 14:02:40 -0700 (PDT)
Date: Fri, 10 Apr 2026 00:02:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
        victor.liu@nxp.com, Frank.Li@nxp.com, shawnguo@kernel.org,
        s.hauer@pengutronix.de, inki.dae@samsung.com, sw0312.kim@samsung.com,
        kyungmin.park@samsung.com, krzk@kernel.org, jingoohan1@gmail.com,
        p.zabel@pengutronix.de, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, kernel@pengutronix.de,
        festevam@gmail.com, alim.akhtar@samsung.com, luca.ceresoli@bootlin.com,
        nicolas.frattaroli@collabora.com, dianders@chromium.org,
        m.szyprowski@samsung.com, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v13 10/17] drm/bridge: analogix_dp: Pass struct
 drm_atomic_state* for analogix_dp_bridge_mode_set()
Message-ID: <cvm3mvyh5ggs2fsjmikzn6z4kf7vsgxcxl3qusyxnv6jmtt3sa@fof7vydwsvff>
References: <20260409065301.446670-1-damon.ding@rock-chips.com>
 <20260409065301.446670-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260409065301.446670-11-damon.ding@rock-chips.com>
X-Authority-Analysis: v=2.4 cv=PMM/P/qC c=1 sm=1 tr=0 ts=69d813f2 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=s8YR1HE3AAAA:8
 a=EUspDBNiAAAA:8 a=pclm5J9ib1Ufy00r_ZoA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=rBiNkAWo9uy_4UTK5NWh:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: qSzofa7QgqrfnJ3xM_fntLjPz2bbAEWK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA5MDE5NCBTYWx0ZWRfX8JiYJQ0vndNy
 r+7TV4TQJWj/gD57ylUduLwAXNavtkwQRLipQnGfXPDpgjA9h9sm5Z8Qr+Zcjba7c/umLfiU40d
 C/8HuQQToDRI1Vm6/a/udHQR2B0BvWeo9U7GuuCYISFQar5QqNdzzbNiKrhJWXUJHMnsh9RaWly
 ayUu0wxAcZKXSfT8ufGk4JW6IVHGs7JAlA+OOswyEcx8/U88/JmYTBBPzEW0ETTK1CwLLH5qslS
 LrKldFAAmXgveas+ZwM5YdjDXRBJWzg8pn3gURCwy0nZ3sfAxlXUK8/Jq/B+Rs8VK7YgWBdIEgA
 RvbS9lPuWkJPnGR/snkGdeVWprI6xONGnZvaIznCDaH4t44tgTV8VMxUFd/7YYEAhWPbWa74do4
 763IvXrDoU3a2xnoCN4UzoTqRmsuATNJSujbPixspnkgIlSZRpjrvLslkr1jSM9F5yE6VJkP4Cs
 zUXV/rgAMLgWn1jD+6Q==
X-Proofpoint-GUID: qSzofa7QgqrfnJ3xM_fntLjPz2bbAEWK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-09_04,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 clxscore=1015 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604090194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_140243_345628_6A32D1F7 
X-CRM114-Status: GOOD (  12.02  )
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

On Thu, Apr 09, 2026 at 02:52:54PM +0800, Damon Ding wrote:
> To avoid using &analogix_dp_device.connector for compatibility
> with the bridge connector framework, get &drm_connector from
> &drm_atomic_state instead.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
