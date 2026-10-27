Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92AA5606A31B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 00:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=plS+CFyL;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=IJsQys7w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6oAJLd9QtsGulnJp4dZ6MQwJGFtl0nqraivgNw3Ijzs=; b=plS+CFyLOvroHh5ciZx215owmn
	IT68fsumHJfL/Pv7rBRsd1Cxqh9Pe0Q5iK/OWKhK2iCEbUHOA3PKkEfSRJXS/AmlUVxpQo7xk3Wk4
	vMta2qwKcval6HOn6L0FtvGqMV43C4JWesq8V+DhlCvl1v8L08bYOojxzGtn0hFV5IQ+RGk+iME3B
	7CrXOpBit97l9vQ9L14ElmmYgJMFh3VxQBIBA/+Zt2CTwNIviJTMeaO1otU9p2rJEYjK8+ZYN4aGL
	AAvXcwz0TeEVs+WtZqM5WjSZ6Eyr0fhuLkH5pKFrfZqViQxO9PZpVFoRMRqLxmcTNgcELY0rrnfrO
	cVTJjcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVRK-00000003YfW-0MqI;
	Tue, 27 Oct 2026 00:53:22 +0000
Received: from mail-m25474.xmail.ntesmail.com ([103.129.254.74])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLVRH-00000003Yez-16jl;
	Tue, 27 Oct 2026 00:53:21 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 526e8ceb0;
	Tue, 27 Oct 2026 08:53:12 +0800 (GMT+08:00)
Message-ID: <bb38e2c8-1868-4a66-9e0d-78d9f68ab4be@rock-chips.com>
Date: Tue, 27 Oct 2026 08:53:09 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH 24/27] mmc: dw_mmc-rockchip: Keep RK3572 NVM domain
 powered
