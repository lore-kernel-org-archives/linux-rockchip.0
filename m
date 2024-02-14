Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5B9CC4829A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NdsyA7qXN+hYAyBR6cVRI40rpLnUmgT526n9jZa+Vd8=; b=CrT1sQu6oFV5+NEPuWtm0DhCzj
	vwpLr4LV+tKotTvVoCwvsYO8z8oPwbj/vtp8lp8Dfn9rU2yOTOMoKzul2q05jZOfSpF6vtGW87xyg
	CXlBpDZKeo9JKeqZe2nmc74SlMuuShHijQFbSXbpIUco2H+jepn+GovAloBLmcDszUTiPiORpOuZC
	NHed/V1mavnTTOoyG9yZduOkdhCEKbgvxDHM6AG7btPvbYTwEIksQNKaDV4hoH5AFuZBkrC1ZpeA3
	WwsSlYPpDYaAW26oXlow73up4FyDIBgCF8XBaAK//PX4R14rdx8p9Re0Lmnq4AvK2/9WdhsyEVwzv
	jDWfxpEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6fH-0000000BmVF-3bB4;
	Wed, 14 Feb 2024 04:14:31 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6fD-0000000BmTl-2wbz;
	Wed, 14 Feb 2024 04:14:29 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1707884062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+eiBT625I2qlHvYLLXothJ7tnuzCBy930SrRvWjZiPo=;
	b=IBBinqAtdzjnhrWHXDlV6WWsjZI6lk67YJJaW7+e/Padr0qOxM3htyl2YEzq6lLLCl6Qvl
	MIJHgmi3mR91OZXfDyjcRThuRIymA499ySpa8osdqDIfd6lxzJ0w0ff57bFgkczwTfwXeL
	r/IZDnEao6NNlMzkjiVT1NB19AmYLj+LXwIHPd66tTse6AZ52+2xZtpMm/uWISCn3wEzZN
	SnKa1YcGaQISsQ4VngTtCs6/7cG6OzMYcE+VGuJTSeHtwKgl9z6eKUFAt/qfaMPK0wLpNM
	Rev1YR2x11cyCPi6/kTxEBdC2x2W+AygUOjAUJE+tr0iN70nc6GJ+MLqtaSg9w==
Date: Wed, 14 Feb 2024 05:14:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, Andy Yan <andyshrk@163.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chris
 Morgan <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, David Heidelberg
 <david@ixit.cz>, Heiko Stuebner <heiko@sntech.de>, Jagan Teki
 <jagan@edgeble.ai>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, Tianling Shen
 <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Fix vendor strings on Rockchip boards
In-Reply-To: <20240214040731.3069111-1-tim@feathertop.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
Message-ID: <c03220db663279c9e83bab81f3d829e7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_201427_935672_D278811F 
X-CRM114-Status: GOOD (  10.59  )
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

Hello Tim,

On 2024-02-14 05:07, Tim Lunn wrote:
> A couple of rockchip boards incorrectly list their vendor as Rockchip
> when they are in fact not manufactured by Rockchip.
> 
> Fix the vendor strings to correctly list the manufacturer

Just checking, have you verified that the old, incorrect "compatible"
strings from the board dts files aren't used anywhere in the kernel 
code,
such as in some drivers?

Otherwise, for the entire series:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> Tim Lunn (4):
>   dt-bindings: arm: rockchip: Correct vendor for Orange Pi RK3399 board
>   dt-bindings: arm: rockchip: Correct vendor for Banana Pi R2 Pro
>   arm64: dts: rockchip: adjust vendor on Banana Pi R2 Pro board
>   arm64: dts: rockchip: adjust vendor on orangepi rk3399 board
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts    | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts  | 2 +-
>  3 files changed, 6 insertions(+), 6 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
