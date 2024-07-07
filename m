Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C280AC3DA41
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jul 2024 21:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0dPv2S878ruBnaiQMkOOGR0XDy6YGPipozw8iofbAc0=; b=FHS+PaI/dvcs3oxrSrH5wdUgzh
	1rsD4UI22N60GOgFsz71TjDxU/5SfwjwXtSWJdWfabc4goA4ECZ9piTAkd0FmOyTzAE33PKD0/CGq
	+EX4L7VLsL5EmyMinxmnEs90eHN29n2JYsWB+A+pKz8GaD2FMSXc5K5LXUCtVPI4JYPphVG4HPrry
	hf5omH5+ZbnpQd6AtOr1nIKXGDBxsbgpituyQEkBeU2+i18Jh9qTtOBIe08DdWPXk3xZlegesumd+
	0wOej09Ww3ppu5zEwjoIARQnA9bCqI0Hg618RCeQHQcSwcu8o+Pcgdwff06PmbbySHt8QJJEOk8/Y
	DxSSRyFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQZMN-00000002IPe-382p;
	Sun, 07 Jul 2024 21:23:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQZM8-00000002IO2-1ARp;
	Sun, 07 Jul 2024 21:23:38 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720387411;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SbDqxtlfTjjwVsq4VbK1kprB7ccA8aGj5XdW5T2ZQN0=;
	b=AiZRnWd13UqUtBGbzOOOmxVrw18Du3ZsLIh18sIWWJ3dLfeQnYX/mSTxlB82iPD72aj13u
	ZRO1yTm2orjUxDMYs1SfVQkzR91lPZiwfa/WYmKVGBmV71PTBr43Ykr2YwHmfVqcD9j7Yv
	13gSdaPo3OsFbiWDs0BGnsvjPqMLWHI9pI59I5WJTweqXKxS+zV/SSX2X5NXBoiVPdbCF+
	Wiyw0x0TVddnoIQHDOCv1sTTUBtlA1w+7SO1xM59wtOpkMKcIwG94K+boZLmpJRFFoZiCW
	pyURBk+bxbHU/zFTpEI1KA5dzpIN25LI0lkhMMbkxWYrcyUxna5CA+ptF+Fmqw==
Date: Sun, 07 Jul 2024 23:23:30 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
In-Reply-To: <20240704191919.38856-1-didi.debian@cknow.org>
References: <20240704191919.38856-1-didi.debian@cknow.org>
Message-ID: <31a86ec073e1de9e0241845f8783cd6b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240707_142336_809370_3D3953C1 
X-CRM114-Status: GOOD (  19.01  )
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

Hello Diederik,

Please see some comments below.

On 2024-07-04 21:18, Diederik de Haas wrote:
> Pine64's Rock64 was missing the avdd supply properties on the hdmi 
> node,
> causing the following warnings:
> 
>   dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using
> dummy regulator
>   dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using
> dummy regulator
> 
> In the Rock64 Schematic document version 2.0 those supplies are marked
> as DVIDEO_AVDD_1V0 and DVIDEO_AVDD_1V8 respectively, but in version 3.0
> those are named HDMI_AVDD_1V0 and HDMI_AVDD_1V8, which is a bit 
> clearer.
> In both versions those are connected to LDO3 and LDO1 respectively.
> 
> While the DeviceTree property is named 'avdd-0v9-supply' the
> 'rockchip,dw-hdmi.yaml' binding document notes the following:
> 
>   A 0.9V supply that powers up the SoC internal circuitry. The actual
>   pin name varies between the different SoCs and is usually
>   HDMI_TX_AVDD_0V9 or sometimes HDMI_AVDD_1V0.
> 
> So the 'vdd_10' reference is not an error.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

Already verified the above-quoted statement from the .yaml binding
in the RK3328 and RK3399 datasheets.  Thus, hoping that you agree
with the first line:

Helped-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>

I'd also suggest that a brief comment is added to rk3328-rock64.dts,
right above the "avdd-0v9-supply = <&vdd_10>;" line.  Perhaps something
like this:

> +	/*
> +	 * RK3328 requires 1.0 V on HDMI_AVDD_1V0, which is HDMI_AVDD_0V9
> +	 * and requires 0.9 V on other Rockchip SoCs
> +	 */

> ---
>  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 229fe9da9c2d..90fef766f3ae 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -154,6 +154,8 @@ &gmac2io {
>  };
> 
>  &hdmi {
> +	avdd-0v9-supply = <&vdd_10>;
> +	avdd-1v8-supply = <&vcc_18>;
>  	status = "okay";
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
