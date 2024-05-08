Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C520C19F4F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 10:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T2NImlQswDbxQbqjEm5Oa1yppZdFnAUvG2zGsiVHDb4=; b=Vdl4Ex39UaBPq4PUrcDkoZa7D4
	xY3yAYVLpUn1GdTSEpbYDlyZvFhWFtlFYcxZs5B+QubXCjrKUokOmHS2OwB56K38QgI4Gjurd9o22
	rGhP3QGqoytCXQ+JB7y15mWZPN32v2/rT3AYE2srfWkw35pc4k0+GOIPEs/zdcZ84jZQ7rUTuzK1/
	Ne9VO3QVKocqiMe5azpFHA4qn2dhSYz5gmEnfrHkhd+23RhOXmsy0iT/pXAHikA8N5Szwox/PBsg4
	eOboUEzqJfhw4c/sm2SGmJxw8+0fTN4bN//PsWAmKgCc32sEBxFlQHpFgcqqbPsm2H0K9ZfqiTKw6
	BTygiJrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4eyh-0000000F4rO-1NeP;
	Wed, 08 May 2024 10:56:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4eyc-0000000F4pm-3wAU;
	Wed, 08 May 2024 10:56:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1715165799;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q1YJPcw8u82/f0e/8H7dqvmrq0bVC+AsMym4hYetprs=;
	b=yClLumxEuEZSr2AK1nmpLpBHXI0d3utHMZ9Mqjy8ucEN5CqY58SmWbh9M8LjTSZDv3W5r+
	DJI9/oyRTpecG7o5y2ZDDvdB0AUYGMoRL7g83lIMP031IlCrwNYy4rX/W1WeneCLF/qyMZ
	nNCoc8cl6xQ7Zhh/5iPFflSwGGPBYJIsKA6RlVT1CNOWTdgwi+bSVBQz9ntBHwVDnjDiSM
	8EBrXUlTlXgqW97DXwpdiYCjNaIubyxywfkhRnl42Az6eH1ZHsOWvnDzwbND3Q2hwdtp0A
	NEB5qdJ7DxxatcLTRBBvJtakfaV20pszJEYREsIcIngkzdBA3zXLt96YV4go9g==
Date: Wed, 08 May 2024 12:56:37 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>
Subject: Re: [PATCH v4 6/6] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588
In-Reply-To: <a729c591-694f-4bed-bf09-b4430381766f@cherry.de>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-6-271023ddfd40@gmail.com>
 <e220061e-0bb5-4fa4-9a91-aefd81e6636c@cherry.de>
 <CABjd4YweBc_0d=ej-=0o6FPdHxh-i3FSbSp5bDs9cZcmosEMeA@mail.gmail.com>
 <a729c591-694f-4bed-bf09-b4430381766f@cherry.de>
Message-ID: <757286c60ea16cf5c68517b3d098047e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_035647_330087_A3A0CA22 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
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

On 2024-05-08 12:50, Quentin Schulz wrote:
> I'm surprised that we removed the lowest frequencies at the same
> voltage, are they not even allowing us to save a teeny tiny bit of
> power consumption? (I'm asking because I'm pretty sure we'll
> eventually get customers complaining the CPU freq doesn't go in super
> low frequency "so this must be a way to consume less power in idle!").

Same-voltage, different-frequency OPPs are seen as inefficient, although
I don't share the same opinion.  While the jury is still out, perhaps we
can omit them, and possibly add them later.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
