Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A1D6C87FCE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 15:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Tqhb7UtadTlao/D1KHmeYt/31mULlM9HSadSPUlgsg=; b=ZkM8SKmu8swhYY
	LWMOA1fxmhdt7A20H/4Sa6WXSf582ZJqy6IOuYwByVtA36iaj/Em5NqMQ/iELSD+I31VoICodhod5
	bTZkmb27P+f20y3mZ38j/yAK16PV+ZcI3yHGwJLmsgNsG1Z1zTpqKWk1d7eplC/7EXwe45GEc8F1r
	AM5YwFW00Zt7PBzYgraQpR/3OmeqYPtXr7xctGbhmTVBNf5DRSnMY2enXW0gbXoiU34CkN1lJnuVB
	9b08XCch3WjVGqu/P7eikrMpleLonnX27eiRsImapdtT4QI/CGdhQZZ0CX/a7+n7q57EC4WS3Z78h
	2Wr4sT2NLOUVzkzQZNqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufKGI-0000000A5qd-11rH;
	Fri, 25 Jul 2025 15:23:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufKGG-0000000A5oc-00f6
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Jul 2025 15:23:05 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PAXssC001302
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 15:23:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eTjMO6ThCzwsibq1lFHZiZoZ
	coN7Cs449c4GQQHgyao=; b=ATzB3/mcmVV/zkia8P/vSXPv93q3nC5wTBFv+1r/
	5uWPW6GrxvL87y7HUByOa2Ttbk4hL7YBaSfy+DxR6b6lUfj0hX5m1kZvmc5AvxO0
	AMpk2yriLI+GTqVwMWwKvaLrL9SlYgnNF8fnqP85/fwYXqQM2c9y+m0xSD27g1mf
	qn4ZuW6BvJd25PDtjqTvkXpYWx1twdBna5bVHpx/j7zs+shz3AksF8RMdWsOFnFS
	YA5sstgBn4/XGQR4x7ZwuLRDg/bKcxtdrpcybdIgzboAZ3w17aki59yy5mP/qni2
	EalIrVPMU2SqA1ni43Fo7HJRtYrOo/20XSu3gg/hmb1jNw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4848970sp3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 15:23:01 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab44642abeso42893871cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 08:23:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753456981; x=1754061781;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTjMO6ThCzwsibq1lFHZiZoZcoN7Cs449c4GQQHgyao=;
        b=xVeeYdUZSXKjgZ/qXhEZYfA/9rFWm5WqE1ex3I8AeFwRm5G0GM+gZxICcjYZ0BRQ9H
         7skXqjv0z1ZnE9h9KeCYT/ge2idV7ozW6CnHFmtVY2YONyOQFiGBJ19n2ISjKs8P4Kcr
         WEh0Rqj+pHP10DZyP7cwsHq9Kly9IYZiUZwpzjfcam365vdvgt4l2H4MnJHcWxw8lru2
         r2jcPlp21VZIX3Amye59MLEbqqnUseYwrauCo922qRKjmvV+d9ivjR6bmaWv1RNG7zxJ
         c+YEZMaJHB2rTHXIyX1TulJd8TzwosYq049tGrHKTQomCBrSwjgdgKCSQFJPUo68rsV+
         M7UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXn1atuvbmT8xQcQGy11/jIntI1/IoCLSavspots9MdZfGZ0FFKuJeCskrIUngqe6r+2lQwBULnIrvKDCGrWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5JK1f5OURkHyj98aGKRf28FgILZjvBD++YBWplxO5MFUdkKsa
	7bbQUuea2TT5Ivb9r7idVx+PZqcqz+/xD/AUoXJMAg66lKPuxK8ICfaru10V8cMI5whEn/8JNSP
	iCqT0hucF4kzf1X0VuzxBMTMgKevU4v7PxGaO834809ugC/75ks52O6sLZQFHdObzAPTNqJ+y8h
	Q=
