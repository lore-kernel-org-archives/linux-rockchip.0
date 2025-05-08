Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5C65C3ABC6
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 17:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlY+7LwklxRCcIpvUv2ykJmFgNBe3Tnb60BO2b9i+jk=; b=X7PqiQWCOJYgBD
	dBkuda/x4NdZTU1XOf+9mLSV4KwHMnbMhQij1PDHqcHE82tNI9UbUutB6DmhTRDgjvoUDQsYx+cIB
	uQjALNZT5S8pFI/1hrfETdA1bLBo2vQuA4HgGKn0lSryvrnTzkspXIAuUBQe7B280k7RS/VntCJyU
	w/Ps2kEIbgUoSY+f3FsCp6jWty207x4CYOLbYUGkVnsQMqKdBql6qzQifZLgwmCG28rUu6nqvyO9D
	Abtzf8X44Q01WxhMxN5PVu5mIqK/qYtc/IA31I41TGJ8KCCytmqaaGn17SEb94xqMiChB9tOgA8L7
	d2rHDAJk/bTaMxt7J9jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD4vs-00000001NDu-0o3h;
	Thu, 08 May 2025 17:21:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD45d-00000001Hln-3tbi;
	Thu, 08 May 2025 16:27:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DA93560008;
	Thu,  8 May 2025 16:27:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E909C4CEE7;
	Thu,  8 May 2025 16:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746721636;
	bh=akmsc7Idl/CS0YX85M/o15zpf4CB1w+47LOq+bjRS/Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X5/5xfBRDFswxUWUryDcM0QjyXtAEY8zLiRXY4VPEOEM/xStV26trqrotb89c9/Do
	 VME/iaDiEdNFxRk0GE19jJIdjvnB1KDSXwjBRzAdP491FP5N3gae5Jz/KbxMb1K+lN
	 fXDy4W/oBRhkXNCaekaWj31auEzVIvf47OoTbcuJqgWJVVj1oehXZfJCzHtuqs28Al
	 U5qE4ureMfEPxPc4O6hCo+ULcn6MOCT1MMszpouHZurWM/0aLG7Nh5GAe6SUasPWYN
	 gbs2yXjMZ+fNDTSR3GjS65d5b7VP9tgstySbba0OWO0PmDkULBO1su5ts+TZLK/0pJ
	 f1UQMp17UvSWA==
Received: by pali.im (Postfix)
	id 4CD036FE; Thu,  8 May 2025 18:27:13 +0200 (CEST)
Date: Thu, 8 May 2025 18:27:13 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: Niklas Cassel <cassel@kernel.org>, lpieralisi@kernel.org, kw@linux.com,
	bhelgaas@google.com, heiko@sntech.de,
	manivannan.sadhasivam@linaro.org, yue.wang@amlogic.com,
	neil.armstrong@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
Message-ID: <20250508162713.tbdeggybijz36dia@pali>
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
 <20250507163620.53v5djmhj3ywrge2@pali>
 <b364eed2-047d-4c74-9f30-45291305bc4b@163.com>
 <aBybUYYhrmlOeLAj@ryzen>
 <25c89e3c-9625-49ac-b816-945ab9145f87@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25c89e3c-9625-49ac-b816-945ab9145f87@163.com>
User-Agent: NeoMutt/20180716
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

