Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0D4C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 13:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtzbOmQa0XAOYD6aB3B8ilYGSXv1InTGGJDZoW4331A=; b=Kmgmhq0lEtdgkt
	z9Sr5lN2JGDKXwDLznsgchSw3XICt61dj2PWX4noqf8MyLFtGsuIcpyftbmOlJ/R9JKjH8WrN6xZA
	A2VHQXYtAbbW9n0wIP7+DfRn+6/WosKQm43eVKNcoor5wWfF/PoLieH7ZBIjVVPZd/V+OjUx5XO6G
	n4NFqTCtrQ4Tmh1xBFjhxjAu4F7eW8Q1tGdlvh0D8pbAjUjG9q+UzSr1BsS1iEA9f98zJFNH81UkV
	P3k7vSspuXuXUA0/Wc+P2DUctYmGK+a+RHn88LGyrJNACbx1EgeuckglJ7nZu9EuyzjXPV0vkzv0Y
	vhAxRamEG1YDWmPAIhAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQWp-00CLOI-IE; Mon, 17 Oct 2022 13:51:39 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okQWl-00CLJj-6Z
	for linux-rockchip@lists.infradead.org; Mon, 17 Oct 2022 13:51:38 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id C74FF240007;
	Mon, 17 Oct 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1666014688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pSQvsI4Js5S51oGBJzEIgDgdlc3SCiDe/xMaPDF4n7E=;
	b=mJLcpNrZ7B3LECuY8wdxPgJQ8SipOtUa5fv7hs0QPrtT85q7p/bnV4gbEyPCKHuH8aStkH
	Ke0LYLOlWAxCViW2faPR4QEz5xpqMNQrJLkUWJOe65q3YPrhJcgbi7cvytG1/lEB+41Yfr
	czQlM/piy7blEgB8EZlbYUn2IfJ096gNk0Phqxqe/aKuVMmHN9vf0NHlY5gqse3OFoKz6s
	X/Q8DvKs8SCrL6GPc5qt/Tt3SY6Jc13hoN9lfKTr5HO5iBNSLOVPSvZesYycppGwcpRxPO
	rTGq45jMOaZ1ifeUqoV9BA7i9GzD+HueaOhyeqcP2MF54Oo0jZsfALDzexippA==
Date: Mon, 17 Oct 2022 15:51:26 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Heiko =?UTF-8?Q?St=C3=BCbner?= <heiko@sntech.de>, "linus.walleij"
 <linus.walleij@linaro.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, =?UTF-8?Q?=E6=9D=A8=E5=87=AF?=
 <kever.yang@rock-chips.com>
Subject: Re: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
Message-ID: <20221017155126.024c9c0d@booty>
In-Reply-To: <20221010160440.18038c10@booty>
References: <20220930102620.1568864-1-jay.xu@rock-chips.com>
	<20220930182358.65da06dd@booty>
	<2022100108422538502750@rock-chips.com>
	<20221001151059.7ddd4f7d@melee>
	<2022100209440271488653@rock-chips.com>
	<20221010160440.18038c10@booty>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_065135_726324_60F7D9AC 
X-CRM114-Status: GOOD (  26.72  )
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

