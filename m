Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FEA1C5AD49
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 14:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb7tH1+eLRCFaZKQtH4UQcO8o2nX6uiypNDbdg/tbzo=; b=ifh/4o008OYJfG
	2EgyuMG3nN3MLXx04H8bqnVB1zIGDdYsOTtShDoqB1qINGV4V/Zl3kx8vKhojVuvp17hxedRF+6Dl
	NN49rfgDqUX70BL9MdNmL7N9aCaKu0SDdqNMUgM9nD8PUwegZt4EJM41HZdzb8JO7mwXThelToLW9
	KTkCBONwBYpbZMZOH6zIUZjvWPPVbpRph+2dznVNKiXWnWEQZG4se+u1/1cwtlJcq1Jp8Vqn23eEK
	/nR5gsRb+ayLAWxuhjOPhvHUtenn9QH0OBMUE6nXvxETXhNaEXyCmkA5syNvvZEZjXfKcHpcV9PY2
	vERuVjEdNZV68eh/Z07g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHhg-0000000DOXY-2Rt0;
	Wed, 28 May 2025 14:24:24 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHXv-0000000DLHM-1BbG;
	Wed, 28 May 2025 14:14:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1748441656;
	bh=Xck/nwOYiqy1ZVp9Sss2kWwcLSvKVmGgOkD7OBgsZBA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=lVVoA1jctbfwewW2KGob5hfTDoq2NQRzQk9gxJCzi1YcEl/+KT9lpM1mZDY7EpwAz
	 C01gp7g9uaW3/+R4aPvO6wDfW5R1enrQHhY17Rc4ZbwusXt7h3uDWywQzwv3+uHrrJ
	 eyXVnqTow726pX7uJU1Zh9KVXNThuEmBMg///ei+djpn3Olt5z7LlLIGYfjVzSUyVS
	 Cob+tignic8jH9R0rI61lG5DM3Ej2AQt6cNGR2LAloGMo6fvEbUWpg5GqiDbnM6mLF
	 WDNyYPavHzBqZqlWkUbSY/zfiMhnakM4/8bZ+WN4gDOyZVH9dAF3IHgby93SQWFHEg
	 LI1+Pb7C4IL6Q==
