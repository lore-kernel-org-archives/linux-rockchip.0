Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DD47C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 May 2025 17:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykGqbrEKUMCqG2H+q8B29ctPu3lOegiDzw3drLTgM9w=; b=JIa7B6AUI2Lb8a
	hOgjR7wXR3Y48Rre0Cjw+dfG5i5XTPjRpEg+m3c0vu7C4HqfcqR1byHSEu3BWsBisObjad2qCVLmu
	fjeID+uQEPFK12KXalsMG/fHG7CtG9ScM6/YI4GffD0wJhDnfrWNYOu0Y6SPboCGTSkGHwXk+p0zI
	ZgI+b9dyXTc2yB1iP23YMkttOgG3Ff+QrYLinuzOn5gmxvcb6tUDhVm0QA/9ZJSBPFvxXXxRP/DFc
	mNIRNoyNMnH/QeyabtXou3pKsZSl8Lk1w0rAFmnDdGMS9dDE1catC6a6c6I78f6QcDNdi7CarZlxC
	7BGcLuXZbMBjK0ch6cbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAu6Y-00000002eJL-2XJ2;
	Fri, 02 May 2025 17:23:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAtg0-00000002aZs-1RfA
	for linux-rockchip@lists.infradead.org;
	Fri, 02 May 2025 16:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAtfk-0006vQ-DD; Fri, 02 May 2025 18:55:36 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAtfj-000mM7-2r;
	Fri, 02 May 2025 18:55:35 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAtfj-00Gai4-2R;
	Fri, 02 May 2025 18:55:35 +0200
Date: Fri, 2 May 2025 18:55:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Adam Ford <aford173@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
	festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paulk@sys-base.io, hverkuil@xs4all.nl,
	laurent.pinchart@ideasonboard.com, sebastian.fricke@collabora.com,
	ming.qian@nxp.com, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 07/11] arm64: dts: imx8mp: fix VPU_BUS clock setting
Message-ID: <20250502165535.aeb2osq2vnxsudmq@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
 <20250502150513.4169098-8-m.felsch@pengutronix.de>
 <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250502_095552_376401_96EC75EF 
X-CRM114-Status: GOOD (  20.76  )
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

T24gMjUtMDUtMDIsIEFkYW0gRm9yZCB3cm90ZToKPiBPbiBGcmksIE1heSAyLCAyMDI1IGF0IDEw
OjEw4oCvQU0gTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4g
Pgo+ID4gVGhlIFZQVV9QTEwgY2xvY2sgbXVzdCBiZSBzZXQgYmVmb3JlIHRoZSBWUFVfQlVTIGNs
b2NrIHdoaWNoIGlzIGRlcml2ZWQKPiA+IGZyb20gdGhlIFZQVV9QTEwgY2xvY2sgZWxzZSB0aGUg
VlBVX0JVUyBjbG9jayBpcyAzMDBNSHogYW5kIG5vdCA2MDBNSHouCj4gPgo+ID4gU2lnbmVkLW9m
Zi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4KPiA+IC0tLQo+ID4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpIHwgNCArKy0tCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gaW5kZXggOTdiMDli
NjQ3ZWM3Li43ZjRiZGVmYjM0ODAgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVl
c2NhbGUvaW14OG1wLmR0c2kKPiA+IEBAIC0yMjg5LDggKzIyODksOCBAQCB2cHVtaXhfYmxrX2N0
cmw6IGJsay1jdHJsQDM4MzMwMDAwIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDwmY2xrIElNWDhNUF9DTEtfVlBVX0cyX1JPT1Q+LAo+ID4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1QX0NMS19WUFVfVkM4S0VfUk9PVD47Cj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJnMSIsICJnMiIsICJ2YzgwMDBlIjsK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmY2xrIElNWDhN
UF9DTEtfVlBVX0JVUz4sIDwmY2xrIElNWDhNUF9WUFVfUExMPjsKPiA+IC0gICAgICAgICAgICAg
ICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNsayBJTVg4TVBfVlBVX1BMTF9P
VVQ+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjbGsg
SU1YOE1QX1ZQVV9QTEw+LCA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9CVVM+Owo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwwPiwgPCZjbGsgSU1YOE1Q
X1ZQVV9QTExfT1VUPjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2Nr
LXJhdGVzID0gPDYwMDAwMDAwMD4sIDw2MDAwMDAwMDA+Owo+IAo+IEkgdGhpbmsgdGhlcmUgd2Fz
IGEgbW92ZSB0byBtYWtlIHRoZSBkZWZhdWx0IGJlIG92ZXJkcml2ZSBbMV0gIGFuZCBbMl0KPiBh
bmQgdXNlIGEgJ25vbWluYWwnIGRldmljZSB0cmVlIGZvciB0aG9zZSB3aG8gYXJlIG5vdCBpbiBv
dmVyZHJpdmUKPiBtb2RlLiAgQWNjb3JkaW5nIHRvIHRoZSBUUk0sIHRoZSBWUFVfQlVTX0NMS19S
T09ULCB0aGUgbm9taW5hbCBpcwo+IDYwME1IeiBhbmQgdGhlIG92ZXJkcml2ZSBpcyA4MDBNSHou
ICBCYXNlZCBvbiB0aGF0LCBJIHdvbmRlciBpZiB0aGUKPiB2YWx1ZXMgaGVyZSBzaG91bGQgYmUg
ODAwTUh6IGFuZCBpZiB3ZSBzaG91bGQgYWRkIHRoZSBub21pbmFsIHZhbHVlcwo+IG9mIDYwME1I
eiB0byB0aGUgaW14OG0tbm9taW5hbC5kdHNpIGZpbGUuCgpZb3UncmUgcmlnaHQsIEFoYW1kIGFu
ZCBMdWNhcyBkaWQgY2hhbmdlIHRoaXMuIEkgd2lsbCBhZGFwdCBpdCBsYXRlciBvbi4KClJlZ2Fy
ZHMsCiAgTWFyY28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
