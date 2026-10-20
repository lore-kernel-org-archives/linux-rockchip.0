Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE60D606A327
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4HLv4cTs;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ol6g562a
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZizstFQBQUwSodGot/o2Ggdd5aqJ+UJlfgavU3fsdE=; b=4HLv4cTs4vABwT
	HyLaynG3IwRutqX4q6uiQdFJUVPNBM0SFZ8uleyZJlq3Cr2E1a7ZLkL4e4ELcCeZGacf+ET90eAsU
	07WlyySABJ4+xqx7+3AdCS7Sr/wO9U/mP237ARrfbQ4ki/85a0E5n3ewN2EVffUpqJvo75h5hOOfY
	ett80WTqeRF77V6KUMcS1rd4LlsXoT7D7CAUvAjJgAueYte4wdKcygzaj0ExZLEeJorQtTmoCBy4L
	2txOHtlKkWyWi/UOKDWjLMSCqxz/Za8AaiYZ2OXlwQ+1DW+9h55fOjQHD0iVjepHVvzj3FvIEmgKu
	o4JxJUF/r7EqND2dyCQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAY6-00000009tCw-3PKj;
	Tue, 20 Oct 2026 14:10:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAY5-00000009tBu-0AMc;
	Tue, 20 Oct 2026 14:10:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 640A9413DF;
	Tue, 20 Oct 2026 14:10:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D3801F000C4;
	Tue, 20 Oct 2026 14:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792505440;
	bh=6OFxyQtijBXYSbvcaeMGg6HSw20JVaD24lHAGl8RQ2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ol6g562a328HhuoljmZTxXatRs5NBevcNy7ffv0uafG1txZ5Lu89zsglQ57D+IXXj
	 3fSewLLQaumJDPFb0wUgSpJr3hFmusYrkbHHJklEmQvOWf9leWpFmN7sYG0bBSa5vw
	 1jsan5AGieccaW+dM+AfFdLheolL8u3WY7/I3CkVcMqi+aQLOVqbtw/5PGw+HrDpeO
	 j2ynXCIrvUClI8Qfx96F+Jk1W5KfZUi6jwDR+/23DhmS5m7xLPMnF/zPOFg6VS5U75
	 /dD9Tfm2dUDiC0Jn/92vk33QIHU6TSb49Y96N1Hj9vXn0SjITfNzLQk2Y5kdC7DPO2
	 HbX4ELMkGaGwg==
Date: Tue, 20 Oct 2026 09:10:39 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: =?utf-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guochun Huang <hero.huang@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/8] dt-bindings: phy: rockchip,rk3588-mipi-dcphy: Add
 a cell to select TX or RX
