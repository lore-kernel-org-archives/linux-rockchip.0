Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5414606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 08:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Br6J7eJF;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=ZRB1vNch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=M/kAyNxeB6xdJ0qJoW3GtZKeQbc+zY7gH1uNwuzsZ50=; b=Br6J7eJFCX7X258DhT/NquOzDX
	Xi5VAo7SilCjhqRxN10qDxfkNTM5vVFFdJ2VSwKPZO5rc2FFHjVcNniO7A9otR9M7TpW3xdZfI+JO
	Ux2FnKRAfw/8khPRGBQa8j75eclSsXIhHOotl9Dj4WD73m140DBb6wyiy2AAKWw3m1OhHKR14YlJD
	K0uRuX3weDaANOVhuj/T8iZV7Q2BRkDtrxbQdEmifuioO+Vzt/vXZS7UxKat6Wg24Y87dsqxOwbBD
	u187YiXSalSLxNJSQeJLlaDgMXJ1QUJHeh3VKu6IpTRWSBXbvjsaLWp5hto/PnOfykBId3yg69EVl
	zzUvWaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcJx-000000040bb-0K3U;
	Tue, 27 Oct 2026 08:14:13 +0000
Received: from out203-205-221-231.mail.qq.com ([203.205.221.231])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcJt-000000040Zh-1jpU
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 08:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1793088845; bh=nGbu4upuJLgm2lXKD/Z91nFxrjKCKZHpwQrOt6s2bDY=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=ZRB1vNchEBn1xTDidt7KlotYbtlRGWLoegdUkgm34YutKGqGFS1vndGuabXwuQZ90
	 /f0QxD6nmcPMBlMpQq6BxhjlE6opBg1xCkYHbn2pqTPsi40cCO5nyYQN/e07PWbv1P
	 526lVXWyA9AKXODNJhPhJr8lZw09DmYOIJjw38go=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-XMAILINFO: M/8oWtQ8RXooJTRnGxFYe36RnPXjfz6V34oARLY5ztdCgTVzwe4zrpt0OZIqiV
	 6WOy1tfKUMOwIp89CO5v2jtf8fTEeOq5mi2JUzH4Nef7OjAKvx4xPiylH90reQ6IHIXTUg6D63e0T
	 481ZvsLL6TnnEWH6cGafWPYXdPkOaWIDYmQaR1TyCkbo1JAipqPJjLWdkJ7c5f9Ntm6rE/Vc85MFA
	 6/0Yv3GuE058KwOnH34QUKfrzxTwP4bBI/d4wotgx7yzEXWjSCUkxlS5SsVZOnxqFUStijqTic+NF
	 aNvSUUJDUS18HxXkxELs9NR1BNaF9SEdq07pweT3dgStQMYxIOxFwsx6Ap79t3P7Wda50cBNlyUzK
	 L0nGZYeXMmxra3ro1YB2pEadf81VxEf50WmhVY2f7ZPN8y/UM4PdbyPXVRvhxVv5nxNg2J/hfK3Kw
	 pSUJyHx1xsdjaUc/Gnio/6cqfs97icdTwq6NCBZO/byU2hnjUaTaSt9AEwM87gAki9zbOe1yZScN+
	 PYFSmvDn44vv/ex5eNUA78ks2mSVtzQxrO7o6vvSIaJ6tqOmxNsMswoV+th2FwjbUQUCw5dIurGYx
	 UiC98zYj+8M80tQd0v5a55xNOCWrzJMcpL9u6ctYYBOGjDYnmGgQj5BgHu3DucOOtbhhIP6iVdcse
	 NZTX916vUU0yg5PAavrQyQmT52VA/r5Xy6Ozbu+A1EzoVqgRPIIiO+pX5cRNy8l9R/uK/vKiFdjfS
	 Ky3dE5tvMSNS1KhWn0R+OuSWPkiRCjFJy5irVQouqZ4/77IVsPighdskAl4O9q7fgA02C+iRFllws
	 TrKDgHhDDjWkiTzDvbHNZ+Xui1Lnl5aLZBJ/0ZBY97G6jebO3CJGueOksuo4EaO36eMoHjNsEs7jF
	 gP2WMOd83oGx+87D1EJrlBu4GKZGwED07/KKJKyeCzvvIAfQ9zrQH9ERkrMRJD8C0oXuiXNt8am21
	 KQeoVpouoyLgDKb99Ev+/BEPpEcXH07BurkkWIUVwhaRz5pdTGd6RB/IhJuRgQajP6VGsNTm4Hw8p
	 61dj2p8TsB+wovP+gd5bvf5tjSyip3s4Xa6VnLxgzG1xCV2ekXBbBh4XrhkKmA+tZOsI4QpyF03f0
	 IPelgJyNvew7LQ==
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?U2hhd24gTGlu?=" <shawn.lin@rock-chips.com>, "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, "=?utf-8?B?QnJpYW4gTWFzbmV5?=" <bmasney+clk@redhat.com>, "=?utf-8?B?SmVyb21lIEJydW5ldA==?=" <jbrunet+clk@baylibre.com>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?UGhpbGlwcCBaYWJlbA==?=" <p.zabel@pengutronix.de>, "=?utf-8?B?RWxhaW5lIFpoYW5n?=" <zhangqing@rock-chips.com>, "=?utf-8?B?TGVlIEpvbmVz?=" <lee@kernel.org>, "=?utf-8?B?TGludXMgV2FsbGVpag==?=" <linusw@kernel.org>, "=?utf-8?B?QmFydG9zeiBHb2xhc3pld3NraQ==?=" <brgl@kernel.org>, "=?utf-8?B?UmljaGFyZCBDb2NocmFu?=" <richardcochran@gmail.com>, 
	"=?utf-8?B?VWxmIEhhbnNzb24=?=" <ulfh@kernel.org>, "=?utf-8?B?QW5kaSBTaHl0aQ==?=" <andi.shyti@kernel.org>, "=?utf-8?B?R3JlZyBLcm9haC1IYXJ0bWFu?=" <gregkh@linuxfoundation.org>, "=?utf-8?B?SmlyaSBTbGFieQ==?=" <jirislaby@kernel.org>, "=?utf-8?B?SmlzaGVuZyBaaGFuZw==?=" <jszhang@kernel.org>, "=?utf-8?B?QW5kcmV3IEx1bm4=?=" <andrew+netdev@lunn.ch>, "=?utf-8?B?RGF2aWQgUy4gTWlsbGVy?=" <davem@davemloft.net>, "=?utf-8?B?RXJpYyBEdW1hemV0?=" <edumazet@kernel.org>, "=?utf-8?B?SmFrdWIgS2ljaW5za2k=?=" <kuba@kernel.org>, "=?utf-8?B?UGFvbG8gQWJlbmk=?=" <pabeni@redhat.com>, "=?utf-8?B?RGF2aWQgV3U=?=" <david.wu@rock-chips.com>, "=?utf-8?B?UmFmYWVsIEouIFd5c29ja2k=?=" <rafael@kernel.org>, "=?utf-8?B?RGFuaWVsIExlemNhbm8=?=" <daniel.lezcano@kernel.org>, "=?utf-8?B?WmhhbmcgUnVp?=" <rui.zhang@intel.com>, 
	"=?utf-8?B?THVrYXN6IEx1YmE=?=" <lukasz.luba@arm.com>, "=?utf-8?B?TWF4aW1lIENoZXZhbGxpZXI=?=" <maxime.chevallier@bootlin.com>, "=?utf-8?B?TWF4aW1lIENvcXVlbGlu?=" <mcoquelin.stm32@gmail.com>, "=?utf-8?B?QWxleGFuZHJlIFRvcmd1ZQ==?=" <alexandre.torgue@foss.st.com>, "=?utf-8?B?Vmlub2QgS291bA==?=" <vkoul@kernel.org>, "=?utf-8?B?TmVpbCBBcm1zdHJvbmc=?=" <neil.armstrong@linaro.org>, "=?utf-8?B?TWFuaXZhbm5hbiBTYWRoYXNpdmFt?=" <mani@kernel.org>, "=?utf-8?B?VGhpbmggTmd1eWVu?=" <Thinh.Nguyen@synopsys.com>, "=?utf-8?B?SmFlaG9vbiBDaHVuZw==?=" <jh80.chung@samsung.com>
