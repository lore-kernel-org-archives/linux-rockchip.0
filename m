Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F9FC88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 22:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5xf1TDNaNxfFo1MOxvOXFuNJGWRL1FTZ+/ImMNl0uk=; b=q85aKGCjRUcOzv
	mQbYxwy2h9A1utP80zEqx1AtHJiHH2JTHntzqkJNVttmId8iotdZspWVOSpMFKzCRCUDyS2855VUm
	p0sLpfIA8GsHRDE0tquns+mlv1Na4wzPB6+/s3i4juQxf7MzNbDLLSqY6aRNX7vPPhmFzaSCcfTC7
	yMeYla2/oL5KIO56LhFbqtTGB73ltS2gKI20EJtqUI2H5ytJGoMkem5dM3omNl8uZSKcmG5VcfHJ8
	QMQuaJWnfk3W4F3r9kkhCudVNPA72vQfexeXVjIi1aJD8/y30bptfRAKHMGVtP7DcFOHJYS7z5Jyx
	tkt+caZUAWe6MWm2lnTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7KRa-0000000CdKc-0oxs;
	Thu, 17 Sep 2026 22:19:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7KRY-0000000CdKP-1cy2;
	Thu, 17 Sep 2026 22:19:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8A9FF600AA;
	Thu, 17 Sep 2026 22:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E8891F000FF;
	Thu, 17 Sep 2026 22:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789683539;
	bh=ID0yyjs86uvWzjzpkXQAyqsj+E11ye93NtAKSRfhkjc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UVVHO9Hw1kTiBcefgMiGB+m9wBlu3SPKUKP4+vaWxfsfXBnK9asXgEspqpWOBw/LV
	 7c7Kxzh58w5eQkaVg8/Rjt5AmakFIBZVq650Qio+IRVcuj4+bu6rpMv2lr5Jj+Bxw4
	 WL0eVk5oBtjLHUZ/8ShMyrmTrbjQu/Yc8fyut9f/g/AaviXxMJnCAUBgdOIU5bAVbO
	 VsRl97IVrQapzsxS2cq1WO/yz9Ls8TM714nB5gKShVs+WpUS21DQIVGVBRrLOpWZ3T
	 NSiX2hG2VEkpTKtQJLNAeVHvb2mjSgL5JDnE3+UVz4oZ1w1ydeeayHV9RXX3seJXFi
	 05tQcqStFmw+Q==
Date: Thu, 17 Sep 2026 17:18:57 -0500
From: Rob Herring <robh@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Srinivas Kandagatla <srini@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
Message-ID: <20260917221857.GA4056431-robh@kernel.org>
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
 <CAKTNdwH9QAgreJ-6+t1j_P1di4VyoMBSsFkf_g=mCi_-M8g9Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTNdwH9QAgreJ-6+t1j_P1di4VyoMBSsFkf_g=mCi_-M8g9Pw@mail.gmail.com>
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

