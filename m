Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB460606A319
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 05:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qgAqx+Zw;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=h+FwYlqT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPBEtvH9GVR8ydrCUJ+xOAt4pqn2j7pDem6hnZ2JTj8=; b=qgAqx+ZwT1vAmT
	yPPBAUibi75gNCdd4CvRia8fWf2SHlSbEsiPPBYqRvwlwQmzRAPyGjbHJPFGl4KOAa3jIuCyR1Lyc
	nE/bSLPGVAvwiFfaHdOpVOESnLkWyzJOksYw6mlCLxhaA7IN7yyS/YlcRFJF574DcTdJTEVpfYDeW
	oTz87MrRgtZ1gvJYg9HHPvwNUlPGKs+Ey+ikfleA8+yLkLAQ61LMii0uR8RX+wzgDZMhrxRHpx8IL
	HjPtPJo8V2rNqK+Kohp9zm7Q+2xtnNYtEfFg6F5lC7BPRdMMuqmVSYMPXtsr3sq4Axr3oWY1N7BUc
	byCS5RSfUJOB2ztoywJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJlRR-0000000DOyQ-3THu;
	Thu, 22 Oct 2026 05:34:17 +0000
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJlRO-0000000DOvu-1OJK;
	Thu, 22 Oct 2026 05:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792647243; bh=ds0gPqcUBP6L02Z/8E2crybbPUoGn59iBftHI08WL+0=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=h+FwYlqTXgik5If3mRRsEVYopsIgtFSMYaP28ZusSHv97d6QMxi1q5+lQrRojqo0i
	 Lote634BZGuOddK1Yxmt+rdrq/5kMqIyam1vRK9bNh1qz3LJ8OjX9Hv0UgBUK8K15t
	 LnvekWnyUNS0m+DYfJrDJbnbnXX5pkEqcGkf7r8A=
