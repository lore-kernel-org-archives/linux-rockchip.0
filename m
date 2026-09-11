Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D735FC88E4C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 10:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDHvVvKd8JvL0rI2EPmJkNchaixa8KXauNYrYUX1OcA=; b=zsBTmw71S1z3eb
	e+XQQ7cG1Lo/IzF7E+b9ab2F6fZYSGrP/wWXGjyty+JvY1C6qoOu+UCBeiPvvnnZliZyv9A7VfEyB
	ewATEyO9JIAkoMJF4WbeND1KMEbwKvN5QUN46WefzHEoUO2Ldd8Ol/jpQIGciKNix6Xie5AIYs2W5
	8ch6T5EKuSqjLZemwq4uRcJCeiTQMNMymui+e3AYiFAUKFxnLIRk3ZQsWhRA0HV6596BELUTZ9TTf
	f9evqcRlyw7WEIeQe02BawqSdTqc42JbdMnqSyNXTK5WgZpWtiXEcTpuNESW2uA9EFjbER2LXRDlR
	NSqJz2JiPGFfRtOsPXqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4yDb-0000000GKw4-41LV;
	Fri, 11 Sep 2026 10:10:51 +0000
Received: from mail-24424.protonmail.ch ([109.224.244.24])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4yDY-0000000GKvI-0YW9
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 10:10:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1789121442; x=1789380642;
	bh=TR16N+4ADKrFb2rQCDGPtxGouDfb08VqJfQdDPg1AHY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Z5RSvMEKdVV48+7XYNH7tcrORPbnewIZTKfKlcC8ybImIlghjfTx6vAJeaaBCdEPh
	 RDotQMQQWKj2gLXqU05EyW+lqe6P7gWsA0WihbKJotPYk9D6XyvFD9U8UP4Oj58lVC
	 GknWEAVeXUUICmnAdU2DNwH/4soaNdTKigYLIgaZ3ZzFU9vDPxAhRNOVpzl7M2knZA
	 IhUySoVrKsiyiYETYgbywxlwzRz5REjbkTGrUvhm9SU/pCZxiXkjwEm0L6/ETlA6AS
	 mgcnWTr5Nb+bWEPJjwBPIEvRjFEl89w4eqxuCau7D9FoiCd6qPWmyJKy7eO8F7H4Gb
	 4YYsKu1TdHMQQ==
Date: Fri, 11 Sep 2026 10:10:37 +0000
To: Chukun Pan <amadeus@jmu.edu.cn>
From: =?utf-8?B?5a6J5a65?= <HystericalDragons@proton.me>
Cc: Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "diederik@cknow-tech.com" <diederik@cknow-tech.com>, Heiko Stuebner <heiko@sntech.de>, jensen <jensenhuang@friendlyarm.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "jonas@kwiboo.se" <jonas@kwiboo.se>
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: Reset the NanoPi Zero2 PHY from the MDIO bus
Message-ID: <8wGuvZ3pQ9BL5NIu1j8OzFUTjHePGJcrftcKEe0xkosyORLPJUmdHI7nOCC8o187x1s8ev84HLiBKdNjqQvu3U3upIeSp2A4AImHdD4DOuw=@proton.me>
In-Reply-To: <20260911065500.3145846-1-amadeus@jmu.edu.cn>
References: <20260909225002.976-1-razor1702@gmail.com> <20260911065500.3145846-1-amadeus@jmu.edu.cn>
Feedback-ID: 91982645:user:proton
X-Pm-Message-ID: ca164b9d304b3858ce2f8f1bdc7902d6623f2398
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_031048_803607_AD064B52 
X-CRM114-Status: UNSURE (   9.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Oh, sorry. You are right, and so was Jonas in his review of the identical H28K patch. I should think twice that thread before doing it. I was too hasty and failed to reflect the suggestion I had received. GPIO4_C2 resets the PHY, not the bus, and describing it under &mdio1 also breaks U-Boot, which reads `reset-gpios` from the PHY node ( `drivers/net/phy/phy.c` ) and lacks support for bus-level resets.

I had only tested generic-rk3528 and didn't check whether a nanopi-zero2-rk3528 target existed. Checking my own setup afterward, the R28S I develop on has indeed been booting a board-specific U-Boot target with the PHY-node reset all along, exactly as you pointed out.

I have droped this patch. And the remaining four only add R28S support. Thank you for you sharp point of view.


On Friday, September 11, 2026 at 2:55 PM, Chukun Pan <amadeus@jmu.edu.cn> wrote:

> Hi,
> 
> >  &mdio1 {
> > +	reset-delay-us = <20000>;
> > +	reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> > +	reset-post-delay-us = <100000>;
> 
> This is an incorrect change, see also: [1]
> Since you are using mainline U-Boot 2026.07, you should have
> already noticed that nanopi-zero2-rk3528 is available.
> Therefore, the nanopi-zero2-rk3528 target should be used
> instead of generic-rk3528.
> 
> [1] https://lore.kernel.org/lkml/1e8da54f-ef87-4d31-9a0a-17c0ff66bee0@kwiboo.se/
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
