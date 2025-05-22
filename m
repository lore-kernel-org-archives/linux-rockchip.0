Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31982C54E90
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 12:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SWKD3p7AcZs7jj5+N4v02KpeRmto2p+PDcIEV9NJDA=; b=F+m2Wzvp0V2tJl
	kVpp02F0IoiV0NqMYhxhDqxnDCrKBV5z2YZzi0goO4kphv3CYqERAFYZcTjN9fvKxYEsxwONISzag
	kdEB09h4JhimBjlKk8YowLosdFs4kOTTvL4gH7UQ3hud+z94qSdCnL9VEqMo+1b8Pxgi+Ik8XGzOh
	q5L8jS0cCF0OuZhI7+zHfoiKuvDq95im+BZRuyYTTTW0jobCdCruvPu1spgmIUmKID7NSaXtXRAq+
	m15V89MEocObG/pDoKCEIbBmsqRgKw2nS7LTt2lTMj3s6tKPmNi05lDxYkvdPkKGo8vJNUU2pIMg0
	3r0IMy0YkZ0dGLcZxCKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4wy-00000000z7n-3rv7;
	Thu, 22 May 2025 12:23:04 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4se-00000000ybV-0ib8;
	Thu, 22 May 2025 12:18:37 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 4D218C405A45;
	Thu, 22 May 2025 14:18:34 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 4D218C405A45
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,  Dafna Hirschfeld
 <dafna@fastmail.com>,  Mauro Carvalho Chehab <mchehab@kernel.org>,  Heiko
 Stuebner <heiko@sntech.de>,  linux-media@vger.kernel.org,
  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
  Jacopo Mondi <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman
 <megi@xff.cz>,  Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
  stefan.klug@ideasonboard.com
Subject: Re: [PATCH] RKISP1: correct histogram window size
In-Reply-To: <174784811736.14042.11404187248848039485@calcite> (Paul Elder's
	message of "Wed, 21 May 2025 19:21:57 +0200")
References: <m3tt5u9q7h.fsf@t19.piap.pl> <aB31Eg6oRpcHHEsb@pyrite.rasen.tech>
	<m3jz6b8lb1.fsf@t19.piap.pl>
	<20250521101042.GC12514@pendragon.ideasonboard.com>
	<174784811736.14042.11404187248848039485@calcite>
Date: Thu, 22 May 2025 14:18:34 +0200
Message-ID: <m3wma87s9x.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_051836_370249_C8ED7C0F 
X-CRM114-Status: GOOD (  12.13  )
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