X-QQ-XMRINFO: NyFYKkN4Ny6FuXrnB5Ye7Aabb3ujjtK+gg==
X-QQ-XMAILINFO: MhG7PnEq6uVZHX1/fLwaNH4gNTfoyBXS9ICP9bBvYMJm10JGRqKmUPNfnZovbK
	 nS7LD3DnZM7PG6RiQaSUv5jA6wcYID4CXviFq5wgLYtO/p9oKsmGavyZL23IQr7d0d0757wXjmQq7
	 yQ7P4DlSJst9LAB48rnkgVe6bMMGzgnOMnx2w510aEb7WmMOZugA+FKA7dFvUSF3uk29l84MQCVWa
	 jQFL/6ymo+L5sPEnKeO+fuYDDV04n5JfOPyZEFeAEmfXWUAB8OTy/p4ZQ0lksVvz66JR0MwPQoyDb
	 n5LAxPqjoQkDSVYojlFvKE3QRWo8Nw4pbcgx4sO7HHLYRRdk9PdPe1dl9Oz8L3gwwLZpO2vxs5hei
	 qATp4aaTQFXj3yXC1oG+ha4AW+3PduUTMWV52PMWa7MyzJ6vjj4gJqIyME5EoA42vB0JgxZ7NY2Wo
	 9myLFVs1KHj6pNKchD7+yXWnERL3VjkJvvBiZMlLb+FmlEJNA1LZYvJvP7REb9kMKka3Qc/kMWdpw
	 ME+RFtbLfk9lZ3u5hhUqIRHqnTf9HAtOaX3qkfGVxMghLWghcRkCcjp4YduvxdIgqa1UNak48VkSA
	 TlF32t4i+7UTKw6wipXCWXomB5M6/VJB6cp/POqY8gU7URPIvvU4LD0ukvML2czWLuGUYH6r30P/m
	 bXX6boLd8ugiSZw7/nbZ+RGDcnBecAq+r9/slaKApRUKH7s6zm7GotVwmdnJX9S+l+rdESnP8wViE
	 9vbJL80OFI3AlQqnZEpKIeUtv1OELzKLi9bW/Ak0ZE/uS42Sx35Z7jFPP1A6vwGu63jbHjFK2hvdT
	 aBnJvGGAzxze/RxDGZcoRUCiglOCmYcbCRxQ+BkyuLIVrFgllCCVH4GP9So5GCpK4pC842+2Woz3H
	 /x0wBngA2q2A7jL3A4irwZ7fQe06KnNpbK6/KiHbsZ/CwDFMDYmJAPFfRA/yGUucc0EF5M1edwKPd
	 c8e3odi6IFHoUhzcHqXa1FRKkNwZNlZ1NgdSi1gSFjCRn53/lCjp4yXQ+W6Ng6LzXU9RbIkD7soUE
	 HaUAEHfrtNxYdCY9egQi/AEZt8oWCx2fFBPqR3sDpr3zBscPLFvJxBqm6q1PwCEUu0SMeN+rBHNVM
	 iuzehjqgE1gJVCUlbFuba+5M
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?QW5kcmV3IEx1bm4=?=" <andrew@lunn.ch>
Cc: "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, "=?utf-8?B?QnJpYW4gTWFzbmV5?=" <bmasney+clk@redhat.com>, "=?utf-8?B?SmVyb21lIEJydW5ldA==?=" <jbrunet+clk@baylibre.com>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?UGhpbGlwcCBaYWJlbA==?=" <p.zabel@pengutronix.de>, "=?utf-8?B?RWxhaW5lIFpoYW5n?=" <zhangqing@rock-chips.com>, "=?utf-8?B?TGVlIEpvbmVz?=" <lee@kernel.org>, "=?utf-8?B?TGludXMgV2FsbGVpag==?=" <linusw@kernel.org>, "=?utf-8?B?QmFydG9zeiBHb2xhc3pld3NraQ==?=" <brgl@kernel.org>, "=?utf-8?B?UmljaGFyZCBDb2NocmFu?=" <richardcochran@gmail.com>, "=?utf-8?B?VWxmIEhhbnNzb24=?=" <ulfh@kernel.org>, 
	"=?utf-8?B?QW5kaSBTaHl0aQ==?=" <andi.shyti@kernel.org>, "=?utf-8?B?R3JlZyBLcm9haC1IYXJ0bWFu?=" <gregkh@linuxfoundation.org>, "=?utf-8?B?SmlyaSBTbGFieQ==?=" <jirislaby@kernel.org>, "=?utf-8?B?SmlzaGVuZyBaaGFuZw==?=" <jszhang@kernel.org>, "=?utf-8?B?QW5kcmV3IEx1bm4=?=" <andrew+netdev@lunn.ch>, "=?utf-8?B?RGF2aWQgUy4gTWlsbGVy?=" <davem@davemloft.net>, "=?utf-8?B?RXJpYyBEdW1hemV0?=" <edumazet@kernel.org>, "=?utf-8?B?SmFrdWIgS2ljaW5za2k=?=" <kuba@kernel.org>, "=?utf-8?B?UGFvbG8gQWJlbmk=?=" <pabeni@redhat.com>, "=?utf-8?B?RGF2aWQgV3U=?=" <david.wu@rock-chips.com>, "=?utf-8?B?UmFmYWVsIEouIFd5c29ja2k=?=" <rafael@kernel.org>, "=?utf-8?B?RGFuaWVsIExlemNhbm8=?=" <daniel.lezcano@kernel.org>, "=?utf-8?B?WmhhbmcgUnVp?=" <rui.zhang@intel.com>, "=?utf-8?B?THVrYXN6IEx1YmE=?=" <lukasz.luba@arm.com>, 
	"=?utf-8?B?TWF4aW1lIENoZXZhbGxpZXI=?=" <maxime.chevallier@bootlin.com>, "=?utf-8?B?TWF4aW1lIENvcXVlbGlu?=" <mcoquelin.stm32@gmail.com>, "=?utf-8?B?QWxleGFuZHJlIFRvcmd1ZQ==?=" <alexandre.torgue@foss.st.com>, "=?utf-8?B?Vmlub2QgS291bA==?=" <vkoul@kernel.org>, "=?utf-8?B?TmVpbCBBcm1zdHJvbmc=?=" <neil.armstrong@linaro.org>, "=?utf-8?B?TWFuaXZhbm5hbiBTYWRoYXNpdmFt?=" <mani@kernel.org>, "=?utf-8?B?VGhpbmggTmd1eWVu?=" <Thinh.Nguyen@synopsys.com>, "=?utf-8?B?SmFlaG9vbiBDaHVuZw==?=" <jh80.chung@samsung.com>, "=?utf-8?B?U2hhd24gTGlu?=" <shawn.lin@rock-chips.com>, "=?utf-8?B?bGludXgtY2xr?=" <linux-clk@vger.kernel.org>, "=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, 
	"=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bWZk?=" <mfd@lists.linux.dev>, "=?utf-8?B?bGludXgtZ3Bpbw==?=" <linux-gpio@vger.kernel.org>, "=?utf-8?B?bmV0ZGV2?=" <netdev@vger.kernel.org>, "=?utf-8?B?bGludXgtcG0=?=" <linux-pm@vger.kernel.org>, "=?utf-8?B?bGludXgtaTJj?=" <linux-i2c@vger.kernel.org>, "=?utf-8?B?bGludXgtc2VyaWFs?=" <linux-serial@vger.kernel.org>, "=?utf-8?B?bGludXgtbW1j?=" <linux-mmc@vger.kernel.org>, "=?utf-8?B?bGludXgtc3RtMzI=?=" <linux-stm32@st-md-mailman.stormreply.com>, "=?utf-8?B?bGludXgtcGh5?=" <linux-phy@lists.infradead.org>, "=?utf-8?B?bGludXgtdXNi?=" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 16/27] net: stmmac: dwmac-rk: Add RK3572 support
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0
Date: Thu, 22 Oct 2026 13:33:59 +0800
X-Priority: 3
Message-ID: <tencent_DC0344109BFDE09B646864649812CA465409@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-16-0b0fd85a31ee@qq.com>
	<b1ab0503-628c-4f96-af38-727d4be06f8a@lunn.ch>
In-Reply-To: <b1ab0503-628c-4f96-af38-727d4be06f8a@lunn.ch>
X-QQ-mid: xmsezb41-0t1792647239txf7q5rwo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_223414_909900_5E7D9A4D 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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

Hi Andrew,

> You need to split this patches per subsystem. Please send all
> networking patches to netdev, once the merge window closes.
>
> https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html

Thank you for the guidance. I apologize for the inconvenience. I'll split the
series by subsystem and send the RK3572 Ethernet binding and dwmac-rk driver
changes together as a separate series to netdev after November 9, 2026.

Best regards,
Cunhao
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