Received: from [IPv6:2606:6d00:17:b2fc::5ac] (unknown [IPv6:2606:6d00:17:b2fc::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 524C317E3700;
	Wed, 28 May 2025 16:14:14 +0200 (CEST)
Message-ID: <7cf3e219758a67d08137ebea5e52a1abad835e65.camel@collabora.com>
Subject: Re: [RFC PATCH 07/11] arm64: dts: imx8mp: fix VPU_BUS clock setting
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Adam Ford <aford173@gmail.com>, Marco Felsch <m.felsch@pengutronix.de>
Cc: benjamin.gaignard@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, 	shawnguo@kernel.org, Sascha Hauer
 <s.hauer@pengutronix.de>, 	kernel@pengutronix.de, festevam@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, 	conor+dt@kernel.org,
 paulk@sys-base.io, hverkuil@xs4all.nl, 	laurent.pinchart@ideasonboard.com,
 sebastian.fricke@collabora.com, 	ming.qian@nxp.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Date: Wed, 28 May 2025 10:14:12 -0400
In-Reply-To: <CAHCN7xLecU12XtXFuwfNP+eee+9RLCSB9iErNmk7VFV+WrozJA@mail.gmail.com>
References: <20250502150513.4169098-1-m.felsch@pengutronix.de>
	 <20250502150513.4169098-8-m.felsch@pengutronix.de>
	 <CAHCN7x+Lu9momgX3Vwp+Yu+Tet5Q=k2vCL83SMLuad24SDchEg@mail.gmail.com>
	 <20250502165535.aeb2osq2vnxsudmq@pengutronix.de>
	 <CAHCN7xLecU12XtXFuwfNP+eee+9RLCSB9iErNmk7VFV+WrozJA@mail.gmail.com>
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071419_493631_5BF884A5 
X-CRM114-Status: GOOD (  28.98  )
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

SGksCgpMZSBtYXJkaSAyNyBtYWkgMjAyNSDDoCAyMjowNSAtMDUwMCwgQWRhbSBGb3JkIGEgw6lj
cml0wqA6Cj4gT24gRnJpLCBNYXkgMiwgMjAyNSBhdCAxMTo1NeKAr0FNIE1hcmNvIEZlbHNjaCA8
bS5mZWxzY2hAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gCj4gPiBPbiAyNS0wNS0wMiwgQWRh
bSBGb3JkIHdyb3RlOgo+ID4gPiBPbiBGcmksIE1heSAyLCAyMDI1IGF0IDEwOjEw4oCvQU0gTWFy
Y28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+ID4gCj4gPiA+
ID4gVGhlIFZQVV9QTEwgY2xvY2sgbXVzdCBiZSBzZXQgYmVmb3JlIHRoZSBWUFVfQlVTIGNsb2Nr
IHdoaWNoIGlzIGRlcml2ZWQKPiA+ID4gPiBmcm9tIHRoZSBWUFVfUExMIGNsb2NrIGVsc2UgdGhl
IFZQVV9CVVMgY2xvY2sgaXMgMzAwTUh6IGFuZCBub3QgNjAwTUh6Lgo+IAo+IEkgZGlkIHZlcmlm
eSB0aGUgY3VycmVudCBjbG9jayByYXRlIGVuZHMgdXAgYXQgMzAwTUh6IGluc3RlYWQgb2YgdGhl
Cj4gZGVzaXJlZCA2MDAgb3IgODAwTUh6LCBzbyB3ZSBzaG91bGQgZG8gc29tZXRoaW5nLgo+IAoK
VGhpcyByZW1pbmRlZCBtZSBvZjrCoAoKaHR0cHM6Ly9wYXRjaHdvcmsubGludXh0di5vcmcvcHJv
amVjdC9saW51eC1tZWRpYS9wYXRjaC8yMDI1MDIxNy1iNC1oYW50cm8tYXYxLWNsb2NrLXJhdGUt
djItMS1lMTc5ZmFkNTI2NDFAY29sbGFib3JhLmNvbS8KCldoaWNoIGFsc28gbWFkZSBtZSBkaXNj
b3ZlciB0aGF0IHRoaXMgcGF0Y2ggd2Fzbid0IHBpY2tlZCBkZXNwaXRlIGJlaW5nIG1hcmsgYWNj
ZXB0ZWQuIFdlCndpbGwgZmF2b3VyIERUIGNsb2NrIHNldHRpbmdzIGZyb20gaGVyZSwgc2luY2Ug
aXRzIG5vdCByZWFsbHkgbWFuYWdhYmxlIG90aGVyd2lzZSwgb2xkIGJvYXJkCndpbGwgc3RheSBs
aWtlIHRoaXMsIG90aGVyd2lzZSB3ZSBmYWNlIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgaXNzdWVz
LgoKTm90ZSB0aGF0IEcyIGFuZCBWQzhLIGNhbiBiZSBydW4gYXQgaGlnaGVyIHJhdGUsIGJ1dCB0
byBiZSBzdGFibGUsIHlvdSBuZWVkCnRvIGFsc28gY29udHJvbCB2b2x0YWdlIGFuZCBwcm9wZXIg
Y29vbGluZywgbm90IHNvbWV0aGluZyB3ZSB3YW50ICJieSBkZWZhdWx0Ii4KCk5pY29sYXMKCj4g
Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBw
ZW5ndXRyb25peC5kZT4KPiA+ID4gPiAtLS0KPiA+ID4gPiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL2lteDhtcC5kdHNpIHwgNCArKy0tCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gPiA+ID4gaW5kZXggOTdiMDliNjQ3
ZWM3Li43ZjRiZGVmYjM0ODAgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiA+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bXAuZHRzaQo+ID4gPiA+IEBAIC0yMjg5LDggKzIyODksOCBAQCB2cHVt
aXhfYmxrX2N0cmw6IGJsay1jdHJsQDM4MzMwMDAwIHsKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2xrIElN
WDhNUF9DTEtfVlBVX0cyX1JPT1Q+LAo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjbGsgSU1YOE1QX0NMS19W
UFVfVkM4S0VfUk9PVD47Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lcyA9ICJnMSIsICJnMiIsICJ2YzgwMDBlIjsKPiA+ID4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQt
Y2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19WUFVfQlVTPiwgPCZjbGsgSU1YOE1QX1ZQVV9QTEw+
Owo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBh
c3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjbGsgSU1YOE1QX1ZQVV9QTExfT1VUPjsKPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNzaWduZWQt
Y2xvY2tzID0gPCZjbGsgSU1YOE1QX1ZQVV9QTEw+LCA8JmNsayBJTVg4TVBfQ0xLX1ZQVV9CVVM+
Owo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBh
c3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPDA+LCA8JmNsayBJTVg4TVBfVlBVX1BMTF9PVVQ+Owo+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXNz
aWduZWQtY2xvY2stcmF0ZXMgPSA8NjAwMDAwMDAwPiwgPDYwMDAwMDAwMD47Cj4gPiA+IAo+ID4g
PiBJIHRoaW5rIHRoZXJlIHdhcyBhIG1vdmUgdG8gbWFrZSB0aGUgZGVmYXVsdCBiZSBvdmVyZHJp
dmUgWzFdwqAgYW5kIFsyXQo+ID4gPiBhbmQgdXNlIGEgJ25vbWluYWwnIGRldmljZSB0cmVlIGZv
ciB0aG9zZSB3aG8gYXJlIG5vdCBpbiBvdmVyZHJpdmUKPiA+ID4gbW9kZS7CoCBBY2NvcmRpbmcg
dG8gdGhlIFRSTSwgdGhlIFZQVV9CVVNfQ0xLX1JPT1QsIHRoZSBub21pbmFsIGlzCj4gPiA+IDYw
ME1IeiBhbmQgdGhlIG92ZXJkcml2ZSBpcyA4MDBNSHouwqAgQmFzZWQgb24gdGhhdCwgSSB3b25k
ZXIgaWYgdGhlCj4gPiA+IHZhbHVlcyBoZXJlIHNob3VsZCBiZSA4MDBNSHogYW5kIGlmIHdlIHNo
b3VsZCBhZGQgdGhlIG5vbWluYWwgdmFsdWVzCj4gPiA+IG9mIDYwME1IeiB0byB0aGUgaW14OG0t
bm9taW5hbC5kdHNpIGZpbGUuCj4gPiAKPiA+IFlvdSdyZSByaWdodCwgQWhhbWQgYW5kIEx1Y2Fz
IGRpZCBjaGFuZ2UgdGhpcy4gSSB3aWxsIGFkYXB0IGl0IGxhdGVyIG9uLgo+IAo+IEkgdXBkYXRl
ZCBteSBkZXZpY2UgdHJlZSB0byBydW4gaW4gb3ZlcmRyaXZlIG1vZGUgYW5kIHJhbiBmbHVzdGVy
IGF0Cj4gdGhlIGhpZ2hlciByYXRlczoKPiBWUFVfRzEgLSA4MDBNSHosCj4gVlBVLUcyIC0gNzAw
TUh6Cj4gVlBVLUJ1cyAtIDgwME1Iego+IAo+IC4vZmx1c3Rlci5weSBydW4gLWQgR1N0cmVhbWVy
LVZQOC1WNEwyU0wtR3N0MS4wCj4gUmFuIDU3LzYxIHRlc3RzIHN1Y2Nlc3NmdWxsecKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaW4gNS45MjIgc2Vjcwo+ICh2cyA3LjA1OSBzZWNzIGF0IG5v
bWluYWwgc3BlZWQpCj4gCj4gLi9mbHVzdGVyLnB5IHJ1biAtZEdTdHJlYW1lci1ILjI2NC1WNEwy
U0wtR3N0MS4wCj4gUmFuIDEyOS8xMzUgdGVzdHMgc3VjY2Vzc2Z1bGx5wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpbiA0MC4xMDcgc2Vjcwo+ICh2cyA0NS43NDEgc2VjcyBhdCBub21pbmFs
IHNwZWVkKQo+IAo+IElmIHlvdSB3YW50LCBJIGNhbiBzdWJtaXQgdGhlIGNsb2NrIHVwZGF0ZXMg
SSBoYXZlIGZvciBvdmVyZHJpdmUgb3IKPiBzZW5kIHRoZW0gdG8geW91IHRvIHNhdmUgeW91IHNv
bWUgdGltZS4KPiAKPiBhZGFtCj4gCj4gPiAKPiA+IFJlZ2FyZHMsCj4gPiDCoCBNYXJjbwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
