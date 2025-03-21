Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CABB0C36002
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 17:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hmpf60hGfe+KU6wwtM23r36GK2YH4othT6RJwaLeBYw=; b=wUG3ZraGGEEBHa
	v6XUkg4hLTblRG00OxP2adVfVn0ixJhaVCK7YhRYRz9x1sCK7eX2g2y6UKpndkai+hadBmw2aJlHQ
	exS7vulvMRPqulX6RyufXdArJHoPrQ54+S3reaRWPYSWPWjrBQzekbV/szljYr5H85jsIEssC7+BO
	Uh1mAK36eF2RuZUR7D2cowV3ZU0GodY6WreGj/hW0V78BeB671GCAnBq3RX4aiKnIMjZZJQqweIqu
	JUz3L9prVKwVDifZ5AwSnupvBXPDD4FWIB/21u8WBzUzkw2thmzSdasovPXWDSFm6vVJ6fn+T3gSe
	xsgs3olHKyxu0p06WbdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfu5-0000000FeKn-14m2;
	Fri, 21 Mar 2025 17:11:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfrI-0000000FdlO-2HEE;
	Fri, 21 Mar 2025 17:08:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=rwsJ7KxnNGB85Kzql5aBpB16nToZe3gP5eTNRWMHdQs=; b=q0aF4oSLerS/auoS6KFBVj+xiA
	A3Mk3DHaREzMedV/GQNe5jEg4VnqUUMhmgLLTtR6HpsjffkFMU0wvA2P+MlrAma/E2v4LNn/tR+xZ
	l+zEeCTgkyPQgUmyXsi2kO63KbyGCWYqg0b/2PwwJexFRJK+AAXWjSADJtb5Mi0zmv62vCso9Yiv7
	s1npM5Siaq3ahMq8atgqnYwpJIInpKnIqomrF15Nnu4favedSObOu0OYxgOtMiZaoH+IT0WBUV1s0
	T6obiNiv4shlo6ogn5UV1LXMDSMODHLfjrkh/7uOvlEqPwHKQCQRsxL43zl1ZtYU6JNnjlEvVJtgx
	HRf67xDw==;
Received: from [192.145.10.73] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tvfrA-0003Qo-2G; Fri, 21 Mar 2025 18:08:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko.stuebner@cherry.de>,
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH next] phy: rockchip-samsung-dcphy: Add missing assignment
Date: Fri, 21 Mar 2025 18:08:26 +0100
Message-ID: <2181342.OBFZWjSADL@phil>
In-Reply-To: <e64265a4-9543-4728-a49f-ea910fccef7c@stanley.mountain>
References: <e64265a4-9543-4728-a49f-ea910fccef7c@stanley.mountain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_100836_604543_A5183011 
X-CRM114-Status: GOOD (  13.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGV5IERhbiwKCkFtIEZyZWl0YWcsIDIxLiBNw6RyeiAyMDI1LCAxNTozNjoxNCBNRVogc2Nocmll
YiBEYW4gQ2FycGVudGVyOgo+IFRoZSAicmV0ID0gIiB3YXMgYWNjaWRlbnRhbGx5IGRyb3BwZWQg
c28gdGhlIGVycm9yIGhhbmRsaW5nIGRvZXNuJ3Qgd29yay4KPiAKPiBGaXhlczogYjJhMWEyYWU3
ODE4ICgicGh5OiByb2NrY2hpcDogQWRkIFNhbXN1bmcgTUlQSSBELS9DLVBIWSBkcml2ZXIiKQo+
IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4K
Cm9oIGRhcm4gLi4uIHRoYW5rcyBzbyBtdWNoIGZvciBjYXRjaGluZyB0aGF0CgpSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4gIGRyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMgfCAyICstCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jIGIvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+IGluZGV4IDA4Yzc4
YzFiYWZjOS4uMjhhMDUyZTE3MzY2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jCj4gQEAgLTE2NTMsNyArMTY1Myw3IEBAIHN0
YXRpYyBfX21heWJlX3VudXNlZCBpbnQgc2Ftc3VuZ19taXBpX2RjcGh5X3J1bnRpbWVfcmVzdW1l
KHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCWNsa19w
cmVwYXJlX2VuYWJsZShzYW1zdW5nLT5yZWZfY2xrKTsKPiArCXJldCA9IGNsa19wcmVwYXJlX2Vu
YWJsZShzYW1zdW5nLT5yZWZfY2xrKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfZXJyKHNhbXN1
bmctPmRldiwgIkZhaWxlZCB0byBlbmFibGUgcmVmZXJlbmNlIGNsb2NrLCAlZFxuIiwgcmV0KTsK
PiAgCQljbGtfZGlzYWJsZV91bnByZXBhcmUoc2Ftc3VuZy0+cGNsayk7Cj4gCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
