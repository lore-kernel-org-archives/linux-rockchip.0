Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F8DEC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:19:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9EC760F01
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:19:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E9EC760F01
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDqjUfJ+LX7bFlMDFHWMR+I96Dcf+kGsQXrkv3m+GDs=; b=PYYxGeiM8333YR
	c0XJrC4R7a5CUfIfQzJG2ci9pUBkXO8xDhFlRejwE3khO/l9lbaCc4ia7uC869gesu0i/ZwVjc/uL
	ajRoUTeIHD0q3zG46N1buQUR+7ALBesq8/O24SolPxdHLUnY+aRhB2ni6HqekieyRGakqFiKzs5Ss
	ivXFBezfzvszbGk0twCNb0jYMj2fvJO3rPGUmAQLmy8Vl0Y2GAEZtRnQwqbDL0vsihGemP7vUnKMS
	dwkE2NSjCO3aFKWz6Ee2hEp9eI/9AH8ySzfMt6uPSjHyqhx07gIwA5k7CoK2gYL990Te+I3l+LZXS
	KJgTQcEtRjzOa/5KS64w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kPQ-0012tJ-Ua; Wed, 28 Jul 2021 14:19:44 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kOl-0012gT-N1; Wed, 28 Jul 2021 14:19:05 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id f26so4190870ybj.5;
 Wed, 28 Jul 2021 07:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ejXULwDzPXwJ/LTVaK86AHBcOGDiYvQDKdZvKfGyr+E=;
 b=izLih9JXIZe8uv9f2Y5f/dBmFONzdLNBX3NwBX8w15sMRi8/cSqjpYVpa7WPKvKmb0
 YVeN4seCnkjHpYV1oC6tmJDU3mZiehtap5QguPxcxHLBLD8Ki993awTH38hIi9mFB9Yc
 cbOL/VtgQCEQsKgtMylpl+gZftgiDw8jaEMXp463BpIbSnFURa+wj8OatcJMBWMvqo3K
 vb7rXPy9/j+oseSpdi1cxsRVIHyZNLJPkpTm58hwkgdJpl+7x7FjkwEzcbEiH/5Fdb+B
 sqmxgMRqluJgNLeHvg4ueTvoxpNW6YpitOnPKeA7gpKu12Vb0YjPZRKK6iEIstxIHpCN
 P4CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ejXULwDzPXwJ/LTVaK86AHBcOGDiYvQDKdZvKfGyr+E=;
 b=r7REra4PprCANy1TATpdB4bJbxFzOr1qM2QLawNACyrIzabCOklorlpVNIExbgfiF8
 94osBzV+uoFRP6/QN736j6vpH3siFuyeN8TXaXXfezva/2so5Qi4juta3IOO5hCg81s/
 N4tNYc3mWAP/U93ACZwqLzrbkgQx7MUM9WfZvRIAbGZEAs5KZ7aXuBGQGM4iPFROvIr0
 5yLb8ztLgEmbVnoUs54uMUPgxHyubYVJhWA8LDEsLLEVbsmcH5R85sWFAqMtdgmJRqx3
 QcBJZMSEA2R+3Y9twcjVR48vpr6OijC3zX12S5KksseUOHCD+ZC0iSnyyra2u34u7IJK
 8CYw==
X-Gm-Message-State: AOAM531WVUkExcWpNBBNC/zKGoWLwHr82TAs1LkQwqnLRxIdVmHtAKQl
 ep8+L209cN/RIPbIiL8fheFT6I79vflx6+HIga0=
X-Google-Smtp-Source: ABdhPJxuR9VjMFM8xLFvjAI/XQvLoRT9mV8kY/kO1BcownGU4fjyQoi5dCN6U0Vxw4ND7H9kfs1D+MrhHXnhCNLzZ1o=
X-Received: by 2002:a25:3c5:: with SMTP id 188mr8800245ybd.437.1627481942356; 
 Wed, 28 Jul 2021 07:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-7-pgwipeout@gmail.com>
 <13247009.uLZWGnKmhe@diego>