T24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMDY6NDg6MzNQTSArMDQwMCwgQWxleGV5IENoYXJrb3Yg
d3JvdGU6Cj4gT24gV2VkLCBTZXAgMiwgMjAyNiBhdCA1OjA44oCvUE0gQWxleGV5IENoYXJrb3Yg
PGFsY2hhcmtAZmxpcHBlci5uZXQ+IHdyb3RlOgo+ID4KPiA+IFJvY2tjaGlwIFNvQ3MgYXJlIHNo
aXBwZWQgd2l0aCBhIHVuaXF1ZSBDUFUgSUQgaW4gdGhlaXIgaW50ZXJuYWwgT1RQCj4gPiBtZW1v
cnksIGFuZCBSb2NrY2hpcCBib290bG9hZGVycyB1c2UgaXQgdG8gZ2l2ZSBib2FyZHMgd2hpY2gg
aGF2ZSBubwo+ID4gZGVkaWNhdGVkIHN0b3JhZ2UgZm9yIGEgTUFDIGFkZHJlc3MgYSBzdGFibGUg
b25lIGFueXdheTogdGhleSBoYXNoIHRoZSBDUFUKPiA+IElEIGFuZCBwYXRjaCB0aGUgcmVzdWx0
aW5nIGFkZHJlc3NlcyBpbnRvIHRoZSBkZXZpY2UgdHJlZSB0aGV5IGhhbmQgb3Zlci4KPiA+Cj4g
PiBLZXJuZWxzIHN0YXJ0ZWQgd2l0aG91dCB0aGF0IGZpeHVwLCBlLmcuIHN0cmFpZ2h0IGZyb20g
dGhlIFNQTCBpbiBGYWxjb24KPiA+IG1vZGUgb3IgYnkgYW55IG90aGVyIGxvYWRlciB3aGljaCBk
b2VzIG5vdCBpbXBsZW1lbnQgUm9ja2NoaXAncyBkZXJpdmF0aW9uLAo+ID4gZmFsbCBiYWNrIHRv
IHJhbmRvbSBNQUMgYWRkcmVzc2VzIHdoaWNoIGNoYW5nZSBvbiBldmVyeSBib290Lgo+ID4KPiA+
IEZvcm1hbGl6ZSB0aGUgZGVyaXZhdGlvbiBpbiB0aGUgRFQgYmluZGluZyBhbmQgYWRkIGEgTGlu
dXgga2VybmVsIGRyaXZlcgo+ID4gaW1wbGVtZW50aW5nIGl0LCBzbyB0aGF0IGEgTGludXggaW1h
Z2UgY2FuIHVzZSB0aGUgc2FtZSBzdGFibGUgYWRkcmVzc2VzCj4gPiByZWdhcmRsZXNzIG9mIHRo
ZSBib290IGZsb3cuCj4gPgo+ID4gT25seSBSSzM1NzYgaXMgd2lyZWQgdXAgaGVyZSwgdGhhdCBi
ZWluZyB0aGUgU29DIEkgY2FuIHRlc3Qgb24uIE90aGVyCj4gPiBSb2NrY2hpcCBTb0NzIGtlZXAg
dGhlIHNhbWUgQ1BVIElEIGF0IGEgZGlmZmVyZW50IE9UUCBvZmZzZXQgLSAweDcgcmF0aGVyCj4g
PiB0aGFuIDB4YSBvbiBSSzM1ODgsIGZvciBpbnN0YW5jZSAtIHdoaWNoIG1ha2VzIHN1cHBvcnRp
bmcgdGhlbSBhIHR3by1saW5lCj4gPiBhZGRpdGlvbiB0byB0aGUgZHJpdmVyJ3MgbWF0Y2ggdGFi
bGUgcGx1cyB0aGUgbGF5b3V0IG5vZGUuCj4gPgo+ID4gUGF0Y2ggMSBpcyBhIHByZXJlcXVpc2l0
ZSBmaXguIFRoZSBPVFAgaGFyZHdhcmUgaGFzIGl0cyBvd24gaW50ZXJuYWwgc3RhdGUKPiA+IG1h
Y2hpbmUgd2hpY2ggb25seSB3b3JrcyBjb3JyZWN0bHkgd2l0aCBzZXJpYWwgYWNjZXNzLCBidXQg
dGhlIGN1cnJlbnQKPiA+IGRyaXZlciBzZXJpYWxpemVzIG5vdGhpbmcsIHdoaWNoIHJlc3VsdHMg
aW4gdGltZW91dHMgYW5kL29yIGNvcnJ1cHRlZAo+ID4gcmVhZHMgKGUuZy4gcmV0dXJuaW5nIHNw
bGljaW5nIGEgVFNBREMgdHJpbSB2YWx1ZSBpbnRvIHRoZSBidWZmZXIgb2YgYQo+ID4gY2FsbGVy
IGFza2luZyBmb3IgdGhlIENQVSBJRCwgb3IgbWl4aW5nIHVwIHRyaW0gdmFsdWVzIG9mIGRpZmZl
cmVudCBUU0FEQwo+ID4gY2FsbGVycykuIEhlbmNlIHRoZSBGaXhlczogdGFnIGFuZCBDYzogc3Rh
YmxlLgo+ID4KPiA+IENyb3NzLWNoZWNrZWQgb24gYW4gUkszNTc2IGJvYXJkOiB0aGUgYWRkcmVz
c2VzIGZpeGVkIHVwIGludG8gdGhlIEZEVCBieQo+ID4gVS1Cb290IG1hdGNoIHRoZSBvbmVzIGRl
cml2ZWQgYnkgdGhlIG5ldyBkcml2ZXIsIGFuZCB0aGUgZHJpdmVyIGNvcnJlY3RseQo+ID4gYXNz
aWducyB0aGVtIHRvIHRoZSBuZXR3b3JrIGludGVyZmFjZXMgd2hlbiB0aGUga2VybmVsIGlzIGJv
b3RlZCB3aXRob3V0Cj4gPiBVLUJvb3QgcHJvcGVyIGF0IGFsbCAodmlhIEZhbGNvbiBtb2RlKS4K
PiA+Cj4gPiBTYXNoaWtvIGFsc28gcmlnaHRseSBwb2ludGVkIG91dCBhIHVzZS1hZnRlci1mcmVl
IGluIHRoZSBudm1lbSBjb3JlIHdoZW4KPiA+IGEgbGF5b3V0IGRyaXZlciBpcyB1bmxvYWRlZCBs
ZWF2aW5nIGl0cyBzeXNmcyBub2RlcyBhbmQgdGhlIHBvc3Rwcm9jZXNzb3IKPiA+IGZ1bmN0aW9u
IHBvaW50ZXIgZGFuZ2xpbmcuIFRoaXMgaXMgZml4ZWQgc2VwYXJhdGVseSBpbiBbMV0uCj4gPgo+
ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDkwMi1udm1lbS1sYXlvdXQt
dW5yZWctdjEtMS0yZDE2YmViZWI1MThAZmxpcHBlci5uZXQvCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPiAtLS0KPiA+IENoYW5n
ZXMgaW4gdjI6Cj4gPiAtIFN3aXRjaGVkIGZyb20gYSBzY29wZS1iYXNlZCBndWFyZCB0byBleHBs
aWNpdCBsb2NrL3VubG9jayBjYWxscyBpbiB0aGUKPiA+ICAgT1RQIGRyaXZlciB0byBhdm9pZCBt
aXhpbmcgc3R5bGVzIGluIGEgZnVuY3Rpb24gdXNpbmcgZ290byBlcnJvcgo+ID4gICBoYW5kbGlu
ZyAoU2FzaGlrbykKPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIw
MjYwOTAxLXJrMzU3Ni1vdHAtY3B1aWQtbWFjLXYxLTAtZWE5MTM1MjcwZmMyQGZsaXBwZXIubmV0
Cj4gPgo+ID4gLS0tCj4gPiBBbGV4ZXkgQ2hhcmtvdiAoNCk6Cj4gPiAgICAgICBudm1lbTogcm9j
a2NoaXAtb3RwOiBTZXJpYWxpemUgcmVhZHMKPiAKPiBJbmNpZGVudGFsbHksIHBhdGNoIDEgb2Yg
dGhpcyBzZXJpZXMgYWxzbyBmaXhlcyBDUFUgdGhlcm1hbCB0aHJvdHRsaW5nCj4gb24gbXkgUksz
NTc2IGRldmljZTogYXBwYXJlbnRseSwgdGhlIG1pcy1yZWFkIE9UUC1wcm9ncmFtbWVkIHRoZXJt
YWwKPiB0cmltIHZhbHVlcyBicm9rZSB0aGUgdGhlcm1hbCBnb3Zlcm5vciBsb2dpYywgd2hpY2gg
bm93IHdvcmtzCj4gY29ycmVjdGx5IHdpdGggcHJvcGVybHkgc2VyaWFsaXplZCBPVFAgcmVhZHMu
IFNvIGl0IHdvdWxkIGJlIGdyZWF0IHRvCj4gaGF2ZSB0aGVzZSBtZXJnZWQuCgpJdCB3b3VsZCBi
ZSBncmVhdCB0byBoYXZlIHRoZSBzYXNoaWtvIGNvbW1lbnRzIGFuYWx5emVkIGFuZCByZXBsaWVk
IHRvIAphcyB3ZWxsIGlmIHlvdSB3b3VsZCBsaWtlIHRoaXMgdG8gYmUgcmV2aWV3ZWQuCgpSb2IK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
