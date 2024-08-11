Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2397C52D7F
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 21:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/S2vI5WLKAe0AgUY3uoCCYxlp7NpYEn/8uWzntopaE=; b=MyTa7b596QXARJ
	J1muXvTVFqeAPRsweg6lr9+nHx6r63Bvyi+9rpAPbFTqqTVGwM/hZ51eq463JJJHHYSucsp24bEte
	QzkjdIbelSsoOp6XyJ46NmGZrW1uEGfjBFmcxbcKN+LinonZ+rpKaHvYDyFVP6tGJ4aRtcy0r/grU
	0Z7oGTq3HR/xEc2kYBvXKgJeLNrji01X2IhPDRHg7sAAKrh/PJWrH+8OdBv35QjLgN9QHrn1+mpL7
	KdSIX6fj/k0JRUFNgIqDT1I6f1le1TglRchDc2S487B4qyrXrE29XyBem7F+KimXxuXEg/kvnUHVz
	al2IzNOm5KtFYZDWPyNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdG56-0000000GJHj-3oye;
	Sun, 11 Aug 2024 21:26:28 +0000
Received: from shout01.mail.de ([2001:868:100:600::216])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdG4V-0000000GJCn-3M8f;
	Sun, 11 Aug 2024 21:25:53 +0000
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout01.mail.de (Postfix) with ESMTP id A6185240CF0;
	Sun, 11 Aug 2024 23:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1723411545;
	bh=XEy8infW/3X2i7d6LJ9iH/YuoUxwdLQLKzpV+kh0g6Q=;
	h=Message-ID:Date:From:Subject:To:Cc:From:To:CC:Subject:Reply-To;
	b=4j6ttcx367UunUMdRf83YGU92k0RO987xPjozkAZY+TajbFVuCZK0cAOipV/h1lxg
	 aMLsRocgCO7jnKVapxZuaxpav79vlW6IWMWfo8TYJwFGPAJlm954qkkzADTnaIqueS
	 ogG14cOFuVrZNUQ/pFXszWlJZhGuDe8v60gyqJZn2HHone4djZBw7ThxPq6tpUM8aJ
	 LmCaByPdtnJKikVomIpMvRb2LVHkRnXHML6982sy7SiIbzu3KHFTAhBECaRe9wp6F+
	 rwidsVBy0SfSF1g3JCPDe4uQhdduN/yugOxLbFNVPgBqY/p9c8va01YpiRaD849wK6
	 /QICLNMgOMp3w==
Received: from smtp01.mail.de (smtp02.bt.mail.de [10.0.121.212])
	by postfix01.mail.de (Postfix) with ESMTP id 86337240F61;
	Sun, 11 Aug 2024 23:25:45 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 94D1B240AC1;
	Sun, 11 Aug 2024 23:25:40 +0200 (CEST)
Message-ID: <ed50615f-6e4e-481c-aa8c-44ac938be2bf@mail.de>
Date: Sun, 11 Aug 2024 23:25:39 +0200
MIME-Version: 1.0
From: Sebastian Kropatsch <seb-dev@mail.de>
Subject: Re: rk3588(CM3588) USB issues
To: Michael Zimmermann <sigmaepsilon92@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <CAN9vWD+vzqeqZuJaUXMoqTBV26Goji1yPqCoPQwEtu4jhPSjNw@mail.gmail.com>
 <CAN9vWD+U6VBN9nNDo00QX67A7Og8cvy7Wttt-_xbrj0yZPu0PQ@mail.gmail.com>
