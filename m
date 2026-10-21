Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E675606A31B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 22:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ppY/92LY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=ahip0nLo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pttdFRNSR4edPMpYEV8NpeifpllXha1jzl2EGMvFadI=; b=ppY/92LYaIJXRj
	t6OHNnZ/EwUUcA3NeoXYHwTlOp+FX1McV1eYCtpneL7Tbs95k32k48MT3FKeY9n4nz1RvYR/0J3rY
	SEY9tU3WvGcdP/gS2ASzl8oObmN6IqUjObsxFnYNeSsB/fAuBMJq+fWXzIYo+3nyYNpm6R01222Dk
	L0/zI7jtjROtgsFuW8Th02bYZdeNBxtbX1uJLFXA4MQBktjKHbfHGSG+zKxJCBGqrgvByKINgR7rK
	TkKpTcmQpJvc+X8jdlhlXbnTnLhNsyP9xe+do08Ul3VSMxHs9692Ize52Wb3pG1U8DOzfxrDE2LZA
	0HuxS1RWRZKHnD+8kaTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJemH-0000000Cyf2-1cEI;
	Wed, 21 Oct 2026 22:27:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJemD-0000000CyeR-0ig3;
	Wed, 21 Oct 2026 22:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/Fy3vYhdZ1fZJw/ef1BHjs8s8zcYhlFJOKnLAYjNcDY=; b=ahip0nLoapq7XNH6QNpOVtb4m1
	v9qkpz3ynmvBUaq1pY2hva8QWaxHgiHoOeSnNhhju1iR+aDBpS/dLNMOwzBYJvRU8rBPIPtekaBih
	UFFW3nOQB74FBnrB9qM1ynbrPFfu2WgCeIeDxxh5fTnvTP1vua3IhW9hjFaW7tpx+IUehaWhXHRtw
	7/hAQlyEEAMuIHnEvSMdaZpb8O+NYdHRn0bTvbMeVN7wUbB1Um8gTTRDs1MkuumU5I+IKAMeHv3gJ
	4iSFShsmBWdNiqU6W/oEkAqlpYEgjRHYL1hTuijyP7XwhRv89sbfIX1K7DnO5doVnMZhhbY111jaH
	pVKUI+cg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, David Wu <david.wu@rock-chips.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Jaehoon Chung <jh80.chung@samsung.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 1579567540@qq.com
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 07/27] clk: rockchip: Add RK3572 clock and reset support
Date: Thu, 22 Oct 2026 00:26:36 +0200
Message-ID: <2339330.72vocr9iq0@diego>
In-Reply-To: <20261022-add-board-ok3572-c-v1-7-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-7-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_152717_408357_6BAB93D8 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgpBbSBNaXR0d29jaCwgMjEuIE9rdG9iZXIgMjAyNiwgMTg6MTE6MDQgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBDdW5oYW8gTHUgdmlhIEI0IFJlbGF5Ogo+IEZyb206
IEN1bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4gCj4gQ1BVIGNsb2NrcyBhcmUgbWFuYWdl
ZCBieSBTQ01JLiBLZWVwIEJQTEwgYW5kIExQTEwgZW5hYmxlZCBmb3IgZmlybXdhcmUKPiBjb25z
dW1lcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4K
ClsuLi5dCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTcyLmMg
Yi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTcyLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzhmZDM1ZjVmMjdkCj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1NzIuYwo+IEBAIC0wLDAgKzEsMTk3MiBA
QAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKgo+ICsgKiBDb3B5
cmlnaHQgKGMpIDIwMjUgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4gKyAqIEF1dGhv
cjogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4gKyAqLwoKQXMgeW91
IGRpZG4ndCB3cml0ZSB0aGlzIGRyaXZlciBvbiB5b3VyIG93biBhbmQgZXZlbiBrZXB0IHRoZSBv
cmlnaW5hbAphdXRob3IsIHBsZWFzZSBhbHNvIGNyZWRpdCB0aGUgb3JpZ2luYWwgYXV0aG9yIGlu
IHRoZSBjb21taXQgaXRzZWxmLgoKVGhpcyBjYW4gYmUgZG9uZSBmb3IgZXhhbXBsZSB3aXRoIHNv
bWV0aGluZyBsaWtlCglnaXQgY29tbWl0IC0tYW1lbmQgLS1hdXRob3I9IkVsYWluZSBaaGFuZyA8
emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPiIKYW5kIGluIHRoZSBjb21taXQgYWxzbyBoYXZlIGJv
dGggc2lnbmVkLW9mZnMtYnksIGFrYSBFbGFpbmUgZmlyc3QKdGhlbiB5b3VycyBiZWxvdyBhcyB0
aGUgc3VibWl0dGVyLCBpLmUuIGxpa2UKCisrKysrKysrKysrClNpZ25lZC1vZmYtYnk6IEVsYWlu
ZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgpbZG9jdW1lbnQgd2hhdCBjaGFuZ2Vz
IHlvdSBkaWQgaW5zaWRlIHRoZSBicmFja2V0c10KU2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwx
NTc5NTY3NTQwQHFxLmNvbT4KKysrKysrKysrKysKClRoZSBzYW1lIGFwcGxpZXMgdG8gYWxsIGNv
bW1pdHMgY29taW5nIGZyb20gdGhlIFJvY2tjaGlwIHZlbmRvciBrZXJuZWwuCgoKVGhhbmtzCkhl
aWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
