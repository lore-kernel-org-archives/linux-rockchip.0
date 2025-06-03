Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592C3C5AD49
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 02:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hF+Qxzxb6DgnEu7fo6+GBL027tkNmMz0eUpQSbVjpbo=; b=qAA8+gbQVaB6Kf
	/XNAYgnC27E3++XdUcinJ0WWj0neifopgYaou7BFkmrPl9g908gr7/KVrM25S+E8qbZDvAvOKnpMv
	bKe19Dz4WTGAmJZ1thqB+vzJ7rGZQxS1k9af4bUq4JphQXMjpJf+FDk+h86UmmasdcsvLvC/+rWVv
	42dNY/9JyO53MDUQjCxM2PQl2KQp5x5tzzPm1Wqaqd82tdJfqdYyZ758J8wPtZ1ZNgtODiyzgPpfb
	9tKgLVECbBruaK3YXjFLFRWTbxtcd5prIVC8iY4K0VmfqYBS2eo5e9/1MGMoJ7mG1on7Yw+HElnAM
	hQQqEqdIt9qTaVkwCuJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMHED-00000009Wny-2Enu;
	Tue, 03 Jun 2025 02:18:13 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMHEB-00000009Wnd-0TLp
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 02:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1748917086;
	bh=38mnLjrTEUOf7x4HwTKcWpZueixEfUzUrqwj16g52RY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=h1cAUXQwzFYp3hGBM7vfpO9XfsQjdGWRjrhh0ZBVhjuZaNb1nUjI2yRrUJGv1BJaJ
	 pza/Y2Nmt1FF3DWT5TQ0P8QiNbsoYdAlyv7YQnNIzRChE4vt7QSH7BSU5ENjWRPjEa
	 iGjU9+YW2v8cYrHqi4xo8vhbs415jGvWhQSogFDkJcai3ikn2dBeQvuMLa/1PXw7H2
	 vJSI7AuEk+HAWkS3OFe8p7cBxZLHm3bHfnyMP4AuDRQc/s7AK8HJcyrSx5TgptKeCs
	 81NWgESv0RAM7P0JopAP/eoG58MoDiv8UBqJa2hw6hL9gtDgwBaZ2b5mz6NaDBXp9V
	 jQJNIN16JeD5A==
