Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98C4CC27C52
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 06:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x974vQUzdaJyuaXmZTzCb/MPbDXTTM4kfyal6RjP0UA=; b=tlQhA2+5vpyOYm
	ax56ic4cbrOU1WMtKdho1LGu1pPICk5U9Qap+NfkKjX0xZw5IGfrkpAcFLJmAeLh+Gwa1kpL8HECq
	T+PzsR8uznXKc1mr63+HVlDQpJ0N7NQbzZ9lSfUXFd3at5AVDmpEh8BElJaIZSgJCkQHlpiME7Qnl
	ozK+2SxvoPM0PfRZOHEtD0kV1qNMgARvX67zbFpFSEnUdR0HxmNOtSKnKYg4syqzp1cLumhm3azRX
	2rI5SxYolFUfis0PAWIggbmzZOJRnXmEGL43yDD+oduCcPmXC9xIOQl2SSCSwGK/piGCb1Wz1ia1T
	EeUhIPK/igBM4OVwxVcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6f4-00000008X1d-1xZD;
	Thu, 06 Jun 2024 06:31:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sF6f0-00000008X18-3q9A
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Jun 2024 06:31:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3D0A561BB9;
	Thu,  6 Jun 2024 06:31:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3315DC3277B;
	Thu,  6 Jun 2024 06:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717655501;
	bh=VRtXL1+yFAh+3qRiidKMeUXDfuQoZVR1nUUH5Tsu92k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uxSzwmt+plkudMsXgytRr2ofBddy6anfRT1rMoyst5HqMf/NhYIGHIQAAghFzvXEF
	 EV1dBQ7lRq5w1ducKNsc6vjKQJlBRJ1/KYbSbP5DbMr8mlH7dOo/L+r+Esf7aEODY4
	 U/mNI4WU3OyOIOWcj2Kdt1smxbYKDhlUo+AQBY8SxQNBxSzDNfSbW2/zOCIkP0YoMt
	 5Xu4lol9Wc7kLdbqoQY1K2GbAa9hnkqdFYS9syNTwbstqYRJQh2vYCXvqXYr0vM91G
	 DkUw6LHShzZyOIadUUDvVtjNOkVHS4nKlJB7UMI5q29nXK6DPisew1xdCYMXle08eN
	 0LRcDJUulXz2A==
Date: Thu, 6 Jun 2024 12:01:28 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 10/13] PCI: dw-rockchip: Add endpoint mode support
Message-ID: <20240606063128.GC4441@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-10-3dc00fe21a78@kernel.org>
 <20240605081753.GK5085@thinkpad>
 <ZmC1PihX_URtZkiA@ryzen.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZmC1PihX_URtZkiA@ryzen.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_233143_082624_89D42619 
X-CRM114-Status: GOOD (  35.68  )
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

