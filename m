Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E21FCD6E57
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 08:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whLXlQLWuDkXyU15JBuE46kFdjs51YjUJs9SQZegNGY=; b=qdkiv3IrV2e4Ka
	ia+iyf+gqelrx/2wBc6lmMUYFrm6HTE9GYDq7WhXEjpTzrR+FkbVQNSybmNmnMxTy9j6VAKdkY7iO
	2z0ukdkXvA9EV59svg+svb75OVKclnMps8RzbVowQP/EF3MCxn4svaMcNLxTRmApfPYh7cF75XncJ
	PT5nyXh205/meXD7vQPbs78n0VPWuoU06go+HQ/owb2ODgWFBpXS02Bg4bmGacmIeGyvhQ6UqiQva
	7Q1U42pi1WuBKD2jpWb6ebEgOYMrtBrPs/3Z8v5ptdr8/MmX2mjOWrTPQxpySnA+PvR7Jw7EMCxB9
	TtzqP0TmzrOXHk8XhrcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3vC-0000000GS4T-0Ihi;
	Thu, 04 Jun 2026 08:59:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV3v9-0000000GS2e-1Kl3;
	Thu, 04 Jun 2026 08:59:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2as4PCRWsv024ZlqsXEqA3VU/UiipqE5hLi9l4v3VV0=; b=tpOKHMCzOlrTYuEe6r9BtA84Uf
	HE3p6z9xrQ9DgQUtIys9Xr0eyg6UBq1xAwd82I8kflHagSdSQH58knxLzSnde24ThZve7tCiUqPoy
	85Ybm5DcoDOs6fHpFfp8pyZ3mM7OIAM5CvZ0S1ekEFbQ6bU8jRXLHWec+0tlKH0k0x1XRsjgmQg5b
	NCgSpv/4KZnY08KejmmGp49UI7vnNNMxJiR59N7hN3iDrGFtYgaxYrb6DsoA1KLhePOkdoNQwizWO
	uox35V31a8Ql05pPuUlBSAtp0NV0GcS94CiW2acWw0s5KbzWy3njN6OdDsOoXGmn7D1UB0cVpiu9U
	mtHS++tw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: rosenp@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] clk: rockchip: don't COMPILE_TEST builds on M68K
Date: Thu, 04 Jun 2026 10:59:19 +0200
Message-ID: <36034140.aRNtrjHk3s@phil>
In-Reply-To: <CAMuHMdUAoUmCNMBVRGgZzSt9SbZqV6SVW2brkvsBKuHrfWHKvw@mail.gmail.com>
References: <20260603213726.1025094-1-heiko@sntech.de>
 <CAMuHMdUAoUmCNMBVRGgZzSt9SbZqV6SVW2brkvsBKuHrfWHKvw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_015923_354951_24E28B3C 
X-CRM114-Status: GOOD (  16.82  )
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

