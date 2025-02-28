Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C349AC282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 16:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fN6AtIc5hvkIJc4tb2YdTK8AXw6i0Z7nxs7s8nhn+UM=; b=Y8RuDwpdB/wlWrfShTdBlFT+3r
	ttK/GuXGemmCdRtMkEaUZH9LVBfPYxLNoSOkyQZOMZ1gFtC/XOt3noWhOm8Oh/sgYbcCQEZMwW3xP
	5FH0418uE4tMez9sa163RjC9U1/q2dStphh63lrJ4OQnebxDUr+65yx1FSCtxxqF7Q99XGsScIwlf
	yD+pjdMjnIJQau7RNdUrhMSAxYHH2FMnLQjcQC1dMmPSYtGDeeyuFmOFfWUU4yCPUYmkvH/VTRPOh
	Q0Xlu3frHUU32P8mK6LZBW3PgFfGqtc9I0c4eaw83donni+/rPpAKZlRaH5wRIA2cvbmlnPd4/2VO
	D2liPZkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to2oN-0000000BaSq-00Lz;
	Fri, 28 Feb 2025 16:02:03 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to2Z7-0000000BWlr-2GwK;
	Fri, 28 Feb 2025 15:46:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1740757575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=luIE0Lf4JAHBS8LhKxuyQef8bCGyud3N4ZNDHk+iEL8=;
	b=Jvz7yJ452lR8t9YC1wIIxBp7ro7I7QTTxUlXDF7Oox+l6ZnknysKkZpnv7UnuJeiGoDQz8
	gkH3gqeNzEBGoIa78J7NYQi5Y3bW+sYOl+EUvtzo+BsbBQ50iuINXLKEeztXQRPDCDOf0w
	9WL/Mi7yluhc1X5awOdpq2CsCQqI+yEI5ykdtyzUie01AY7O62Grd2XFGSKPrdu4HO/Eo/
	N8SMvn73edg3RWBySKjupI+YBBcGkmS0WiODzMiYvunvy7WO+lLBWC0iS1uDbvYjHjSBAC
	J38ps6i8mBWDAVMuLu0b7WQoQ6QIaaiNseLdw721m133y0tqGLRzl8/av8TeVA==
Date: Fri, 28 Feb 2025 16:46:15 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Olivier Benjamin <olivier.benjamin@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, oren@taumoda.com, Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 0/2] Describe the cameras in the PinePhone Pro dts
In-Reply-To: <20250228-camera-v1-0-c51869f94e97@bootlin.com>
References: <20250228-camera-v1-0-c51869f94e97@bootlin.com>
Message-ID: <0338826971bfdd5b771bc1c6ada795eb@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_074617_733328_ABFC46E5 
X-CRM114-Status: GOOD (  14.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Olivier,

On 2025-02-28 16:19, Olivier Benjamin wrote:
> This series adds support for the Pine64 PinePhone Pro's rear and front
> cameras in Device Tree.
> This is based on some of Ondrej Jirman's patches hosted in his tree at
> https://codeberg.org/megi/linux, but I have also fully reviewed and
> re-written the code from the RK3399 datasheet, the PinePhone Pro
> schematic, and the IMX258-0AQH5 software reference manual.
> 
> I have tested these changes on my PinePhone Pro and am able to take
> photos from both cameras using libcamera's cam.
> 
> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>

I'm afraid that you haven't addressed the notes from the feedback
you received earlier? [*]  Also, this should be the v2 of the series,
which should contain "PATCH v2" in the patch subjects, and provide
a summary of changes in the cover letter.

Or, did you just resend the v1 by mistake?

[*] https://lore.kernel.org/linux-rockchip/5127541.31r3eYUQgx@phil/

> ---
> Olivier Benjamin (2):
>       arm64: dts: PinePhone Pro: describe I2c Bus 1 and IMX258 world 
> camera
>       arm64: dts: PinePhone Pro: describe the OV8858 user camera
> 
>  .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 138 
> +++++++++++++++++++++
>  1 file changed, 138 insertions(+)
> ---

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