T24gV2VkLCBKdW4gMDUsIDIwMjQgYXQgMDg6NTg6MDZQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBXZWQsIEp1biAwNSwgMjAyNCBhdCAwMTo0Nzo1M1BNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIE1heSAyOSwgMjAyNCBhdCAxMDoyOTow
NEFNICswMjAwLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiBUaGUgUENJZSBjb250cm9sbGVy
IGluIHJrMzU2OCBhbmQgcmszNTg4IGNhbiBvcGVyYXRlIGluIGVuZHBvaW50IG1vZGUuCj4gPiA+
IFRoaXMgZW5kcG9pbnQgbW9kZSBzdXBwb3J0IGhlYXZpbHkgbGV2ZXJhZ2VzIHRoZSBleGlzdGlu
ZyBjb2RlIGluCj4gPiA+IHBjaWUtZGVzaWdud2FyZS1lcC5jLgo+ID4gPiAKPiA+ID4gQWRkIHN1
cHBvcnQgZm9yIGVuZHBvaW50IG1vZGUgdG8gdGhlIGV4aXN0aW5nIHBjaWUtZHctcm9ja2NoaXAg
Z2x1ZQo+ID4gPiBkcml2ZXIuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fz
c2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KPiA+IAo+ID4gQ291cGxlIG9mIGNvbW1lbnRzIGJlbG93
LiBXaXRoIHRob3NlIGFkZHJlc3NlZCwKPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gPiAKPiA+ID4g
LS0tCj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnICAgICAgICAgICAg
fCAgMTcgKystCj4gPiA+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMgfCAyMTAgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgMjI0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPiA+ID4gaW5kZXggOGFmYWNjOTBjNjNiLi45ZmFlMGQ5
NzcyNzEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25m
aWcKPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+ID4gPiBA
QCAtMzExLDE2ICszMTEsMjcgQEAgY29uZmlnIFBDSUVfUkNBUl9HRU40X0VQCj4gPiA+ICAJICBT
b0NzLiBUbyBjb21waWxlIHRoaXMgZHJpdmVyIGFzIGEgbW9kdWxlLCBjaG9vc2UgTSBoZXJlOiB0
aGUgbW9kdWxlCj4gPiA+ICAJICB3aWxsIGJlIGNhbGxlZCBwY2llLXJjYXItZ2VuNC5rby4gVGhp
cyB1c2VzIHRoZSBEZXNpZ25XYXJlIGNvcmUuCj4gPiA+ICAKPiA+ID4gK2NvbmZpZyBQQ0lFX1JP
Q0tDSElQX0RXCj4gPiA+ICsJYm9vbAo+ID4gCj4gPiBXaGVyZSBpcyB0aGlzIHN5bWJvbCB1c2Vk
Pwo+IAo+IEl0IGlzIHN1cHBvc2VkIHRvIGJlIHVzZWQgYnkKPiBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9NYWtlZmlsZQo+IAo+IHN1Y2ggdGhhdCB0aGUgZHJpdmVyIGlzIGNvbXBpbGVkIGlm
IGVpdGhlciBfRVAgb3IgX0hPU1QgaXMgc2VsZWN0ZWQsIGp1c3QKPiBsaWtlIGhvdyBpdCBpcyBk
b25lIGZvciBvdGhlciBkcml2ZXJzIHRoYXQgc3VwcG9ydCBib3RoIGluIHRoZSBzYW1lIGRyaXZl
ci4KPiBMb29rcyBsaWtlIEkgbWlzc2VkIHRvIHVwZGF0ZSBNYWtlZmlsZS4uLgo+IEdvb2QgY2F0
Y2gsIHRoYW5rIHlvdSEKPiAKPiAKPiA+ID4gK3N0YXRpYyBpcnFyZXR1cm5fdCByb2NrY2hpcF9w
Y2llX2VwX3N5c19pcnFfdGhyZWFkKGludCBpcnEsIHZvaWQgKmFyZykKPiA+ID4gK3sKPiA+ID4g
KwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBhcmc7Cj4gPiA+ICsJc3RydWN0IGR3
X3BjaWUgKnBjaSA9ICZyb2NrY2hpcC0+cGNpOwo+ID4gPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9
IHBjaS0+ZGV2Owo+ID4gPiArCXUzMiByZWcsIHZhbDsKPiA+ID4gKwo+ID4gPiArCXJlZyA9IHJv
Y2tjaGlwX3BjaWVfcmVhZGxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19N
SVNDKTsKPiA+ID4gKwo+ID4gPiArCWRldl9kYmcoZGV2LCAiUENJRV9DTElFTlRfSU5UUl9TVEFU
VVNfTUlTQzogJSN4XG4iLCByZWcpOwo+ID4gPiArCWRldl9kYmcoZGV2LCAiTFRTU01fU1RBVFVT
OiAlI3hcbiIsIHJvY2tjaGlwX3BjaWVfZ2V0X2x0c3NtKHJvY2tjaGlwKSk7Cj4gPiA+ICsKPiA+
ID4gKwlpZiAocmVnICYgUENJRV9MSU5LX1JFUV9SU1RfTk9UX0lOVCkgewo+ID4gPiArCQlkZXZf
ZGJnKGRldiwgImhvdCByZXNldCBvciBsaW5rLWRvd24gcmVzZXRcbiIpOwo+ID4gPiArCQlkd19w
Y2llX2VwX2xpbmtkb3duKCZwY2ktPmVwKTsKPiA+ID4gKwl9Cj4gPiA+ICsKPiA+ID4gKwlpZiAo
cmVnICYgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQpIHsKPiA+ID4gKwkJdmFsID0gcm9ja2NoaXBf
cGNpZV9nZXRfbHRzc20ocm9ja2NoaXApOwo+ID4gPiArCQlpZiAoKHZhbCAmIFBDSUVfTElOS1VQ
KSA9PSBQQ0lFX0xJTktVUCkgewo+ID4gPiArCQkJZGV2X2RiZyhkZXYsICJsaW5rIHVwXG4iKTsK
PiA+ID4gKwkJCWR3X3BjaWVfZXBfbGlua3VwKCZwY2ktPmVwKTsKPiA+ID4gKwkJfQo+ID4gPiAr
CX0KPiA+ID4gKwo+ID4gPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgcmVn
LCBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVNDKTsKPiA+IAo+ID4gSXQgaXMgcmVjb21tZW5k
ZWQgdG8gY2xlYXIgdGhlIElSUXMgYXQgdGhlIHN0YXJ0IG9mIHRoZSBoYW5kbGVyIChhZnRlciBz
dGF0dXMKPiA+IHJlYWQpLgo+IAo+IENhbiB5b3UgcXVvdGUgYSByZWZlcmVuY2UgaW4gdGhlIGRh
dGFib29rIHRvIGJhY2sgdGhpcyByZWNvbW1lbmRhdGlvbj8KPiAKCkl0IGlzIGp1c3QgYSBnZW5l
cmFsIHJlY29tbWVuZGF0aW9uLgoKPiBPdGhlcndpc2UgSSB3b3VsZCBsZWFuIHRvd2FyZHMga2Vl
cGluZyBpdCBsaWtlIGl0IGlzLCBzaW5jZSB0aGlzIGlzIGhvdwo+IGl0IGxvb2tzIGluIHRoZSBk
b3duc3RyZWFtIGRyaXZlciAodGhhdCAqc2hvdWxkKiBiZSB3ZWxsIHByb3ZlbiksIGFuZCBpdAo+
IGFsc28gbWF0Y2hlcyBob3cgaXQncyBkb25lIGluIGRyYTd4eC4KPiAKPiAoQW5kIHNpbmNlIHlv
dSBhY2sgb25seSB0aGUgZXZlbnRzIHlvdSByZWFkLCB5b3UgY2FuIG5vdCBhY2NpZGVudGFsbHkK
PiBjbGVhciBhbm90aGVyIHR5cGUgb2YgZXZlbnQuKQo+IAoKSSBoYXZlbid0IHJlYWQgdGhlIFRS
TSwgYnV0IGlmIHRoZSBJUlEgbGluZSBpcyBsZXZlbCB0cmlnZ2VyZWQsIHRoZW4gaWYgeW91IGRv
Cm5vdCBjbGVhciB0aGUgSVJRcyBpbW1lZGlhdGVseSwgeW91IHdpbGwgbWlzcyBzb21lIGV2ZW50
cy4gU28gSSBhbHdheXMgc3VnZ2VzdAp0byBjbGVhciB0aGUgSVJRcyBhdCB0aGUgc3RhcnQgb2Yg
dGhlIGhhbmRsZXIgZm9yIGFsbCB0aGUgcGxhdGZvcm1zLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