Message-ID: <20261020141039.GB4157247-robh@kernel.org>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261019150631.GA265407-robh@kernel.org>
 <73ef0d06-75c5-4c10-b4c3-c7b3c07a1e18@collabora.com>
 <2501273.NG923GbCHz@diego>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2501273.NG923GbCHz@diego>
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBPY3QgMjAsIDIwMjYgYXQgMDM6Mzc6MzVQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gRGllbnN0YWcsIDIwLiBPa3RvYmVyIDIwMjYsIDAwOjIwOjQ3IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTWljaGFlbCBSaWVzY2g6Cj4gPiBIaSBhbGws
Cj4gPiAKPiA+IE9uIDEwLzE5LzI2IDE3OjA2LCBSb2IgSGVycmluZyB3cm90ZToKPiA+ID4gT24g
TW9uLCBPY3QgMTksIDIwMjYgYXQgMDQ6MTU6MDNQTSArMDgwMCwg5qWK5pm65oiQIHdyb3RlOgo+
ID4gPj4gSGkgS3J6eXN6dG9mLCBSb2IsCj4gPiA+Pgo+ID4gPj4+IEV4aXN0aW5nIE9TIHNob3Vs
ZCBpZ25vcmUgc3VycGx1cyBjZWxsIGlmIHRoZSBkcml2ZXIgaXMgY29kZWQgcHJvcGVybHkuCj4g
PiA+Pj4gU2FtZSBhcyBhZGRpbmcgbmV3IHByb3BlcnRpZXMgb3IgbmV3IGZyb250LWNvbXBhdGli
bGUuICBUaGUgcXVlc3Rpb24gaXMKPiA+ID4+PiBob3cgdGhlIGV4aXN0aW5nIGRyaXZlciBiZWhh
dmVzPwo+ID4gPj4KPiA+ID4+IEFzIHlvdSBwb2ludGVkIG91dCBvbiA1LzgsIHRoZSB4bGF0ZSBj
aGVja3MgYXJnc19jb3VudCAhPSAxLiBUaGUgREMtUEhZCj4gPiA+PiBkcml2ZXIgd2FzIG1lcmdl
ZCBpbiB2Ni4xNSwgc28gZXZlcnkga2VybmVsIHNpbmNlIDYuMTUgZmFpbHMgb24gYSBzZWNvbmQg
Y2VsbC4KPiA+ID4+Cj4gPiA+PiAxLiBLZWVwIHRoZSBzZWNvbmQgY2VsbC4gQWRkIHRoZSBwYXRj
aCBhcyBmb2xsb3dzOgo+ID4gPj4KPiA+ID4+IC0gaWYgKGFyZ3MtPmFyZ3NfY291bnQgIT0gMSkg
ewo+ID4gPj4gKyBpZiAoYXJncy0+YXJnc19jb3VudCA8IDEpIHsKPiA+ID4+ICAgICBkZXZfZXJy
KGRldiwgImludmFsaWQgbnVtYmVyIG9mIGFyZ3VtZW50c1xuIik7Cj4gPiA+PiAgICAgcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7Cj4gPiA+PiAgIH0KPiA+ID4+Cj4gPiA+PiArIGlmIChhcmdzLT5h
cmdzX2NvdW50ID4gMSAmJiBhcmdzLT5hcmdzWzFdKSB7Cj4gPiA+PiArICAgZGV2X2VycihkZXYs
ICJvbmx5IHRoZSB0cmFuc21pdHRlciBpcyBzdXBwb3J0ZWRcbiIpOwo+ID4gPj4gKyAgIHJldHVy
biBFUlJfUFRSKC1FSU5WQUwpOwo+ID4gPj4gKyB9Cj4gPiA+Pgo+ID4gPj4gICBXaXRoIEZpeGVz
OiBhbmQgQ2M6IHN0YWJsZSwgdGhlIHN0YWJsZSBrZXJuZWxzIG1haW50YWluZWQgYXQgdGhhdAo+
ID4gPj4gICB0aW1lIChjdXJyZW50bHkgNi4xOC55IGFuZCA3LjIueSkga2VlcCBEU0kgd29ya2lu
ZyB3aXRoIHRoZSBuZXcKPiA+ID4+ICAgZHRzLCBhbmQgdGhlIHJlY2VpdmVyIGZhaWxzIGNsZWFu
bHkgaW5zdGVhZCBvZiBnZXR0aW5nIHRoZSB0cmFuc21pdHRlci4KPiA+ID4+ICAgQnV0IEVPTCBr
ZXJuZWxzICg2LjE1LCA2LjE2LCA2LjE3LCA2LjE5LCA3LjAsIDcuMSkgc3RheSBhZmZlY3RlZC4K
PiA+ID4+ICAgSXQgZ29lcyBpbiB3aXRoIHRoZSBzZXJpZXMsIHNpbmNlIHR3by1jZWxsIGR0cyBv
bmx5IGV4aXN0IGFmdGVyIGl0Lgo+ID4gPj4KPiA+ID4+IDIuIFVzZSBhIGZsYWcgaW4gdGhlIHVw
cGVyIGJpdHMgb2YgdGhlIGV4aXN0aW5nIGNlbGwsIGFzIFJvYgo+ID4gPj4gICAgIHN1Z2dlc3Rl
ZC4gRXhpc3Rpbmcga2VybmVscyBhcmUgbm90IGFmZmVjdGVkLCB1bmxlc3MgYSBib2FyZCBlbmFi
bGVzCj4gPiA+PiAgICAgdGhlIERDLVBIWSBDU0ktMiByZWNlaXZlciBvbiA3LjAgb3IgbGF0ZXIg
d2l0aG91dCB0aGlzIHNlcmllcy4KPiA+ID4+Cj4gPiA+PiBJIHdpbGwgd3JpdGUgdGhlIGltcGFj
dCBjbGVhcmx5IHdoaWNoZXZlciAgYXBwcm9hY2ggaXMgc2VsZWN0ZWQgaW4KPiA+ID4+IHRoZSBy
ZWxhdGVkIGNvbW1pdCBtZXNzYWdlcyBhbmQgdGhlIGNvdmVyIGxldHRlci4KPiA+ID4+Cj4gPiA+
PiBJIHRoaW5rIHRoZSBjZWxsIGFwcHJvYWNoIGlzIGVhc2llciB0byByZWFkIGFuZCBtb3JlIHN5
bW1ldHJpYyBpbiB0aGUKPiA+ID4+IGxvbmcgdGVybSwKPiA+ID4+IGJ1dCBpdCBicmVha3MgbW9y
ZS4gV2hpY2ggb25lIGRvIHlvdSB0aGluayBpcyBiZXR0ZXI/IFRoYW5rcy4KPiA+ID4gCj4gPiA+
IEknbSBub3QgYSB1c2VyIG9mIHRoaXMgcGxhdGZvcm0sIHNvIEkgZG9uJ3QgY2FyZS4gVXAgdG8g
dGhlIHBsYXRmb3JtIAo+ID4gPiBtYWludGFpbmVycyB0byBkZWNpZGUgaWYgYnJlYWthZ2UgaXMg
YWNjZXB0aWJsZS4gWW91IGp1c3QgbmVlZCB0byAKPiA+ID4gZG9jdW1lbnQgdGhlIGlzc3VlIGlu
IHRoZSBjb21taXQgbWVzc2FnZS4KPiA+ID4gCj4gPiA+IFJvYgo+ID4gCj4gPiBJdCdzIGEgYml0
IG9mIGEgcGlja2xlLCBhbGwgdGhpcy4KPiA+IAo+ID4gSSBnYXZlIGl0IHNvbWUgbW9yZSB0aG91
Z2h0LiBJbiB0aGUgZW5kIHRoaXMgaXMgYW4gSVAgYmxvY2sgd2l0aCB0d28KPiA+IFBIWXMuIE5v
IG1vcmUsIG5vIGxlc3MuIE9uZSBjZWxsIGlzIHN1ZmZpY2llbnQgdG8gYWRkcmVzcyB0aG9zZSwg
YW5kIGl0Cj4gPiBjb3VsZCBiZSAwIGZvciB0aGUgdHJhbnNtaXR0aW5nIFBIWSAoRFNJLCBkaXNw
bGF5KSBhbmQgMSBmb3IgdGhlCj4gPiByZWNlaXZpbmcgUEhZIChDU0ksIGNhbWVyYSkuCj4gPiAK
PiA+IE9mIGNvdXJzZSB0aGUgdHdvIFBIWXMgY2FuIG9wZXJhdGUgaW4gZWl0aGVyIERQSFkgb3Ig
Q1BIWSBtb2RlLiBUaGUKPiA+IHBoeS1jZWxscyBoYXZlIGJlZW4gKG1pcz8pdXNlZCB0byBzZWxl
Y3QgdGhlIHByb3BlciBtb2RlIG9mIGNvbWJvIFBIWXMsCj4gPiBhbmQgdGhpcyBwcmluY2lwbGUg
aGFzIGJlZW4gYXBwbGllZCBoZXJlIHRvby4KPiA+IAo+ID4gSG93ZXZlciwgd2UgaGF2ZSB0aGUg
c3BlY2lhbCBzaXR1YXRpb24gaGVyZSB0aGF0IHRoZSBtb2RlIGNhbiBvbmx5IGJlCj4gPiBjaGFu
Z2VkIGZvciB0aGUgY29tcGxldGUgSVAgYmxvY2sgKGFuZCB0aHVzIGZvciBib3RoIFBIWXMgYXQg
dGhlIHNhbWUKPiA+IHRpbWUpLiBBcyBCcnlhbiBwb2ludHMgb3V0LCB3ZSBuZWVkIHRvIGNoZWNr
IGFuZCBjb21wbGFpbiBpZiB0aGUgUEhZCj4gPiBtb2RlIGlzIG5vdCBzZXQgdG8gdGhlIHNhbWUg
dmFsdWUgZm9yIGJvdGggUEhZcy4KPiA+IAo+ID4gSSBzdWdnZXN0IHVzaW5nIGEgcHJvcGVydHkK
PiA+ICAgICBzYW1zdW5nLGNwaHktbW9kZTsKPiAKPiBJIGd1ZXNzLCBhIG1heWJlIG5pY2VyIHdh
eSB3b3VsZCBiZSBtaW1pY2luZwo+IAlEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2ludGVsLGNvbWJvLXBoeS55YW1sCj4gCj4gd2l0aCBpdHMKPiAJaW50ZWwscGh5LW1vZGUg
PSA8eD4KPiAKPiB3aXRoIHggY29taW5nIGZyb20gaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5
LmgKPiBmb3IgdGhlIGRpc3RpbmN0aW9uIGJldHdlZW4gY3BoeSBhbmQgZHBoeSwgc28gd2UgZG9u
J3QgaW50cm9kdWNlIHlldAo+IGFub3RoZXIgd2F5IHRvIGRlc2NyaWJlIHRoaXMuCgpXZSBhbHJl
YWR5IGhhdmUgdGhlIHBsYWluICdwaHktdHlwZScgcHJvcGVydHkgd2hpY2ggdGFrZXMgdGhlIHNh
bWUgClBIWV9NT0RFX3ggdmFsdWVzLiBXZSBkb24ndCBuZWVkIHlldCBhbm90aGVyIHZlbmRvciBz
cGVjaWZpYyBwcm9wZXJ0eS4KCj4gCj4gPiAobmFtZSB0byBiZSBiaWtlc2hlZGRlZCkgdGhhdCBz
ZXRzIHRoZSBjb21wbGV0ZSBJUCBibG9jayBpbnRvIENQSFkgbW9kZQo+ID4gKERQSFkgYmVpbmcg
dGhlIGRlZmF1bHQpIHRvIGRpc3Rpbmd1aXNoIGJldHdlZW4gdGhlIG1vZGVzLiBTaW5jZSBib3Ro
Cj4gPiBtb2RlcyB1c2UgYSBkaWZmZXJlbnQgZWxlY3RyaWNhbCBpbnRlcmZhY2UsIHRoaXMgaXMg
Y2xlYXJseSBhIGhhcmR3YXJlCj4gPiB0aGluZyBhbmQgdGh1cyBzdWl0YWJsZSBmb3IgZGV2aWNl
IHRyZWUuCj4gPiAKPiA+IFRoZW4sIHdlIGNhbiBhZGRyZXNzIHRoZSB0d28gUEhZcyB3aXRoIHRo
ZSBoZWxwIG9mIHRoZSBhbHJlYWR5IGV4aXN0aW5nCj4gPiBwaHkgY2VsbCAod2l0aG91dCBhbnkg
Yml0ZmxhZyB0d2Vha3MgdG8gdGhlIHZhbHVlKS4KPiA+IAo+ID4gVGhlIHNvbGUgZHJhd2JhY2sg
aXMgdGhhdCB3ZSBuZWVkIHRvIGFjY2VwdCB0aGUgUEhZX1RZUEVfRFBIWSBhbmQKPiA+IFBIWV9U
WVBFX0NQSFkgdmFsdWVzIHRoYXQgc29tZSBPUyBpbiB0aGUgZmllbGQgbWlnaHQgcGFzcy4gKEZv
ciBMaW51eCwKPiA+IGl0IHNob3VsZCBvbmx5IGJlIHRoZSBmb3JtZXIuKSBBbmQgd2UgbmVlZCB0
byBoYW5kbGUgdGhvc2UgdmFsdWVzCj4gPiBjb3JyZWN0bHkuIEJ1dCBJIHRoaW5rIHRoaXMgaXMg
bm90IG1vcmUgcGFpbmZ1bCB0aGFuIHRoZSBvdGhlcgo+ID4gYXBwcm9hY2hlcy4gQXQgdGhlIHNh
bWUgdGltZSwgdGhpcyBkZXNpZ24gc2VlbXMgdG8gYmUgdGhlIG1vc3QgY29ycmVjdAo+IAo+IFRo
ZSBjdXJyZW50IGNlbGwgdmFsdWVzIGFyZSAxMCArIDExLCBzbyBhcyBsb25nIGFzIHdlIGRvbid0
IHJlLXVzZSB0aG9zZQo+IGV4YWN0IHZhbHVlcyBmb3IgdGhlIG90aGVyIGNvbnN0YW50cyB0aGUg
ZHJpdmVyIHNob3VsZCBzb21ld2hhdCBlYXNpbHkKPiBiZSBhYmxlIHRvIHJlY29nbml6ZSBhbiBv
bGQgRFQ/CgpJIHRoaW5rIHlvdSB3aWxsIHN0aWxsIGhhdmUgYW4gQUJJIGlzc3VlIG9mIHdoYXQg
ZG9lcyBvbGQgT1MgZG8gd2l0aCBuZXcgCnZhbHVlcz8KClJvYgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