In-Reply-To: <CAN9vWD+U6VBN9nNDo00QX67A7Og8cvy7Wttt-_xbrj0yZPu0PQ@mail.gmail.com>
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 2689
X-purgate-ID: 154282::1723411545-B3E3122F-089B9B8D/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_142552_015049_D05C5635 
X-CRM114-Status: GOOD (  21.49  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWljaGFlbCwKCkFtIDA4LjA4LjIwMjQgdW0gMTA6Mzggc2NocmllYiBNaWNoYWVsIFppbW1l
cm1hbm46Cj4gSGkgU2ViYXN0aWFuLAo+IAo+IERvIHlvdSBoYXZlIHRoZSBzYW1lIFVTQiBpc3N1
ZXM/IEknbSBhc2tpbmcgeW91IGJlY2F1c2UgeW91IGFkZGVkIHRoZQo+IGJvYXJkIHRvIE1haW5s
aW5lLiBJZiBub3QsIGl0J2QgYmUgZ3JlYXQgaWYgeW91IGNhbiBkZXNjcmliZSB5b3VyCj4gc29m
dHdhcmUgc2V0dXAuIE1heWJlIEknbSBkb2luZyBzb21ldGhpbmcgd3Jvbmcgb24gdGhlIGJvb3Rs
b2FkZXIKPiBzaWRlPwoKSSBkaWQgc29tZSB0ZXN0cyBwbHVnZ2luZyBpbiBzb21lIFVTQiBkZXZp
Y2VzIGFuZCB0aGVuIHJlYm9vdGluZzoKLSBVU0IzLjAgZmxhc2ggZHJpdmUgcGx1Z2dlZCBpbnRv
IGVhY2ggb2YgdGhlIFVTQi1BIHBvcnRzIChvbmx5IG9uZQphdCBhIHRpbWUpLCB0aGUgdHdvIFVT
QjMgcG9ydHMgSSBvbmx5IHRlc3RlZCBvbmNlLCB0aGUgVVNCMiBwb3J0CmFib3V0IDEwIHRpbWVz
Ci0gUGhvbmUgcGx1Z2dlZCBpbnRvIGVhY2ggb2YgdGhlIFVTQi1BIHBvcnRzIChvbmx5IG9uZSBh
dCBhIHRpbWUpLgotIFVTQi1DIHBvcnQgbm90IHRlc3RlZC4KLSBQbHVnZ2luZyBpbiBhIFVTQiBo
dWIgZGV2aWNlIG5vdCB0ZXN0ZWQgZHVlIHRvIGxhY2sgb2YgaGFyZHdhcmUuCgpJIHVzZWQgRGVu
eCB1LWJvb3QgdjIwMjQuMTAtcmMyIGFzIGJvb3Rsb2FkZXIsIHlvdSBjYW4gdXNlIHRoZSBnZW5l
cmljCnRhcmdldCBmb3IgdGhlIFJvY2tjaGlwIFJLMzU4OC4gQm9vdGluZyBpbnRvIFVidW50dSAy
NC4wNC4KCk1vc3Qgb2YgbXkgdGVzdHMgd2VudCBqdXN0IGZpbmUsIHdpdGggdGhlIFVTQiBkZXZp
Y2UgYmVpbmcgcmVjb2duaXplZAphZnRlciBib290aW5nLiBUaGUgb25seSBwcm9ibGVtIEkgZGlk
IG9ic2VydmUgd2FzIHdpdGggdGhlIFVTQjMuMCBmbGFzaApkcml2ZSBwbHVnZ2VkIGludG8gdGhl
IFVTQjItQSBwb3J0LiBTb21ldGltZXMgd2hlbiByZWJvb3RpbmcsIHRoZSBmbGFzaApkcml2ZSB3
b3VsZCBub3QgZ2V0IHJlY29nbml6ZWQsIG9ubHkgYWZ0ZXIgcmVtb3ZpbmcgaXQgYW5kIHBsdWdn
aW5nIGl0CmJhY2sgaW4uIEFuZCBpbiAqb25lKiBvdXQgb2YgYWJvdXQgMTAgdHJpZXMgdGhlIGtl
cm5lbCBodW5nIGF0IGJvb3QuCgpJIHdhcyBub3QgYWJsZSB0byByZXByb2R1Y2UgeW91ciBvdGhl
ciBpc3N1ZXMuCgpUaGlzIG1heSBiZSBhbiBpc3N1ZSB3aXRoIHUtYm9vdCBhbmQvb3IgdGhlIFVT
QiBkcml2ZXIsIG1heWJlIGV2ZW4KcGFydGx5IGR1ZSB0byB0aGUgaXNzdWUgZGVzY3JpYmVkIGhl
cmU6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZh
bGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jP2g9djYuMTEtcmMyI243NDgKClF1b3RlIGZyb20gdGhlIGRyaXZlcjoKaWYgKHJldCkgewoJ
ZGV2X2Vycih1ZHBoeS0+ZGV2LCAiY21uIGFuYSBsY3BsbCBsb2NrIHRpbWVvdXRcbiIpOwoJLyoK
CSAqIElmIGVhcmxpZXIgc29mdHdhcmUgKFUtQm9vdCkgZW5hYmxlZCBVU0Igb25jZSBhbHJlYWR5
CgkgKiB0aGUgUExMIG1heSBoYXZlIHByb2JsZW1zIGxvY2tpbmcgb24gdGhlIGZpcnN0IHRyeS4K
CSAqIEl0IHdpbGwgYmUgc3VjY2Vzc2Z1bCBvbiB0aGUgc2Vjb25kIHRyeSwgc28gZm9yIHRoZQoJ
ICogdGltZSBiZWluZyBhIC1FUFJPQkVfREVGRVIgd2lsbCBzb2x2ZSB0aGUgaXNzdWUuCgkgKgoJ
ICogVGhpcyByZXF1aXJlcyBmdXJ0aGVyIGludmVzdGlnYXRpb24gdG8gdW5kZXJzdGFuZCB0aGUK
CSAqIHJvb3QgY2F1c2UsIGVzcGVjaWFsbHkgY29uc2lkZXJpbmcgdGhhdCB0aGUgZHJpdmVyIGlz
CgkgKiBhc3NlcnRpbmcgYWxsIHJlc2V0IGxpbmVzIGF0IHByb2JlIHRpbWUuCgkgKi8KCXJldHVy
biAtRVBST0JFX0RFRkVSOwp9CgoKPiAKPiBPbiBUaHUsIEF1ZyAxLCAyMDI0IGF0IDk6MDXigK9Q
TSBNaWNoYWVsIFppbW1lcm1hbm4KPiA8c2lnbWFlcHNpbG9uOTJAZ21haWwuY29tPiB3cm90ZToK
Pj4KPj4gSGksCj4+Cj4+IEkgaGF2ZSBhIGZyaWVuZGx5ZWxlYyBDTTM1ODggYW5kIFVTQiBkb2Vz
bid0IHF1aXRlIHNlZW0gdG8gd29yay4gSQo+PiBzdGFydGVkIHdpdGggNi44IGJ1dCBhbSBub3cg
bW9zdGx5IHRlc3Rpbmcgd2l0aCA2LjExLXJjMSBzaW5jZSBpdAo+PiBmaXhlZCB0aGUgdHlwZWMg
cG9ydHMgYW5kIHBjaWUgYmlmdXJjYXRpb24gYW5kIGJvdGggb2YgdGhlbSBzZWVtIHRvCj4+IGhh
dmUgaXNzdWVzLiBJJ20gdXNpbmcgZmVkb3JhIGNvcmVPUyA0MCB3aXRoIGEgc2VsZiBjb21waWxl
ZAo+PiBtYWlubGluZS1tY3Vib290IHdoaWNoIHNpbXBseSBhZGRzIGEgY29uZmlnIGFuZCBkdGIg
Zm9yIHRoYXQgYm9hcmQuCgpQbGVhc2UgdHJ5IERlbnggdS1ib290IHYyMDI0LjEwLXJjMiBhbmQg
bWF5YmUgVWJ1bnR1IG9yIGFub3RoZXIKRGViaWFuIGJhc2VkIGRpc3Ryby4gRm9yIHUtYm9vdCB5
b3UgY2FuIHVzZSB0aGUgZ2VuZXJpYyB0YXJnZXQgZm9yIHRoZQpSb2NrY2hpcCBSSzM1ODggb3Ig
YWRkIHRoZSBkZXZpY2UgbGlrZSB5b3UgZGVzY3JpYmVkLgoKQ2hlZXJzLApTZWJhc3RpYW4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
