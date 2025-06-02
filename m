Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C0CC5B549
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 07:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8h9H5jO4iBs28j+744MKfPbFHjPG3wlW3rIn7VnPv4I=; b=DDAls3gioNW624
	oewOhBI4D+r4tFH9nj2EQ3vDMyFbsFuiRqkGQLAmLnJMSLMDD4xXNpkc1sVl+qm9j4D77kUQkg1FF
	YBpECEAe8LMmX5aQLl9wH2hSXYk471IKfA5RxxPwkbmqGmrHLRbFp4AoIWVWRQ2yh0XGtSZa97uV3
	GGiIx80l1vP4NaJRIb6XeZxbDtpceOj1qdWy1HDVgVS9szQrLkbag0oL7NCWjdJBPb4o4G9MlYq6m
	8YtGGKzqTe1u+qdfmNl0VsFFUs3TGYkhysb1SkqJl2ht/J+fBh1fixSiPGCAggV1w3z2fO11pSQHd
	UhcndxAojnFmBcrfhztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzJJ-00000006tGT-3uDv;
	Mon, 02 Jun 2025 07:10:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLzJH-00000006tG4-0v04
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Jun 2025 07:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=w3Z+Ft1okBn9QE88nslR+9Jy/gzxHeTzmtlgO7Y6368=; b=U+cWYgQJFMQRXznjTax/ZymPeF
	aPMaZ6Vt4CyfebSmRO7wRK8pTxTFLuHSYXRFcEj+D4AwY/kVrcyZCWsTKuB3akTC11eS5PdYrIUOp
	H4Sp1v/R2ePKifsi57LwkzYxtJ5xHB5bwUXZWkDzc0Ctf4USLLR199/r73kMsn3Q9F2HsFPqHxDP2
	VWnW/cjZqp1EaFhllsKcTq1r7PPhs1GiyYuYlsGge+28QNhrz2a5V5Gd8mauawMhXNs1Dj8xd9sbh
	SCboRSZGyZFDqh0JvKCHDCzrVY4gBDO+H6djB3/vco/ogrJkFqUMU2auqScFOeWhQZHc9bGy2iDY0
	cOwdax5A==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uLzJE-000144-Mb; Mon, 02 Jun 2025 09:10:12 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Erik Beck <xunil@tahomasoft.com>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: Searching for forum for help on dts devel for RK3568 board
Date: Mon, 02 Jun 2025 09:10:12 +0200
Message-ID: <2735394.X9hSmTKtgW@diego>
In-Reply-To: <20250601175214.2b291457.xunil@tahomasoft.com>
References: <20250601163901.7e3ca4dc.xunil@tahomasoft.com> <3153832.CbtlEUcBR6@diego>
 <20250601175214.2b291457.xunil@tahomasoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_001015_284028_3515E349 
X-CRM114-Status: GOOD (  33.58  )
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

