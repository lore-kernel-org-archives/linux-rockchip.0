Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BAFFCD5BC8
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 May 2026 10:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCAqB7XeXyrOWVBLhLO9rzojKM7I0/zpTu691pXQCl4=; b=wGN/q11XWxRiIY
	uYJX3wphVEV6KK+veOybeAAY9GKh4C7dHqkJGDVR4OvnT6Wy2CioirlXgEjXz+DSIRV4v7MhaHZ5f
	gHsEX+4jmUxelaUj9dcisOjo5irTiJgeD59TzF1V88dKSKTQW5SnvH2Qf9rNnZjOuvh8oXWuZMLmq
	8keneIRvdKdXg/3HQOKniD8HFuV5gF/calNz5gUnGmvVcFVgNsvGvPu8xPaISy6jKRTMCp+Qi4UIG
	eSa16SdpQRs11AEU2viGBeU1H8PY5H2nd0JxPznxK5xcqi4o32WQ6GOA+e7wMhQZLZg0zIbRuEjh4
	A/P1BWo1K14jT2CpfhEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRpPs-00000001hRT-2Z3S;
	Tue, 26 May 2026 10:53:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRpPp-00000001hQK-3olf
	for linux-rockchip@lists.infradead.org;
	Tue, 26 May 2026 10:53:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 30721443CC
	for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2026 10:53:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153C41F00A3E
	for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2026 10:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779792821;
	bh=WhuqxR/QIe3nS20UsYxd6qka1LHnS/Vv+3trUyjXJgY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=oL2Gh0JsgYvwkQlyQh9IICOYgChS38+93irPAGfuq9/vZ9gxJ9VXQbee7s2dv3A5n
	 VLjuylBuUJtjOZ9C7X7zM1TN5puJ8UyHYCdzbbIO3u6FqfdYLTzWyK01KThe+QLC1l
	 bdIiooU3boem5n37PN4Q4JQoAdO+6xrzFG8MTy7QTWcmWPKHck/4rhVKi3cnVoAAF1
	 B2zhCztsa0+ScJTcM/wkjP/N1W1VvgVvzXxQrvSxYEFx5lbvxAIfAzhwbAZ652q0Jv
	 7AHUjLSHy9BzwYdZb/oAOuYJZi94BoR2IRGdJlpLoSwqRTkM1pUv1EZ3/zcyLWXjAy
	 i5uYyX3KlEIqw==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5a4113ab355so5131091e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 May 2026 03:53:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+YcC4UbZGVAPUhc4jPOQHCLQA8StTkBbVT5P27VHyNvolbHdrrEP1nO+ZT1RLX/qyDkvhzbpeHf+yPlK0rSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwwCp+dZoo/UUr7g2PSCzdfOc1DRyod5jaQsrTuvcfZ9+CqxvR5
	XctX2WgUpqLq1FCuRZsVy5ClO0dKzL/Bsx7RFQkOhNzwRcnqOwm6huZDg5xtM3xlFLoM5bdjJnk
	ax0VID9jInX+iTGcjZKZhBV7rj/lH02T8ZQFKiw8PjA==
X-Received: by 2002:ac2:4c4d:0:b0:5a8:7ca9:9f81 with SMTP id
 2adb3069b0e04-5aa322fed0amr7213835e87.0.1779792819733; Tue, 26 May 2026
 03:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260525164230.43307-1-scardracs@disroot.org> <20260525164230.43307-3-scardracs@disroot.org>
In-Reply-To: <20260525164230.43307-3-scardracs@disroot.org>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Tue, 26 May 2026 12:53:27 +0200
X-Gmail-Original-Message-ID: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com>
X-Gm-Features: AVHnY4I2BwinMwSq8u5U4_yQOEEUDoRNRKEENiOHIvRdG1GkR8xNAptPz-zlq5o
Message-ID: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: rockchip: fix teardown bugs and resource leaks
To: "Marco Scardovi (scardracs)" <scardracs@disroot.org>
Cc: linusw@kernel.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_035341_993177_AB8D1C26 
X-CRM114-Status: GOOD (  27.50  )
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

