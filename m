Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07C7C5DF7D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 03:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIhh537NomIY63h7/bETf8Msw62ouCKDoM3nNE3VYIk=; b=XvYA56ni7b73ZB
	4wRFSshfgu4AUY8++51bzDie9yTMd2tAXi+d29JLVlOtcGXiAxX1NFrb6+BxsZDj4eqpryvKrCnJ3
	GodTu5kjFru8C5kdmW48gPysNV/xH878Fv0KDp4lPGYUxOfx03OgIhxCYOT0gVmx1tySfYL7w1PVC
	qdwMI226ox6du9EJpDceOAjD/xoVZt/9P5Zvfq9ZHVVwULuEJ/JoO2MpTMhI7joceA3bMxaU6R6M9
	i7Ibcc79kgXbQ2pFVwrz+SqeVsa5QJM00emRf1ZY+4DamVb1krT02VV8t18GBM/oIcBr/zSDC78dk
	td7KCTSKZJWTfbr5tbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwX1u-00000008wLV-1HnI;
	Wed, 19 Aug 2026 03:31:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwX1r-00000008wKv-03Of;
	Wed, 19 Aug 2026 03:31:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8EF63601FB;
	Wed, 19 Aug 2026 03:31:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 097D61F000E9;
	Wed, 19 Aug 2026 03:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787110309;
	bh=UalBPFxKWe525mQfd39B3IwwYujzdCNWKW2ZUj1VaBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kE6DlpN6ORvE9hBR0WEqXrhVrgorQ880nzjV3Z3gYnB8XnlMLNXIFd/g7/GfeA1Sm
	 gZy+pxK7cgTERy6qykXDEMC4l2+212vdWXco7uEK00f8IQPHWvN9qabtqA7HurZXnc
	 aD5N4kF0fplnVCpbGnQ9oOHgXrRO5i7KuAhNPXRSvmShoEiktLEaOdkDMT/rKZ7+IZ
	 9rRm7o0FdW8HbfzqOkzmj5RuqEkDIOWoAqcIBGWnFTyCV+IsCeZcyUnIcPrBk6zx11
	 GfAh9n4QUNIK2SndUvjiX9RSJccWIZHZ9XJ6Qf5DwH2iXGfjp9pUGK3G2IKaLyp4lT
	 ickEg6i7LUdbw==
Date: Wed, 19 Aug 2026 05:31:37 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Yubing Zhang <yubing.zhang@rock-chips.com>, Alexey Charkov <alchark@flipper.net>, 
	Igor Paunovic <royalnet026@gmail.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>, William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v14 00/38] phy: rockchip: usbdp: Clean up the mess
Message-ID: <kwncmhsrq6sr56rsgf2ng4pc5fvyyqfryp3s2qfskoxunxx7jp@pdq4kedpw4gq>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
 <h54c2hrcsv3zjzzgojzf5sjmu3vtpobz6rwloam5kp7mwqqn3n@bqjnlellvnz6>
 <aoTMQtpYYw8O-3cj@venus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aoTMQtpYYw8O-3cj@venus>
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

