Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B51D6079D72
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 15:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Rfu5J8MG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eMAcO0/8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcDpSlkHjXgmwj9K485INbAXKbsnpwFv9HGS2Xm+loc=; b=Rfu5J8MGZa3/Vf
	T91AB952ff1S5rYoEh3qK8s6FteeCpOAa6CkQWhye/BrK112/WtejnSHylNOgCdkJneHME6H2yHlS
	qktJ4D3fCj4henPJEMt+ubcN3zgc376GM/bH7pRXFBbmg/tRN/yUAu2TsTdSz+aTico06CH+XXoMx
	o2Zn5ItIfoS8gf4hrgKs0tz3TN6hnsvTSVODxeowz7XHGFXh1ou+HOmkLAcA0t4OLYzXJMdKHUqP8
	2wWA1uXpP35QwklaJb+OgWw47mM1eduulfral8ZxNEuMxJx7kp9PZdk1jOuHeAcDSGFmTqoNGuiJ9
	REzBeO+JrikT9N2iFsxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIowd-00000007oJP-0LGK;
	Mon, 19 Oct 2026 15:06:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIowb-00000007oHs-1zVL;
	Mon, 19 Oct 2026 15:06:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9048A6021A;
	Mon, 19 Oct 2026 15:06:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E47B1F000C4;
	Mon, 19 Oct 2026 15:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792422392;
	bh=Cr4YwwSLfkiUol1Qs2oQGw7Kr0kUMHG32ZziBkuSaP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eMAcO0/8yUllBiV1FwYry+ie9hG4Dd1vc+Lu1I4Tw6w33WQrgBEspZw4t4uvXPmEs
	 hL0L7gs0tWZWecc4cbCRMKOfqE2bvTL6PVKkzwVi0cLxd7oel/sNEd4grJ3BuyN2ik
	 bpHKUSTlsFuWeJO4L5Ai5V4ZU1hbN7FdYoP60UaY0vf/Dk1PxwCXyCINaHlmwjfW5h
	 iTafIxUPLvCaXeQfwcE8anw2fDK2zvackbEKSaJFP0Pkz2NhDZjxM8HqESdL1xPIJw
	 krncqv99/JN6676OYGThHfR+CtpScn0UP/Ltnh0V2OdnUx/L171lKDEFOw0F/bSW7h
	 kv14+0p4tthnA==