UGF1bCBFbGRlciA8cGF1bC5lbGRlckBpZGVhc29uYm9hcmQuY29tPiB3cml0ZXM6Cgo+PiA+IFNl
dHRpbmcgIjIiLCB0aGUgc2FtZSBpbnB1dCBzY2VuZToKPj4gPiAzMkUxMjQwMDogMTVoCj4+ID4g
MzJFMTI0MTQ6IDAgMCAwIDIxOTQgMTI2MyAxMDk2IDE0MDYgMjUyOCA1MjI4IDUwNTIgNDI5MSA2
MzU0IDgzMjIgNjk0MyAxMzIwMSA0NjA1MjIKPj4gPiB3aGljaCBzdW1zIHRvIDUxODQwMCA9IDE5
MjAqMTA4MC80Lgo+Cj4gWWVzLCB0aGVzZSBsb29rIGdvb2QgKGFsdGhvdWdoIEkgdGhpbmsgeW91
IG1pZ2h0J3ZlIGNvcHkmcGFzdGVkIHRoZSB3cm9uZwo+IG51bWJlciBmb3IgdGhlIHN1bSkKCkRl
ZmluaXRlbHkgOi0pCgo+IE9oPyBJIHdvdWxkJ3ZlIGV4cGVjdGVkIDJeMjAtMSA9IDEwNDg1NzUg
dG8gYmUgdGhlIG1hZ2ljIG51bWJlciwgYnV0IG9rIEkKPiBzdXBwb3NlIHRoZSBoYXJkd2FyZSBj
YXBzIGF0IDEwNDg1NTkgaW5zdGVhZC4gSXQgcHJvYmFibHkgb3ZlcmZsb3dlZCBhbmQgdGhhdCdz
Cj4gd2h5IHRoZSBzdW0gaXMgc28gbG93LgoKSSBkb24ndCBrbm93LiBJdCBzZWVtcyBpdCBjb3Vu
dHMgYWxsIHJpZ2h0IHVudGlsIHJlYWNoaW5nIHRoaXMgbWFnaWMKMTA0ODU1OSA9IDB4RkZGRUYu
IFRoZW4gaXQgc3RvcHMgYXQgdGhpcyB2YWx1ZSBhbmQgc3RheXMgdGhlcmUuCgo+PiA+IDMyRTEy
NDAwOiBEaAo+PiA+IDMyRTEyNDE0OiAwIDAgMCAwIDAgMCAxODQgMzA1OSAxMTk3MCA3NTI5OCAx
MTQ4OTggMjExNDQ0IDQyOTc3MiA0Mzk5MjIgNDAwMzU4IDM4NjY5NQo+PiA+IHRvdGFsID0gMjA3
MzYwMC4gQnV0IGRvbid0IHJlbHkgb24gaXQgdG9vIG11Y2gsIHRoZSAiMSIgaGFzIHByb2JsZW1z
Lgo+Cj4gVGhhdCdzIGludGVyZXN0aW5nLiBNeSBndWVzcyB3b3VsZCBiZSB0aGF0IGluIHByYWN0
aWNlIGEgZGl2aWRlciBvZiAxIHdvdWxkCj4gc3RpbGwgd29yayBhcyBsb25nIGFzIHlvdSBtYWtl
IHN1cmUgdGhhdCBpdCBkb2Vzbid0IG92ZXJmbG93LiBNYXliZSB0aGUgdXNhZ2UKPiBkb2N1bWVu
dGF0aW9uIHdhcyBiYXNlZCBvbiBhIHJ1bGUtb2YtdGh1bWIuCgpJIGRvbid0IGtub3cuIFRCSCBJ
IGd1ZXNzIEkgaGF2ZW4ndCB0ZXN0ZWQgaXQgd2l0aCBtYWlubGluZSBrZXJuZWwgKGFuZApSSzFJ
U1AgZHJpdmVyKSwgb25seSB3aXRoIHRoZSBOWFAgVlZDQU0gZHJpdmVyLiBCdXQgd2l0aCBzdGVw
c2l6ZSA9IDEKSSB3YXMgZ2V0dGluZyBjZXJ0YWluIGRpZmZlcmVuY2VzIGluIHRvdGFsIG51bWJl
ciBvZiBwaXhlbHMgKG5vdCBiaWcKb25lcyBhbmQgbm90IGFsd2F5cyAtIG1heWJlIDEwJSBvZiBm
cmFtZXMgb3Igc28sIG9yIGxlc3MpLiBXaXRob3V0CnJlYWNoaW5nIHRoZSBtYWdpYyB2YWx1ZSwg
SSBtZWFuLgoKSWYgaWYgd2FzIHNpbXBsZSBjYXAgYXQgMTA0ODU1OSB3ZSBjb3VsZCBjb3JyZWN0
IGl0IGluIHNvZnR3YXJlICh1cCB0bwoyIE1waXhlbHMpIC0gdGhlcmUgY291bGQgb25seSBiZSBv
bmUgYmluIG92ZXJmbG93aW5nLgotLSAKS3J6eXN6dG9mICJDaHJpcyIgSGHFgmFzYQoKU2llxIcg
QmFkYXdjemEgxYF1a2FzaWV3aWN6ClByemVteXPFgm93eSBJbnN0eXR1dCBBdXRvbWF0eWtpIGkg
UG9taWFyw7N3IFBJQVAKQWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYgV2Fyc3phd2EKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
