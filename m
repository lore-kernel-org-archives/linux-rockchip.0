Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 549FFCD5BB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 11:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g037DiaLVWasczKFsyn/y7qjOr4nSwd6HBq9y0GoVkY=; b=XWvzGIghm4v+vo
	sijOPMI1FjskFeuZqiMlCxr6sL/NYPw67mm9PZeaZz416ukYwYC26wpSCL1Jd58aXA6llCObGTdUj
	ZblUt7waP4JP1Y4WNC9sZw8IQOUxEsAwbUEdXgbzJ/kGkF2IiwtM0fL1TsnYTukUKyYCfgDO7Y2VF
	JUVW234HKCqmVF6FOOtSoAbtmzE3xRVipsxARj7merNdZdfZvKMWSY1LjNxlF/bpdoOQ5bnhsIUS6
	as5VVHjd5LR93AbYIvOcxIb05E3JN7IUEhR68AhoLnOdPprUAsRVauEohzc+0w9RdcR4+Ui3CJbGD
	xvYoIPHWxmt0txDrk5eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRTj1-0000000H7SY-1Kze;
	Mon, 25 May 2026 11:44:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRTix-0000000H7Rj-2OHU;
	Mon, 25 May 2026 11:44:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BD5E843C36;
	Mon, 25 May 2026 11:43:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 837751F000E9;
	Mon, 25 May 2026 11:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779709438;
	bh=OV8llzBqjiqPgHPyVfyHyKR+rTQay3cResWTmqgsBoU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=CqBPsuQVdqmZNO4qG+nPYLi2uJ7iBJZ7t7JLzZJjZGabsvNGC1Vx64MBqJ30p278P
	 Dt8VKhmS2wGvt5ZXtswAy1fAkrzcY/AAlqqK4QL49xXFLdjqNSjijQc6A4HLLkbVgt
	 bDtcaPniiG0C40p9to1lxR6X3cGTNyCmgWrm8pdqCcMS6i+RjVg/9Ra7BRjyAr4FU7
	 bYdsf6UKQUvxWzxrCkJchsQTfKRJ7eHXj+o68ePl/43aOPuYT7aS6lJjhMAyHqgm9Y
	 PlnmVFMCO89sU83O19+vspcTKDm6x+d/GX+G0/CifqQxrgw2ncwfVA15a0M5fOqUb/
	 1C02oIxjQp8ag==
Date: Mon, 25 May 2026 06:43:58 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260525082033.117569-2-damon.ding@rock-chips.com>
References: <20260525082033.117569-1-damon.ding@rock-chips.com>
 <20260525082033.117569-2-damon.ding@rock-chips.com>
Message-Id: <177970943805.3630512.11044367202921728726.robh@kernel.org>
Subject: Re: [PATCH v7 01/10] dt-bindings: display: rockchip: analogix-dp:
 Fix hclk as third clock for RK3588
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_044359_648608_C2DF6B38 
X-CRM114-Status: GOOD (  16.13  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, dianders@chromium.org, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 25 May 2026 16:20:24 +0800, Damon Ding wrote:
> RK3588 eDP controller requires HCLK_VO1 to access the VO1 GRF
> registers and enable the video datapath.
> 
> Previously, the clock was enabled implicitly via the 'rockchip,vo-grf'
> phandle reference, which allowed the eDP to work without explicitly
> managing the hclk_vo1 clock. However, this is not safe or explicit.
> 
> To make the clock dependency explicit, enforce per-SoC clock-names
> requirements:
>  - RK3288: 2 clocks (dp, pclk)
>  - RK3399: 3 clocks (dp, pclk, grf)
>  - RK3588: 3 clocks (dp, pclk, hclk)
> 
> Do not reuse the 'grf' clock name for RK3588 because it represents
> a different clock with distinct control logic:
> - The 'grf' clock is only for GRF register access and is toggled
>   dynamically during register access.
> - The 'hclk' clock controls both GRF access and video datapath
>   gating, and must remain enabled during probe.
> 
> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add support for RK3588")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Modify the commit msg.
> 
> Changes in v5:
> - Enforce the correct third clock name on a per-compatible basis.
> - Modify the commit msg simultaneously.
> 
> Changes in v6:
> - Expand more detail commit msg about using hclk instead of grf clock.
> 
> Changes in v7:
> - List all valid clock names at the top level, and constrain the clock
>   count for each platform with minItems/maxItems in allOf.
> ---
>  .../rockchip/rockchip,analogix-dp.yaml        | 34 ++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml:30:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260525082033.117569-2-damon.ding@rock-chips.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
