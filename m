Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD8F606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 00:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jDFEmFOz;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=ed/W9pMI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qv+qQM2OomUOWHDHwnT7eH1A+JrZRxv1VXMeBzNoDlw=; b=jDFEmFOzTw9XpmxGUqz0vMluJu
	4ESncETf6on/H9QtAb1vllccnNsnS1/dfpJ5gj9qHljdQWHF5h2zF7KXyR7Sne+3sIeLKM6AVzWcq
	ecCbCzVjWqr5duuw1epNl1Hwc1++9cnw/LwoDGDWh/9yXqqEqiFW9aiBhqLpN5rJLtbKq+mkU4cEr
	rEbmd7bsbzPy8turj1j//rA0tDepTBAceqwg26w5kLbWM/dlrFlJFhPlg6PVGo6eadKtDXzQC7Wip
	LN0u5yPRC6kJNfrLL1+eAEIvBk1OODIalynWIHUgJWpNtVUt+rxHpcclV872h9k1OId+Qv42mlfVp
	868WUasw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOlhW-00000007NgH-3ekl;
	Thu, 05 Nov 2026 00:51:34 +0000
Received: from mail-m12853.netease.com ([103.209.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOlhT-00000007Nf9-1H8l;
	Thu, 05 Nov 2026 00:51:33 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 53894dd57;
	Thu, 5 Nov 2026 08:51:18 +0800 (GMT+08:00)
Message-ID: <f047dcbe-efa2-4c60-8436-6d001c936467@rock-chips.com>
Date: Thu, 5 Nov 2026 08:51:14 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Alexey Charkov <alchark@flipper.net>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v8 7/9] PCI: dw-rockchip: Add pme_turn_off support
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
References: <20261105-rockchip-pcie-system-suspend-v8-0-0434b4f373bc@collabora.com>
 <20261105-rockchip-pcie-system-suspend-v8-7-0434b4f373bc@collabora.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261105-rockchip-pcie-system-suspend-v8-7-0434b4f373bc@collabora.com>
X-HM-Tid: 0aa1a930507d03a4kunm7b7b2c6111ce48
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSBlJVkgaQkNKTR9MSR5CHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ed/W9pMIXtu5yRJRX83WEULDuzONtKh2KGDEcb97UklFlrvv5C3CMhCccjEFUhMlchyOLJAprM686mxfc7tWjHzWqBUhRRM8shTlsrCQnZUsxYIU1rtFwSDJojCUXPr6oPLLxEocusN0/jY3UmO7AmWWmEB0XONgEidRDNO+fjc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+2E6dr27WqMqCaaLamwNn6gQm66M2Zv099gvqTnexrw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_165132_063978_D52C4275 
X-CRM114-Status: GOOD (  21.86  )
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMDUg5pif5pyf5ZubIDc6NDcsIFNlYmFzdGlhbiBSZWljaGVsIOWGmemBkzoK
PiBQcmVwYXJlIFJvY2tjaGlwIFBDSWUgY29udHJvbGxlciBmb3Igc3lzdGVtIHN1c3BlbmQgc3Vw
cG9ydCBieQo+IGFkZGluZyB0aGUgUE1FIHR1cm4gb2ZmIG9wZXJhdGlvbi4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
YyB8IDQ3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQ3
IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jCj4gaW5kZXggMGUyNmFiYzUwOTIwLi43OTMzYzUwZGYzNDAgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gKysr
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTQ3
LDYgKzQ3LDEwIEBACj4gICAjZGVmaW5lICBQQ0lFX0NMSUVOVF9FTkFCTEVfTFRTU00JRklFTERf
UFJFUF9XTTE2KEJJVCgyKSwgMSkKPiAgICNkZWZpbmUgIFBDSUVfQ0xJRU5UX0RJU0FCTEVfTFRT
U00JRklFTERfUFJFUF9XTTE2KEJJVCgyKSwgMCkKPiAgIAo+ICsvKiBJbnRlcnJ1cHQgU3RhdHVz
IFJlZ2lzdGVyIGZvciBSZWNlaXZlZCBNZXNzYWdlcyAqLwo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5U
X0lOVFJfU1RBVFVTX01TR19SWAkweDA0Cj4gKyNkZWZpbmUgIFBNRV9UT19BQ0sJCQlCSVQoOSkK
PiArCj4gICAvKiBJbnRlcnJ1cHQgU3RhdHVzIFJlZ2lzdGVyIFJlbGF0ZWQgdG8gTGVnYWN5IElu
dGVycnVwdCAqLwo+ICAgI2RlZmluZSBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19MRUdBQ1kJMHg4
Cj4gICAKPiBAQCAtNzEsNiArNzUsMTEgQEAKPiAgICNkZWZpbmUgIFBDSUVfQ0xLUkVRX1JFQURZ
CQlGSUVMRF9QUkVQX1dNMTYoQklUKDApLCAxKQo+ICAgI2RlZmluZSAgUENJRV9DTEtSRVFfTk9U
X1JFQURZCQlGSUVMRF9QUkVQX1dNMTYoQklUKDApLCAwKQo+ICAgI2RlZmluZSAgUENJRV9DTEtS
RVFfUFVMTF9ET1dOCQlGSUVMRF9QUkVQX1dNMTYoR0VOTUFTSygxMywgMTIpLCAxKQo+ICsjZGVm
aW5lICBQTUVfUkVBRFlfRU5URVJfTDIzCQlCSVQoMykKPiArCj4gKy8qIE1lc3NhZ2UgUmVxdWVz
dCBSZWdpc3RlciAqLwo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX01TR19HRU4JCTB4MzQKPiArI2Rl
ZmluZSAgUE1FX1RVUk5fT0ZGCQkJRklFTERfUFJFUF9XTTE2KEJJVCg0KSwgMSkKPiAgIAo+ICAg
LyogUkFTREVTIFRCQSBpbmZvcm1hdGlvbiAqLwo+ICAgI2RlZmluZSBQQ0lFX0NMSUVOVF9DRE1f
UkFTREVTX1RCQV9JTkZPX0NNTgkweDE1NAo+IEBAIC00MzksOCArNDQ4LDQ2IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+ICAgCXJl
dHVybiAwOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcG1lX3R1cm5f
b2ZmKHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiArewo+ICsJc3RydWN0IGR3X3BjaWUgKnBjaSA9
IHRvX2R3X3BjaWVfZnJvbV9wcChwcCk7Cj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2No
aXAgPSB0b19yb2NrY2hpcF9wY2llKHBjaSk7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSByb2Nr
Y2hpcC0+cGNpLmRldjsKPiArCXUzMiBzdGF0dXM7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCS8qIDEu
IEJyb2FkY2FzdCBQTUVfVHVybl9PZmYgTWVzc2FnZSwgYml0IDQgc2VsZi1jbGVhciBvbmNlIGRv
bmUgKi8KPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUE1FX1RVUk5fT0ZG
LCBQQ0lFX0NMSUVOVF9NU0dfR0VOKTsKPiArCXJldCA9IHJlYWRsX3BvbGxfdGltZW91dChyb2Nr
Y2hpcC0+YXBiX2Jhc2UgKyBQQ0lFX0NMSUVOVF9NU0dfR0VOLAo+ICsJCQkJIHN0YXR1cywgIShz
dGF0dXMgJiBCSVQoNCkpLCBQQ0lFX1BNRV9UT19MMl9USU1FT1VUX1VTIC8gMTAsCj4gKwkJCQkg
UENJRV9QTUVfVE9fTDJfVElNRU9VVF9VUyk7Cj4gKwlpZiAocmV0KSB7Cj4gKwkJZGV2X3dhcm4o
ZGV2LCAiRmFpbGVkIHRvIHNlbmQgUE1FX1R1cm5fT2ZmXG4iKTsKPiArCQlyZXR1cm47Cj4gKwl9
Cj4gKwo+ICsJLyogMi4gV2FpdCBmb3IgUE1FX1RPX0FjaywgYml0IDkgd2lsbCBiZSBzZXQgb25j
ZSByZWNlaXZlZCAqLwo+ICsJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJf
YmFzZSArIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01TR19SWCwKPiArCQkJCSBzdGF0dXMsIHN0
YXR1cyAmIEJJVCg5KSwgUENJRV9QTUVfVE9fTDJfVElNRU9VVF9VUyAvIDEwLAo+ICsJCQkJIFBD
SUVfUE1FX1RPX0wyX1RJTUVPVVRfVVMpOwo+ICsJaWYgKHJldCkgewo+ICsJCWRldl93YXJuKGRl
diwgIkZhaWxlZCB0byByZWNlaXZlIFBNRV9UT19BY2tcbiIpOwo+ICsJCXJldHVybjsKPiArCX0K
PiArCj4gKwkvKiAzLiBDbGVhciBQTUVfVE9fQWNrIGFuZCBXYWl0IGZvciByZWFkeSB0byBlbnRl
ciBMMjMgbWVzc2FnZSAqLwo+ICsJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCBQ
TUVfVE9fQUNLLCBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NU0dfUlgpOwo+ICsJcmV0ID0gcmVh
ZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJfYmFzZSArIFBDSUVfQ0xJRU5UX1BPV0VSX0NP
TiwKPiArCQkJCSBzdGF0dXMsIHN0YXR1cyAmIFBNRV9SRUFEWV9FTlRFUl9MMjMsCj4gKwkJCQkg
UENJRV9QTUVfVE9fTDJfVElNRU9VVF9VUyAvIDEwLAo+ICsJCQkJIFBDSUVfUE1FX1RPX0wyX1RJ
TUVPVVRfVVMpOwo+ICsJaWYgKHJldCkKPiArCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQg
cmVhZHkgdG8gZW50ZXIgTDIzIG1lc3NhZ2VcbiIpOwo+ICt9CgoKVGhpcyBpcyBhIHF1ZXN0aW9u
IGZvciB0aGUgRFdDIGNvcmU6IHNob3VsZCB3ZSBjaGFuZ2UKZHdfcGNpZV9ob3N0X29wczo6cG1l
X3R1cm5fb2ZmKCkgdG8gcmV0dXJuIGEgdmFsdWUgaW5zdGVhZCBvZiBzaWxlbnRseQppZ25vcmlu
ZyBhIGZhaWx1cmU/CgpMb29raW5nIGF0IHBjaWUtZGVzaWdud2FyZS1ob3N0LmMsIHdlIGhhdmU6
CgppZiAocGNpLT5wcC5vcHMtPnBtZV90dXJuX29mZikgewogICAgIHBjaS0+cHAub3BzLT5wbWVf
dHVybl9vZmYoJnBjaS0+cHApOwp9IGVsc2UgewogICAgIHJldCA9IGR3X3BjaWVfcG1lX3R1cm5f
b2ZmKHBjaSk7CiAgICAgaWYgKHJldCkKICAgICAgICAgcmV0dXJuIHJldDsKfQoKVGhlIGhhbmRs
aW5nIGZlZWxzIGFzeW1tZXRyaWMuIElmIC0+cG1lX3R1cm5fb2ZmIGZhaWxzLCBzaG91bGRuJ3Qg
d2UgCmFib3J0IGR3X3BjaWVfc3VzcGVuZF9ub2lycSBhcyB3ZWxsPwoKT3RoZXIgdGhhbiB0aGF0
LCB0aGlzIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUgaW4gY3VycmVudCBzaGFwZSwKUmV2aWV3ZWQt
Ynk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKV2UgY2FuIGZ1cnRoZXIg
ZGlzY3VzcyB0aGUgY2FsbGJhY2sncyByZXR1cm4gdmFsdWUgaXNzdWUgb24gdG9wLgoKPiArCj4g
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGR3X3BjaWVfaG9zdF9vcHMgcm9ja2NoaXBfcGNpZV9ob3N0
X29wcyA9IHsKPiAgIAkuaW5pdCA9IHJvY2tjaGlwX3BjaWVfaG9zdF9pbml0LAo+ICsJLnBtZV90
dXJuX29mZiA9IHJvY2tjaGlwX3BjaWVfcG1lX3R1cm5fb2ZmLAo+ICAgfTsKPiAgIAo+ICAgLyoK
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
