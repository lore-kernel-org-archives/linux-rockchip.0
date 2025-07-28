Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CD82C87FC9
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 12:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLxZwwzB1t6VWkMG7/++umu9JDgbNeWpuhlShEm98Tw=; b=nE+3N4wmPGSuT9
	sCRu06v51HtnrrLZ+tKiTIftI6o2NFfwipf4B6X6tevQMYYnBTTHNMAUfPppnWKoEErCdNEH5XVgs
	8DKuNhIgc3UJwNxRDWZTmQYT3M1q8G3oHIbODQba8OnrOVPJ+g15OBAlAWhe3Ynftm6c5Inpaz/nu
	fp/4fY8iMKTXk/dfHz/2Aip1fdNe3pFsWE7cAqJzV/Xm8RIL2GN8fA51DaYb25aKVMtuCxn17rCDv
	zKncmsSZzzChR1Mo00Fod/+qf/vSeCvxwKV1hxO3cD0WxG4Q+7lEIaV0XOLJj1dIiKvUa5JjoUjHi
	wpx1I1DXypRgUTAP9Lgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugMhs-0000000EP0w-10GM;
	Mon, 28 Jul 2025 12:11:52 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugMbX-0000000EOac-2a3j
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Jul 2025 12:05:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlQdX028385
	for <linux-rockchip@lists.infradead.org>; Mon, 28 Jul 2025 12:05:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MLMkHEXhcpE9zqxnDSOUT7LZ
	JSw53zS0jCgPn9nQ6+g=; b=O/09t9ifQZ5pb1vgPcIgB4ft+YBrnr3NSj2lG8HH
	POO+dTiTkFe87ThnmxxXAY/3hNC9AY/qkpFt9yOkTp9buD7tG5o4So5ilDJSiHcT
	IbrApJia0nx3Yk0fh44+TzLDPGuUEXrNKW49zlTd0lh5kq1A1y7H9wekO+TdyKCw
	gsdgObcQ0Khe1RgBrpY9SVIvkM+PpZOjdoX9noy6s5+Z9HqX5Q4VzEvm2G5ZQr0D
	Qkc1zYcO329+XCB6xDLDLN+4gf3uAmFy1Ngz9e1WwyYl/e0z7Pxn2c+C4bTiZOk/
	h5xJ6Tl/iUnBOO4Y2GtroCJiMPewTlVJ7tYkmCzsULqtww==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pm2ce4f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 28 Jul 2025 12:05:18 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-73e732dff33so2162782a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Jul 2025 05:05:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753704317; x=1754309117;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLMkHEXhcpE9zqxnDSOUT7LZJSw53zS0jCgPn9nQ6+g=;
        b=kpObL2daPVGM6ZkIv+w+6qhtM0jNUdhenJR/iglquVwre7YCThgzHY1JRvFcLtQHDB
         7N+7T47t2aHnjeXsnvu7B6hS+NPSnNs3ebDyMHKy0v5Hj/TSQV3vJhy3356SnJ1qfkpL
         JbNGeoXqTgeOSHRX8bDThE31hXh14ibFAP3J5AzAoe6aHisJ/nif57zJuzMURfWilK1r
         Ri4HXekhZ+4aff4BgK09Dv3vrrTD0MJCzXoUPwmwMKPxHx0DH/rVNvX5yGgxvz9muOJC
         X1Br/KFwIVjHrU2TTaCxDbw1C3tpxF9494dR92e4Zes0gTrqSy2hNO90Ko8gO7ulxx4W
         rOrw==
X-Forwarded-Encrypted: i=1; AJvYcCUPnKfRPHolbfpS7Oeo7snHLv1ez6dHHh7lFAVvmcXxR5B8RO1qkT/VMiSuU0hS1IEvbgSE97nUSvzNcCIufw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEJMw2t2J0uX9nmXzfdO7ammIXPdT9JgjHGgJrRJk9IF2tewwp
	H1JwllQLQQnUVYEq8OOP3Ycz1XzTZsiMWBSQt9XABlJO0ZgWkq2CMOOEv5cgBv59OneloJ1/dbq
	otbCS4DzHb+u8lyhG6TscsrYqPh5QjWMwFDhGd6RtLr+fySGJuqdM1+CdMWS7uqO5Bg2UlZXFMl
	xnZDiUw6U=