X-Gm-Gg: ASbGnctMZGAzrdO9jJ6pctozHHC3rO1+PG/3HpB1gTh0ERBAfxznapJZ5f4Owtsf29b
	Pj+bWsUvOw2WmC8ZCk+sHfl7ZrDrzefo4IiNINche5L/duqkU03LrcXZf6lAKxrMZIQk1rH0D+R
	N7TnskZHaChoeOUH5c5STJ9IgXy0xY7oPQYt4fvKr5eM591ejEbKJveKhyTQdyvI3oBCB03pwL0
	8jziErLb4JNa/0cvSQi/K3ITsRqFZbxs4GUXYyNaOdrsT+16afU/mrYKWWOY8TV/dF8tpz4vBL+
	IjVFCdFPrTZ0iDyrUm4gFMi7jaJGrb8VRzGZ4Kcs1r7JfQQKpccyEiKavFxjQIWkJ/53WsZnUdd
	W3X09huWLj923uB+6aG4QFGlMJvr16Gn58IcriP8h/A8ASco3YL46
X-Received: by 2002:a05:6214:1cc9:b0:705:538:65ab with SMTP id 6a1803df08f44-707205ea86cmr34752146d6.39.1753456980750;
        Fri, 25 Jul 2025 08:23:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK5LDQ3JiR87dSBEdbMLaQa7N1rf2mWwVfPEnOCbZ2F/UBqPcJrWvG8vZus18ZIxSK6RRVlQ==
X-Received: by 2002:a05:6214:1cc9:b0:705:538:65ab with SMTP id 6a1803df08f44-707205ea86cmr34751036d6.39.1753456979758;
        Fri, 25 Jul 2025 08:22:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6336355dsm8672e87.86.2025.07.25.08.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 08:22:57 -0700 (PDT)
Date: Fri, 25 Jul 2025 18:22:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v5 02/10] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <svn2p46qguxrpn6fhqnjffqpgv7keabwgld53uw6ckkn4piu47@gedy4t22cqfx>
References: <20250716100440.816351-1-andyshrk@163.com>
 <20250716100440.816351-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250716100440.816351-3-andyshrk@163.com>
X-Proofpoint-GUID: j00rkcGapD3BB8ZyQfOHx3_cv6MZNM8v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDEzMiBTYWx0ZWRfXzLxJ4FzpWKxs
 ETlgTe89XMpz/tkpq2Io4Zl/pluBm7c9mKwMy8LB8LK/+yPc6TgZLWba8GrZ1oHkH8GpnA4RJ9b
 T4tnlgIshntHjKp5F0Mj6Vx/ophSB8dq9SbXkaHG/3o7pA5V4etNVJp2V6LLllObOPzXiHQbh8Y
 R5pyezRU0WJfjnfTuRLnwkudjyqKXPecHBEj6wojM6cW0JZURbA1JboSc7eacF6FFKWe2fP9geh
 VZpLqZmSvHcmtIJpeDAjrgu+CEjJSRfVPYYUR3JxgPO07rg7Tl7GcbNybESV/zyvkIv2XtopwzF
 cWQwvefWIQU7gc98cTV0Rj9rIaKvGJ8ymR0l5USjZPvc9mkvil/SfilpqQto9ZWpziSTb/RlVul
 hxaUy0/Vkow0MxSwyLppMybv39JrQj2vkHsAxVKsoE0q7EBodYKK6A02M9Nz8EVdKvLuuWLS
