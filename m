Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB10EC5B572
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 08:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X4I4GxZPayx7mar0gDmNRt90CYnSNbEGHhSiyUWc1k=; b=ES+bSbWEKd+WKC
	MHFOgCa2eVwvm+bizt8GdB1GPntFpBiU3u5kJzpUZpnEvrIgLuPCW2DcaBPnEJwK0Sw+bsGKHOLee
	2x3MSQSV0tGZ1LIdk/3L6goGt01lqbXzLmS2+23zxEYg4PFsKMdEeEPTdsGCTD6210cInQQ7AuybJ
	SL6Xqn05wB/2t+JLt4PPkEcyQ+KiiWH2VUzeRtGi/rjey3rr+tpUqaWzHv1MU/lqdQcaTXQ0pWf4K
	uc0oXjc9y2k/OvfJojBXXBMQqxyGdznknHMHszLz5SQInT4oHIUsgR1qP0+RzUXKrDsW8cfKIZcf6
	noOIOGULU3QQ+qk3Moqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQNl-000000004dd-3Y6J;
	Thu, 13 Aug 2026 08:01:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQNk-000000004cj-1lgD;
	Thu, 13 Aug 2026 08:01:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ABC396011F;
	Thu, 13 Aug 2026 08:01:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC97E1F000E9;
	Thu, 13 Aug 2026 08:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786608103;
	bh=U/QDc57HSGSKNJJZEHvkF79ekVdScwIOuwKamQjGrk4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=eRGztM1ROVu85mu3Y6Asbb4UV30m1PVIFFg/hAg2mBzow9rkmajlRYMGGJuY/Sctu
	 XhvuI7KZB7KvaRiAPC7LTQdeQKHPfMIArwHh6FcNZWpxE4yJ+Cce6MvZ6RSaW5veEE
	 W9QlGNt/Qxg+Uff93YuuhHG+6T6HTopK9XEVgas1USZ/PeBPeWjJi4sIpHd66Y77ZY
	 58dAXgU4oX03fgybgCwG9qfovaS6HjAqlvbHLYSUIiaUv/FnJ5OAaNEz3bsYVYfGc6
	 C8fFAFKBAMV89usJh+RUhxRzyZqHGSNAT9i0inoA//cQ8nRUZwMmj5IPtcMCWmU3jz
	 lW5QtAKJAmFcg==
Message-ID: <156634ae-6ecb-445a-8851-6dc4ee924518@kernel.org>
Date: Thu, 13 Aug 2026 10:01:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Riesch <michael.riesch@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com>
 <20260812-refreshing-rampant-gecko-b38ef9@quoll>
 <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
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

