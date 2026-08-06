Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0547DC55838
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 03:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ohxVg66L8ZtSl5A+8qfVjUvlf7MTsSg1IZXdgeyhcU=; b=ktBmQD9gC28yHE
	mtn0qJgVCKYV/nS03JRKjXch197k+2AdfwcI17nn9nKi29RwuLQBUCnflk3ovWc7zRzxfqNvCqXyo
	tF/L6tv/HcIo2n7pdyKZOEelACrYIJocJygXE0HbmJ+1L0x9hm4mqEqryqW2bOvs2ryiacTEtTghm
	jmu0cGKMOAHbDk+GlNhwtayposkp2SSuww1hVZg3mo/EWiDsX8uZMOjPwYROKfkWegSCMwkflZXDk
	6RTlC3B0YFEjsTDc7zrVHaOmALySpyxPCOSa38Wzra5W19jwhVOWbCuovlsC6Mi8tuK0BS1qOb/iO
	oa2Rc72ppd+6L3xLcVwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrov6-00000004sa3-3Gu1;
	Thu, 06 Aug 2026 03:37:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrov5-00000004sZl-1387
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 03:37:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9C9BB60A8C
	for <linux-rockchip@lists.infradead.org>; Thu,  6 Aug 2026 03:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BA2E1F00ACF
	for <linux-rockchip@lists.infradead.org>; Thu,  6 Aug 2026 03:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785987442;
	bh=1pv7X4tXAdMiXPk9/KG3+TCSrWs4tHj9T3C20LOwQwM=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=cWRM5JWElJVdKKM7wUexYy4Y+tegpsPdBN4gzOVjMZ4dHcr+YXO4B3fLQDyiYedtG
	 p97LrVpw+E6kbfT0dvkHFGgvd8OQP+U1PHdDq3LbYGVZN4QBkRGLqpOjBDuzp/e/v2
	 ygf2wPrRkV0ykgg1ioUYmzJ48O7MfPt/GsG6dcnDNCZHUT+7FYz/hwFxgAiW91VX1F
	 JidrQ3dSkFPrYvFoiVWkuEy44ya5p50NftK6lWiKNdR+IlImU4G7m5qqkpkbM9yRto
	 uHb7r0JwQxT3rRlTwoMKj2EP7Xhbh+J3odfQLjN+u+Dcbow3cI3Hr9wK0w521sxJHR
	 Z9hD/u1lsHywg==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-39c9bb9d2fbso15148381fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 20:37:22 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rozoj3qmiZBnr6xffn10XJyAKDzZ3lWUxTnfoTe+s0GfwNzHt0HA935YrKgNtgWtvQPdJeE/LfgTk3Lf9iLDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAD15zYOSkLyEBmTq+zR50GDNjT1A4YdJb29QDt1QYgsSS+xyf
	n5T8cLGqg+DWU91opponPhcHZyeKy44NR5odUEwPipX2ED9mryVQCviPOCW6auYNUsenQ7Hs+Jn
	SDzuOsMoNMVt0yN5K6u/roMXfdCwnLIw=
X-Received: by 2002:a05:651c:150d:b0:39b:32b3:b31f with SMTP id
 38308e7fff4ca-39fbb18fc20mr14082301fa.5.1785987440631; Wed, 05 Aug 2026
 20:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <20260624123914.1767374-1-hello@superkali.me> <178267399833.3089434.5140309637329023610.b4-ty@sntech.de>
 <CAGb2v64kcadr1nAisu_3kyE-=-4oypDXTvAy--jQHa0VhmYoXg@mail.gmail.com> <anPCo9nkOjpBUOlq@redhat.com>
In-Reply-To: <anPCo9nkOjpBUOlq@redhat.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 6 Aug 2026 11:37:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v64CjU9iELU8ZsPakY9Y2q8XzdDjD6nC9pn2hZBBBZ5Uxw@mail.gmail.com>
X-Gm-Features: AUfX_mw-2XyvMigeHjUQ3cJnAoRV1KCld6aY7Mca-mzvlFEvAHhu48LDF-78D9s
Message-ID: <CAGb2v64CjU9iELU8ZsPakY9Y2q8XzdDjD6nC9pn2hZBBBZ5Uxw@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3588: don't disable unused I2S MCLK
 output gates