T24gTW9uLCBNYXkgMjUsIDIwMjYgYXQgNjo0MuKAr1BNIE1hcmNvIFNjYXJkb3ZpIChzY2FyZHJh
Y3MpCjxzY2FyZHJhY3NAZGlzcm9vdC5vcmc+IHdyb3RlOgo+Cj4gVGhpcyBjb21taXQgYWRkcmVz
c2VzIHNldmVyYWwgdGVhcmRvd24gaXNzdWVzIGFuZCByZXNvdXJjZSBsZWFrcyBpbiB0aGUKPiBk
cml2ZXIncyByZW1vdmUgcGF0aCBhbmQgZXJyb3IgaGFuZGxpbmc6Cj4KPiAxLiBEZWJvdW5jZSBj
bG9jayByZWZlcmVuY2UgbGVhazogVGhlIGRlYm91bmNlIGNsb2NrIChiYW5rLT5kYl9jbGspIHdh
cwo+ICAgIG9idGFpbmVkIHVzaW5nIG9mX2Nsa19nZXQoKSB3aGljaCBpbmNyZW1lbnRzIHRoZSBj
bG9jaydzIHJlZmVyZW5jZQo+ICAgIGNvdW50LCBidXQgY2xrX3B1dCgpIHdhcyBuZXZlciBjYWxs
ZWQuIEEgZGV2bSBhY3Rpb24gaXMgbm93IHJlZ2lzdGVyZWQKPiAgICB0byBjbGVhbmx5IHJlbGVh
c2UgaXQgb24gdW5iaW5kLiBOb3RlIHRoYXQgb2ZfY2xrX2dldCguLi4sIDEpIHJlbWFpbnMKPiAg
ICBuZWNlc3Nhcnkgb3ZlciBkZXZtX2Nsa19nZXQoKSBiZWNhdXNlIHRoZSBEVCBiaW5kaW5nIGRv
ZXMgbm90IGRlZmluZQo+ICAgIGNsb2NrLW5hbWVzLCBwcmVjbHVkaW5nIG5hbWUtYmFzZWQgbG9v
a3VwLgo+Cj4gMi4gVW5yZWdpc3RlcmVkIGNoYWluZWQgSVJRIGhhbmRsZXI6IFRoZSBjaGFpbmVk
IElSUSBoYW5kbGVyIHdhcyBub3QKPiAgICBkaXNjb25uZWN0ZWQgaW4gcmVtb3ZlKCkuIElmIGEg
c3RyYXkgaW50ZXJydXB0IGZpcmVkIGFmdGVyIHRoZSBkcml2ZXIKPiAgICB3YXMgcmVtb3ZlZCwg
dGhlIGtlcm5lbCB3b3VsZCBhdHRlbXB0IHRvIGV4ZWN1dGUgYSBzdGFsZSBoYW5kbGVyLAo+ICAg
IGxlYWRpbmcgdG8gYSBwYW5pYy4gVGhpcyBpcyBmaXhlZCBieSBjbGVhcmluZyB0aGUgaGFuZGxl
ciBpbiByZW1vdmUoKS4KPgo+IDMuIElSUSBkb21haW4gbGVhazogVGhlIGxpbmVhciBJUlEgZG9t
YWluIGFuZCBpdHMgZ2VuZXJpYyBjaGlwcyB3ZXJlCj4gICAgYWxsb2NhdGVkIG1hbnVhbGx5IGR1
cmluZyBwcm9iZSBidXQgbmV2ZXIgcmVtb3ZlZC4gVGhlIElSUSBkb21haW4gaXMKPiAgICBub3cg
cmVtb3ZlZCBkdXJpbmcgZHJpdmVyIHRlYXJkb3duIHRvIGZyZWUgdGhlIGFzc29jaWF0ZWQgZ2Vu
ZXJpYyBjaGlwcwo+ICAgIGFuZCBtYXBwaW5ncy4KPgoKSSBzdXBwb3NlIHRoZSBkZXNjcmlwdGlv
biBjb21lcyBmcm9tIHRoZSBMTU0uIFBsZWFzZSB1c2UgaW1wZXJhdGl2ZQptb2RlIGFzIGlzIGN1
c3RvbWFyeSBpbiBrZXJuZWwgY29tbWl0IG1lc3NhZ2VzLgoKPiBBc3Npc3RlZC1ieTogQW50aWdy
YXZpdHk6Z2VtaW5pLTMuNS1mbGFzaAo+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIFNjYXJkb3ZpIDxz
Y2FyZHJhY3NAZGlzcm9vdC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlw
LmMgfCAxOSArKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8t
cm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBpbmRleCAzMzU4MDA5
M2E0ZTcuLmM4MDRmOTcwZDgyMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2Nr
Y2hpcC5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+IEBAIC02MzgsMTAg
KzYzOCwxNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dwaW9saWJfcmVnaXN0ZXIoc3RydWN0IHJv
Y2tjaGlwX3Bpbl9iYW5rICpiYW5rKQo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4gK3N0
YXRpYyB2b2lkIHJvY2tjaGlwX2Nsa19wdXQodm9pZCAqZGF0YSkKPiArewo+ICsgICAgICAgc3Ry
dWN0IGNsayAqY2xrID0gZGF0YTsKPiArCj4gKyAgICAgICBjbGtfcHV0KGNsayk7Cj4gK30KPiAr
Cj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ2V0X2JhbmtfZGF0YShzdHJ1Y3Qgcm9ja2NoaXBfcGlu
X2JhbmsgKmJhbmspCj4gIHsKPiAgICAgICAgIHN0cnVjdCByZXNvdXJjZSByZXM7Cj4gLSAgICAg
ICBpbnQgaWQgPSAwOwo+ICsgICAgICAgaW50IGlkID0gMCwgcmV0Owo+Cj4gICAgICAgICBpZiAo
b2ZfYWRkcmVzc190b19yZXNvdXJjZShiYW5rLT5vZl9ub2RlLCAwLCAmcmVzKSkgewo+ICAgICAg
ICAgICAgICAgICBkZXZfZXJyKGJhbmstPmRldiwgImNhbm5vdCBmaW5kIElPIHJlc291cmNlIGZv
ciBiYW5rXG4iKTsKPiBAQCAtNjczLDYgKzY4MCwxMyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2dl
dF9iYW5rX2RhdGEoc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rICpiYW5rKQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGRldl9lcnIoYmFuay0+ZGV2LCAiY2Fubm90IGZpbmQgZGVib3VuY2UgY2xr
XG4iKTsKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiAgICAgICAg
ICAgICAgICAgfQo+ICsKPiArICAgICAgICAgICAgICAgcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29y
X3Jlc2V0KGJhbmstPmRldiwgcm9ja2NoaXBfY2xrX3B1dCwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJhbmstPmRiX2Nsayk7CgpJcyB0aGVyZSBhbnkg
cmVhc29uIHRvIG5vdCBjb252ZXJ0IGhpcyBjYWxsIGludG8gYSBkZXZtX2Nsa19nZXQoKSB2YXJp
YW50IHRvbz8KCj4gKyAgICAgICAgICAgICAgIGlmIChyZXQpIHsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBkZXZfZXJyKGJhbmstPmRldiwgImZhaWxlZCB0byByZWdpc3RlciBkZWJvdW5jZSBj
bGsgYWN0aW9uXG4iKTsKPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ICsg
ICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgY2FzZSBH
UElPX1RZUEVfVjE6Cj4gICAgICAgICAgICAgICAgIGJhbmstPmdwaW9fcmVncyA9ICZncGlvX3Jl
Z3NfdjE7Cj4gQEAgLTc4OSw2ICs4MDMsOSBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9ncGlvX3Jl
bW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qg
cm9ja2NoaXBfcGluX2JhbmsgKmJhbmsgPSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPgo+
ICsgICAgICAgaXJxX3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoYmFuay0+aXJxLCBOVUxM
LCBOVUxMKTsKPiArICAgICAgIGlmIChiYW5rLT5kb21haW4pCj4gKyAgICAgICAgICAgICAgIGly
cV9kb21haW5fcmVtb3ZlKGJhbmstPmRvbWFpbik7Cj4gICAgICAgICBncGlvY2hpcF9yZW1vdmUo
JmJhbmstPmdwaW9fY2hpcCk7Cj4gIH0KPgo+IC0tCj4gMi41NC4wCj4KPgoKQmFydAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