In-Reply-To: <13247009.uLZWGnKmhe@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 10:18:49 -0400
Message-ID: <CAMdYzYqR+ocrXQi8TOHY0Yd2oULXuPgE_QnbcuQSw=BoaumBKA@mail.gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: rockchip: add missing rk3568 cru phandles
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_071903_828659_57051591 
X-CRM114-Status: GOOD (  20.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTA6MDYgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBQZXRlciwKPgo+IEFtIE1pdHR3b2NoLCAyOC4gSnVsaSAy
MDIxLCAxNTo1NTozMSBDRVNUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+IFRoZSBncmYgYW5kIHBt
dWdyZiBwaGFuZGxlcyBhcmUgbmVjZXNzYXJ5IGZvciB0aGUgcG11Y3J1IGFuZCBjcnUgdG8KPiA+
IG1vZGlmeSBjbG9ja3MuIEFkZCB0aGVzZSBwaGFuZGxlcyB0byBwZXJtaXQgYWRqdXN0aW5nIHRo
ZSBjbG9jayByYXRlcwo+ID4gYW5kIG11eGVzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVy
IEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpIHwgMyArKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTZ4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5k
dHNpCj4gPiBpbmRleCAwOTA1ZmFjMDcyNmEuLjhiYTA1MTZlZWRkOCAxMDA2NDQKPiA+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPiA+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPiA+IEBAIC0yMTgsNiArMjE4LDgg
QEAgZ3JmOiBzeXNjb25AZmRjNjAwMDAgewo+ID4gICAgICAgcG11Y3J1OiBjbG9jay1jb250cm9s
bGVyQGZkZDAwMDAwIHsKPiA+ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxy
azM1NjgtcG11Y3J1IjsKPiA+ICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZkZDAwMDAwIDB4
MCAweDEwMDA+Owo+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4gPiAr
ICAgICAgICAgICAgIHJvY2tjaGlwLHBtdWdyZiA9IDwmcG11Z3JmPjsKPgo+IEkgZG9uJ3QgdGhp
bmsgdGhlIHBtdWNydSBuZWVkcyBib3RoIGFuZCBpbiBmYWN0IHRoZSBtYWlubGluZQo+IGNsb2Nr
IGRyaXZlciBzaG91bGQganVzdCByZWZlcmVuY2UgaXRzIHNwZWNpZmljIGdyZiBhdCBhbGwsIGku
ZS4KPiAgICAgICAgIHBtdWNydSAtPiBwbXVncmYgKHZpYSB0aGUgcm9ja2NoaXAsZ3JmIGhhbmRs
ZSkKPiAgICAgICAgIGNydSAtPiBncmYKPgo+IEkndmUgbm90IHNlZW4gYW55dGhpbmcgYnJlYWtp
bmcgdGhpcyBzY29wZSBzbyBmYXIuCgpJIHRob3VnaHQgdGhlIHNhbWUgdGhpbmcgYXMgd2VsbCwg
YnV0IGZvciBzb21lIHJlYXNvbiB0aGUgZHJpdmVyCnJlZnVzZXMgdG8gYXBwbHkgYXNzaWduZWQt
Y2xvY2tzIHRvIHRoZSBwbGxzIHVubGVzcyB0aGVzZSBhcmUgYWxsCnByZXNlbnQuCklmIHRoZSBk
cml2ZXIgY2FuIGdldCB0aGVzZSBhc3NpZ25tZW50cyBhdXRvbWF0aWNhbGx5IGV2ZW50dWFsbHks
CnBlcmhhcHMgaXQncyBhIGxvYWRpbmcgb3JkZXIgaXNzdWU/CgpUaGlua2luZyBhYm91dCBpdCwg
aXQncyBwcm9iYWJseSB0aGUgZ3JmIGFuZCBwbXVncmYgaGF2ZW4ndCBwcm9iZWQKd2hlbiB0aGUg
ZHJpdmVyIGlzIGF0dGVtcHRpbmcgdG8gYXNzaWduIHRoZXNlLCBhbmQgdHlpbmcgdGhlbSB0b2dl
dGhlcgpmb3JjZXMgdGhlIHByb2JlIHRvIGhhcHBlbiBmaXJzdC4KCj4KPgo+IEhlaWtvCj4KPiA+
ICAgICAgICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+ID4gICAgICAgICAgICAgICAjcmVz
ZXQtY2VsbHMgPSA8MT47Cj4gPiAgICAgICB9Owo+ID4gQEAgLTIyNSw2ICsyMjcsNyBAQCBwbXVj
cnU6IGNsb2NrLWNvbnRyb2xsZXJAZmRkMDAwMDAgewo+ID4gICAgICAgY3J1OiBjbG9jay1jb250
cm9sbGVyQGZkZDIwMDAwIHsKPiA+ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1NjgtY3J1IjsKPiA+ICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweGZkZDIwMDAwIDB4
MCAweDEwMDA+Owo+ID4gKyAgICAgICAgICAgICByb2NrY2hpcCxncmYgPSA8JmdyZj47Cj4gPiAg
ICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwxPjsKPiA+ICAgICAgICAgICAgICAgI3Jlc2V0
LWNlbGxzID0gPDE+Owo+ID4gICAgICAgfTsKPiA+Cj4KPgo+Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