T24gMTIvMDgvMjAyNiAxNDoyNCwg5qWK5pm65oiQIHdyb3RlOgo+IFRoYW5rcyBmb3IgdGhlIHJl
dmlldy4KPiAKPj4gSSByZWFkIGFib3ZlLCBidXQgc3RpbGwgZG8gbm90IGdldCB3aHkgVFlQRV9E
UEhZL0NQSFkgaXMgbm90IGVub3VnaC4KPj4gSXNuJ3QgRFBIWSBpbXBseWluZyBpdCBpcyBEU0k/
Cj4gCj4gSSBzZWUgeW91ciBwb2ludCwgYW5kIEkgZGlkIG5vdCBleHBsYWluIHRoaXMgY2xlYXJs
eSBlbm91Z2ggaW4gdGhlIHByZXZpb3VzCj4gdmVyc2lvbi4KPiAKPiBELVBIWSBvbmx5IGRlc2Ny
aWJlcyB0aGUgZWxlY3RyaWNhbCBsYXllciwgYW5kIGJvdGggTUlQSSBEU0kgYW5kIE1JUEkgQ1NJ
LTIKPiBjYW4gcnVuIG9uIHRvcCBvZiBpdC4gQSBDU0ktMiByZWNlaXZlcidzIFBIWSBpcyBhIEQt
UEhZIGp1c3QgYXMgbXVjaCBhcyBhCj4gRFNJIHRyYW5zbWl0dGVyJ3MgaXMsIHNvIFBIWV9UWVBF
X0RQSFkgYWxvbmUgZG9lcyBub3QgdGVsbCB1cyB3aGljaCBvbmUgdGhlCj4gY29uc3VtZXIgaXMg
YXNraW5nIGZvci4KPiAKPiBUaGF0IGlzIHRoZSBwcm9ibGVtIGhlcmUuIFRoZSBSSzM1ODggREMt
UEhZIGV4cG9zZXMgYm90aCBhIHRyYW5zbWl0dGVyIGFuZAo+IGEgcmVjZWl2ZXIgZnJvbSBhIHNp
bmdsZSBQSFkgYmxvY2ssIHdoaWNoIGNhbiBiZSB1c2VkIGJ5IHR3byBpbmRlcGVuZGVudAo+IGNv
bnN1bWVycyBhdCB0aGUgc2FtZSB0aW1lLiBUaGlzIGlzIG5vdCBhIHRoZW9yZXRpY2FsIGNvbmNl
cm46IG9uIHRoaXMKPiBib2FyZCBhIERTSSBwYW5lbCBpcyBzY2FubmluZyBvdXQgd2hpbGUgdGhl
IHNhbWUgUEhZIHJlY2VpdmVzIENTSS0yIGZyYW1lcwo+IGZyb20gYSBjYW1lcmEuIFdpdGggb25s
eSB0aGUgZWxlY3RyaWNhbCBsYXllciB0byBpZGVudGlmeSB0aGUgUEhZLCBib3RoCj4gY29uc3Vt
ZXJzIHdvdWxkIGVuZCB1cCB3aXRoIHRoZSBzYW1lIHBoYW5kbGUgY2VsbDoKPiAKPiBkc2lAZmRl
MjAwMDAgewo+IHBoeXMgPSA8Jm1pcGlkY3BoeTAgUEhZX1RZUEVfRFBIWT47IC8qIHdhbnRzIHRo
ZSBUWCAqLwo+IH07Cj4gCj4gY3NpMkBmZGQxMDAwMCB7Cj4gcGh5cyA9IDwmbWlwaWRjcGh5MCBQ
SFlfVFlQRV9EUEhZPjsgLyogd2FudHMgdGhlIFJYICovCj4gfTsKPiAKPiBUaGVyZSBpcyB0aGVu
IG5vdGhpbmcgaW4gLm9mX3hsYXRlKCkgdG8gZGlzdGluZ3Vpc2ggdGhlIHR3byByZXF1ZXN0cy4K
PiAKPiBJIHdpbGwgbWFrZSB0aGlzIGNsZWFyZXIgaW4gdGhlIHY0IGNvbW1pdCBtZXNzYWdlIGFu
ZCBpbmNsdWRlIHRoZSBleGFtcGxlCj4gYWJvdmUgc28gdGhhdCB0aGUgcmVhc29uaW5nIGlzIGVh
c2llciB0byBmb2xsb3cuCj4gCj4gRm9yIGNvbnRleHQsIHYyIGRlc2NyaWJlZCB0aGUgZGlyZWN0
aW9uIHdpdGggYSBSb2NrY2hpcC1wcml2YXRlCj4gUktfRENQSFlfRElSXyogZW51bS4gTWljaGFl
bCBSaWVzY2ggc3VnZ2VzdGVkIHVzaW5nIGdlbmVyaWMgY29uc3RhbnRzCj4gaW5zdGVhZCBbMV0s
IGFuZCBWaW5vZCBhZ3JlZWQgWzJdLgo+IAo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzgyZGEzNjIyLTljM2EtNDU0Yy04N2JjLWZiNGVjN2FkYjY4ZEBjb2xsYWJvcmEuY29tCj4gWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvYW5TdXhmZWl0U3FtU0hOckB2YW1hbgo+IAo+PiBZ
b3VyIHRhZyBnb2VzIHRoZSBsYXN0Lgo+IAo+IFN1cmUsIEkgd2lsbCBmaXggdGhpcyBpbiB2NC4g
VGhlIFNpZ25lZC1vZmYtYnkgdGFnIHdpbGwgY29tZSBsYXN0LCBhbmQgSQo+IHdpbGwgY2hlY2sg
dGhlIHdob2xlIHNlcmllcyBhZ2Fpbi4KCkxMTS1wYXN0ZWQgYW5kIExMTS1mZWVkaW5nIGFuc3dl
ciBhZ2Fpbi4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