X-Gm-Gg: ASbGncuaEunK21ZKcKK5rXk++VVn4bQyAAQ+AhT5ik5pbT1hf17y/EN1mBU+ItTGKKK
	d3us/B9V9N1qEKQtFltHYAV6NdsjzkvUwS2QBoBSEqMSi6SrLs75OqsIDRdzO/EDvHjsvMbEGUj
	qT987eVlQNnqgOu/dT6vSwICotvjR+ztwwI5gJQzfYWuMo+hsY6XFB9WbxjHLifdOsyMdAiWPgn
	DR/2w98gklQkx4ljgRZcG7c4+vTpunn1GR4QAzbtQnJ14Vim5BsHw6EVOmasdIvP04PpyRwZ9/o
	jxhnKVlgdRysK1jPpN8J7VkSBujwMO7NgylDTEA6I6Nv5vcnjYh7WbvP05gXHF/RoxloMXSoSEt
	Hwh4gMTnQte8uelrEgve6SkdJn30K4V8DcFwsgBsP3W/190nL/ocM
X-Received: by 2002:a05:6808:1511:b0:3f9:2fdc:ee93 with SMTP id 5614622812f47-42bba1f2b8amr5993489b6e.30.1753704317207;
        Mon, 28 Jul 2025 05:05:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHSfeWv4VHXW2+zlLwrnah8CuiseIJTrikxH8XMRdQkuCbQ7xwR1kFZq9NS64k4Bn807RS+w==
X-Received: by 2002:a05:6808:1511:b0:3f9:2fdc:ee93 with SMTP id 5614622812f47-42bba1f2b8amr5993452b6e.30.1753704316668;
        Mon, 28 Jul 2025 05:05:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63375932sm1240730e87.152.2025.07.28.05.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 05:05:15 -0700 (PDT)
Date: Mon, 28 Jul 2025 15:05:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v6 02/10] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <soz3wrbwlogzv6pi7i2cf5iq5gxhspkrti3pcxn5cdhztghwww@xxcdbp2n5cvq>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250728082846.3811429-3-andyshrk@163.com>
X-Proofpoint-GUID: aoeTgQFmy5fv65C43TsBa4n14tvwDDzX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA4NyBTYWx0ZWRfX9sJCH1NElOu6
 f8jOiPZTcH06tJCIntGXhaNfZNmVrO2bt5RAxWw24cUSD58SVVOhmgGds7BbecSRRulcLLHSNqx
 IE+G6tF77bBjSjTu5ZC1FfPt+/bv24la+DYrwObk6nnPuDG4QwjKgHJIe3qTmrt2NajnfLB906N
 lfl/+AFfwumMw6XRblFuBORlwO8nZbIdJ3/j5H4Jis8zGwWuwjeAfiXbawwpM+WXntHiVuab3oe
 j/EQIAeMQsrcBeOkxFisfZ7OKD0jQO4egU+ElWl8HiEhu94LyeLe75KS/1xXXGqCsmNm3Gcwq9o
 kpTYwRjhZ5Eb/Dm8HBP4qGczaxxDUHJFrQyzzMphICAGhz/GGqcCFl0034t6bZutR5PsPWxLx/W
 WyFVACrjNQM68K4zApZ+I658FgJha3qEHJUJ7N8rxAmsFLTePtJfIdoa91W0dFHbwSg4f/by
X-Authority-Analysis: v=2.4 cv=HfYUTjE8 c=1 sm=1 tr=0 ts=6887677e cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=rZy2__OW2t70H_ViVZ0A:9
 a=CjuIK1q_8ugA:10 a=Z1Yy7GAxqfX1iEi80vsk:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: aoeTgQFmy5fv65C43TsBa4n14tvwDDzX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 bulkscore=0 suspectscore=0 impostorscore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507280087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_050519_763290_9820C9C3 
X-CRM114-Status: GOOD (  22.74  )
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

On Mon, Jul 28, 2025 at 04:28:27PM +0800, Andy Yan wrote:
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
> Changes in v6:
> - Use drm_dp_vsc_sdp_supported
> - Store bpc/bpp/color format in dw_dp_bridge_state
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
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c  | 2094 ++++++++++++++++++++++
>  include/drm/bridge/dw_dp.h               |   20 +
>  4 files changed, 2122 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
>  create mode 100644 include/drm/bridge/dw_dp.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
