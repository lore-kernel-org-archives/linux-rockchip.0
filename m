Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76600C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Oct 2022 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXLYCvQHCy/dLbU56CbxPogF4/qInT5keMcRQabjcgw=; b=3o4UeEP9z6yO6X
	QumLukvTHbjqIyDEEx36yGKlbgsXZDZI/lFw3Td0L3MJD5W3RKILT+3caxN9lyIgVJo7M59Aowr06
	kuHo0BwdCVzgH/7qyb6IEI8hXJxcuI0LcV/+kPv/QjQCDUg1PQXoRXTL3XloAhf/U5AtBg1alzRU7
	4HbziAKW5BbPQFk2kSTqtHaaSc0VNrlM5wO+w77iI85Gczyio5SI9Ms+wDBGxYUWKKqvuxRxf306P
	DgIT7MFtQSrwNe6x+PhwcMwWgNX0cf2Ndi5yQAtG/3ceKrT8B844wK8ugOp3iylcxnjojL/1lLeky
	EhEECV+24j6fxvkgZT1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oecGw-00EiIJ-5Y; Sat, 01 Oct 2022 13:11:14 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oecGs-00EiHg-Pu
	for linux-rockchip@lists.infradead.org; Sat, 01 Oct 2022 13:11:13 +0000
Received: (Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0F78360007;
	Sat,  1 Oct 2022 13:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1664629862;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=02q780nBmAJAaY8UAgWboRHWcXCjKD2D5nrBWaT4Y+U=;
	b=BMLX4sn1mkyIyJjBQ3vk+S4B+92mGoycPX4OV4JF8jfbwDirhLQoG4d/Q9GapSk6py2Wu+
	SSbQH9tP5Y8lJUANpyefGMFcvFLg6i+XqVPVPq04LJ4CBSI9prc+aWiJS39t6CfcZvSfOp
	bU0Cg0XZX3BELwKXmcrQG7/1axD2xrbSuHBNgiLrBSS4k1YAfcLm6tbpKrlWvfcLd+TVlt
	sfvQblh6IzhNltPzhO6LKVRnQsLUHnxgC8xxt9Ttoa2rDjeslgn0reEGaNeEM8VxevncBv
	YmRw4yAQ2l1kbkdy8jzUevMg3yqADTL3gRvBxJ/LA5DNNar3GQ2MaWrPEMeDwg==
Date: Sat, 1 Oct 2022 15:10:59 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>, "linus.walleij"
 <linus.walleij@linaro.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
Message-ID: <20221001151059.7ddd4f7d@melee>
In-Reply-To: <2022100108422538502750@rock-chips.com>
References: <20220930102620.1568864-1-jay.xu@rock-chips.com>
	<20220930182358.65da06dd@booty>
	<2022100108422538502750@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_061111_129094_494D27B0 
X-CRM114-Status: GOOD (  12.05  )
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

SGVsbG8gSmlhbnF1biwKCklsIGdpb3JubyBTYXQsIDEgT2N0IDIwMjIgMDg6NDI6MjUgKzA4MDAK
ImpheS54dUByb2NrLWNoaXBzLmNvbSIgPGpheS54dUByb2NrLWNoaXBzLmNvbT4gaGEgc2NyaXR0
bzoKCj4gSGkgTHVjYToKPiAKPiBCUgo+IC0tLS0tLS0tLS0tLS0tCj4gamF5Lnh1QHJvY2stY2hp
cHMuY29tCj4gPkhlbGxvIEppYW5xdW4gWHUsCj4gPgo+ID5PbiBGcmksIDMwIFNlcCAyMDIyIDE4
OjI2OjIwICswODAwCj4gPkppYW5xdW4gWHUgPGpheS54dUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6
Cj4gPiAgCj4gPj4gUGFydCBvZiBwaW5zIGZyb20gUkszMzA4IFNvQ3MgaGF2ZSB0d28gcmVnaXN0
ZXJzIHRvIGRvIHBpbm11eCwgb25lIGlzCj4gPj4gdGhlIG9yaWdpbiByZWdpc3RlciB3aXRoIDJi
aXRzIG5hbWVkIGJ5IGdwaW94eF9zZWwsIGFuZCBhbm90aGVyIHdpdGgKPiA+PiAzYml0cyBhbmQg
bmFtZWQgYnkgZ3Bpb3h4X3NlbF9wbHVzLiAgCj4gPgo+ID5BcmUgdGhlICJwbHVzIiByZWdpc3Rl
cnMgZG9jdW1lbnRlZCBhbnl3aGVyZT8gICAKPiAKPiBBdCBSSzMzMDggVFJNIENINSBHUkYswqAK
PiAKPiBHUkZfU09DX0NPTjEzwqAKPiAKPiAzIMKgUlcgwqAweDAgZ3BpbzJhMl9zZWxfc3JjX2N0
cmwKPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgwqAgSU9NVVggY29udHJvbCBzb3VyY2Ugc2Vs
ZWN0aW9uLgo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMSdiMDogdXNlIGJhc2ljIEdQSU8y
QV9JT01VWFtncGlvMmEyX3NlbF0KPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDEnYjE6IHVz
ZSBncGlvMmEyX3NlbF9wbHVzIGluc3RlYWQgb2YgR1BJTzJBX0lPTVVYW2dwaW8yYTJfc2VsXQo+
IAo+IDI6MCDCoFJXIMKgMHgwIGdwaW8yYTJfc2VsX3BsdXMKPiDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoDMnYjAwMDogR1BJTzJfQTIKPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoDMnYjAwMTogVUFSVDBfQ1RTTgo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgMydiMDEwOiBTUEkwX0NMSwo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydi
MDExOiBJMkMyX1NEQQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMTAwOiBS
ZXNlcnZlZAo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMTAxOiBPV0lSRV9N
Mgo+IAo+IFNvcnJ5IEkgZG9uJ3Qga25vdyBhYm91dCB0aGUgdHJtIHlvdSBnb3QgZnJvbSBvdXIg
Y29tcGFueSwgaWYgeW91IGNhbm5vdCBmaW5kIHRoaXMgcGFydCwKPiBtYXkgcmVxdWlyZSBhIG5l
dyB2ZXJzaW9uID8KCkZpcnN0IG9mIGFsbDogaXMgYSBjb21wbGV0ZSBUUk0gYXZhaWxhYmxlIGZv
ciBwdWJsaWMgZG93bmxvYWQ/CgpJIHNlYXJjaGVkIGFnYWluLCBidXQgZGlkbid0IGZpbmQgYW55
LgoKLS0gCkx1Y2EgQ2VyZXNvbGksIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBl
bmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
