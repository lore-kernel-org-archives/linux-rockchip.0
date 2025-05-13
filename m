Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA92C3ABCC
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 16:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zgqFyBcUAwBmefsO1ViqicB67tHw5LEH2YU2T6vRXo=; b=GfXtaYzg3xlVN1
	swO08XOnpxwoP6MEfOjSbCDh5uXiyakxDi9gtzv6TNtPipHtwu+mp43hL5CWkVcA0RZbQ3v1svedL
	W04TqS57El06ewWMVPU75seizH0yj6fKT2bu1erLyxoH2flkoHo84S1GW7G7Gyh0a0jrGRCoB1tsF
	Kg2HrNM6qDKZeU841XXUnfeQsQLVbJQeFeAU+UJWGdXfhCBYFGoFVF41J2u2OSmdImE1+NKt7LGYU
	MT2JbC6NVn+U2mfdXjSl7Rc7smMWe+0Q3qFBco/EQsXhDOIaugEQJAiHzFO7MxQzGc6HICP0iveaQ
	YpD3CInhaEHGIeb4LjFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEsIj-0000000CtlD-0lXC;
	Tue, 13 May 2025 16:16:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEsFR-0000000CtL7-4C6R;
	Tue, 13 May 2025 16:12:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=yDS9tO3ad7hmn2izTyW+Vt2trGV6W8nXY+0cUczUfFk=; b=CDUZIWTZ8iV9z1vn5NZhf+dsJZ
	AbKY0wgyt8Oj4xHVMmjBVaH06DIx9JvBRRbWGiZc9BYwkuYOpawrp799rRkal1rqEJyIwGAyfXzg9
	RmHWCTQtJM31w51y111FTNoYVkd5aCaM6ra7mSIKL06993wDw/OIglQSGfEKoVc7Ou1pRKIvR/l8V
	D6W5vz5mv22m5PH4UVwMNtd8msAg3ioQrsIea8Lonwok8btQ4sjAP3toMWs5xWLLTub1Y8N6awwxu
	npSWtVaCVmwlaxPNqM+xeZmVCdYWMbDO3e/mutonXgdzyCDPPlIAtEjimP8ZdhgUoZssx/XLNqoLi
	qC7Ist8Q==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uEsFM-0001AW-Td; Tue, 13 May 2025 18:12:48 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/5] usb: misc: onboard_usb_dev: fix support for Cypress HX3
 hubs
Date: Tue, 13 May 2025 18:12:47 +0200
Message-ID: <2058366.PIDvDuAF1L@diego>
In-Reply-To: <20250425-onboard_usb_dev-v2-1-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
 <20250425-onboard_usb_dev-v2-1-4a76a474a010@thaumatec.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_091254_058589_61874980 
X-CRM114-Status: GOOD (  24.61  )
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

