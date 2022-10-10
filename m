Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8DD9C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 14:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=av9j1pJ3G5JY5SfNeZS39FF42+nDy+ym21oRtfroUIU=; b=draKBQvQt0790Q
	DcOg07avU9MKl6MZaDg1EqEI02mp/Zx4G+HLMUshAvCrwV2vR7Zh/rRxM00xFOMtm7mX68/CuJ+dq
	QppMxQr3rIJTCvuo2E/QVYmw4/3vmSEWX51GKVvtylLBez9F6rlfSaSzjx0aXV47Q7EhCJuPCY85+
	1ih0zRG3FfdGCdMb+aszQ3T0aEHS6UdlFg7EAxCzHlNtBIKkVp8EgWe0kQRyrrsZP4t30Y9fzoqFG
	yz80c79CJohzS4xZgYeAznKR8CgmMWTolSDK2s1VTSsDUfn1WM+EooN4qLedpYg14ghoV9w4AWHIH
	N6SajeNK/e882Lxcw/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohtOl-0019AI-SP; Mon, 10 Oct 2022 14:04:51 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohtOi-00197p-Ia
	for linux-rockchip@lists.infradead.org; Mon, 10 Oct 2022 14:04:51 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 678124000B;
	Mon, 10 Oct 2022 14:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665410682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WTs5wLwD4WWeSIvHfAAw0YNYCAE9NYqjwAqzfV45Rsg=;
	b=J1pjilarbhWseuShvU2xyeCRE8+aLFzGjZxLYI5EAQN+E7/VPioOrfJ8voBlZBcCPgl1Cn
	BCJ6EL3NpooSVoKia4MIfzhHZWj1fMN011OZ2oHZ6zJAk+rJnzpx3svtbN0IYb6RZ8HiIB
	/8OD9EviUAbNKeUdoQvcu78wMWPXMu0Hca2iQMZtUaBxwPLry9rdF3VRgBhcStxeRi04S2
	kI07p5U+kvN2rhfi5OaU/Q8brl4ZZDAoaS+RLG2AIf7pVkU6PQ72PBUUMAPmP1pFo5A+qx
	gab4ioK4dnVVU/Ib0Zl9cBxsbtebEDk0YPmmzvzdffEys2hc4HPb3Lhs6gfDMA==
Date: Mon, 10 Oct 2022 16:04:39 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Heiko =?UTF-8?Q?St=C3=BCbner?= <heiko@sntech.de>, "linus.walleij"
 <linus.walleij@linaro.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, =?UTF-8?Q?=E6=9D=A8=E5=87=AF?=
 <kever.yang@rock-chips.com>
Subject: Re: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
Message-ID: <20221010160440.18038c10@booty>
In-Reply-To: <2022100209440271488653@rock-chips.com>
References: <20220930102620.1568864-1-jay.xu@rock-chips.com>
	<20220930182358.65da06dd@booty>
	<2022100108422538502750@rock-chips.com>
	<20221001151059.7ddd4f7d@melee>
	<2022100209440271488653@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_070448_953389_F5E79DD5 
X-CRM114-Status: GOOD (  17.25  )
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

