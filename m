Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2E6EC369A2
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 14:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ozEvKY+mCMkutLz2OU97lzKoe/DBxFEEh+Y3OYMlHE=; b=yow9nw9vWOPjsI
	L7/h9EhvRcbHWndX+xzqX5ZtWYEKEYuqHtuEvTp18Sh6E0mh7DnYNg02mEaZAXC8lGOjCcub/KzAU
	smg1S9aXAcuWjZuwqRgMh+1U7EvU0ya9lx4p1CwFon/Xl+pgaGeBqCTPJ2MRDnLWKUafnN3UUyg/9
	+ydm45qHFCzPTooS7+x2gq4dxeOLhCCm+1Chxp9Ba8fbTmDFiKr3omm+UtBm8eCO2FZSRD+7h2vvd
	gtecGnqX1IDDebY7IQtjsb/pdvcn+JWp4FZCxXbiHUCuN0fhB2/+to0X1MXIgvZrXpRyCvfskYzPd
	kNCkqy5dCd/5a/21tncA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u29nY-00000004M0E-0P1v;
	Tue, 08 Apr 2025 14:19:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u29nV-00000004Lzl-1LjD;
	Tue, 08 Apr 2025 14:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=YOxUvMH6Zjumv6uHhZAYRdSZLUXfa/+e73bmK4g3BQ8=; b=ePGC82kzJBY/yq1PD5kMYbXCXg
	pvjT/0wBdmPg69EVUa5+WAk+HJaPIMT17bcZxqeuKBXgEgs09ZW7ZKoVOIHy1Bsb1dJ+csPHrfY8Y
	IFTp0IMWG7r0E+9wv0Bu8Cr3K3KrASy5tAirBVK5wIA8o+3Oly8KXH3i8nZ+kGJsSAXkppFZ9MR8Y
	z88RLyu8ZYI/BaFMoEId/t5P5xdK68B/vs6S/eTi0VafM5Ydv91RicAz0/3UhkEi2IpwfKrLY7s1R
	Bo4VedZS7BO5+goFyYngm8hIPI9ms3vIfZsE1ZIQS6ZbyG0Z4TdMngAzVkLdVzBSYBuYWvm1SotIK
	ZC4LHAcA==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u29nT-0004Js-C2; Tue, 08 Apr 2025 16:19:27 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.15 #3
Date: Tue, 08 Apr 2025 16:19:26 +0200
Message-ID: <2021039.usQuhbGJ8B@diego>
In-Reply-To: <CAL_Jsq+EwYZYYePusUZbOh+n6-MVt2AFGEiPg8AzHR73K-9-BQ@mail.gmail.com>
References: <5552256.Sb9uPGUboI@phil> <2000188.PYKUYFuaPT@diego>
 <CAL_Jsq+EwYZYYePusUZbOh+n6-MVt2AFGEiPg8AzHR73K-9-BQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_071929_381541_AE73E3F0 
X-CRM114-Status: GOOD (  29.22  )
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

