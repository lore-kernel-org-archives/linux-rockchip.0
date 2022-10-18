Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C26C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 03:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=DVhJMkl2g2vpWKikZn+WvPtJQpfO8l+c2shpnptip2k=; b=tHkAF8HG7GnzOM
	GrpImkGazo15c5mo6XEjR3BQ+55k6zcCuXE9ajbRj6bT63B2tfgU6yzvMqCPmdvXU7zdh46CcMaX5
	+E/6gTeeQRANL3+lNxHbfXWSCFK7lRJtguLQSilonGQVfH7YWxnDCPlHQ3EV/KdHgvF1vnR8euFqB
	X69+NuwX8kCU6QwwdY/x2Tgm6S8RNkcOypqAItbSA23dvM9jeCV8NRx+4sK41ICOpBphd7GVWwTuL
	UgYqcbpve/FqT/COi1omoSX0lExpzXOpMsBzUSF4JmGyZmtsPH7I8G5yWDnLd/dJe+7fanlAF58CN
	S2/iiQqMIq/V6zitybmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okczq-001pTI-Iq; Tue, 18 Oct 2022 03:10:26 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okczm-001pQB-76
	for linux-rockchip@lists.infradead.org; Tue, 18 Oct 2022 03:10:24 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 0B45F280970;
	Tue, 18 Oct 2022 11:10:14 +0800 (CST)
Date: Tue, 18 Oct 2022 11:10:14 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Cc: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	=?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>
Subject: Re: Re: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
References: <20220930102620.1568864-1-jay.xu@rock-chips.com>, 
	<20220930182358.65da06dd@booty>, 
	<2022100108422538502750@rock-chips.com>, 
	<20221001151059.7ddd4f7d@melee>, 
	<2022100209440271488653@rock-chips.com>, 
	<20221010160440.18038c10@booty>, 
	<20221017155126.024c9c0d@booty>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202210181110137845068@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQ0gdVkweHUMaSB9CSxkdT1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NEk6Ezo5FD0hEytKFDE1LSM8
	UR5PFBlVSlVKTU1NS01JTUpPTkNPVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU1KQks3Bg++
X-HM-Tid: 0a83e911febc2eb1kusn0b45f280970
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_201022_557202_4B042F38 
X-CRM114-Status: GOOD (  20.99  )
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

SGkgTHVjYQoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5IZWxsbyBqYXku
eHUsIGtldmVyLAo+Cj5PbiBNb24sIDEwIE9jdCAyMDIyIDE2OjA0OjM5ICswMjAwCj5MdWNhIENl
cmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+PiBIZWxsbyBqYXku
eHUsIGtldmVyLAo+Pgo+PiBPbiBTdW4sIDIgT2N0IDIwMjIgMDk6NDQ6MDIgKzA4MDAKPj4gImph
eS54dUByb2NrLWNoaXBzLmNvbSIgPGpheS54dUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+
ID4gSGkgTHVjYe+8mgo+PiA+Cj4+ID4gLS0tLS0tLS0tLS0tLS0KPj4gPiBqYXkueHVAcm9jay1j
aGlwcy5jb20KPj4gPiA+SGVsbG8gSmlhbnF1biwKPj4gPiA+Cj4+ID4gPklsIGdpb3JubyBTYXQs
IDEgT2N0IDIwMjIgMDg6NDI6MjUgKzA4MDAKPj4gPiA+ImpheS54dUByb2NrLWNoaXBzLmNvbSIg
PGpheS54dUByb2NrLWNoaXBzLmNvbT4gaGEgc2NyaXR0bzoKPj4gPiA+wqAKPj4gPiA+PiBIaSBM
dWNhOgo+PiA+ID4+Cj4+ID4gPj4gQlIKPj4gPiA+PiAtLS0tLS0tLS0tLS0tLQo+PiA+ID4+IGph
eS54dUByb2NrLWNoaXBzLmNvbcKgCj4+ID4gPj4gPkhlbGxvIEppYW5xdW4gWHUsCj4+ID4gPj4g
Pgo+PiA+ID4+ID5PbiBGcmksIDMwIFNlcCAyMDIyIDE4OjI2OjIwICswODAwCj4+ID4gPj4gPkpp
YW5xdW4gWHUgPGpheS54dUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+ID4gPj4gPsKgwqAKPj4g
PiA+PiA+PiBQYXJ0IG9mIHBpbnMgZnJvbSBSSzMzMDggU29DcyBoYXZlIHR3byByZWdpc3RlcnMg
dG8gZG8gcGlubXV4LCBvbmUgaXMKPj4gPiA+PiA+PiB0aGUgb3JpZ2luIHJlZ2lzdGVyIHdpdGgg
MmJpdHMgbmFtZWQgYnkgZ3Bpb3h4X3NlbCwgYW5kIGFub3RoZXIgd2l0aAo+PiA+ID4+ID4+IDNi
aXRzIGFuZCBuYW1lZCBieSBncGlveHhfc2VsX3BsdXMuwqDCoAo+PiA+ID4+ID4KPj4gPiA+PiA+
QXJlIHRoZSAicGx1cyIgcmVnaXN0ZXJzIGRvY3VtZW50ZWQgYW55d2hlcmU/wqDCoMKgCj4+ID4g
Pj4KPj4gPiA+PiBBdCBSSzMzMDggVFJNIENINSBHUkYswqAKPj4gPiA+Pgo+PiA+ID4+IEdSRl9T
T0NfQ09OMTPCoAo+PiA+ID4+Cj4+ID4gPj4gMyDCoFJXIMKgMHgwIGdwaW8yYTJfc2VsX3NyY19j
dHJsCj4+ID4gPj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoMKgIElPTVVYIGNvbnRyb2wgc291
cmNlIHNlbGVjdGlvbi4KPj4gPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDEnYjA6IHVz
ZSBiYXNpYyBHUElPMkFfSU9NVVhbZ3BpbzJhMl9zZWxdCj4+ID4gPj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAxJ2IxOiB1c2UgZ3BpbzJhMl9zZWxfcGx1cyBpbnN0ZWFkIG9mIEdQSU8yQV9J
T01VWFtncGlvMmEyX3NlbF0KPj4gPiA+Pgo+PiA+ID4+IDI6MCDCoFJXIMKgMHgwIGdwaW8yYTJf
c2VsX3BsdXMKPj4gPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjAwMDog
R1BJTzJfQTIKPj4gPiA+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjAwMTog
VUFSVDBfQ1RTTgo+PiA+ID4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMDEw
OiBTUEkwX0NMSwo+PiA+ID4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMDEx
OiBJMkMyX1NEQQo+PiA+ID4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMTAw
OiBSZXNlcnZlZAo+PiA+ID4+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMTAx
OiBPV0lSRV9NMgo+PiA+ID4+Cj4+ID4gPj4gU29ycnkgSSBkb24ndCBrbm93IGFib3V0IHRoZSB0
cm0geW91IGdvdCBmcm9tIG91ciBjb21wYW55LCBpZiB5b3UgY2Fubm90IGZpbmQgdGhpcyBwYXJ0
LAo+PiA+ID4+IG1heSByZXF1aXJlIGEgbmV3IHZlcnNpb24gP8KgCj4+ID4gPgo+PiA+ID5GaXJz
dCBvZiBhbGw6IGlzIGEgY29tcGxldGUgVFJNIGF2YWlsYWJsZSBmb3IgcHVibGljIGRvd25sb2Fk
P8KgwqAKPj4gPgo+PiA+IGh0dHBzOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS93aWtpX01h
aW5fUGFnZQo+PiA+IEBrZXZlciBzaG91bGQgYWRkIGEgdHJtIGZvciByazMzMDggPwo+Pgo+PiBJ
bmRlZWQgaXQgd291bGQgYmUgZ3JlYXQgdG8gaGF2ZSB0aGUgZG9jdW1lbnRhdGlvbiBhdmFpbGFi
bGUgaW4gdGhlCj4+IGFib3ZlIHBhZ2UhIFdpdGggdGhhdCBvbmUgd291bGQgYmUgYWJsZSB0byB1
bmRlcnN0YW5kIHRoZSBjb2RlLCBlLmcuIEkKPj4gd291bGQgaGF2ZSB1bmRlcnN0b29kIG9uIG15
IG93biB3aGF0IHJlZ2lzdGVyIDB4NjA4LzB4NjEwIGlzIGFuZCBJCj4+IHdvdWxkIG5vdCBoYXZl
IHNlbnQgbXkgaW5pdGlhbCBwYXRjaCBhcyBpcy4KPj4KPj4gU28gSSBzdWJzY3JpYmUgdG8gdGhl
IHByb3Bvc2FsIGJ5IEpheSB0byBoYXZlIHRoZSBjb21wbGV0ZSBUUk0gb25saW5lIQo+Cj5XaGls
ZSBJIGFtIHN0aWxsIHN1cmUgdGhhdCBwdWJsaWMsIGNvbXBsZXRlIGRvY3VtZW50YXRpb24gaXMg
dGhlIGJlc3QKPmZvciB0aGUgYmVuZWZpdCBvZiBMaW51eCBzdXBwb3J0LCBmcm9tIHRoZSBsYWNr
IG9mIGZlZWRiYWNrIEkgc3VzcGVjdAo+dGhpcyBpcyBub3QgY29taW5nIHNvb24uCj4KPldoaWxl
IHdlIHdhaXQgZm9yIGl0IHRvIGhhcHBlbiwgSSB0aGluayB0aGUgYmVzdCB3YXkgdG8gbW92ZSBm
b3J3YXJkIGlzCj50byBhdCBsZWFzdCBhZGQgYSBjb21wbGV0ZSBsaXN0IG9mIHRoZSBwb3NzaWJs
ZSB2YWx1ZXMgZm9yIHRoZSAicGx1cyIKPnJlZ2lzdGVycyBpbiB0aGUga2VybmVsIHNvdXJjZSBj
b2RlLCBlaXRoZXIgaW4gdGhlIGRyaXZlciBvciBpbgo+cmszMzA4LmR0c2kuIEkgY29uc2lkZXIg
dGhpcyB0aGUgdmVyeSBtaW5pbXVtIG5lZWRlZC4gV2l0aG91dCB0aGlzLCB0aGUKPm5leHQgZGV2
ZWxvcGVyIHdpbGwgYWxzbyBiZSB1bmFibGUgdG8gdXNlIFNQSSBvciBzb21lIG90aGVyIGZlYXR1
cmUsCj5wZXJoYXBzIHNlbmRpbmcgYW5vdGhlciBwYXRjaCB0byBmaXggdGhlIHNhbWUgaXNzdWUs
IGJyZWFraW5nIGl0IGFnYWluLgo+Cj5Xb3VsZCB5b3UgYmUgT0sgd2l0aCBkb2luZyB0aGF0PyAK
Cm9rYXksIGl0IGRlcGVuZHMgb24ga2V2ZXIgdG8gdXBkYXRlIHRoZSB0cm0gb3Igbm90LCBwYXRj
aCBjYW4gYmUgaGFsdCBvbiBjdXJyZW50bHkKCj4KPkJlc3QgcmVnYXJkcy4KPi0tCj5MdWNhIENl
cmVzb2xpLCBCb290bGluCj5FbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCj5o
dHRwczovL2Jvb3RsaW4uY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