Date: Mon, 19 Oct 2026 10:06:31 -0500
From: Rob Herring <robh@kernel.org>
To: =?utf-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Guochun Huang <hero.huang@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Michael Riesch <michael.riesch@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
Message-ID: <20261019150631.GA265407-robh@kernel.org>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-2-e63b49eabe2d@gmail.com>
 <20261016140115.GA1798470-robh@kernel.org>
 <20261017-gainful-goldfish-of-climate-bef863@quoll>
 <CAPwA33+bR1BF9KeA9my07Yz7gXW7TXq8EPhwQ4GvHMSFDk+uWw@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPwA33+bR1BF9KeA9my07Yz7gXW7TXq8EPhwQ4GvHMSFDk+uWw@mail.gmail.com>
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_ZEN_BLOCKED_OPENDNS,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gTW9uLCBPY3QgMTksIDIwMjYgYXQgMDQ6MTU6MDNQTSArMDgwMCwg5qWK5pm65oiQIHdyb3Rl
Ogo+IEhpIEtyenlzenRvZiwgUm9iLAo+IAo+ID4gRXhpc3RpbmcgT1Mgc2hvdWxkIGlnbm9yZSBz
dXJwbHVzIGNlbGwgaWYgdGhlIGRyaXZlciBpcyBjb2RlZCBwcm9wZXJseS4KPiA+IFNhbWUgYXMg
YWRkaW5nIG5ldyBwcm9wZXJ0aWVzIG9yIG5ldyBmcm9udC1jb21wYXRpYmxlLiAgVGhlIHF1ZXN0
aW9uIGlzCj4gPiBob3cgdGhlIGV4aXN0aW5nIGRyaXZlciBiZWhhdmVzPwo+IAo+IEFzIHlvdSBw
b2ludGVkIG91dCBvbiA1LzgsIHRoZSB4bGF0ZSBjaGVja3MgYXJnc19jb3VudCAhPSAxLiBUaGUg
REMtUEhZCj4gZHJpdmVyIHdhcyBtZXJnZWQgaW4gdjYuMTUsIHNvIGV2ZXJ5IGtlcm5lbCBzaW5j
ZSA2LjE1IGZhaWxzIG9uIGEgc2Vjb25kIGNlbGwuCj4gCj4gMS4gS2VlcCB0aGUgc2Vjb25kIGNl
bGwuIEFkZCB0aGUgcGF0Y2ggYXMgZm9sbG93czoKPiAKPiAtIGlmIChhcmdzLT5hcmdzX2NvdW50
ICE9IDEpIHsKPiArIGlmIChhcmdzLT5hcmdzX2NvdW50IDwgMSkgewo+ICAgICBkZXZfZXJyKGRl
diwgImludmFsaWQgbnVtYmVyIG9mIGFyZ3VtZW50c1xuIik7Cj4gICAgIHJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOwo+ICAgfQo+IAo+ICsgaWYgKGFyZ3MtPmFyZ3NfY291bnQgPiAxICYmIGFyZ3Mt
PmFyZ3NbMV0pIHsKPiArICAgZGV2X2VycihkZXYsICJvbmx5IHRoZSB0cmFuc21pdHRlciBpcyBz
dXBwb3J0ZWRcbiIpOwo+ICsgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiArIH0KPiAKPiAg
IFdpdGggRml4ZXM6IGFuZCBDYzogc3RhYmxlLCB0aGUgc3RhYmxlIGtlcm5lbHMgbWFpbnRhaW5l
ZCBhdCB0aGF0Cj4gICB0aW1lIChjdXJyZW50bHkgNi4xOC55IGFuZCA3LjIueSkga2VlcCBEU0kg
d29ya2luZyB3aXRoIHRoZSBuZXcKPiAgIGR0cywgYW5kIHRoZSByZWNlaXZlciBmYWlscyBjbGVh
bmx5IGluc3RlYWQgb2YgZ2V0dGluZyB0aGUgdHJhbnNtaXR0ZXIuCj4gICBCdXQgRU9MIGtlcm5l
bHMgKDYuMTUsIDYuMTYsIDYuMTcsIDYuMTksIDcuMCwgNy4xKSBzdGF5IGFmZmVjdGVkLgo+ICAg
SXQgZ29lcyBpbiB3aXRoIHRoZSBzZXJpZXMsIHNpbmNlIHR3by1jZWxsIGR0cyBvbmx5IGV4aXN0
IGFmdGVyIGl0Lgo+IAo+IDIuIFVzZSBhIGZsYWcgaW4gdGhlIHVwcGVyIGJpdHMgb2YgdGhlIGV4
aXN0aW5nIGNlbGwsIGFzIFJvYgo+ICAgICBzdWdnZXN0ZWQuIEV4aXN0aW5nIGtlcm5lbHMgYXJl
IG5vdCBhZmZlY3RlZCwgdW5sZXNzIGEgYm9hcmQgZW5hYmxlcwo+ICAgICB0aGUgREMtUEhZIENT
SS0yIHJlY2VpdmVyIG9uIDcuMCBvciBsYXRlciB3aXRob3V0IHRoaXMgc2VyaWVzLgo+IAo+IEkg
d2lsbCB3cml0ZSB0aGUgaW1wYWN0IGNsZWFybHkgd2hpY2hldmVyICBhcHByb2FjaCBpcyBzZWxl
Y3RlZCBpbgo+IHRoZSByZWxhdGVkIGNvbW1pdCBtZXNzYWdlcyBhbmQgdGhlIGNvdmVyIGxldHRl
ci4KPiAKPiBJIHRoaW5rIHRoZSBjZWxsIGFwcHJvYWNoIGlzIGVhc2llciB0byByZWFkIGFuZCBt
b3JlIHN5bW1ldHJpYyBpbiB0aGUKPiBsb25nIHRlcm0sCj4gYnV0IGl0IGJyZWFrcyBtb3JlLiBX
aGljaCBvbmUgZG8geW91IHRoaW5rIGlzIGJldHRlcj8gVGhhbmtzLgoKSSdtIG5vdCBhIHVzZXIg
b2YgdGhpcyBwbGF0Zm9ybSwgc28gSSBkb24ndCBjYXJlLiBVcCB0byB0aGUgcGxhdGZvcm0gCm1h
aW50YWluZXJzIHRvIGRlY2lkZSBpZiBicmVha2FnZSBpcyBhY2NlcHRpYmxlLiBZb3UganVzdCBu
ZWVkIHRvIApkb2N1bWVudCB0aGUgaXNzdWUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKUm9iCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
