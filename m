Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 975E8C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 13:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cCeW3AHsQJaZsBPbpBnrKQXhtT5XYijj8V/wdUFoHQ=; b=SF5NextRgHYTeW
	i5oP+0o8yZDkzORi3GydofX7CsTqGVV1wsaNRMBDToTxws2pG4vlzYTV2Ah9OzKammdrUcfepS9eJ
	tB6v1PTxZkLTdln6LvGFFnItKp2McuGEOQl/aGx6QLMA6uInW7Vq8JQiA4sAZgvuUBk4UPhPUzGea
	nb409vHTopJLmgsN0BGeHDXuN37WzhQZVi0o/HIFFfTLKWiFuir5pF51T2rEz/RypdI0Ip8uLt3ZE
	P8w3BI/18iwk6YxSIXFH0Qhpgqv/BZh8q1xyUuOWL9CuSko9/gvd42WiTcK5AFonL1aLvKVxT4nVR
	PfHffA9g58h8pi5uD+9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh84o-000000096BI-3BJz;
	Mon, 04 Mar 2024 13:09:55 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh84O-000000095wx-48S9;
	Mon, 04 Mar 2024 13:09:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=ntM3uHxRjzQ+a85JmcdPhuNDbTOvT+BdKRtXjZ66nIU=; b=dc
	x6p8Dt/mT5e3kYST+11OqrzZTXyJv76VQ4AJHhbmoZrPDhnYBnhipz4IkorDaymU247CExHN0TmSx
	IYYbgJ+90XYrBWPiEZWx47L4TCjwVT3+7BAhCE/EKQQ+2d2v6dij4RkNtW8grqMNo8n+YZZXD+bUt
	8hW56F2SGHBGyfk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rh84B-009K8q-DH; Mon, 04 Mar 2024 14:09:15 +0100
Date: Mon, 4 Mar 2024 14:09:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Message-ID: <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_050929_284202_9E72988C 
X-CRM114-Status: GOOD (  19.24  )
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

T24gTW9uLCBNYXIgMDQsIDIwMjQgYXQgMDY6MDc6NTRQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIE1vbiwgTWFyIDQsIDIwMjQgYXQgNDo0N+KAr1BNIFV3ZSBLbGVpbmUtS8O2bmln
IDx1a2xlaW5la0BkZWJpYW4ub3JnPiB3cm90ZToKPiA+Cj4gPiBXaGlsZSBpdCByZXF1aXJlcyB0
byBoYXZlIHRoZSByaWdodCBwaHkgZHJpdmVyIGxvYWRlZCAoaS5lLiBtb3RvcmNvbW0pCj4gPiB0
byBtYWtlIHRoZSBwaHkgYXNzZXJ0aW5nIHRoZSByaWdodCBkZWxheXMsIHRoaXMgaXMgZ2VuZXJh
bGx5IHRoZQo+ID4gcHJlZmVycmVkIHdheSB0byBkZWZpbmUgdGhlIE1BQyA8LT4gUEhZIGNvbm5l
Y3Rpb24uCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHVrbGVpbmVr
QGRlYmlhbi5vcmc+Cj4gPiAtLS0KPiA+IEhlbGxvLAo+ID4KPiA+IEFuZHJldyBhbHJlYWR5IHBv
aW50ZWQgb3V0IHdoZW4gSSBwb3N0ZWQgdGhlIHBhdGNoIGludHJvZHVjaW5nIHRoZSBnbWFjMCBu
b2RlCj4gPiB0aGF0IHJnbWlpLWlkIHdvdWxkIGJlIHRoZSBwcmVmZXJyZWQgd2F5IHRvIHNldHVw
IHRoaW5ncy4gQmFjayB0aGVuIHRoaXMgZGlkbid0Cj4gPiBoYXBwZW4gYmVjYXVzZSB0aGlzIGNo
YW5nZSBicm9rZSByZWNlcHRpb24gb2YgbmV0d29yayBwYWNrZXRzLiBIb3dldmVyIHRoaXMKPiA+
IG9ubHkgaGFwcGVuZCBiZWNhdXNlIEkgZGlkbid0IGhhdmUgdGhlIHJpZ2h0IHBoeSBkcml2ZXIg
bG9hZGVkLgo+IAo+IEl0IGNvdWxkIGJlIHRoYXQgdGhlIFBIWSBpcyBzdHJhcHBlZCB0byBub3Qg
dXNlIGl0cyBpbnRlcm5hbCBSWCBkZWxheS4KPiBBbmQgdGhlIFBIWSBoYXMgc29tZSB3ZWlyZCBk
ZWZhdWx0IFRYIGRlbGF5LCBzbyBoYXZpbmcgdGhlIGRyaXZlcgo+IHB1dCBzb21lIHNlbnNpYmxl
IHZhbHVlcyBpbiBpcyBwcm9iYWJseSBiZXR0ZXIuCgpJdCBjb3VsZCBhbHNvIGJlIHRoZSBib290
bG9hZGVyIHB1dHRpbmcgb2RkIHZhbHVlcyBpbnRvIHRoZSBQSFkuCgpBbnl3YXksIGl0IHdpbGwg
d29yayBiZXR0ZXIgd2l0aCB0aGUgY29ycmVjdCBQSFksIGFuZCBlbmFibGUgV29MCnN1cHBvcnQu
CgpSZXZpZXdlZC1ieTogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgoKICAgIEFuZHJldwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