SGVsbG8gamF5Lnh1LCBrZXZlciwKCk9uIFN1biwgMiBPY3QgMjAyMiAwOTo0NDowMiArMDgwMAoi
amF5Lnh1QHJvY2stY2hpcHMuY29tIiA8amF5Lnh1QHJvY2stY2hpcHMuY29tPiB3cm90ZToKCj4g
SGkgTHVjYe+8mgo+IAo+IC0tLS0tLS0tLS0tLS0tCj4gamF5Lnh1QHJvY2stY2hpcHMuY29tCj4g
PkhlbGxvIEppYW5xdW4sCj4gPgo+ID5JbCBnaW9ybm8gU2F0LCAxIE9jdCAyMDIyIDA4OjQyOjI1
ICswODAwCj4gPiJqYXkueHVAcm9jay1jaGlwcy5jb20iIDxqYXkueHVAcm9jay1jaGlwcy5jb20+
IGhhIHNjcml0dG86Cj4gPiAgCj4gPj4gSGkgTHVjYToKPiA+Pgo+ID4+IEJSCj4gPj4gLS0tLS0t
LS0tLS0tLS0KPiA+PiBqYXkueHVAcm9jay1jaGlwcy5jb20gIAo+ID4+ID5IZWxsbyBKaWFucXVu
IFh1LAo+ID4+ID4KPiA+PiA+T24gRnJpLCAzMCBTZXAgMjAyMiAxODoyNjoyMCArMDgwMAo+ID4+
ID5KaWFucXVuIFh1IDxqYXkueHVAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4+ID7CoCAgCj4g
Pj4gPj4gUGFydCBvZiBwaW5zIGZyb20gUkszMzA4IFNvQ3MgaGF2ZSB0d28gcmVnaXN0ZXJzIHRv
IGRvIHBpbm11eCwgb25lIGlzCj4gPj4gPj4gdGhlIG9yaWdpbiByZWdpc3RlciB3aXRoIDJiaXRz
IG5hbWVkIGJ5IGdwaW94eF9zZWwsIGFuZCBhbm90aGVyIHdpdGgKPiA+PiA+PiAzYml0cyBhbmQg
bmFtZWQgYnkgZ3Bpb3h4X3NlbF9wbHVzLsKgICAKPiA+PiA+Cj4gPj4gPkFyZSB0aGUgInBsdXMi
IHJlZ2lzdGVycyBkb2N1bWVudGVkIGFueXdoZXJlP8KgwqAgIAo+ID4+Cj4gPj4gQXQgUkszMzA4
IFRSTSBDSDUgR1JGLMKgCj4gPj4KPiA+PiBHUkZfU09DX0NPTjEzwqAKPiA+Pgo+ID4+IDMgwqBS
VyDCoDB4MCBncGlvMmEyX3NlbF9zcmNfY3RybAo+ID4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
wqDCoCBJT01VWCBjb250cm9sIHNvdXJjZSBzZWxlY3Rpb24uCj4gPj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAxJ2IwOiB1c2UgYmFzaWMgR1BJTzJBX0lPTVVYW2dwaW8yYTJfc2VsXQo+ID4+
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMSdiMTogdXNlIGdwaW8yYTJfc2VsX3BsdXMgaW5z
dGVhZCBvZiBHUElPMkFfSU9NVVhbZ3BpbzJhMl9zZWxdCj4gPj4KPiA+PiAyOjAgwqBSVyDCoDB4
MCBncGlvMmEyX3NlbF9wbHVzCj4gPj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAz
J2IwMDA6IEdQSU8yX0EyCj4gPj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAzJ2Iw
MDE6IFVBUlQwX0NUU04KPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjAx
MDogU1BJMF9DTEsKPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjAxMTog
STJDMl9TREEKPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjEwMDogUmVz
ZXJ2ZWQKPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjEwMTogT1dJUkVf
TTIKPiA+Pgo+ID4+IFNvcnJ5IEkgZG9uJ3Qga25vdyBhYm91dCB0aGUgdHJtIHlvdSBnb3QgZnJv
bSBvdXIgY29tcGFueSwgaWYgeW91IGNhbm5vdCBmaW5kIHRoaXMgcGFydCwKPiA+PiBtYXkgcmVx
dWlyZSBhIG5ldyB2ZXJzaW9uID8gIAo+ID4KPiA+Rmlyc3Qgb2YgYWxsOiBpcyBhIGNvbXBsZXRl
IFRSTSBhdmFpbGFibGUgZm9yIHB1YmxpYyBkb3dubG9hZD8gICAKPiAKPiBodHRwczovL29wZW5z
b3VyY2Uucm9jay1jaGlwcy5jb20vd2lraV9NYWluX1BhZ2UKPiBAa2V2ZXIgc2hvdWxkIGFkZCBh
IHRybSBmb3IgcmszMzA4ID8KCkluZGVlZCBpdCB3b3VsZCBiZSBncmVhdCB0byBoYXZlIHRoZSBk
b2N1bWVudGF0aW9uIGF2YWlsYWJsZSBpbiB0aGUKYWJvdmUgcGFnZSEgV2l0aCB0aGF0IG9uZSB3
b3VsZCBiZSBhYmxlIHRvIHVuZGVyc3RhbmQgdGhlIGNvZGUsIGUuZy4gSQp3b3VsZCBoYXZlIHVu
ZGVyc3Rvb2Qgb24gbXkgb3duIHdoYXQgcmVnaXN0ZXIgMHg2MDgvMHg2MTAgaXMgYW5kIEkKd291
bGQgbm90IGhhdmUgc2VudCBteSBpbml0aWFsIHBhdGNoIGFzIGlzLgoKU28gSSBzdWJzY3JpYmUg
dG8gdGhlIHByb3Bvc2FsIGJ5IEpheSB0byBoYXZlIHRoZSBjb21wbGV0ZSBUUk0gb25saW5lIQoK
LS0gCkx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdp
bmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