QW0gRGllbnN0YWcsIDguIEFwcmlsIDIwMjUsIDE2OjAxOjIxIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgUm9iIEhlcnJpbmc6Cj4gT24gTW9uLCBBcHIgNywgMjAyNSBhdCAx
MTo0OeKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4KPiA+
IEFtIE1vbnRhZywgNy4gQXByaWwgMjAyNSwgMTg6NDM6NTQgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBSb2IgSGVycmluZzoKPiA+ID4gT24gTW9uLCBBcHIgNywgMjAyNSBh
dCAxMTo0MOKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4g
PiA+Cj4gPiA+ID4gSGkgUm9iLAo+ID4gPiA+Cj4gPiA+ID4gQW0gTW9udGFnLCA3LiBBcHJpbCAy
MDI1LCAxNzo1NjozNyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJvYiBI
ZXJyaW5nOgo+ID4gPiA+ID4gT24gV2VkLCBNYXIgMTksIDIwMjUgYXQgNjo1NuKAr1BNIEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiBIaSBzb2MgbWFpbnRhaW5lcnMsCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEkgbWFkZSBhbiBl
cnJvciBhbmQgYWNjaWRlbnRpYWxseSBhcHBsaWVkIGEgcGF0Y2ggdGhhdCB3YXMgbWVhbnQgZm9y
Cj4gPiA+ID4gPiA+IHRoZSBtZmQgdHJlZS4gVGhhbmtmdWxseSBTdGVwaGVuIG5vdGljZWQgdGhh
dCB3aGVuIHRoZSBkdXBsaWNhdGUKPiA+ID4gPiA+ID4gY29tbWl0IGFwcGVhcmVkIGluIGxpbnV4
LW5leHQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gQm90aCBjb21taXRzIGFyZSBpbiB2Ni4xNS1yYzEg
bm93IGFuZCB0aGUgcmV2ZXJ0IGlzIG5vdCwgc28gdGhpcwo+ID4gPiA+ID4gc2hvdWxkIG5vdCBn
ZXQgYXBwbGllZC9wdWxsZWQuIE9yIHlvdSB3aWxsIG5lZWQgdG8gcmV2ZXJ0IHRoZSByZXZlcnQu
Cj4gPiA+ID4KPiA+ID4gPiB5ZXMsIHRoYXQgd2FzIHRoZSBpbnRlbnRpb24uCj4gPiA+ID4KPiA+
ID4gPiBCYWNrIHdoZW4gSSBzdWJtaXR0ZWQgdGhpcyBQUiwgSSB0YWxrZWQgd2l0aCBBcm5kIG9u
IElSQyB0aGUgbmV4dCBkYXkuCj4gPiA+ID4KPiA+ID4gPiBBcyBib3RoIGNvbW1pdHMgYXJlIGlk
ZW50aWNhbCBzYW5zIHNvbWUgU2lnbmVkLW9mZi1ieSBsaW5lcywgaGUgc3VnZ2VzdGVkCj4gPiA+
ID4gbm90IHRyeWluZyB0byBwdXQgYSByZXZlcnQgaW4sIGJ1dCBpbnN0ZWFkIGxldCBnaXQgc29s
dmUgaXQgaXRzZWxmLCBiZWNhdXNlCj4gPiA+ID4KPiA+ID4gPiBhcm5kIG9uIElSQzoKPiA+ID4g
PiA+IFsuLi5dLCBidXQgSSB3b3JyeSB0aGF0IHRoaXMgd291bGQgbWFrZSB0aGluZ3Mgd29yc2Ug
aWYgJ2dpdCBtZXJnZScKPiA+ID4gPiA+IGVuZHMgdXAgZG9pbmcgdGhlIHJldmVydCBvbiB0b3Ag
b2YgdGhlIG9yaWdpbmFsIGNvbW1pdCBvbmNlIGl0IGdldHMgdG8KPiA+ID4gPiA+IHRvcnZhbGRz
LiBOb3Qgc3VyZSBpZiB0aGF0J3Mgc3RpbGwgYSBwcm9ibGVtIGluIGdpdCB0aGVzZSBkYXlzLCBi
dXQKPiA+ID4gPiA+IEkndmUgc2VlbiBpdCBoYXBwZW4gaW4gdGhlIHBhc3QuCj4gPiA+ID4gPiBp
ZiB0d28gaWRlbnRpY2FsIHBhdGNoZXMgYXJlIGluIGRpZmZlcmVudCBicmFuY2hlcywganVzdCBs
ZWF2aW5nIHRoZW0KPiA+ID4gPiA+IHRoZXJlIGlzIHVzdWFsbHkgZWFzaWVyCj4gPiA+ID4KPiA+
ID4gPiBTbyB0aGlzIFBSIHdhcyBhbHJlYWR5IG1hcmtlZCBhcyAic3VwZXJzZWVkZWQiIGluIHBh
dGNod29yayBiYWNrCj4gPiA+ID4gb24gbWFyY2ggMjB0aC4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+
ID4gTmV2ZXJ0aGVsZXNzLCB0aGFua3MgZm9yIG1ha2luZyBzdXJlIG5vIGZ1bmt5IHJldmVydCBo
YXBwZW5zIG5vdy4KPiA+ID4KPiA+ID4gVGhlIGNvbW1pdCBpcyBzdGlsbCBpbiBsaW51eC1uZXh0
IHRob3VnaC4gVGhhdCdzIGhvdyBJIGhhcHBlbmVkIHVwb24gdGhpcy4KPiA+Cj4gPiBBaCByaWdo
dC4gSSd2ZSByZWNyZWF0ZWQgbXkgbmV4dCBicmFuY2ggZWFybGllciB0b2RheSwgYWZ0ZXIgdGhl
IC1yYzEKPiA+IHJlbGVhc2UsIHNvIHRoaXMgc2hvdWxkIGJlIGdvbmUgd2l0aCB0aGUgbmV4dCBs
aW51eC1uZXh0Lgo+IAo+IFN0aWxsIHRoZXJlIHRvZGF5IGFuZCBub3cgd2UgaGF2ZToKCk5vdCBt
dWNoIGx1Y2sgZm9yIG1lIHRoaXMgd2VlayBpdCBzZWVtcy4KClNvIEkndmUgbm93IHJlLWNyZWF0
ZWQgdGhlIGZvci1uZXh0IGJyYW5jaCBhZ2FpbiwgZXNwZWNpYWxseSB3aXRob3V0IHRoZQpzdHVm
ZiBmcm9tIGJlbG93LiBJIGd1ZXNzIHRoZSBSZXZlcnQgc2xpcHBlZCBpbiBhZ2FpbiB2aWEgdGhh
dCBtaXNzLW1lcmdlZApicmFuY2guCgpMb29raW5nIGF0IHRoZSByZWMtY3JlYXRlZApodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tbWluZC9saW51eC1yb2Nr
Y2hpcC5naXQvbG9nL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZT9oPWZvci1uZXh0Cgp0aGF0IHJl
dmVydCBzaG91bGQgYmUgZmluYWxseSBnb25lIG5vdyBhbmQgbm90IHJlYXBwZWFyLgoKCj4gWyd0
c2QscHgzMC1jb2JyYS1sdGswNTBoMzE0NncnLCAncm9ja2NoaXAscHgzMC1jb2JyYScsICdyb2Nr
Y2hpcCxweDMwJ10KPiBbJ3RzZCxweDMwLWNvYnJhLWx0azA1MGgzMTQ2dy1hMicsICdyb2NrY2hp
cCxweDMwLWNvYnJhJywgJ3JvY2tjaGlwLHB4MzAnXQo+IFsndHNkLHB4MzAtY29icmEtbHRrNTAw
aGQxODI5JywgJ3RzZCxweDMwLWNvYnJhJywgJ3JvY2tjaGlwLHB4MzAnXQo+IAo+IFdoaWNoIGFw
cGVhciBvbiBubyBsaXN0LgoKQW5kIEkndmUgYWxzbyBmaXhlZCBteSBzY3JpcHRzIHRvIG5vdCBt
aXNzLW1lcmdlIGJyYW5jaGVzIG5vdCBhY3R1YWxseQppbnRlbmRlZCBmb3IgbmV4dC4KCkhlaWtv
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
