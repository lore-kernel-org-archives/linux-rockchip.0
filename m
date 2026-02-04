Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6646EE95363
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 09:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gp9Mk77HXAGYEirmNZYnXOGEGdo1gYia+zGtdVMl5I=; b=gCqJvTXNgoW+KA
	aq0+CbUsou2ncCgJdfe5FigkMJRikqJ+Ji5Fz8Pj/5zCt9+zb92TYpcKtPv59f9PEPz84alHbdlSm
	w7caRz6rBHByr0KgavoqhPpJg24b5RQWGfwnCpLemupda/eT9okJ1Il0HcnxAJLwLB4/yb20nW8Za
	NImLYS+i6/Kv6Nd+BUPvG38yWOqbUaS2WaGG2C1QzMGHXcYYzWjxc8WjssaVbKvot6Te9iAchqLP/
	w76KQa6oA440Ny8P0QEYEU121u9sI/KG04cw0DkLS6JLAUrGWmi/8tRDjsCb90if6j+lYWTunGr3r
	NkZmRqLnx1jB7ryziyPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnZQd-00000008EsZ-2Hyo;
	Wed, 04 Feb 2026 09:44:07 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnZQa-00000008EqN-0Rya
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 09:44:05 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 9653C4E423D9;
	Wed,  4 Feb 2026 09:44:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6AEAC60745;
	Wed,  4 Feb 2026 09:44:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7198D119A865B;
	Wed,  4 Feb 2026 10:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770198241; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=w9cK/S9VEg5Sj6NGREX0/AmF5Y2Mv59DI4D5BpBMKuI=;
	b=cDoWAubzmtE494ajM22ZR5dtQKaregG2Oz6hx9eWKztWaIPgbqhnYeBOwwuscFqHhvw/dh
	36uj6EFKs4tuJFqlGS6/Pn16v3oKVAb8THaVRY0Nfty8zgxe8nkv5QwaDZhiqtxHBOa5Yb
	ZMLAdc1/6kvqS8b+l2dhyeeyBAPUhHZbPhAds3k0ZNBEQ26HPKucYKDNVi57o585r9KNwv
	/E3G8wS33Iq7VhXOei4h2ZAoCsYCynKF0UR6deJHot1QRtW773kvjs8jo7rctauMUJAmG9
	IKaInstq8V0+ra+sx3Pp/ysxnvJTBtGVCjLd3zjoKuKwME+HWydQolwpmpGK4A==
Message-ID: <bc094312-8671-432a-ac16-1b1a4d052efd@bootlin.com>
Date: Wed, 4 Feb 2026 10:43:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 4/6] net: stmmac: rk: rk3528: gmac0 only supports
 RMII
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYy1-00000007hp3-0hKm@rmk-PC.armlinux.org.uk>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <E1vnYy1-00000007hp3-0hKm@rmk-PC.armlinux.org.uk>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_014404_283697_40647A54 
X-CRM114-Status: UNSURE (   5.43  )
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



On 04/02/2026 10:14, Russell King (Oracle) wrote:
> RK3528 gmac0 dtsi contains:
> 
>                 gmac0: ethernet@ffbd0000 {
>                         phy-handle = <&rmii0_phy>;
>                         phy-mode = "rmii";
> 
>                         mdio0: mdio {
>                                 rmii0_phy: ethernet-phy@2 {
>                                         phy-is-integrated;
>                                 };
>                         };
>                 };
> 
> This follows the same pattern as rk3328, where this gmac instance
> only supports RMII. Disable RGMII in phylink's supported_interfaces
> mask for this gmac instance.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
