Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AD26C87FCE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 23:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JJqa7fXa3A9BTPeD+oJVx+rqYRzxh/ykHlqokM3GLg=; b=nVZxyNrLu9DKme
	k9Fs45VHuc+71P+m4cPQibPDUlIy1Vihf4Dol/rjDecTaxYzxBLTwILeNeZSeQTeQnZ6Oy3se7xu4
	A7F3meVsUggPyNJfdC3xlvCM9P1Xrscrv6GEt63ViveMwSj99kzPFXUgpR//DyxA3o52aE+aNVuRE
	pklp68kFGT4fjwGePSJCPSON1tnRzZ9cgzOMKKSnkKjSBnI7Af9FBvoE13HO50cUCKVUq9FSBG4MP
	2wYIFumbPAHl+lqgxn1iUVNWM7iVQ+rcp/DgbNqb0qr7bCAMELFuRqB6Hrz0BXKPgQ3jSAknEFLUK
	nKyvYJQ1Kilgs8Tkhk6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufROO-0000000Aooo-1Rx0;
	Fri, 25 Jul 2025 22:59:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufROM-0000000Aoo5-0fxZ
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Jul 2025 22:59:55 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56PJGUMb004805
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 22:59:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YIKA470xrZiayxUPdNqdVwH4
	9IURz2Ovf5lBbRciHu0=; b=iAd7xqbV3jp6RDE5Fx3/yt4s3TANlAx+gbRcqWdJ
	2ZuEzjtHfbMvxgU/plgYgmHf9UF9xaDloJChlIOZyQsSL6kljdlyrDwRRmuKl0LK
	xAjr8q/wi35M4fd9C7A9qG2/6pN3f+4WQfrMOYP/YvOAcPNruAeZXoMjGijukDzu
	iz3WtBbeOw/zSoJ2+eZsubfUVApOmXDNdETD55wGVte+/lQHdRDB7Rbjf7zFPp7I
	9dnMATe9MfiTb8BAoWoLYsK7WkCYf7E1VBZkqrkfq/qeV7lEwnfYYhGBY/wt1BLf
	l+n1UWd0MnYHZ9+7x1e3KHJ0eHKzYXctMIU4WqKLFnHjiQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2kushc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 22:59:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fac45de153so40604986d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Jul 2025 15:59:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753484392; x=1754089192;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YIKA470xrZiayxUPdNqdVwH49IURz2Ovf5lBbRciHu0=;
        b=cJplrtC3CC+CDnonQNkQuhrDxTFyrG8GgM7LZtpsZ4ddXLxsVZ7/neZP7e/MGQTjba
         Nu20sH+/RqJatMhnEuChHHaz86gh6N7NrIh+iMdLAThlgltag775e854TIzApPrlsaBf
         CMsHI7vr8w+BJ1OWgtifhwMLHsF9fRzceQVfu6MvcFFlt73N2KJwEZ9/y0ZX7U2b05s/
         /Ve07O+2NpX7DxiQKRRjFZROPI6hyAKIcHi0CNPFEBH+4tfdSQza3djFGOKeersELjdd
         p7JSEDPnSAk6O92FzCKEQ1ujfjLXHl2sHgRYKQhWVBDyzX/n8cEg7XMRGhW5EjFtBX8g
         5FmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFH7Fyqkef29kHf80umpWLLJftvj6e+Xk/GBcLW7+GCZt1m9F5WfzbI7QFErNSONP5x7a0X+dgYmeVLNRGlg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHmGHfGAZc0PNeoL96ZS7Au5dVKb4mqPktJOP7GMQjINqnePJE
	U457ENN6AYyTVzTMrnWUgC7GFEZ4yiH4Mr2DsgvL85lH2jzb5Di9P6UlfwmVYkfjUsFJ0igqW8U
	JNceSIhsSbcU65o02syHWTa39Fb1Y9hm3VNtktIrIA9YL+lpHziUnEYd832LVdLMlhDzBobntGV
	0=
X-Gm-Gg: ASbGncvtDwPIy0A64TqthU6vKXE6QCqWVBhPFTWY7btFxmwmRmI4rsB9iC5HjnimtZV
	xeHf/5xmNG4UUsnDNiNsXNM2/EXGVcruNVY7o+T+Rt6lDUYzedlle/b//MoyjzFDWq6Z8fRLhX2
	nvGkzfisNlAKEbwvSPR1Lh+kHBn/P+MhV0cMcZhlQsG5mwoqab87FRpK5tZqBQM/2pbr3mpqluZ
	/zBwi5Bk325qgrI0APz5LEoVtFlYfoJa9gwmfcJFxEbTn9I9A86xjYsGBqfe7dNn2rtyGFL2ljV
	k9QYSzatR38Ras6qHdOfwNhHBetiw53fg5DSstm/mL1zGhBt3zn5VM/krRcty89mIrwxN3FIxW7
	HY6/GAqIyOHF8AXHQy9PSc6JIRSGoWVZ9IiVct+p7PtwY0NzCbmpv
X-Received: by 2002:a05:6214:2021:b0:702:d6e6:aab8 with SMTP id 6a1803df08f44-707205d08fdmr50274636d6.38.1753484391805;
        Fri, 25 Jul 2025 15:59:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiRRVVhBi4an9ryBUjXC1SCWBg0iBp7Xv7AcbxFmoNVWkRbiK75bGzcC12xTzL/6iwaeU2SQ==