SGkgR2VlcnQsCgpBbSBEb25uZXJzdGFnLCA0LiBKdW5pIDIwMjYsIDA5OjU2OjA0IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgR2VlcnQgVXl0dGVyaG9ldmVuOgo+IE9uIFdl
ZCwgMyBKdW4gMjAyNiBhdCAyMzozNywgSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4g
d3JvdGU6Cj4gPiBSb2NrY2hpcCBjbG9jayBkcml2ZXJzIHVzZSBoYXNoLXRhYmxlcyB3aXRoIGVu
dW1zIGFzIGlucHV0cy4KPiA+Cj4gPiBNNjhLIGRvZXMgaW50ZXJlc3RpbmcgdGhpbmdzIGluIGl0
cyBfX2hhc2hfMzIoKSBpbXBsZW1lbnRhdGlvbiwgY2FzdGluZwo+ID4gdGhhdCB1MzIgaW5wdXQg
dG8gYW4gdTE2IGFuZCB0aGVyZWZvcmUgdHJpZ2dlcmluZyB3YXJuaW5ncyBsaWtlOgo+ID4KPiA+
ICAgIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1MjguYzogbm90ZTogaW4gaW5jbHVkZWQg
ZmlsZSAodGhyb3VnaCBpbmNsdWRlL2xpbnV4L2hhc2guaCwgaW5jbHVkZS9saW51eC9zbGFiLmgp
Ogo+ID4gICAgICBhcmNoL202OGsvaW5jbHVkZS9hc20vaGFzaC5oOjU3OjI0OiBzcGFyc2U6IHNw
YXJzZTogY2FzdCB0cnVuY2F0ZXMgYml0cyBmcm9tIGNvbnN0YW50IHZhbHVlICgxODcyMCBiZWNv
bWVzIDg3MjApCj4gPiAgICAgIGFyY2gvbTY4ay9pbmNsdWRlL2FzbS9oYXNoLmg6NTc6MjQ6IHNw
YXJzZTogc3BhcnNlOiBjYXN0IHRydW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDFl
OGU4IGJlY29tZXMgZThlOCkKPiA+Cj4gPiBBcyBNNjhLIHNob3VsZCBuZXZlciBldmVyIG5lZWQg
Um9ja2NoaXAgY2xvY2sgZHJpdmVycywgc2ltcGx5IGRpc2FibGUKPiA+IGNvbXBpbGUtdGVzdHMg
Zm9yIE02OEsuCj4gPgo+ID4gRml4ZXM6IDdlZGZiN2ZiNThlZSAoImNsazogcm9ja2NoaXA6IGFs
bG93IENPTVBJTEVfVEVTVCBidWlsZHMiKQo+ID4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJv
Ym90IDxsa3BAaW50ZWwuY29tPgo+ID4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9v
ZS1rYnVpbGQtYWxsLzIwMjYwNTE5MTQzNC5QUWtqMlJraS1sa3BAaW50ZWwuY29tLwo+ID4gU2ln
bmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAKPiBUaGFua3Mg
Zm9yIHlvdXIgcGF0Y2ghCj4gCj4gPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9LY29uZmln
Cj4gPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9LY29uZmlnCj4gPiBAQCAtNCw2ICs0LDcg
QEAKPiA+ICBjb25maWcgQ09NTU9OX0NMS19ST0NLQ0hJUAo+ID4gICAgICAgICBib29sICJSb2Nr
Y2hpcCBjbG9jayBjb250cm9sbGVyIGNvbW1vbiBzdXBwb3J0Igo+ID4gICAgICAgICBkZXBlbmRz
IG9uIEFSQ0hfUk9DS0NISVAgfHwgQ09NUElMRV9URVNUCj4gPiArICAgICAgIGRlcGVuZHMgb24g
IU02OEsKPiA+ICAgICAgICAgZGVmYXVsdCBBUkNIX1JPQ0tDSElQCj4gPiAgICAgICAgIGhlbHAK
PiA+ICAgICAgICAgICBTYXkgeSBoZXJlIHRvIGVuYWJsZSBjb21tb24gY2xvY2sgY29udHJvbGxl
ciBmb3IgUm9ja2NoaXAgcGxhdGZvcm1zLgo+IAo+IE9idmlvdXNseSB0aGlzIGlzIHRoZSB3cm9u
ZyBmaXggOy0pCj4gCj4gSSBoYXZlIHNlbnQgYSBiZXR0ZXIgb25lLCBmaXhpbmcgdGhlIGlzc3Vl
IGZvciBldmVyeSB1c2VyOgo+ICJbUEFUQ0hdIG02OGs6IGhhc2g6IFVzZSBsb3dlcl8xNl9iaXRz
KCkgaGVscGVyIgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2I1NWU5YmQwNTMyYzBjYWQ1MTk4
MDljODZlMGE4NDAwMDYwZDc1YTEuMTc4MDU1OTU2MS5naXQuZ2VlcnRAbGludXgtbTY4ay5vcmcK
Cm9oIG5pY2UgLSBmaXhpbmcgdGhlIGFjdHVhbCBwcm9ibGVtIGluc3RlYWQgb2Ygd29ya2luZyBh
cm91bmQgdGhlCmlzc3VlLiBJIGhhZCBubyBjbHVlIGFib3V0IG02OGsgYW5kIHRodXMgbm8gaWRl
YSBvZiBob3cgdG8gdGVzdAphbnl0aGluZywgc28gd2VudCBmb3IgdGhlIGVhc3ggImZpeCIgOi0p
CgoKU28gdGhhbmtzIGZvciBsb29raW5nIGludG8gdGhhdApIZWlrbwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