To: Brian Masney <bmasney@redhat.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Daniele Briguglio <hello@superkali.me>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Diederik de Haas <diederik@cknow-tech.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Ricardo Pardini <ricardo@pardini.net>
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgNiwgMjAyNiBhdCA3OjA54oCvQU0gQnJpYW4gTWFzbmV5IDxibWFzbmV5QHJl
ZGhhdC5jb20+IHdyb3RlOgo+Cj4gSGkgQ2hlbi1ZdSwKPgo+IE9uIFRodSwgQXVnIDA2LCAyMDI2
IGF0IDAxOjAwOjAyQU0gKzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIE1vbiwgSnVu
IDI5LCAyMDI2IGF0IDM6MTPigK9BTSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3
cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4gT24gV2VkLCAyNCBKdW4gMjAyNiAxNDozOToxNCArMDIw
MCwgRGFuaWVsZSBCcmlndWdsaW8gd3JvdGU6Cj4gPiA+ID4gTm8gaW4tdHJlZSBib2FyZCByZWZl
cmVuY2VzIHRoZXNlIGdhdGVzIHlldC4gQm9hcmRzIGRyaXZlIHRoZSBjb2RlYwo+ID4gPiA+IE1D
TEsgdGhyb3VnaCB0aGUgcGFyZW50IEkyUypfOENIX01DTEtPVVQsIGFuZCBub3cgdGhhdCB0aGUg
Z2F0ZXMgYXJlCj4gPiA+ID4gbWFuYWdlZCBjbG9ja3MsIGNsa19kaXNhYmxlX3VudXNlZCgpIHR1
cm5zIHRoZW0gb2ZmIGF0IGJvb3QuIE9uIGEgYm9hcmQKPiA+ID4gPiB0aGF0IHJlbGllZCBvbiBm
aXJtd2FyZSBsZWF2aW5nIHRoZSBvdXRwdXQgZW5hYmxlZCwgdGhhdCBjdXRzIHRoZSBNQ0xLCj4g
PiA+ID4gYW5kIGFuYWxvZyBhdWRpbyBzdG9wcyB3b3JraW5nLgo+ID4gPiA+Cj4gPiA+ID4gTWFy
ayB0aGUgZm91ciBnYXRlcyBDTEtfSUdOT1JFX1VOVVNFRCBzbyBhbiB1bnJlZmVyZW5jZWQgZ2F0
ZSBrZWVwcyB0aGUKPiA+ID4gPiBzdGF0ZSBmaXJtd2FyZSBsZWZ0LiBBIGJvYXJkIHRoYXQgd2Fu
dHMgdGhlIGtlcm5lbCB0byBvd24gdGhlIGdhdGUgY2FuCj4gPiA+ID4gcmVmZXJlbmNlIEkyUypf
OENIX01DTEtPVVRfVE9fSU8gZnJvbSBEVCBpbnN0ZWFkLgo+ID4gPiA+Cj4gPiA+ID4gWy4uLl0K
PiA+ID4KPiA+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4gPgo+ID4gPiBbMS8xXSBjbGs6IHJvY2tj
aGlwOiByazM1ODg6IGRvbid0IGRpc2FibGUgdW51c2VkIEkyUyBNQ0xLIG91dHB1dCBnYXRlcwo+
ID4gPiAgICAgICBjb21taXQ6IDk0NjM1MmIyZjg4ZmQyMzc4ZjAzNDEzMTJlNDdkZmYxZThkYzJm
YWMKPiA+Cj4gPiBJbiBoaW5kc2lnaHQgbWF5YmUgaXQgd291bGQgaGF2ZSBiZWVuIGEgYmV0dGVy
IGlkZWEgdG8gbWFwIHRoZSBleGlzdGluZwo+ID4gY2xvY2sgSUQgSTJTKl84Q0hfTUNMS09VVCB0
byB0aGUgbmV3IGdhdGVzLCBhbmQgYWRkIChvciBub3QgYWRkKSBuZXcKPiA+IGNsb2NrcyBmb3Ig
dGhlIGludGVybmFsIE1DTEsgZ2F0ZXMuCj4gPgo+ID4gVGhlbiB5b3Ugd291bGRuJ3QgbmVlZCB0
byB1cGRhdGUgdGhlIERUcywgd291bGRuJ3QgbmVlZCB0aGlzIHdvcmthcm91bmQsCj4gPiBhbmQg
d291bGRuJ3QgZGVwZW5kIG9uIHRoZSBib290bG9hZGVyIHRvIHNldCB0aGUgcmVnaXN0ZXJzIGNv
cnJlY3RseSB3aGVuCj4gPiBib290aW5nIGFuIG9sZCBEVC4KPgo+IEhlbHAgbWUgdW5kZXJzdGFu
ZCBmb3IgdGhlIGZ1dHVyZTogSWYgdGhlIGFwcHJvYWNoIHlvdSBkZXNjcmliZSB3b3VsZAo+IGhh
dmUgYmVlbiB1c2VkLCB0aGVuIHRoZSBjbG9ja3MgaW4gdGhlIGtlcm5lbCB3b3VsZCBoYXZlIGJl
ZW4gbWlzbGFiZWxlZAo+IGluIHRoZSBrZXJuZWwgZHJpdmVyIGNvbXBhcmVkIHRvIHdoYXQncyBh
Y3R1YWxseSBvbiB0aGUgU29DLCBjb3JyZWN0Pwo+IFRoYXQgd291bGQgaGF2ZSBiZWVuIG1vcmUg
ZGVzaXJhYmxlIGluIG9yZGVyIHRvIGtlZXAgY29tcGF0aWJpbGl0eSB3aXRoCj4gdGhlIG9sZGVy
IERUcz8KCldoaWNoIHBhcnQgYXJlIHlvdSByZWZlcnJpbmcgdG8gYWJvdXQgbWlzbGFiZWxlZD8g
VGhlIERUIHBhcnQgd291bGQgYmUKbWlzbGFiZWxlZCwgc3VyZSwgYnV0IHlvdSBjYW4gcmVuYW1l
IHRoZSBtYWNybyB0byBhIG1vcmUgc3VpdGFibGUgbmFtZQp3aXRob3V0IGNoYW5naW5nIHRoZSBJ
RCwgd2hpY2ggaXMgdGhlIGJpbmRpbmcgcGFydCB0aGF0IGNhbm5vdCBiZSBjaGFuZ2VkLgoKSW4g
dGhlIGRyaXZlciwgd2Ugd291bGQgY2hhbmdlIEkyUypfOENIX01DTEtPVVQgdG8gcG9pbnQgdG8g
dGhlIGdhdGUsCndoaWxlIGEgbmV3IEkyUypfOENIX01DTEtPVVRfSU5URVJOQUwgb3Igc29tZXRo
aW5nLCBwb2ludHMgdG8gdGhlIG9yaWdpbmFsCm11eC4KCkRlcGVuZGluZyBvbiB0aGUgY2xrIGRy
aXZlciAobGlicmFyeSkgZGVzaWduLCBpdCBtaWdodCBub3QgZXZlbiBuZWVkCmEgY2xrIElEIGlm
IGl0J3Mgb25seSBpbnRlcm5hbC4KCkFuZCBJSVJDIGNsa3MgZG9uJ3QgZXZlbiBoYXZlIHRvIGJl
IHJlZ2lzdGVyZWQgaW4gb3JkZXIuIFRoZXkgY2FuIGJlCnJlZ2lzdGVyZWQsIGJlIGFkZGVkIGFz
IG9ycGhhbnMsIGFuZCB3aGVuIHRoZWlyIHBhcmVudCBhcHBlYXJzLCBnZXQKaW50ZWdyYXRlZCBp
bnRvIHRoZSBjbGsgdHJlZS4KCj4gQnV0IHRoZSBvbGRlciBEVHMgY2FuIHN0aWxsIHJlZmVyZW5j
ZSB0aGUgbXV4LCBjb3JyZWN0PyBGcm9tIHRoZQo+IGtlcm5lbCdzIHBlcnNwZWN0aXZlIGluIHRo
aXMgc2NlbmFyaW8sIHRoZSBpbXBvcnRhbnQgdGhpbmcgaXMgZm9yIHRoZQo+IG11eCB0byBzZWxl
Y3QgdGhlIGFwcHJvcHJpYXRlIHBhcmVudC4gVGhlIGVuZCBnYXRlIHdpbGwgYWx3YXlzIGJlIGxl
ZnQKPiBvbi4gRnJvbSBhIHBvd2VyIG1hbmFnZW1lbnQgcGVyc3BlY3RpdmUsIHRoZSBwb3dlciB3
aWxsIGJlIGN1dCBmdXJ0aGVyCj4gdXAgdGhlIGNsb2NrIHRyZWUgYXMgbmVlZGVkLgoKQ29ycmVj
dCwgb2xkIERUcyBzdGlsbCByZWZlcmVuY2UgdGhlIG11eCwgbm90IHRoZSBnYXRlLCB3aGljaCBp
cyBhCnByb2JsZW0gaWYgdGhlIGdhdGUgd2Fzbid0IGVuYWJsZWQgYWxyZWFkeS4KCkV2ZW4gd2l0
aCB0aGlzICJmaXgiLCB0aGUgb2xkIERUcyBzdGlsbCByZWx5IG9uIHRoZSBib290bG9hZGVyIGhh
dmluZwplbmFibGVkIHRoZSBnYXRlcyBiZWZvcmVoYW5kLiBUaGUgZmxhZyBhZGRlZCBpcyAiQ0xL
X0lHTk9SRV9VTlVTRUQiLApub3QgIkNMS19UVVJOX0lUX09OX0JVVF9MRUFWRV9JVF9VTlVTRUQi
LiBBbmQgQlRXLCB0aGUgZ2F0ZSBpcyBtaXNzaW5nCnRoZSBDTEtfU0VUX1JBVEVfUEFSRU5UIGZs
YWcuCgoKSU1PIHRoaXMgaXMgYmV0dGVyIHRoYW4gaGF2aW5nIHRvIGNhcnJ5IHdvcmthcm91bmRz
IGZvciBvbGQgRFRzCmluZGVmaW5pdGVseS4gVXAgdG8geW91IGFuZCBIZWlrbyB0aG91Z2guCgoK
Q2hlbll1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
