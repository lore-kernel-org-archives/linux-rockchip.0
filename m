Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2554DC369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 23:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmquHdvIw0RQ3ZUxLZ3/3hdYlachYClunZG4Qv72ayo=; b=huiotd9IW+ydBF
	1D8MlwoFTcT3SNqteenAKw9a7+KnVamZ+2W5iJXjojeF1gucEAHBOyaz2WiJuDMEOq891NUkeFNSE
	4FndGhVc180S9s3qD/ujgITBM4RsyI9g8iZ7UaD7sUq8ee6dldpgAHgwy1OwZd/e+zz9NLriWkt0F
	0PjWsV+i0HN6E4mNO+jz34J4l9Nc19RSN1DVlSwCuC7tVRkoO+arCHBhTT9fmBh4rdS7mhEOc8Ifm
	AsNtAUPfK4cLxZWXBuCcO2vr7P53mw7Q5G2Nz96Kle3jyWbESJbdD/u6IJN6u/eha329ACtkry8EJ
	rf7DUv4U+ISzsCnkBxdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBiL7-000000065pC-2h38;
	Sun, 04 May 2025 23:01:41 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBiL5-000000065og-0u9l;
	Sun, 04 May 2025 23:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=5PJe2ch6Ms9zAWsGh5fiiCAopiENydoBhMUp03HMdLo=; b=Su
	QSMudDNeSIFw4mG21Xq7Nd7Y6OEN3p/4e540kK6Sfexrcf2dcqu3LUJ71vvB9RDKuZmxAWfwJR69/
	vAEjQDOGoaMvFx+g+/RzpEcBPS0no2ZY16Wuo3tdc2BZ/KoyANwn11ZM2UyGhL2XD47BfpHMeLNLo
	CktRoO4lWndTV5k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uBiKt-00BYej-Pv; Mon, 05 May 2025 01:01:27 +0200
Date: Mon, 5 May 2025 01:01:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: John Clark <inindev@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, heiko@sntech.de, robh@kernel.org,
	conor+dt@kernel.org, detlev.casanova@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
Message-ID: <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_160139_291024_C6F25A79 
X-CRM114-Status: GOOD (  18.89  )
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

T24gU3VuLCBNYXkgMDQsIDIwMjUgYXQgMDU6MDI6MzNQTSAtMDQwMCwgSm9obiBDbGFyayB3cm90
ZToKPiBPbiA1LzQvMjUgMTA6MTIgQU0sIEFuZHJldyBMdW5uIHdyb3RlOgo+ID4gPiA+ICsmZ21h
YzAgewo+ID4gPiA+ICsJY2xvY2tfaW5fb3V0ID0gIm91dHB1dCI7Cj4gPiA+ID4gKwlwaHktaGFu
ZGxlID0gPCZyZ21paV9waHkwPjsKPiA+ID4gPiArCXBoeS1tb2RlID0gInJnbWlpLXJ4aWQiOwo+
ID4gPiAKPiA+ID4gU2VlIEFuZHJldydzIHJlbWFyayBvbiB2MSBvZiB0aGlzIHBhdGNoLgo+ID4g
Cj4gPiBIaSBKb2huCj4gPiAKPiA+IElmIHlvdSBoYXZlIHF1ZXN0aW9ucywgcGxlYXNlIGFzay4g
SXQgaXMgbm90IGEgZ29vZCBpZGVhIHRvIHNpbGVudGx5Cj4gPiBpZ25vcmUgcmV2aWV3ZXJzIGNv
bW1lbnRzLiBFaXRoZXIgZG8gc29tZXRoaW5nIGFib3V0IGl0LCBhc2sKPiA+IHF1ZXN0aW9ucywg
b3IgcG9saXRlbHkgYXJndWUgd2h5IHRoZSByZXZpZXdlciBpcyB3cm9uZywgYmVjYXVzZQo+ID4g
c29tZXRpbWVzIHdlIGFyZS4KPiA+IAo+IEhpIEFuZHJldywKPiBUaGFua3MgZm9yIHlvdXIgZmVl
ZGJhY2sgYW5kIHRoZSBsaW5rIHRvIHRoZSBSR01JSSBkZWxheXMgZGlzY3Vzc2lvbi4gSQo+IGFz
c3VtZWQgeW91IHN1Z2dlc3RlZCBzd2l0Y2hpbmcgdG8gcGh5LW1vZGUgPSAicmdtaWktaWQiIGZy
b20gcmdtaWktcnhpZC4KPiBUaGUgdmVuZG9y4oCZcyBkb3duc3RyZWFtIGtlcm5lbCB1c2VzIHJn
bWlpLXJ4aWQgd2l0aCB0eF9kZWxheSA9IDwweDIwPiwgYXMKPiBzaG93biBpbiBteSBwb3N0LiBJ
IHRyaWVkIHJnbWlpLWlkIGFuZCByZW1vdmVkIHR4X2RlbGF5LCBidXQgdGhlIGludGVyZmFjZQo+
IGZhaWxlZCB0byBnZXQgYSBESENQIGFkZHJlc3MuIFJldmVydGluZyB0byByZ21paS1yeGlkIHdp
dGggdGhlIGRlbGF5Cj4gcmVzdG9yZWQgZnVuY3Rpb25hbGl0eS4gQW55IGFkdmljZSBvbiBjb3Jy
ZWN0bHkgY29uZmlndXJpbmcgcmdtaWktaWQgb3IKPiBhZGp1c3RpbmcgZGVsYXlzIGZvciB0aGlz
IGJvYXJkPwoKV2hhdCBQSFkgaXMgaXQ/IEFyZSB5b3UgdXNpbmcgdGhlIGNvcnJlY3QgUEhZIGRy
aXZlciBmb3IgaXQsIG9yCmdlbnBoeT8KCnJrMzU3Ni1yb2NrLTRkLmR0cyBhbmQgcmszNTc2LWFy
bXNvbS1zaWdlNS5kdHMgc2hvdyB0aGF0IGl0IGlzCnBvc3NpYmxlIHRvIHVzZSB0aGlzIFNvQyB3
aXRoIHRoZSBjb3JyZWN0ICdyZ21paS1pZCcsIAoKCUFuZHJldwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
