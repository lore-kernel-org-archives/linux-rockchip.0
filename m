Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 533C8C44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 11:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsWaxpq6JnK2F1w+lZP1xYBAErgpveSOesut6IPwqhg=; b=k8WX2dglv5xSUA
	JjF/qjOpb0uqpbk2p9DhDXzIWbUwo2Q0uDGPxBY9s2sI05Rz8lpHCiOvbMNPj9Rq/t0g10Tg4e1ph
	+oHuUsKjgeP7lSUmXd6g8UsQdbkc1+VQihyGjK0ECDXUD4JlRr3nEqOSxY+kwQnOo4zyM0MQNi1rP
	35E9yp4SdOqI0LoRwNEcTKSoSaP6CtTR2sZw6H3fsdmB9QAsR4g7yj+mbvCX6imN3HXyEf/5qYCvI
	DP6J7O7sb1TugsRfWmT/GAGROnK1OJHHUMPTjpXBxLPKVeb1c+QHpHpz1aKallueHpPm49HlwaCGi
	iZgZwDrYCmvXGlkgrIAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxaS-0000000EY6t-09WV;
	Wed, 15 Jul 2026 11:15:36 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxaO-0000000EY5D-0AnE;
	Wed, 15 Jul 2026 11:15:34 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 270ADC2B9CE;
	Wed, 15 Jul 2026 11:15:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 28C9D6035C;
	Wed, 15 Jul 2026 11:15:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 382CA11BD1518;
	Wed, 15 Jul 2026 13:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784114126; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=4909ZvzqE/qBkcTGctD2aEwJFWkjePdcil0/KSV46/U=;
	b=bzUt7K+jxAzqnf65ic/3Zie1qUXtfMBGduxbcKwUfBdB1KeAAZfgZ/B7xaRDidQOL2PpN4
	yqdRp3nwCPDU1UsC51v/JUPSWtl6syPTBbMZesdWBiW8crQ7Tn5NG2pzEAgQEoa736/qlg
	6pgk8z0Abu7J7saLFLyPNtIvH5eufO7hAgGl9F8cFkTDLW+9DiziKVZovPCqzYVibM9h+9
	uR7FlrzvlVezzkPZ9llu9KcYfSjuv0KpAJ8p23dA4G3z7pw6l++foLmhk6BV3U+eBhLSTk
	UBZAUdFnCQM1bSyWnheRIsBLKNr9VE2INnZ8TJ1TrZkcN2oSRwBPvOL7GziK2A==
Message-ID: <f81a233a-ad96-499f-8a79-c3418dc99ac3@bootlin.com>
Date: Wed, 15 Jul 2026 13:15:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Christian Marangi <ansuelsmth@gmail.com>, Coia Prant <coiaprant@gmail.com>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
 <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
 <6a574873.3027643f.39eab0.b4c0@mx.google.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <6a574873.3027643f.39eab0.b4c0@mx.google.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_041532_252697_B96610B5 
X-CRM114-Status: UNSURE (   9.28  )
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

Hi Christian,

> I think the idea of Maxime is to test that series on most Scenario as
> possible to verify for fragility or regression on it.

I've tested your RFC on a few boards that use the .select_pcs() callback,
and didn't find any regressions :)
> (but just for Maxime the feature is getting actively used on OpenWrt by 3
> different SoC and no complain for now)

I have no doubt that the fwnode PCS registration works, however there's no
user of the .fill_available_pcs() path in this series. You may not have access
to HW to test this though, but this is my main concern that we discover issues
when using "internal" PCS with the new API.

I _may_ have time to play around with is on mvpp2, hard to say when though, but
feel free to send another iteration for review :)

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
