Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1501EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 14:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dX9BFw+NmXUCiNSnSrvWP8nuLIn5q4FyH9+tP+zf9ks=; b=f5WttyqKDQrkMF
	O1J3rQWCRsyJvIrznlw7Tbj9LjylyQd/6lZ+Kw8eHz8IWr24tG9IzaG1FaNvZWF9zOvhYe0pwBEx0
	vABXduTES0ZLlp8y/p9nvY61R7sXlkqZyzo3je992MkyBas/FMx4IPmXBKYihCyBGwBdw+c6wPUgN
	1XZUutERwI7qA0Ip5tfcaoIKK9TiEzEvlbGFrGARsp+eET3RSiDPjJXKQyA0d+Cbkb4IR6p4b6dSW
	V5P7xCIdYgc+giVA08LCuiYnRhMs6O9UTO5lxLWJ/rWLMGli0g3DzklXl3UsGW8JW8+48qU6gJkyq
	VBw1c33RTZHvYrzwxyDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrln-00BsBG-1Z;
	Mon, 10 Jul 2023 14:21:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIrll-00Bs9w-01;
	Mon, 10 Jul 2023 14:21:42 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qIrlf-0001VJ-9u; Mon, 10 Jul 2023 16:21:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org
Subject: Re: [RFT PATCH v2 1/3] arm64: dts: rockchip: correct wifi interrupt flag in
 eaidk-610
Date: Mon, 10 Jul 2023 16:21:34 +0200
Message-ID: <2762773.BEx9A2HvPv@phil>
In-Reply-To: <168899855919.1747213.375800621361302991.b4-ty@sntech.de>
References: <20230707063335.13317-1-krzysztof.kozlowski@linaro.org>
 <168899855919.1747213.375800621361302991.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_072141_042352_73895BEE 
X-CRM114-Status: GOOD (  14.68  )
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

Am Montag, 10. Juli 2023, 16:16:20 CEST schrieb Heiko Stuebner:
> On Fri, 7 Jul 2023 08:33:33 +0200, Krzysztof Kozlowski wrote:
> > GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> > These are simple defines so they could be used in DTS but they will not
> > have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.
> > 
> > Correct the interrupt flags, assuming the author of the code wanted same
> > logical behavior behind the name "ACTIVE_xxx", this is:
> >   ACTIVE_HIGH  => IRQ_TYPE_LEVEL_HIGH
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/3] arm64: dts: rockchip: correct wifi interrupt flag in eaidk-610
>       commit: 8183bb7e291b7818f49ea39687c2fafa01a46e27
> [2/3] arm64: dts: rockchip: correct wifi interrupt flag in Rock Pi 4B
>       commit: cfa12c32b96fd5b12f77d880d6a1ddd2a502756e
> [3/3] arm64: dts: rockchip: correct wifi interrupt flag in Box Demo
>       commit: 2d6f7e3938a7aba154c8e8afaddc8b7f1e0a1b56

we got one successful test and all the changes concern broadcom wifi
modules, I assume that this should work on all of them the same :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