QW0gRnJlaXRhZywgMjUuIEFwcmlsIDIwMjUsIDE3OjE4OjA2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTHVrYXN6IEN6ZWNob3dza2k6Cj4gVGhlIEN5cHJlc3MgSFgzIFVT
QjMuMCBodWJzIHVzZSBkaWZmZXJlbnQgUElEIHZhbHVlcyBkZXBlbmRpbmcKPiBvbiB0aGUgcHJv
ZHVjdCB2YXJpYW50LiBUaGUgY29tbWVudCBpbiBjb21wYXRpYmxlcyB0YWJsZSBpcwo+IG1pc2xl
YWRpbmcsIGFzIHRoZSBjdXJyZW50bHkgdXNlZCBQSURzICgweDY1MDQgYW5kIDB4NjUwNiBmb3IK
PiBVU0IgMy4wIGFuZCBVU0IgMi4wLCByZXNwZWN0aXZlbHkpIGFyZSBkZWZhdWx0cyBmb3IgdGhl
IENZVVNCMzMxeCwKPiB3aGlsZSBDWVVTQjMzMHggYW5kIENZVVNCMzMyeCB2YXJpYW50cyB1c2Ug
ZGlmZmVyZW50IHZhbHVlcy4KPiBCYXNlZCBvbiB0aGUgZGF0YXNoZWV0IFsxXSwgdXBkYXRlIHRo
ZSBjb21wYXRpYmxlIHVzYiBkZXZpY2VzIHRhYmxlCj4gdG8gaGFuZGxlIGRpZmZlcmVudCB0eXBl
cyBvZiB0aGUgaHViLgo+IFRoZSBjaGFuZ2UgYWxzbyBpbmNsdWRlcyB2ZW5kb3IgbW9kZSBQSURz
LCB3aGljaCBhcmUgdXNlZCBieSB0aGUKPiBodWIgaW4gSTJDIE1hc3RlciBib290IG1vZGUsIGlm
IGNvbm5lY3RlZCBFRVBST00gY29udGFpbnMgaW52YWxpZAo+IHNpZ25hdHVyZSBvciBpcyBibGFu
ay4gVGhpcyBhbGxvd3MgdG8gY29ycmVjdGx5IGJvb3QgdGhlIGh1YiBldmVuCj4gaWYgdGhlIEVF
UFJPTSB3aWxsIGhhdmUgYnJva2VuIGNvbnRlbnQuCj4gTnVtYmVyIG9mIHZjYyBzdXBwbGllcyBh
bmQgdGltaW5nIHJlcXVpcmVtZW50cyBhcmUgdGhlIHNhbWUgZm9yIGFsbAo+IEhYIHZhcmlhbnRz
LCBzbyB0aGUgcGxhdGZvcm0gZHJpdmVyJ3MgbWF0Y2ggdGFibGUgZG9lcyBub3QgaGF2ZSB0bwo+
IGJlIGV4dGVuZGVkLgo+IAo+IFsxXSBodHRwczovL3d3dy5pbmZpbmVvbi5jb20vZGdkbC9JbmZp
bmVvbi1IWDNfVVNCXzNfMF9IdWJfQ29uc3VtZXJfSW5kdXN0cmlhbC1EYXRhU2hlZXQtdjIyXzAw
LUVOLnBkZj9maWxlSWQ9OGFjNzhjOGM3ZDBkOGRhNDAxN2QwZWNiNTNmNjQ0YjgKPiAgICAgVGFi
bGUgOS4gUElEIFZhbHVlcwo+IAo+IEZpeGVzOiBiNDNjZDgyYTFhNDAgKCJ1c2I6IG1pc2M6IG9u
Ym9hcmQtaHViOiBhZGQgc3VwcG9ydCBmb3IgQ3lwcmVzcyBIWDMgVVNCIDMuMCBmYW1pbHkiKQo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEN6ZWNo
b3dza2kgPGx1a2Fzei5jemVjaG93c2tpQHRoYXVtYXRlYy5jb20+CgpSZXZpZXdlZC1ieTogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCkBHcmVnS0g6IEknZCBhc3N1bWUgeW91IHBp
Y2sgcGF0Y2hlcyAxKzIgKGR0LWJpbmRpbmcgKyBkcml2ZXIpIGFuZCBJIHBpY2sgdGhlClJvY2tj
aGlwIGFybTY0LWR0cyBwYXRjaGVzIGFmdGVyd2FyZHMsIGFmdGVyIHRoZSBmaXJzdCB0d28gbG9v
ayBnb29kIHRvIHlvdT8KClRoYW5rcyBhIGxvdApIZWlrbwoKPiAtLS0KPiAgZHJpdmVycy91c2Iv
bWlzYy9vbmJvYXJkX3VzYl9kZXYuYyB8IDEwICsrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy91c2IvbWlzYy9vbmJvYXJkX3VzYl9kZXYuYyBiL2RyaXZlcnMvdXNiL21pc2Mvb25ib2FyZF91
c2JfZGV2LmMKPiBpbmRleCA3NWFjM2M2YWE5MmQwZDkyNWJiOTQ4OGQxZTYyOTU1NDg0NDZiZjk4
Li5mNTM3MmRmYTI0MWE5Y2VlMDlmZWE5NWZkMTRiNzI3MjdhMTQ5YjJlIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvdXNiL21pc2Mvb25ib2FyZF91c2JfZGV2LmMKPiArKysgYi9kcml2ZXJzL3VzYi9t
aXNjL29uYm9hcmRfdXNiX2Rldi5jCj4gQEAgLTU2OSw4ICs1NjksMTQgQEAgc3RhdGljIHZvaWQg
b25ib2FyZF9kZXZfdXNiZGV2X2Rpc2Nvbm5lY3Qoc3RydWN0IHVzYl9kZXZpY2UgKnVkZXYpCj4g
IH0KPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdXNiX2RldmljZV9pZCBvbmJvYXJkX2Rldl9p
ZF90YWJsZVtdID0gewo+IC0JeyBVU0JfREVWSUNFKFZFTkRPUl9JRF9DWVBSRVNTLCAweDY1MDQp
IH0sIC8qIENZVVNCMzN7MCwxLDJ9eC9DWVVTQjIzMHggMy4wIEhVQiAqLwo+IC0JeyBVU0JfREVW
SUNFKFZFTkRPUl9JRF9DWVBSRVNTLCAweDY1MDYpIH0sIC8qIENZVVNCMzN7MCwxLDJ9eC9DWVVT
QjIzMHggMi4wIEhVQiAqLwo+ICsJeyBVU0JfREVWSUNFKFZFTkRPUl9JRF9DWVBSRVNTLCAweDY1
MDApIH0sIC8qIENZVVNCMzMweCAzLjAgSFVCICovCj4gKwl7IFVTQl9ERVZJQ0UoVkVORE9SX0lE
X0NZUFJFU1MsIDB4NjUwMikgfSwgLyogQ1lVU0IzMzB4IDIuMCBIVUIgKi8KPiArCXsgVVNCX0RF
VklDRShWRU5ET1JfSURfQ1lQUkVTUywgMHg2NTAzKSB9LCAvKiBDWVVTQjMzezAsMX14IDIuMCBI
VUIsIFZlbmRvciBNb2RlICovCj4gKwl7IFVTQl9ERVZJQ0UoVkVORE9SX0lEX0NZUFJFU1MsIDB4
NjUwNCkgfSwgLyogQ1lVU0IzMzF4IDMuMCBIVUIgKi8KPiArCXsgVVNCX0RFVklDRShWRU5ET1Jf
SURfQ1lQUkVTUywgMHg2NTA2KSB9LCAvKiBDWVVTQjMzMXggMi4wIEhVQiAqLwo+ICsJeyBVU0Jf
REVWSUNFKFZFTkRPUl9JRF9DWVBSRVNTLCAweDY1MDcpIH0sIC8qIENZVVNCMzMyeCAyLjAgSFVC
LCBWZW5kb3IgTW9kZSAqLwo+ICsJeyBVU0JfREVWSUNFKFZFTkRPUl9JRF9DWVBSRVNTLCAweDY1
MDgpIH0sIC8qIENZVVNCMzMyeCAzLjAgSFVCICovCj4gKwl7IFVTQl9ERVZJQ0UoVkVORE9SX0lE
X0NZUFJFU1MsIDB4NjUwYSkgfSwgLyogQ1lVU0IzMzJ4IDIuMCBIVUIgKi8KPiAgCXsgVVNCX0RF
VklDRShWRU5ET1JfSURfQ1lQUkVTUywgMHg2NTcwKSB9LCAvKiBDWTdDNjU2M3ggMi4wIEhVQiAq
Lwo+ICAJeyBVU0JfREVWSUNFKFZFTkRPUl9JRF9HRU5FU1lTLCAweDA2MDgpIH0sIC8qIEdlbmVz
eXMgTG9naWMgR0w4NTBHIFVTQiAyLjAgSFVCICovCj4gIAl7IFVTQl9ERVZJQ0UoVkVORE9SX0lE
X0dFTkVTWVMsIDB4MDYxMCkgfSwgLyogR2VuZXN5cyBMb2dpYyBHTDg1MkcgVVNCIDIuMCBIVUIg
Ki8KPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
