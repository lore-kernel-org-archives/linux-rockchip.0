Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B55C3ABB2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 08:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ixb120fUmVH5oGdSRYtgKLEtfBa44SDLY/KHQmhV2rw=; b=QNz557Q+sOBHTw
	qMy8jZSlt3/EUQ4KPrmgsCi5QQch/e0vNCJwAYpqy3LdlHavkUbriV9Gx/pQU98gGjaltyNTxMKfG
	j37nFaDzfJt9ainGyqCswjUcmcPUkUZq3S3tFpR/agvcf89/PnrNnkO0YTJe/1yUyDBmgiKYR5ztE
	SQtyT1se6SBqYu3TXD7adxr5DsU4tPQ/+rD8XmJwfINVvGYfUA/5l0HIQUh6akVj/SDxW+XTqNoX5
	UV3sRWf42gw88y6B4QhwRI8Zb1T0K0gHnp7ojYCnAAb1+biFHH/Xo7KaJxFGctkf2Ha7OvuDXEnZq
	9rLZdUeIFHx+twBtepMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKCPl-0000000CcNx-3ag7;
	Wed, 28 May 2025 08:45:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKCNT-0000000Cc4F-1VVI
	for linux-rockchip@lists.infradead.org;
	Wed, 28 May 2025 08:43:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKCN9-00033D-JK; Wed, 28 May 2025 10:42:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKCN8-000YbX-0F;
	Wed, 28 May 2025 10:42:50 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKCN7-00ER89-34;
	Wed, 28 May 2025 10:42:49 +0200
Date: Wed, 28 May 2025 10:42:49 +0200
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
Message-ID: <20250528084249.6qn2mnu2rmrv7xhi@pengutronix.de>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
 <20250502150513.4169098-8-m.felsch@pengutronix.de>
 <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
 <20250502165535.aeb2osq2vnxsudmq@pengutronix.de>
 <CAHCN7xLecU12XtXFuwfNP+eee+9RLCSB9iErNmk7VFV+WrozJA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7xLecU12XtXFuwfNP+eee+9RLCSB9iErNmk7VFV+WrozJA@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_014311_390889_AFF7F7BA 
X-CRM114-Status: GOOD (  29.88  )
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