Cc: "=?utf-8?B?c2hhd24ubGlu?=" <shawn.lin@rock-chips.com>, "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bWZk?=" <mfd@lists.linux.dev>, "=?utf-8?B?bGludXgtZ3Bpbw==?=" <linux-gpio@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?bGludXgtcG0=?=" <linux-pm@vger.kernel.org>, "=?utf-8?B?bGludXgtaTJj?=" <linux-i2c@vger.kernel.org>, "=?utf-8?B?bGludXgtc2VyaWFs?=" <linux-serial@vger.kernel.org>, "=?utf-8?B?bGludXgtbW1j?=" <linux-mmc@vger.kernel.org>, 
	"=?utf-8?B?bGludXgtc3RtMzI=?=" <linux-stm32@st-md-mailman.stormreply.com>, "=?utf-8?B?bGludXgtcGh5?=" <linux-phy@lists.infradead.org>, "=?utf-8?B?bGludXgtdXNi?=" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 24/27] mmc: dw_mmc-rockchip: Keep RK3572 NVM domain powered
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Tue, 27 Oct 2026 16:14:00 +0800
X-Priority: 3
Message-ID: <tencent_0431D34CCA9424908F2C068820D6F9C1370A@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-24-0b0fd85a31ee@qq.com>
	<bb38e2c8-1868-4a66-9e0d-78d9f68ab4be@rock-chips.com>
In-Reply-To: <bb38e2c8-1868-4a66-9e0d-78d9f68ab4be@rock-chips.com>
X-QQ-mid: xmsezb41-0t1793088840t5jwsbqnj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_011409_773252_1DD6FF06 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	FROM_EXCESS_BASE64,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Shawn,

> Before your v2 about this path, I would like to ask why you need this?
> The dw_mmc-rockchip controller is always under A power domain on every
> SoC, none of the predecessors need this kind of change. If you see
> some errors during RPM, perhaps you should have a look[1] and check your
> DTS.

Thank you very much for pointing out my mistake.

I wrote this patch after observing repeated SD card resets and recovery.
After several tests, I found that keeping NVM1 powered prevented the
problem. I checked the SD supply and pin settings against Forlinx's
vendor DTS. The settings matched.

I then searched the mainline history for RK3576 and found its SDHCI
workaround that keeps PD_NVM powered. I therefore assumed this was a
shared design issue in the RK357x family.

After your email, I carefully reviewed and compared the Forlinx
OK3572-C schematic and DTS.

The OK3572-C_Linux6.12.58_Alpha1 BSP incorrectly references RK806 PLDO4
as the SD card supply. The card actually uses a separate 3.3 V supply
through a switch controlled by GPIO0_B6. The original DTS uses native
PWREN, which loses the enable state when NVM1 powers down.

I incorrectly assumed that Forlinx had validated its vendor kernel
and the corresponding device tree.
I am very sorry for this incorrect assumption.

I will report this issue to Forlinx and replace this patch with the DTS
fix in the next revision.

Best regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
