Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FF8CD5BD0
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 11:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXk9sNTNGB9VYEPNi2jecW40/f4E7DaGTgE7bBF6j/g=; b=3CKPWeQzs0Iw0y
	hchALYS82D8JXu8SPBgSV26H+mBg1FprnwyYAziCdB8rvot61utFYhXoURPMrfZDcCc0T3/420FAi
	F1arY0/3ovrjKZpqrWZGbj1FIkdPV01NvSPZPk795gCEKm1ojoLL+u4EeYiFsBH6tyL0DWtkUVqQO
	J2GF/3gOr3+kysGN7uLCBovuvYFZd15OFBha8/VqOU3EoHKGCVtBYZs0UyRx043di5Dx5HjXPnkha
	zW+RZmfIGiIFJUL8t4B7NCKXFQYOW1Zko1opiVGouCQi4X7zEJwQH243f32MdLCfu4d1kBA8uNzSE
	I2MZobcvidAAR/y2WvnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRTFm-0000000H3Kb-2zPV;
	Mon, 25 May 2026 11:13:50 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRTFk-0000000H3Ix-1cZ0;
	Mon, 25 May 2026 11:13:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 83B9043EF2;
	Mon, 25 May 2026 11:13:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B321F000E9;
	Mon, 25 May 2026 11:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779707627;
	bh=NXobWrGdt7/K85JfkhbiE1Xx6KirCAh53EJ7f9blg18=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=MwGjr4Ae3OPcbzZnE8QRWERBbD6DYQu8iwXRrVD5GSs3vkDaTTz7KBGzwdO/LgoBC
	 +i4+Ax7paoavAuTFOW6nKtToXREgoQUeWie3rTnB+xTpntqNuce0VO8t0gSGYT1XA4
	 PFFV01ZTwMnbZw3rv8x32LDiJTQUyJ264oKnyTHgj95MOtbObrFdOYOZdb4Iptgz8R
	 WjH716z9j8wUz+aFOGsESfBvdCxMZrFKA9bCQPNbfz0cI2MXvte3/7ZXLhBj8Mg/UB
	 k6gtNJoOkMqcv6Kdx3xYmikEnwVTEO/fho/Ja1wPW3HCOCUsmXJSc/38hoQ3ZOwejS
	 uKXdidvqYPhzA==
Date: Mon, 25 May 2026 06:13:46 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260525082033.117569-3-damon.ding@rock-chips.com>
References: <20260525082033.117569-1-damon.ding@rock-chips.com>
 <20260525082033.117569-3-damon.ding@rock-chips.com>
Message-Id: <177970762578.3598344.16093942078468322022.robh@kernel.org>
Subject: Re: [PATCH v7 02/10] dt-bindings: display: rockchip: analogix-dp:
 Add per-clock descriptions
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_041348_442987_2303ED6A 
X-CRM114-Status: GOOD (  11.96  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Conor Dooley <conor.dooley@microchip.com>, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, dianders@chromium.org, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 25 May 2026 16:20:25 +0800, Damon Ding wrote:
> Supplement dedicated description for each clock in the clocks
> property, clarifying the function of each clock input for the
> Analogix DP controller binding.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v4:
> - Modify the commit msg.
> 
> Changes in v5:
> - Add Acked-by tag.
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml      | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml:33:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260525082033.117569-3-damon.ding@rock-chips.com

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
