Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D518EC79FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 06:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rx+6WbUTaULbXGZzc9VZkZVpr17MqWK1GANLv5WeYUA=; b=QFPhJSZHC8WdVR
	Mgz9AidyklgGMp28oBEj7tgIkf4rnJsZHnMCqEPV+EbA/WwhgUSmlYTIP2cElndVZnG/SQHrCvhgO
	cMi4Kv+CHjKv2FQvs4sfVhw1A6EGN0pkMUVu7zBE7i5xvfYPXjq/LlBteOY2hCJUZMpq0GQvGW0ce
	nd03pU5cLDr9LS44GQFQbmofDu4YlfFMFZYQ3FPTttE/+W7UliMH1BwZtrYnMMXwkJDn1iyumjrrm
	uhPpgqdJIRoJmdLVNc9L8BX7CRA4Dt6xpuvDW5z4NC2uZ0BR02aJ/Ek61R075DWBet4ddmMwNZu/i
	y3WxDFlVyDy3YO4nP89Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Y2I-0000000DUtQ-2wit;
	Thu, 10 Sep 2026 06:13:26 +0000
Received: from mail-24424.protonmail.ch ([109.224.244.24])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Y2G-0000000DUsa-3nUd
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 06:13:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1789020801; x=1789280001;
	bh=Zd0oHaUPampheUnb5yp3fSoD46Zp5JgfaDgEyt/77nc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=hEx0l+z5MazM82bsK0LQVJgbNwzldOr6D7oexcHVXrvG3G6Ut7o8b62vriwR+5SJ0
	 YB8SDumn52wbJV6r6tr4h8WBBlzPCzoKG/i5CILdZ4aXHgw7dkDXshmHmm1GdNMeSQ
	 dTRc5Rso1psDPR+y9pH8PGA/6S5VYD0Yev1L00VsGQ8w9aN++17WcVWPLl5cq8mHKt
	 vXmarUU0bTdc/JA7KfuIWkdtth0noA2pgv/fi8qeLmscI8K/goOiWFzerv2x42dIQr
	 9YSv5XeDII5b+LN2siBBb3KCs28YaUZLgjRoUPSKueDotjdzyob+FhrpUFaRPRamje
	 VOyIy7uRVyOHA==
Date: Thu, 10 Sep 2026 06:13:15 +0000
To: Andrey Korshunov <razor1702@gmail.com>
From: =?utf-8?B?5a6J5a65?= <HystericalDragons@proton.me>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>, "diederik@cknow-tech.com" <diederik@cknow-tech.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: Reset the NanoPi Zero2 PHY from the MDIO bus
Message-ID: <VIvc1QJ9XRgfW_Po-U_fVw3BL7qNmB3Zrl4K3PXWt91BLhwpBHvwhN62PaVPq5YFX2VrZNkbrct8X3HfIBBvy1kbd9mQg9O_mGOrmoRLmcs=@proton.me>
In-Reply-To: <20260909225002.976-1-razor1702@gmail.com>
References: <20260909-r28s-upstream-v3-1-ee3e1a34a353@proton.me> <20260909225002.976-1-razor1702@gmail.com>
Feedback-ID: 91982645:user:proton
X-Pm-Message-ID: 6b1b673b5273e349cfb62c001e3957c12eff0c54
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_231325_092925_048D9148 
X-CRM114-Status: UNSURE (   5.68  )
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

Thanks for the test. It is better evidence than the Zero2 would have
given on its own. The mechanism lives in the MDIO core instead of the board:
`__mdiobus_register()` releases the bus reset before `get_phy_device()` reads
the ID, and the two boards wire the same RTL8211F to mdio1 behind the same
pin, so the R28S result carries to the Zero2. I have annotated the tag
accordingly:

  Tested-by: Andrey Korshunov <razor1702@gmail.com> # NanoPi R28S

Good to know 2026.07 leaves the pin asserted as well. The commit message
does not name a U-Boot release, so it stands as written.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