SGVsbG8gamF5Lnh1LCBrZXZlciwKCk9uIE1vbiwgMTAgT2N0IDIwMjIgMTY6MDQ6MzkgKzAyMDAK
THVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4gd3JvdGU6Cgo+IEhlbGxv
IGpheS54dSwga2V2ZXIsCj4gCj4gT24gU3VuLCAyIE9jdCAyMDIyIDA5OjQ0OjAyICswODAwCj4g
ImpheS54dUByb2NrLWNoaXBzLmNvbSIgPGpheS54dUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4g
Cj4gPiBIaSBMdWNh77yaCj4gPiAKPiA+IC0tLS0tLS0tLS0tLS0tCj4gPiBqYXkueHVAcm9jay1j
aGlwcy5jb20KPiA+ID5IZWxsbyBKaWFucXVuLAo+ID4gPgo+ID4gPklsIGdpb3JubyBTYXQsIDEg
T2N0IDIwMjIgMDg6NDI6MjUgKzA4MDAKPiA+ID4iamF5Lnh1QHJvY2stY2hpcHMuY29tIiA8amF5
Lnh1QHJvY2stY2hpcHMuY29tPiBoYSBzY3JpdHRvOgo+ID4gPiAgCj4gPiA+PiBIaSBMdWNhOgo+
ID4gPj4KPiA+ID4+IEJSCj4gPiA+PiAtLS0tLS0tLS0tLS0tLQo+ID4gPj4gamF5Lnh1QHJvY2st
Y2hpcHMuY29tICAKPiA+ID4+ID5IZWxsbyBKaWFucXVuIFh1LAo+ID4gPj4gPgo+ID4gPj4gPk9u
IEZyaSwgMzAgU2VwIDIwMjIgMTg6MjY6MjAgKzA4MDAKPiA+ID4+ID5KaWFucXVuIFh1IDxqYXku
eHVAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4gPj4gPsKgICAKPiA+ID4+ID4+IFBhcnQgb2Yg
cGlucyBmcm9tIFJLMzMwOCBTb0NzIGhhdmUgdHdvIHJlZ2lzdGVycyB0byBkbyBwaW5tdXgsIG9u
ZSBpcwo+ID4gPj4gPj4gdGhlIG9yaWdpbiByZWdpc3RlciB3aXRoIDJiaXRzIG5hbWVkIGJ5IGdw
aW94eF9zZWwsIGFuZCBhbm90aGVyIHdpdGgKPiA+ID4+ID4+IDNiaXRzIGFuZCBuYW1lZCBieSBn
cGlveHhfc2VsX3BsdXMuwqAgIAo+ID4gPj4gPgo+ID4gPj4gPkFyZSB0aGUgInBsdXMiIHJlZ2lz
dGVycyBkb2N1bWVudGVkIGFueXdoZXJlP8KgwqAgIAo+ID4gPj4KPiA+ID4+IEF0IFJLMzMwOCBU
Uk0gQ0g1IEdSRizCoAo+ID4gPj4KPiA+ID4+IEdSRl9TT0NfQ09OMTPCoAo+ID4gPj4KPiA+ID4+
IDMgwqBSVyDCoDB4MCBncGlvMmEyX3NlbF9zcmNfY3RybAo+ID4gPj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqDCoMKgIElPTVVYIGNvbnRyb2wgc291cmNlIHNlbGVjdGlvbi4KPiA+ID4+IMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgMSdiMDogdXNlIGJhc2ljIEdQSU8yQV9JT01VWFtncGlvMmEy
X3NlbF0KPiA+ID4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMSdiMTogdXNlIGdwaW8yYTJf
c2VsX3BsdXMgaW5zdGVhZCBvZiBHUElPMkFfSU9NVVhbZ3BpbzJhMl9zZWxdCj4gPiA+Pgo+ID4g
Pj4gMjowIMKgUlcgwqAweDAgZ3BpbzJhMl9zZWxfcGx1cwo+ID4gPj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAzJ2IwMDA6IEdQSU8yX0EyCj4gPiA+PiDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoDMnYjAwMTogVUFSVDBfQ1RTTgo+ID4gPj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAzJ2IwMTA6IFNQSTBfQ0xLCj4gPiA+PiDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoDMnYjAxMTogSTJDMl9TREEKPiA+ID4+IMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgMydiMTAwOiBSZXNlcnZlZAo+ID4gPj4gwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAzJ2IxMDE6IE9XSVJFX00yCj4gPiA+Pgo+ID4gPj4gU29ycnkgSSBkb24n
dCBrbm93IGFib3V0IHRoZSB0cm0geW91IGdvdCBmcm9tIG91ciBjb21wYW55LCBpZiB5b3UgY2Fu
bm90IGZpbmQgdGhpcyBwYXJ0LAo+ID4gPj4gbWF5IHJlcXVpcmUgYSBuZXcgdmVyc2lvbiA/ICAK
PiA+ID4KPiA+ID5GaXJzdCBvZiBhbGw6IGlzIGEgY29tcGxldGUgVFJNIGF2YWlsYWJsZSBmb3Ig
cHVibGljIGRvd25sb2FkPyAgIAo+ID4gCj4gPiBodHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlw
cy5jb20vd2lraV9NYWluX1BhZ2UKPiA+IEBrZXZlciBzaG91bGQgYWRkIGEgdHJtIGZvciByazMz
MDggPwo+IAo+IEluZGVlZCBpdCB3b3VsZCBiZSBncmVhdCB0byBoYXZlIHRoZSBkb2N1bWVudGF0
aW9uIGF2YWlsYWJsZSBpbiB0aGUKPiBhYm92ZSBwYWdlISBXaXRoIHRoYXQgb25lIHdvdWxkIGJl
IGFibGUgdG8gdW5kZXJzdGFuZCB0aGUgY29kZSwgZS5nLiBJCj4gd291bGQgaGF2ZSB1bmRlcnN0
b29kIG9uIG15IG93biB3aGF0IHJlZ2lzdGVyIDB4NjA4LzB4NjEwIGlzIGFuZCBJCj4gd291bGQg
bm90IGhhdmUgc2VudCBteSBpbml0aWFsIHBhdGNoIGFzIGlzLgo+IAo+IFNvIEkgc3Vic2NyaWJl
IHRvIHRoZSBwcm9wb3NhbCBieSBKYXkgdG8gaGF2ZSB0aGUgY29tcGxldGUgVFJNIG9ubGluZSEK
CldoaWxlIEkgYW0gc3RpbGwgc3VyZSB0aGF0IHB1YmxpYywgY29tcGxldGUgZG9jdW1lbnRhdGlv
biBpcyB0aGUgYmVzdApmb3IgdGhlIGJlbmVmaXQgb2YgTGludXggc3VwcG9ydCwgZnJvbSB0aGUg
bGFjayBvZiBmZWVkYmFjayBJIHN1c3BlY3QKdGhpcyBpcyBub3QgY29taW5nIHNvb24uCgpXaGls
ZSB3ZSB3YWl0IGZvciBpdCB0byBoYXBwZW4sIEkgdGhpbmsgdGhlIGJlc3Qgd2F5IHRvIG1vdmUg
Zm9yd2FyZCBpcwp0byBhdCBsZWFzdCBhZGQgYSBjb21wbGV0ZSBsaXN0IG9mIHRoZSBwb3NzaWJs
ZSB2YWx1ZXMgZm9yIHRoZSAicGx1cyIKcmVnaXN0ZXJzIGluIHRoZSBrZXJuZWwgc291cmNlIGNv
ZGUsIGVpdGhlciBpbiB0aGUgZHJpdmVyIG9yIGluCnJrMzMwOC5kdHNpLiBJIGNvbnNpZGVyIHRo
aXMgdGhlIHZlcnkgbWluaW11bSBuZWVkZWQuIFdpdGhvdXQgdGhpcywgdGhlCm5leHQgZGV2ZWxv
cGVyIHdpbGwgYWxzbyBiZSB1bmFibGUgdG8gdXNlIFNQSSBvciBzb21lIG90aGVyIGZlYXR1cmUs
CnBlcmhhcHMgc2VuZGluZyBhbm90aGVyIHBhdGNoIHRvIGZpeCB0aGUgc2FtZSBpc3N1ZSwgYnJl
YWtpbmcgaXQgYWdhaW4uCgpXb3VsZCB5b3UgYmUgT0sgd2l0aCBkb2luZyB0aGF0PwoKQmVzdCBy
ZWdhcmRzLgotLSAKTHVjYSBDZXJlc29saSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2Vy
bmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