Received: from WahpenayoPeak.tahoma.link (unknown [IPv6:2600:4040:50b4:ed04:3420:180e:e58e:363f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id C597D27E48D;
	Tue,  3 Jun 2025 02:18:06 +0000 (UTC)
Date: Mon, 2 Jun 2025 22:18:05 -0400
From: Erik Beck <xunil@tahomasoft.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Subject: Re: Searching for forum for help on dts devel for RK3568 board
Message-ID: <20250602221805.2223ed38.xunil@tahomasoft.com>
In-Reply-To: <2735394.X9hSmTKtgW@diego>
References: <20250601163901.7e3ca4dc.xunil@tahomasoft.com>
 <3153832.CbtlEUcBR6@diego>
 <20250601175214.2b291457.xunil@tahomasoft.com>
 <2735394.X9hSmTKtgW@diego>
Organization: Tahoma Soft
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_191811_370488_61BDB96E 
X-CRM114-Status: GOOD (  38.71  )
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

SGkgSGVpa28sCgpZb3Ugd2VyZSByaWdodCBhYm91dCB0aGUgbnVtLWxhbmVzID0gPDE+IGZvciBl
YWNoIHBjaWUzIQoKTWFkZSB0aGF0IGNoYW5nZSB0byB0aGUgZHRzIGFuZCBub3cgYm90aCBwY2ll
MyBicmlkZ2VzIGNvbWUgdXAgYWxvbmcKd2l0aCB0aGUgcGNpZTIgYnJpZGdlIQoKTmV4dCBzdGVw
IGlzIGZvciBtZSB0byBmaWd1cmUgb3V0IHdoeSB0aGUgcnRsODEyNS1iYXNlZCBjaGlwcyBhdHRh
Y2hlZAp0byBlYWNoIHBjaWUzIGJyaWRnZSBkb24ndCBjb21lIHVwIGxpa2UgdGhlIG10NzkyMWUg
ImNhcmQiIGF0dGFjaGVkIHRvCnRoZSBwY2llMiBicmlkZ2UuCgpUaGFuayB5b3UgZm9yIHlvdXIg
aGVscCEKCkVyaWsKCk9uIE1vbiwgMDIgSnVuIDIwMjUgMDk6MTA6MTIgKzAyMDAKSGVpa28gU3TD
vGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cgo+IEhpIEVyaWssCj4gCj4gQW0gU29ubnRh
ZywgMS4gSnVuaSAyMDI1LCAyMzo1MjoxNCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdAo+
IHNjaHJpZWIgRXJpayBCZWNrOgo+ID4gSGkgSGVpa28sCj4gPiAKPiA+IFRoYW5rcyBmb3IgdGhl
IGZhc3QgcmVzcG9uc2UhCj4gPgo+ID4gSSdsbCBnaXZlIGxpYmVyYS5jaGF0IGEgdHJ5Lgo+ID4g
Cj4gPiBJJ3ZlIGJlZW4gbG9va2luZyBhdCB0aGUgc2NoZW1hdGljcywgYW5kIHRoZXkgaGF2ZSBo
ZWxwZWQgc29tZXdoYXQsCj4gPiBidXQgbm90IGdldHRpbmcgbWUgdW5zdHVjayBhdCB0aGUgbW9t
ZW50LiBUaGUgVjIgc2hvdWxkIGJlIHByZXR0eQo+ID4gc2ltaWxhciB0byB0aGUgVjEsIGJ1dCB0
aGVyZSBtaWdodCBiZSBhbiBpbXBvcnRhbnQgZGlmZmVyZW5jZSBJJ20KPiA+IG92ZXJsb29raW5n
Lgo+ID4gCj4gPiBJJ2xsIGdpdmUgYSBsb29rIGF0IHRob3NlIGJvYXJkcyB5b3UgbWVudGlvbmVk
LiBJJ3ZlIGJlZW4gdXNpbmcgdGhlCj4gPiBCUEktUjItUHJvIGZvciBpbnNwaXJhdGlvbi4gSXQg
aGFzIGFsc28gaGVscGVkLCBidXQgdGhlcmUgbWlnaHQgYmUKPiA+IHNvbWV0aGluZyBpbiB0aGUg
b3RoZXIgYm9hcmRzIHJlbGF0aW5nIHRvIHRoZSBQQ0llIGJ1cyB0aGF0IG1pZ2h0Cj4gPiBoZWxw
Lgo+ID4gCj4gPiBJJ3ZlIGJlZW4gcHV0dGluZyB0aGUgd29yayB1cCBvbnRvIGdpdGh1YjsgY3Vy
cmVudCBicmFuY2ggaXM6Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vVGFob21hU29mdC9vcGVud3J0
LW9wZW53cnQvdHJlZS9FeHBEZXYtV0lQNwo+ID4gCj4gPiBEaXJlY3QgbGluayB0byB0aGUgRFRT
IGlzOgo+ID4gaHR0cHM6Ly9naXRodWIuY29tL1RhaG9tYVNvZnQvb3BlbndydC1vcGVud3J0L2Js
b2IvRXhwRGV2LVdJUDcvdGFyZ2V0L2xpbnV4L3JvY2tjaGlwL3BhdGNoZXMtNi42LzAzNi1hcm02
NC1kdHMtcm9ja2NoaXAtbGlua3N0YXItbWluaW1hbC5wYXRjaAo+ID4gIAo+IAo+IFRoZSB0aGUg
YmlnIG5lb24gc2lnbiBvbiBmaXJzdCBnbGFuY2UgaXMgdGhlIG1pc3NpbmcgbGFuZS1saW1pdGF0
aW9uLgo+IAo+IHBjaWUzeDIgYW5kIHBjaWUzeDEgc2hhcmUgdGhlaXIgbGFuZXMsIHNvIGRlcGVu
ZGluZyBvbiB0aGUgYm9hcmQKPiB3aXJpbmcgeW91IGNhbiBlaXRoZXIgZG8gcGNpZTN4MiB3aXRo
IDIgbGFuZXMsIG9yIGJvdGggd2l0aCAxIGxhbmUKPiBlYWNoLgo+IAo+IFNlZSB0aGUKPiAJbnVt
LWxhbmVzID0gPDE+Owo+IGxpbmVzIGluIHRoZSBkZXZpY2V0cmVlcyB1c2luZyBib3RoIHBjaWUg
Y29udHJvbGxlcnMuCj4gCj4gCj4gSGVpa28KPiAKPiAKPiA+IFRoYW5rIHlvdS9EYW5rZSwKPiA+
IAo+ID4gRXJpawo+ID4gfn5+Cj4gPiBPbiBTdW4sIDAxIEp1biAyMDI1IDIzOjExOjU2ICswMjAw
Cj4gPiBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+ICAgCj4gPiA+
IEhpIEVyaWssCj4gPiA+IAo+ID4gPiBBbSBTb25udGFnLCAxLiBKdW5pIDIwMjUsIDIyOjM5OjAx
IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0Cj4gPiA+IHNjaHJpZWIgRXJpayBCZWNrOiAg
Cj4gPiA+ID4gSSBhbSB3b3JraW5nIG9uIGluaXRpYWwgc3VwcG9ydCBmb3IgYW4gUkszNTY4IGJv
YXJkLCB0aGUKPiA+ID4gPiBMaW5rU3RhciBINjhLLTE0MjF2MS4gSSd2ZSBtYWRlIHNvbWUgcHJv
Z3Jlc3MsIGJ1dCBjYW4ndCBnZXQKPiA+ID4gPiBwYXN0IHR1cm5pbmcgb24gb25lIG9mIHRoZSB0
d28gUENJZTMgSG9zdCBicmlkZ2VzIChwY2llM3gxCj4gPiA+ID4gcGNpZUBmZTI3MDAwMCkgd2l0
aG91dCBicmVha2luZyB0aGUgYm9vdC4KPiA+ID4gPiAKPiA+ID4gPiBJcyB0aGlzIHRoZSByaWdo
dCBsb2NhdGlvbiB0byBhc2sgZm9yIGhlbHA/IElmIG5vdCwgd2hlcmUgbWlnaHQKPiA+ID4gPiBi
ZT8gCj4gPiA+IAo+ID4gPiBUaGUgbWFpbGluZ2xpc3QgbW9zdGx5IGhhcyBwYXRjaGVzIG9uIGl0
LCBzbyBJIGRvbid0IHJlYWxseSBrbm93Cj4gPiA+IGlmIHBlb3BsZSBhcmUgZXhwZWN0aW5nIG5v
bi1wYXRjaCBtYWlscy4KPiA+ID4gCj4gPiA+IElmIGluIGRvdWJ0IHRoZSAjbGludXgtcm9ja2No
aXAgY2hhbm5lbCBvbiB0aGUgbGliZXJhLmNoYXQgSVJDCj4gPiA+IG5ldHdvcmsgWzBdIG1pZ2h0
IGhlbHAgbW9yZS4gKHBlb3BsZSBpbiBkaWZmZXJlbnQgdGltZXpvbmVzLCBzbwo+ID4gPiBwcm9i
YWJseSBubyBpbW1lZGlhdGUgYW5zd2VycykKPiA+ID4gCj4gPiA+IAo+ID4gPiAKPiA+ID4gRm9y
IHRoZSBtdWx0aS1wY2kgY2FzZSBJIGd1ZXNzIHlvdSBjb3VsZCBzdGFydCBieSBsb29raW5nIGF0
IG90aGVyCj4gPiA+IHJrMzU2OCBib2FyZCBkb2luZyBzaW1pbGFyIHRoaW5ncywgbGlrZSB0aGUg
UW5hcC1UUzQzMyBbMV0sIFJhZHhhCj4gPiA+IEUyNSBbMl0gb3IgTmFub3BpLVI1UyBbM10uCj4g
PiA+IAo+ID4gPiBHZW5lcmFsbHkgYm9hcmQgZGVzaWduZXJzIG9mdGVuIGZvbGxvdyByZWZlcmVu
Y2UgZGVzaWducywgc28KPiA+ID4gdGhpbmdzIG1pZ2h0IGJlIHNpbWlsYXIuCj4gPiA+IAo+ID4g
PiBTaW1pbGFybHksIHlvdSBtaWdodCB3YW50IHRvIHB1c2ggeW91ciBjdXJyZW50IGluIHByb2dy
ZXNzIHdvcmsgb24KPiA+ID4gc29tZSBnaXRodWIgdGhpbmcsIHNvIHBlb3BsZSBjYW4gdGFrZSBh
IGxvb2suCj4gPiA+IAo+ID4gPiAKPiA+ID4gSXQgYWxzbyBsb29rcyBsaWtlIHRoZSBINjhLVjIg
dmFyaWFudCBvZiB0aGUgZGV2aWNlIGhhcyBzY2hlbWF0aWNzCj4gPiA+IGF2YWlsYWJsZSBhcyBs
aW5rZWQgZnJvbSB0aGUgYm90dG9tIG9mIFs0XSwgbm90IHN1cmUgaG93IHRoYXQKPiA+ID4gcmVs
YXRlcyB0byB5b3VyIGRldmljZSB0aG91Z2guCj4gPiA+IAo+ID4gPiAKPiA+ID4gSGVpa28KPiA+
ID4gCj4gPiA+IAo+ID4gPiBbMF0gaHR0cHM6Ly9saWJlcmEuY2hhdC8KPiA+ID4gWzFdCj4gPiA+
IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRz
L2xpbnV4LmdpdC90cmVlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAt
dHM0MzMuZHRzCj4gPiA+IFsyXQo+ID4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1lMjUuZHRzCj4gPiA+IFszXQo+ID4gPiBodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5n
aXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0
cwo+ID4gPiBbNF0KPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL1NlZWVkLVN0dWRpby93aWtpLWRv
Y3VtZW50cy9ibG9iL2RvY3VzYXVydXMtdmVyc2lvbi9kb2NzL05ldHdvcmsvUktfRGV2aWNlcy9I
NjhLX1YyL0g2OEtWMl9pbnN0YWxsX3N5c3RlbS5tZAo+ID4gPiAKPiA+ID4gCj4gPiA+IAo+ID4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+ID4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+ID4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwICAKPiA+IAo+ID4gICAKPiAKPiAKPiAKPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