T24gVHVlLCBBdWcgMTgsIDIwMjYgYXQgMTE6NDI6NTBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSGVsbG8gTWFuaSwKPiAKPiBPbiBUdWUsIEF1ZyAxOCwgMjAyNiBhdCAxMToy
NzowN0FNICswMjAwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBUaHUsIEF1
ZyAxMywgMjAyNiBhdCAxMDo1MTo0M1BNICswMjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToK
PiA+ID4gVGhpcyBzZXJpZXMgZG9lcyBhIG1ham9yIG92ZXJoYXVsIG9mIHRoZSBSb2NrY2hpcCBV
U0JEUCBkcml2ZXIuIFRoZQo+ID4gPiBpbml0aWFsIG1haW4gZ29hbCB3YXMgdG8gYWRkIFVTQi1D
IERQIEFsdE1vZGUgc3VwcG9ydCB0byB0aGUgUkszNTc2Cj4gPiA+IGFuZCBSSzM1ODggYW5kIHRo
aXMgc2VyaWVzIHN0aWxsIHByZXBhcmVzIHRoZSBQSFkgZHJpdmVyIGZvciBleGFjdGx5Cj4gPiA+
IHRoYXQuIEJ1dCBpbiBhZGRpdGlvbiB0byB0aGF0IEkgdW5jb3ZlcmVkIGEgaHVnZSBhbW91bnQg
b2YgaXNzdWVzLAo+ID4gPiB0aGF0IGFyZSBmaXhlZCBhbG9uZyB0aGUgd2F5LiBTb21lIG9mIHRo
ZSBtb3JlIGludGVyZXN0aW5nIG9uZXMgYXJlOgo+ID4gPiAKPiA+ID4gICogQ3VycmVudGx5IHRo
ZSBkcml2ZXIgbWlnaHQgdHJpZ2dlciBhIGZhdGFsIFNFcnJvciBvbiBVU0ItQyBob3RwbHVnLAo+
ID4gPiAgICBzaW5jZSByZS1pbml0aWFsaXppbmcgdGhlIFBIWSBzdG9wcyB0aGUgY2xvY2tzIGdv
aW5nIHRvIERXQzMuIElmCj4gPiA+ICAgIHRoZSBEV0MzIGRyaXZlciB0cmllcyB0byBhY2Nlc3Mg
aXRzIHJlZ2lzdGVycyBhdCB0aGUgc2FtZSB0aW1lIHRoZQo+ID4gPiAgICBzeXN0ZW0gd2lsbCBj
cmFzaC4KPiA+ID4gICogVGhlIERXQzMgaGFyZHdhcmUgY2FuIGdldCBpbnRvIGEgYnVnZ3kgc3Rh
dGUgd2hlbiB0aGUgUEhZIGlzCj4gPiA+ICAgIGRpc2FibGVkLCB3aGljaCByZXN1bHRzIGluIHRo
ZSBQSFkgbm90IGNvbWluZyB1cCBwcm9wZXJseSBhZ2Fpbi4KPiA+ID4gICogU3dpdGhjaW5nIHRo
ZSBVU0ItQyBjb25uZWN0b3Igb3JpZW50YXRpb24gZHVyaW5nIGhvdHBsdWcgYnJlYWtzCj4gPiA+
ICAgIFVTQjMgc3BlZWQsIGFzIHRoZSBQSFkgaXMgbm90IGJlaW5nIHJlLWluaXRpYWxpemVkLgo+
ID4gPiAgKiBUaGUgY29kZSBhbHdheXMgZW5hYmxlcyBEUCBtb2RlIHdoZW4gVVNCLUMgaXMgaW52
b2x2ZWQuCj4gPiA+ICAqIFRoZSBkcml2ZXIgaGFzIHNvbWUgbG9ja2luZyBpc3N1ZXMgdW5jb3Zl
cmVkIGJ5IFNhc2hpa28uCj4gPiA+IAo+ID4gPiBJbiBhZGRpdGlvbiB0byB0aGVzZSBiaWdnZXIg
b25lcywgU2FzaGlrbyBhbHNvIGZvdW5kIGEgYnVuY2ggb2YKPiA+ID4gbWlub3IgcHJvYmxlbXMs
IHdoaWNoIGFyZSBtb3N0bHkgaGFybWxlc3MsIGJ1dCB3ZXJlIGZpeGVkIHdoaWxlCj4gPiA+IGdv
aW5nIGF0IGl0Lgo+ID4gCj4gPiAzOCBwYXRjaGVzIGZvciBhIHNpbmdsZSBzZXJpZXMgaXMgdG9v
IG11Y2ggdG8gcmV2aWV3LiBQbGVhc2UKPiA+IGNvbnNpZGVyIHNwbGl0dGluZyBpdCB1cCBpbnRv
IG11bHRpcGxlIHNlcmllcyBub3QgZXhjZWVkaW5nIH4xMAo+ID4gcGF0Y2hlcyBwZXIgc2VyaWVz
LiBUaGFua3MhCj4gCj4gU28gbGV0IG1lIHN1bW1hcml6ZToKPiAKPiAgLSBWaW5vZCB3YW50cyBT
YXNoaWtvIGZlZWRiYWNrIHRvIGJlIGFjdGVkIHVwb24KClRoaXMgaXMgZmluZS4KCj4gIC0gbGlu
dXgtcGh5IGRvZXMgbm90IHdhbnQgc2VyaWVzIHdpdGggZGVwZW5kZW5jaWVzICggWzBdICkKClRo
aXMgaXMgbm90IHNvbWV0aGluZyBJIGV4cGVjdGVkLiBJIHJlYWQgdGhlIHJlcGx5IGZyb20gVmxh
ZGltaXIgaW4gWzBdLCBhbmQKaGUgc2VlbXMgdG8gYmUgc2hhcmluZyB0aGUgbGltaXRhdGlvbiBv
ZiB0aGUgYnVpbGQgdG9vbCBvZiBsaW51eC1waHkuIEJ1dCBJCmRvbid0IHRoaW5rIHRoYXQncyBh
IGJpZyBkZWFsLiBFdmVyeSBzdWJzeXN0ZW0gYWxsb3dzIHNlbmRpbmcgZGVwZW5kZW50IHNlcmll
cwphcyBsb25nIGFzIHRoZSBkZXBlbmRlbmN5IGlzIGNsZWFybHkgZGVzY3JpYmVkIGluIHRoZSBj
b3ZlciBsZXR0ZXIgYW5kIG5vdyB3aXRoCmI0LiBTbyBJIGRvbid0IHNlZSB3aHkgbGludXgtcGh5
IHNob3VsZCBiZSBkaWZmZXJlbnQuIElmIHlvdSBjb21iaW5lIGFsbCBwYXRjaGVzCmluIG9uZSBz
ZXJpZXMsIGl0IG1ha2VzIGl0IGltcG9zc2libGUgZm9yIGEgaHVtYW4gcmV2aWV3ZXIgdG8gcmV2
aWV3IGl0CnRob3JvdWdobHkuCgpAdmlub2Q6IENhbiB5b3Ugc2hhcmUgeW91ciB2aWV3IG9uIHNw
bGl0dGluZyB0aGUgc2VyaWVzIHdpdGggZGVwZW5kZW5jeT8KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