SGkgRXJpaywKCkFtIFNvbm50YWcsIDEuIEp1bmkgMjAyNSwgMjM6NTI6MTQgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBFcmlrIEJlY2s6Cj4gSGkgSGVpa28sCj4gCj4gVGhh
bmtzIGZvciB0aGUgZmFzdCByZXNwb25zZSEKPgo+IEknbGwgZ2l2ZSBsaWJlcmEuY2hhdCBhIHRy
eS4KPiAKPiBJJ3ZlIGJlZW4gbG9va2luZyBhdCB0aGUgc2NoZW1hdGljcywgYW5kIHRoZXkgaGF2
ZSBoZWxwZWQgc29tZXdoYXQsIGJ1dAo+IG5vdCBnZXR0aW5nIG1lIHVuc3R1Y2sgYXQgdGhlIG1v
bWVudC4gVGhlIFYyIHNob3VsZCBiZSBwcmV0dHkgc2ltaWxhcgo+IHRvIHRoZSBWMSwgYnV0IHRo
ZXJlIG1pZ2h0IGJlIGFuIGltcG9ydGFudCBkaWZmZXJlbmNlIEknbSBvdmVybG9va2luZy4KPiAK
PiBJJ2xsIGdpdmUgYSBsb29rIGF0IHRob3NlIGJvYXJkcyB5b3UgbWVudGlvbmVkLiBJJ3ZlIGJl
ZW4gdXNpbmcgdGhlCj4gQlBJLVIyLVBybyBmb3IgaW5zcGlyYXRpb24uIEl0IGhhcyBhbHNvIGhl
bHBlZCwgYnV0IHRoZXJlIG1pZ2h0IGJlCj4gc29tZXRoaW5nIGluIHRoZSBvdGhlciBib2FyZHMg
cmVsYXRpbmcgdG8gdGhlIFBDSWUgYnVzIHRoYXQgbWlnaHQgaGVscC4KPiAKPiBJJ3ZlIGJlZW4g
cHV0dGluZyB0aGUgd29yayB1cCBvbnRvIGdpdGh1YjsgY3VycmVudCBicmFuY2ggaXM6Cj4gaHR0
cHM6Ly9naXRodWIuY29tL1RhaG9tYVNvZnQvb3BlbndydC1vcGVud3J0L3RyZWUvRXhwRGV2LVdJ
UDcKPiAKPiBEaXJlY3QgbGluayB0byB0aGUgRFRTIGlzOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9U
YWhvbWFTb2Z0L29wZW53cnQtb3BlbndydC9ibG9iL0V4cERldi1XSVA3L3RhcmdldC9saW51eC9y
b2NrY2hpcC9wYXRjaGVzLTYuNi8wMzYtYXJtNjQtZHRzLXJvY2tjaGlwLWxpbmtzdGFyLW1pbmlt
YWwucGF0Y2gKClRoZSB0aGUgYmlnIG5lb24gc2lnbiBvbiBmaXJzdCBnbGFuY2UgaXMgdGhlIG1p
c3NpbmcgbGFuZS1saW1pdGF0aW9uLgoKcGNpZTN4MiBhbmQgcGNpZTN4MSBzaGFyZSB0aGVpciBs
YW5lcywgc28gZGVwZW5kaW5nIG9uIHRoZSBib2FyZCB3aXJpbmcKeW91IGNhbiBlaXRoZXIgZG8g
cGNpZTN4MiB3aXRoIDIgbGFuZXMsIG9yIGJvdGggd2l0aCAxIGxhbmUgZWFjaC4KClNlZSB0aGUK
CW51bS1sYW5lcyA9IDwxPjsKbGluZXMgaW4gdGhlIGRldmljZXRyZWVzIHVzaW5nIGJvdGggcGNp
ZSBjb250cm9sbGVycy4KCgpIZWlrbwoKCj4gVGhhbmsgeW91L0RhbmtlLAo+IAo+IEVyaWsKPiB+
fn4KPiBPbiBTdW4sIDAxIEp1biAyMDI1IDIzOjExOjU2ICswMjAwCj4gSGVpa28gU3TDvGJuZXIg
PGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gCj4gPiBIaSBFcmlrLAo+ID4gCj4gPiBBbSBTb25u
dGFnLCAxLiBKdW5pIDIwMjUsIDIyOjM5OjAxIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0
Cj4gPiBzY2hyaWViIEVyaWsgQmVjazoKPiA+ID4gSSBhbSB3b3JraW5nIG9uIGluaXRpYWwgc3Vw
cG9ydCBmb3IgYW4gUkszNTY4IGJvYXJkLCB0aGUgTGlua1N0YXIKPiA+ID4gSDY4Sy0xNDIxdjEu
IEkndmUgbWFkZSBzb21lIHByb2dyZXNzLCBidXQgY2FuJ3QgZ2V0IHBhc3QgdHVybmluZyBvbgo+
ID4gPiBvbmUgb2YgdGhlIHR3byBQQ0llMyBIb3N0IGJyaWRnZXMgKHBjaWUzeDEgcGNpZUBmZTI3
MDAwMCkgd2l0aG91dAo+ID4gPiBicmVha2luZyB0aGUgYm9vdC4KPiA+ID4gCj4gPiA+IElzIHRo
aXMgdGhlIHJpZ2h0IGxvY2F0aW9uIHRvIGFzayBmb3IgaGVscD8gSWYgbm90LCB3aGVyZSBtaWdo
dCBiZT8KPiA+ID4gIAo+ID4gCj4gPiBUaGUgbWFpbGluZ2xpc3QgbW9zdGx5IGhhcyBwYXRjaGVz
IG9uIGl0LCBzbyBJIGRvbid0IHJlYWxseSBrbm93IGlmCj4gPiBwZW9wbGUgYXJlIGV4cGVjdGlu
ZyBub24tcGF0Y2ggbWFpbHMuCj4gPiAKPiA+IElmIGluIGRvdWJ0IHRoZSAjbGludXgtcm9ja2No
aXAgY2hhbm5lbCBvbiB0aGUgbGliZXJhLmNoYXQgSVJDCj4gPiBuZXR3b3JrIFswXSBtaWdodCBo
ZWxwIG1vcmUuIChwZW9wbGUgaW4gZGlmZmVyZW50IHRpbWV6b25lcywgc28KPiA+IHByb2JhYmx5
IG5vIGltbWVkaWF0ZSBhbnN3ZXJzKQo+ID4gCj4gPiAKPiA+IAo+ID4gRm9yIHRoZSBtdWx0aS1w
Y2kgY2FzZSBJIGd1ZXNzIHlvdSBjb3VsZCBzdGFydCBieSBsb29raW5nIGF0IG90aGVyCj4gPiBy
azM1NjggYm9hcmQgZG9pbmcgc2ltaWxhciB0aGluZ3MsIGxpa2UgdGhlIFFuYXAtVFM0MzMgWzFd
LCBSYWR4YSBFMjUKPiA+IFsyXSBvciBOYW5vcGktUjVTIFszXS4KPiA+IAo+ID4gR2VuZXJhbGx5
IGJvYXJkIGRlc2lnbmVycyBvZnRlbiBmb2xsb3cgcmVmZXJlbmNlIGRlc2lnbnMsIHNvIHRoaW5n
cwo+ID4gbWlnaHQgYmUgc2ltaWxhci4KPiA+IAo+ID4gU2ltaWxhcmx5LCB5b3UgbWlnaHQgd2Fu
dCB0byBwdXNoIHlvdXIgY3VycmVudCBpbiBwcm9ncmVzcyB3b3JrIG9uCj4gPiBzb21lIGdpdGh1
YiB0aGluZywgc28gcGVvcGxlIGNhbiB0YWtlIGEgbG9vay4KPiA+IAo+ID4gCj4gPiBJdCBhbHNv
IGxvb2tzIGxpa2UgdGhlIEg2OEtWMiB2YXJpYW50IG9mIHRoZSBkZXZpY2UgaGFzIHNjaGVtYXRp
Y3MKPiA+IGF2YWlsYWJsZSBhcyBsaW5rZWQgZnJvbSB0aGUgYm90dG9tIG9mIFs0XSwgbm90IHN1
cmUgaG93IHRoYXQgcmVsYXRlcwo+ID4gdG8geW91ciBkZXZpY2UgdGhvdWdoLgo+ID4gCj4gPiAK
PiA+IEhlaWtvCj4gPiAKPiA+IAo+ID4gWzBdIGh0dHBzOi8vbGliZXJhLmNoYXQvCj4gPiBbMV0K
PiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFu
YXAtdHM0MzMuZHRzCj4gPiBbMl0KPiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LXJhZHhhLWUyNS5kdHMKPiA+IFszXQo+ID4gaHR0cHM6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3Ry
ZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtbmFub3BpLXI1cy5kdHMKPiA+
IFs0XQo+ID4gaHR0cHM6Ly9naXRodWIuY29tL1NlZWVkLVN0dWRpby93aWtpLWRvY3VtZW50cy9i
bG9iL2RvY3VzYXVydXMtdmVyc2lvbi9kb2NzL05ldHdvcmsvUktfRGV2aWNlcy9INjhLX1YyL0g2
OEtWMl9pbnN0YWxsX3N5c3RlbS5tZAo+ID4gCj4gPiAKPiA+IAo+ID4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+ID4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+IAo+
IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