T24gRnJpZGF5IDA5IE1heSAyMDI1IDAwOjEyOjI0IEhhbnMgWmhhbmcgd3JvdGU6Cj4gT24gMjAy
NS81LzggMTk6NTMsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiBIZWxsbyBIYW5zLAo+ID4gCj4g
PiBPbiBUaHUsIE1heSAwOCwgMjAyNSBhdCAxMjo0NzoxMkFNICswODAwLCBIYW5zIFpoYW5nIHdy
b3RlOgo+ID4gPiBPbiAyMDI1LzUvOCAwMDozNiwgUGFsaSBSb2jDoXIgd3JvdGU6Cj4gPiA+ID4g
Cj4gPiA+ID4gU29ycnksIGJ1dCBJIHN0b3BwZWQgZG9pbmcgYW55IHRlc3Rpbmcgb2YgdGhlIGFh
cmR2YXJrIGRyaXZlciB3aXRoIHRoZQo+ID4gPiA+IG1haW5saW5lIGtlcm5lbCBhZnRlciBQQ0kg
bWFpbnRhaW5lcnMgc3RvcHBlZCB0YWtpbmcgZml4ZXMgZm9yIHRoZQo+ID4gPiA+IGRyaXZlciBh
bmQgc3RvcHBlZCByZXNwb25kaW5nLgo+ID4gPiA+IAo+ID4gPiA+IEknbSBub3QgZ29pbmcgdG8g
ZGVidWcgc2FtZSBpc3N1ZXMgYWdhaW4sIHdoaWNoIEkgaGF2ZSBhbmFseXplZCwKPiA+ID4gPiBw
cmVwYXJlZCBmaXhlcywgc2VudCBwYXRjaGVzIGFuZCBzZWUgbm8gcHJvZ3Jlc3MgdGhlcmUuCj4g
PiA+ID4gCj4gPiA+ID4gU2VlbXMgdGhhdCB0aGVyZSBpcyBhIHN0YXR1cyBxdW8sIGFuZCBJJ20g
bm90IGdvaW5nIHRvIGNoYW5nZSBpdC4KPiA+ID4gCj4gPiA+IERlYXIgTmlrbGFzLAo+ID4gPiAK
PiA+ID4gRG8geW91IGhhdmUgYW55IG9waW5pb24gb24gUGFsaSdzIHJlcGx5PyBTaG91bGQgcGF0
Y2ggMy8zIGJlIGRpc2NhcmRlZD8KPiA+IAo+ID4gV2hpbGUgSSBkbyBoYXZlIGFuIG9waW5pb24s
IEknbSBub3QgZ29pbmcgdG8gc2hhcmUgaXQgb24gYSBwdWJsaWMgbWFpbGluZwo+ID4gbGlzdCA6
KQo+ID4gCj4gPiBXaXRoIHJlZ2FyZHMgdG8geW91ciBwYXRjaCAzLzMsIEkgdGhpbmsgdGhhdCB5
b3VyIHBhdGNoIGxvb2tzIGZpbmUsIGJ1dCBpZgo+ID4gdGhlIGRyaXZlciBtYWludGFpbmVyIGRv
ZXMgbm90IHdhbnQgdGhlIGNsZWFudXAgZm9yID5yZWFzb25zKiwgdGhhdCBpcyB0b3RhbGx5Cj4g
PiBmaW5lIHdpdGggbWUuIEhvd2V2ZXIsIEknbSBub3QgYSBQQ0kgbWFpbnRhaW5lciwgc28gbXkg
b3BpbmlvbiBkb2VzIG5vdCByZWFsbHkKPiA+IG1hdHRlci4gSXQncyB0aGUgUENJIG1haW50YWlu
ZXJzIHRoYXQgZGVjaWRlLgo+ID4gCj4gCj4gRGVhciBOaWtsYXMsCj4gCj4gVGhhbmsgeW91IHZl
cnkgbXVjaCBmb3IgeW91ciByZXBseS4gTGV0J3Mgd2FpdCBmb3IgdGhlIGRlY2lzaW9uIG9mIHRo
ZSBQQ0kKPiBtYWludGFpbmVyIG9uIHRoaXMgc2VyaWVzIG9mIHBhdGNoZXMuCj4gCj4gQmVzdCBy
ZWdhcmRzLAo+IEhhbnMKPiAKCkkgZG8gbm90IHNlZSBhbnkgY2xlYW51cCBpbiAzLzMuIFRoZXJl
IGlzIGp1c3QgYSByZW1vdmFsIG9mIHRoZSBzdGVwCm5lZWRlZCBmb3IgY29uZmlndXJpbmcgdGhl
IGNvbnRyb2xsZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