SGkgQWRhbSwKCnRoYW5rcyBmb3IgdGVzdGluZy4KCk9uIDI1LTA1LTI3LCBBZGFtIEZvcmQgd3Jv
dGU6Cj4gT24gRnJpLCBNYXkgMiwgMjAyNSBhdCAxMTo1NeKAr0FNIE1hcmNvIEZlbHNjaCA8bS5m
ZWxzY2hAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4KPiA+IE9uIDI1LTA1LTAyLCBBZGFtIEZv
cmQgd3JvdGU6Cj4gPiA+IE9uIEZyaSwgTWF5IDIsIDIwMjUgYXQgMTA6MTDigK9BTSBNYXJjbyBG
ZWxzY2ggPG0uZmVsc2NoQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IFRo
ZSBWUFVfUExMIGNsb2NrIG11c3QgYmUgc2V0IGJlZm9yZSB0aGUgVlBVX0JVUyBjbG9jayB3aGlj
aCBpcyBkZXJpdmVkCj4gPiA+ID4gZnJvbSB0aGUgVlBVX1BMTCBjbG9jayBlbHNlIHRoZSBWUFVf
QlVTIGNsb2NrIGlzIDMwME1IeiBhbmQgbm90IDYwME1Iei4KPiAKPiBJIGRpZCB2ZXJpZnkgdGhl
IGN1cnJlbnQgY2xvY2sgcmF0ZSBlbmRzIHVwIGF0IDMwME1IeiBpbnN0ZWFkIG9mIHRoZQo+IGRl
c2lyZWQgNjAwIG9yIDgwME1Ieiwgc28gd2Ugc2hvdWxkIGRvIHNvbWV0aGluZy4KPiAKPiA+ID4g
Pgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hAcGVuZ3V0cm9u
aXguZGU+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDhtcC5kdHNpIHwgNCArKy0tCj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gPiA+IGluZGV4IDk3YjA5YjY0N2VjNy4uN2Y0YmRl
ZmIzNDgwIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxl
L2lteDhtcC5kdHNpCj4gPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1wLmR0c2kKPiA+ID4gPiBAQCAtMjI4OSw4ICsyMjg5LDggQEAgdnB1bWl4X2Jsa19jdHJs
OiBibGstY3RybEAzODMzMDAwMCB7Cj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZjbGsgSU1YOE1QX0NMS19WUFVfRzJfUk9PVD4sCj4gPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1QX0NMS19WUFVfVkM4S0VfUk9PVD47Cj4g
PiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIiLCAi
dmM4MDAwZSI7Cj4gPiA+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tz
ID0gPCZjbGsgSU1YOE1QX0NMS19WUFVfQlVTPiwgPCZjbGsgSU1YOE1QX1ZQVV9QTEw+Owo+ID4g
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNs
ayBJTVg4TVBfVlBVX1BMTF9PVVQ+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGFz
c2lnbmVkLWNsb2NrcyA9IDwmY2xrIElNWDhNUF9WUFVfUExMPiwgPCZjbGsgSU1YOE1QX0NMS19W
UFVfQlVTPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBhc3NpZ25lZC1jbG9jay1w
YXJlbnRzID0gPDA+LCA8JmNsayBJTVg4TVBfVlBVX1BMTF9PVVQ+Owo+ID4gPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDYwMDAwMDAwMD4sIDw2MDAw
MDAwMDA+Owo+ID4gPgo+ID4gPiBJIHRoaW5rIHRoZXJlIHdhcyBhIG1vdmUgdG8gbWFrZSB0aGUg
ZGVmYXVsdCBiZSBvdmVyZHJpdmUgWzFdICBhbmQgWzJdCj4gPiA+IGFuZCB1c2UgYSAnbm9taW5h
bCcgZGV2aWNlIHRyZWUgZm9yIHRob3NlIHdobyBhcmUgbm90IGluIG92ZXJkcml2ZQo+ID4gPiBt
b2RlLiAgQWNjb3JkaW5nIHRvIHRoZSBUUk0sIHRoZSBWUFVfQlVTX0NMS19ST09ULCB0aGUgbm9t
aW5hbCBpcwo+ID4gPiA2MDBNSHogYW5kIHRoZSBvdmVyZHJpdmUgaXMgODAwTUh6LiAgQmFzZWQg
b24gdGhhdCwgSSB3b25kZXIgaWYgdGhlCj4gPiA+IHZhbHVlcyBoZXJlIHNob3VsZCBiZSA4MDBN
SHogYW5kIGlmIHdlIHNob3VsZCBhZGQgdGhlIG5vbWluYWwgdmFsdWVzCj4gPiA+IG9mIDYwME1I
eiB0byB0aGUgaW14OG0tbm9taW5hbC5kdHNpIGZpbGUuCj4gPgo+ID4gWW91J3JlIHJpZ2h0LCBB
aGFtZCBhbmQgTHVjYXMgZGlkIGNoYW5nZSB0aGlzLiBJIHdpbGwgYWRhcHQgaXQgbGF0ZXIgb24u
Cj4gCj4gSSB1cGRhdGVkIG15IGRldmljZSB0cmVlIHRvIHJ1biBpbiBvdmVyZHJpdmUgbW9kZSBh
bmQgcmFuIGZsdXN0ZXIgYXQKPiB0aGUgaGlnaGVyIHJhdGVzOgo+IFZQVV9HMSAtIDgwME1IeiwK
PiBWUFUtRzIgLSA3MDBNSHoKPiBWUFUtQnVzIC0gODAwTUh6Cj4gCj4gLi9mbHVzdGVyLnB5IHJ1
biAtZCBHU3RyZWFtZXItVlA4LVY0TDJTTC1Hc3QxLjAKPiBSYW4gNTcvNjEgdGVzdHMgc3VjY2Vz
c2Z1bGx5ICAgICAgICAgICAgICAgaW4gNS45MjIgc2Vjcwo+ICh2cyA3LjA1OSBzZWNzIGF0IG5v
bWluYWwgc3BlZWQpCj4gCj4gLi9mbHVzdGVyLnB5IHJ1biAtZEdTdHJlYW1lci1ILjI2NC1WNEwy
U0wtR3N0MS4wCj4gUmFuIDEyOS8xMzUgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAg
aW4gNDAuMTA3IHNlY3MKPiAodnMgNDUuNzQxIHNlY3MgYXQgbm9taW5hbCBzcGVlZCkKPiAKPiBJ
ZiB5b3Ugd2FudCwgSSBjYW4gc3VibWl0IHRoZSBjbG9jayB1cGRhdGVzIEkgaGF2ZSBmb3Igb3Zl
cmRyaXZlIG9yCj4gc2VuZCB0aGVtIHRvIHlvdSB0byBzYXZlIHlvdSBzb21lIHRpbWUuCgpTdXJl
LCB5b3UgY2FuIHBpY2stdXAgbXkgcGF0Y2hlcyBvciBhZGQgbmV3IG9uZXMuIEVpdGhlciB3YXkg
eW91J3JlCnJpZ2h0LCB0aGUgY2xvY2sgZml4ZXMgY2FuIGdvIGluIHNlcGFyYXRlbHkuCgpSZWdh
cmRzLAogIE1hcmNvCgo+IAo+IGFkYW0KPiAKPiA+Cj4gPiBSZWdhcmRzLAo+ID4gICBNYXJjbwo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