X-Authority-Analysis: v=2.4 cv=VJjdn8PX c=1 sm=1 tr=0 ts=6883a155 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=w3-XvOWwJNVOjCSRI-QA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: j00rkcGapD3BB8ZyQfOHx3_cv6MZNM8v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_04,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0 mlxscore=0
 bulkscore=0 phishscore=0 mlxlogscore=999 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250132
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_082304_157639_ED4E594C 
X-CRM114-Status: GOOD (  27.26  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 16, 2025 at 06:04:29PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DW DP TX Controller is compliant with the DisplayPort Specification
> Version 1.4 with the following features:
> 
> * DisplayPort 1.4a
> * Main Link: 1/2/4 lanes
> * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> * AUX channel 1Mbps
> * Single Stream Transport(SST)
> * Multistream Transport (MST)
> * Type-C support (alternate mode)
> * HDCP 2.2, HDCP 1.3
> * Supports up to 8/10 bits per color component
> * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> * Pixel clock up to 594MHz
> * I2S, SPDIF audio interface
> 
> Add library with common helpers to make it can be shared with
> other SoC.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v5:
> - Use drm_dp_read_sink_count_cap instead of the private implementation.
> 
> Changes in v4:
> - Drop unnecessary header files
> - Switch to devm_drm_bridge_alloc
> 
> Changes in v3:
> - Rebase on drm-misc-next
> - Switch to common helpers to power up/down dp link
> - Only pass parameters to phy that should be set
> 
> Changes in v2:
> - Fix compile error when build as module
> - Add phy init
> - Only use one dw_dp_link_train_set
> - inline dw_dp_phy_update_vs_emph
> - Use dp_sdp
> - Check return value of drm_modeset_lock
> - Merge code in atomic_pre_enable/mode_fixup to atomic_check
> - Return NULL if can't find a supported output format
> - Fix max_link_rate from plat_data
> 
>  drivers/gpu/drm/bridge/synopsys/Kconfig  |    7 +
>  drivers/gpu/drm/bridge/synopsys/Makefile |    1 +
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c  | 2044 ++++++++++++++++++++++
>  include/drm/bridge/dw_dp.h               |   20 +
>  4 files changed, 2072 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
>  create mode 100644 include/drm/bridge/dw_dp.h
> +
> +static int dw_dp_link_parse(struct dw_dp *dp, struct drm_connector *connector)
> +{
> +	struct dw_dp_link *link = &dp->link;
> +	u8 dpcd;
> +	int ret;
> +
> +	dw_dp_link_reset(link);
> +
> +	ret = drm_dp_read_dpcd_caps(&dp->aux, link->dpcd);
> +	if (ret < 0)
> +		return ret;
> +
> +	drm_dp_read_desc(&dp->aux, &link->desc, drm_dp_is_branch(link->dpcd));
> +
> +	if (drm_dp_read_sink_count_cap(connector, link->dpcd, &link->desc)) {
> +		ret = drm_dp_read_sink_count(&dp->aux);
> +		if (ret < 0)
> +			return ret;
> +
> +		link->sink_count = ret;
> +
> +		/* Dongle connected, but no display */
> +		if (!link->sink_count)
> +			return -ENODEV;
> +	}
> +
> +	ret = drm_dp_dpcd_readb(&dp->aux, DP_DPRX_FEATURE_ENUMERATION_LIST, &dpcd);
> +	if (ret < 0)
> +		return ret;
> +
> +	link->vsc_sdp_supported = !!(dpcd & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED);


drm_dp_vsc_sdp_supported()

> +
> +	link->revision = link->dpcd[DP_DPCD_REV];
> +	link->rate = min_t(u32, min(dp->plat_data.max_link_rate,
> +				    dp->phy->attrs.max_link_rate * 100),
> +			   drm_dp_max_link_rate(link->dpcd));
> +	link->lanes = min_t(u8, phy_get_bus_width(dp->phy),
> +			    drm_dp_max_lane_count(link->dpcd));
> +
> +	link->caps.enhanced_framing = drm_dp_enhanced_frame_cap(link->dpcd);
> +	link->caps.tps3_supported = drm_dp_tps3_supported(link->dpcd);
> +	link->caps.tps4_supported = drm_dp_tps4_supported(link->dpcd);
> +	link->caps.fast_training = drm_dp_fast_training_cap(link->dpcd);
> +	link->caps.channel_coding = drm_dp_channel_coding_supported(link->dpcd);
> +	link->caps.ssc = !!(link->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
> +
> +	return 0;
> +}
> +

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