To: 1579567540@qq.com, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>,
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Jaehoon Chung <jh80.chung@samsung.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-24-0b0fd85a31ee@qq.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-24-0b0fd85a31ee@qq.com>
X-HM-Tid: 0aa17ad8d47003a4kunm11e232fa473cda
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTh1CVh1KTR9CSE1LQx4fGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=IJsQys7w6ZxV+DGACFu7tp6IC2XPPwcJXSelxQSD1vTGjhE9PoZcuZz9xwdeWJyiMmawVu+MEW+G8WAm2iMk67hmhZOiMs56Iq7OGWJB2jXbZ7rtdDSqWunDi5ua9gLF9vWCsJIjLwel7Nty1TbOGwqxXT82cvpybuOOJTauLtE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wghg31XooAJPKL/XTiGnCxCN5pFUy2mBUdUxi6yrLos=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_175319_531815_C60EDF32 
X-CRM114-Status: GOOD (  16.89  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ3VuaGFvLAoK5ZyoIDIwMjYvMTAvMjIg5pif5pyf5ZubIDA6MTEsIEN1bmhhbyBMdSB2aWEg
QjQgUmVsYXkg5YaZ6YGTOgo+IEZyb206IEN1bmhhbyBMdSA8MTU3OTU2NzU0MEBxcS5jb20+Cj4g
Cj4gUG93ZXIgY3ljbGluZyB0aGUgUkszNTcyIE5WTSBkb21haW4gY2F1c2VzIHJlcGVhdGVkIFNE
IHJlY292ZXJ5LiBLZWVwIGl0Cj4gcG93ZXJlZCBkdXJpbmcgcnVudGltZSBzdXNwZW5kIHdpdGhv
dXQgZGlzYWJsaW5nIGNvbnRyb2xsZXIgcnVudGltZSBQTS4KPiAKCkJlZm9yZSB5b3VyIHYyIGFi
b3V0IHRoaXMgcGF0aCwgSSB3b3VsZCBsaWtlIHRvIGFzayB3aHkgeW91IG5lZWQgdGhpcz8KVGhl
IGR3X21tYy1yb2NrY2hpcCBjb250cm9sbGVyIGlzIGFsd2F5cyB1bmRlciBBIHBvd2VyIGRvbWFp
biBvbiBldmVyeQpTb0MsIG5vbmUgb2YgdGhlIHByZWRlY2Vzc29ycyBuZWVkIHRoaXMga2luZCBv
ZiBjaGFuZ2UuIElmIHlvdSBzZWUKc29tZSBlcnJvcnMgZHVyaW5nIFJQTSwgcGVyaGFwcyB5b3Ug
c2hvdWxkIGhhdmUgYSBsb29rWzFdIGFuZCBjaGVjayB5b3VyCkRUUy4KClsxXSAKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtbW1jLzE3Njg1MjQ5MzItMTYzOTI5LTEtZ2l0LXNlbmQtZW1h
aWwtc2hhd24ubGluQHJvY2stY2hpcHMuY29tLwoKPiBTaWduZWQtb2ZmLWJ5OiBDdW5oYW8gTHUg
PDE1Nzk1Njc1NDBAcXEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9j
a2NoaXAuYyB8IDI0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQs
IDI0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9kd19t
bWMtcm9ja2NoaXAuYyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiBpbmRl
eCA3NWM4MmZmMjBmMTc3Li44YmM1NWQ0Yjk5NmM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbW1j
L2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1y
b2NrY2hpcC5jCj4gQEAgLTEwLDYgKzEwLDcgQEAKPiAgICNpbmNsdWRlIDxsaW51eC9tbWMvaG9z
dC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KPiAgICNpbmNsdWRlIDxsaW51
eC9tbWMvc2xvdC1ncGlvLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbV9kb21haW4uaD4KPiAgICNp
bmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+
ICAgCj4gQEAgLTUyOCw2ICs1MjksMTkgQEAgc3RhdGljIGludCBkd19tY2lfcm9ja2NoaXBfaW5p
dChzdHJ1Y3QgZHdfbWNpICpob3N0KQo+ICAgCXJldHVybiAwOwo+ICAgfQo+ICAgCj4gK3N0YXRp
YyBpbnQgZHdfbWNpX3JrMzU3Ml9pbml0KHN0cnVjdCBkd19tY2kgKmhvc3QpCj4gK3sKPiArCWlu
dCByZXQ7Cj4gKwo+ICsJLyogUG93ZXIgY3ljbGluZyB0aGUgTlZNIGRvbWFpbiBkaXNydXB0cyBT
RE1NQyByZWNvdmVyeS4gKi8KPiArCXJldCA9IGRldl9wbV9nZW5wZF9ycG1fYWx3YXlzX29uKGhv
c3QtPmRldiwgdHJ1ZSk7Cj4gKwlpZiAocmV0ICYmIHJldCAhPSAtRU9QTk9UU1VQUCkKPiArCQlk
ZXZfd2Fybihob3N0LT5kZXYsICJmYWlsZWQgdG8ga2VlcCBwb3dlciBkb21haW4gb246ICVwZVxu
IiwKPiArCQkJIEVSUl9QVFIocmV0KSk7Cj4gKwo+ICsJcmV0dXJuIGR3X21jaV9yb2NrY2hpcF9p
bml0KGhvc3QpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkd19tY2lfZHJ2X2Rh
dGEgcmsyOTI4X2Rydl9kYXRhID0gewo+ICAgCS5pbml0CQkJPSBkd19tY2lfcm9ja2NoaXBfaW5p
dCwKPiAgIAkucGFyc2VfZHQJCT0gZHdfbWNpX3JrMjkyOF9wYXJzZV9kdCwKPiBAQCAtNTQxLDYg
KzU1NSwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGR3X21jaV9kcnZfZGF0YSByazMyODhfZHJ2
X2RhdGEgPSB7Cj4gICAJLmluaXQJCQk9IGR3X21jaV9yb2NrY2hpcF9pbml0LAo+ICAgfTsKPiAg
IAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGR3X21jaV9kcnZfZGF0YSByazM1NzJfZHJ2X2RhdGEg
PSB7Cj4gKwkuY29tbW9uX2NhcHMJCT0gTU1DX0NBUF9DTUQyMywKPiArCS5zZXRfaW9zCQk9IGR3
X21jaV9yazMyODhfc2V0X2lvcywKPiArCS5leGVjdXRlX3R1bmluZwkJPSBkd19tY2lfcmszMjg4
X2V4ZWN1dGVfdHVuaW5nLAo+ICsJLnBhcnNlX2R0CQk9IGR3X21jaV9yazM1NzZfcGFyc2VfZHQs
Cj4gKwkuaW5pdAkJCT0gZHdfbWNpX3JrMzU3Ml9pbml0LAo+ICt9Owo+ICsKPiAgIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHdfbWNpX2Rydl9kYXRhIHJrMzU3Nl9kcnZfZGF0YSA9IHsKPiAgIAkuY29t
bW9uX2NhcHMJCT0gTU1DX0NBUF9DTUQyMywKPiAgIAkuc2V0X2lvcwkJPSBkd19tY2lfcmszMjg4
X3NldF9pb3MsCj4gQEAgLTU1NCw2ICs1NzYsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBkd19tY2lfcm9ja2NoaXBfbWF0Y2hbXSA9IHsKPiAgIAkJLmRhdGEgPSAmcmsyOTI4
X2Rydl9kYXRhIH0sCj4gICAJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMyODgtZHctbXNo
YyIsCj4gICAJCS5kYXRhID0gJnJrMzI4OF9kcnZfZGF0YSB9LAo+ICsJeyAuY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazM1NzItZHctbXNoYyIsCj4gKwkJLmRhdGEgPSAmcmszNTcyX2Rydl9kYXRh
IH0sCj4gICAJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NzYtZHctbXNoYyIsCj4gICAJ
CS5kYXRhID0gJnJrMzU3Nl9kcnZfZGF0YSB9LAo+ICAgCXt9LAo+IAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