X-Received: by 2002:a05:6214:2021:b0:702:d6e6:aab8 with SMTP id 6a1803df08f44-707205d08fdmr50274156d6.38.1753484391196;
        Fri, 25 Jul 2025 15:59:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b63363b6csm165468e87.98.2025.07.25.15.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 15:59:49 -0700 (PDT)
Date: Sat, 26 Jul 2025 01:59:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v5 02/10] drm/bridge: synopsys: Add DW DPTX Controller
 support library
Message-ID: <bznw5qg3ag7rugqrvoxtqm4njrnxclbohzd64jajhspe6w65w7@ya4wpxpibpli>
References: <20250716100440.816351-1-andyshrk@163.com>
 <20250716100440.816351-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250716100440.816351-3-andyshrk@163.com>
X-Proofpoint-GUID: NFjQec9A0E6MHaOd_CgfzwuQn6XzNZ61
X-Proofpoint-ORIG-GUID: NFjQec9A0E6MHaOd_CgfzwuQn6XzNZ61
X-Authority-Analysis: v=2.4 cv=QNtoRhLL c=1 sm=1 tr=0 ts=68840c69 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=r9cyQ1YxkPkt54pAdh4A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDE5OSBTYWx0ZWRfX4X40OyaJ9LwT
 RSyhpPjJKPN0KNJk+e16DtT3fUUpfIgbvl3FcM4ERqaShpoo2T+zp60nY6BYJSvdw/tYaJkbVMt
 JR8MkXjFN/I6d813bwYOUYoBEqdLcQfNtmln+MYG7qIE+B5my6TIRmWAeC0vYoCt0U9rr8epH3M
 wFWSNVOxQ0viEalOKFTgQi853085DGDP43C7ZQaWYDmhgKgyptaKzSWjEUaGmld2L5JG9PArhLC
 uw8CoB7tjA7uC3ba5ZMBlwtCrN3xmxCwHI3YVFob8+0lHlynUwhjMeX1KXjn3WkJ100jiq4zKZG
 wiiWdYirNFSRbDP7SwaJccd1Z+FLVVOhHFcSEUWfC5W39W3SNoh6I0Z8zGOdcay+cara1pUnDhc
 rFkgVBU1ohpauLaBTu6bNEACwkw69MLfxva/t7HSRHA+5aLc7S0ca0ld8WICPKGwW5vCkPzn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_06,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=999 bulkscore=0 mlxscore=0 suspectscore=0
 spamscore=0 malwarescore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250199
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_155954_220498_118F0651 
X-CRM114-Status: GOOD (  30.42  )
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
> 

> +
> +/*
> + * Limits for the video timing for DP:
> + * 1. the hfp should be 2 pixels aligned;
> + * 2. the minimum hsync should be 9 pixel;
> + * 3. the minimum hbp should be 16 pixel;
> + */
> +static int dw_dp_bridge_atomic_check(struct drm_bridge *bridge,
> +				     struct drm_bridge_state *bridge_state,
> +				     struct drm_crtc_state *crtc_state,
> +				     struct drm_connector_state *conn_state)
> +{
> +	struct dw_dp *dp = bridge_to_dp(bridge);
> +	struct dw_dp_video *video = &dp->video;
> +	struct drm_display_mode *m = &video->mode;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->adjusted_mode;
> +	const struct dw_dp_output_format *fmt;
> +	int min_hbp = 16;
> +	int min_hsync = 9;
> +
> +	fmt = dw_dp_get_output_format(bridge_state->output_bus_cfg.format);
> +	if (!fmt)
> +		return -EINVAL;
> +
> +	video->video_mapping = fmt->video_mapping;
> +	video->color_format = fmt->color_format;
> +	video->bpc = fmt->bpc;
> +	video->bpp = fmt->bpp;

This unfortunately is a bad part. You are updating your bridge structure
from the atomic_check() callback. There is no guarantee that this state
will be applied immediately. In fact there is no guarantee that this
state needs to be applied at all (the state can be verified w/o
comitting). So, these parts of dw_dp_video should be converted into a
structure containing drm_bridge_state. You will have to update state
allocation accordingly. Then you are safe to touch and change those
fields in .atomic_check() and use them in other atomic_*() callbacks.

> +
> +	if ((adjusted_mode->hsync_start - adjusted_mode->hdisplay) & 0x1) {
> +		adjusted_mode->hsync_start += 1;
> +		dev_warn(dp->dev, "hfp is not 2 pixeel aligned, fixup to aligned hfp\n");
> +	}
> +	if (adjusted_mode->hsync_end - adjusted_mode->hsync_start < min_hsync) {
> +		adjusted_mode->hsync_end = adjusted_mode->hsync_start + min_hsync;
> +		dev_warn(dp->dev, "hsync is too narrow, fixup to min hsync:%d\n", min_hsync);
> +	}
> +	if (adjusted_mode->htotal - adjusted_mode->hsync_end < min_hbp) {
> +		adjusted_mode->htotal = adjusted_mode->hsync_end + min_hbp;
> +		dev_warn(dp->dev, "hbp is too narrow, fixup to min hbp:%d\n", min_hbp);
> +	}
> +
> +	drm_mode_copy(m, adjusted_mode);
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
