Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4571D5D695
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 23:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lYR/NGcmfsdxj4AIStDLpDavqn4UC3kOZHRl+8w3K8=; b=Apvl2/7XoZdbZo
	z1f3x4NdZMJcZdaB0UUKpCnMobKrRVBR6SK637ysC/XtWIpA0ib1FlTsG5pB39fMu6eeh6cZb1ecd
	hueBwfQAkkx68tR95rEAQ5y6hzFvjvAsPFsAnIfq2tgvjpFBI66vL6q/YO9ZS2bJZiOmWncIHzAz4
	XSnBjYWqCCaZ1b0uhMQcGjDgQjkhqJ9KAYKf45poSyfljsWFcnp05mS6wAL/KfXNleovXzB2O7cIW
	1WSrjiW7TJb1+dG9cPNx8ZHowiGz33zkKtZhBYZe8MfRgWDHKxcP0n5h4xBCxpiOQECgaBUM/JaPn
	8b1+z1zcQw/gJMr2vSeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Bwc-00000008iMI-3gEb;
	Thu, 07 Nov 2024 23:29:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Buo-00000008hnn-1o2T;
	Thu, 07 Nov 2024 23:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1731022065; bh=IkJAGvDQkZovXD1x3n8hplojH9ac0PufnJnE8gv8k9c=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=YDcb/89fw1nXBP4aHT2wQl02i2QGXRsHIFvmr5knquIfn4RQXgS3a8ii279dvM+Ff
	 HE+h7PO/048ET1Oeissg2gXHTpMxyzSHsU56+PG3+M/d8ZdJ6VB6yuEVBs6hv1QaI6
	 xFsiJ1DMm6dS5fRgoYaDJYQ6/XdKe8bGZcFwh/g8=
Date: Fri, 8 Nov 2024 00:27:45 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0
 ports
Message-ID: <fzrnp55hcmszqcdc6m6qacfv4rka5tlvp3kpll5i6d6fjm2mc5@d6yo5c25gv6i>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Chen-Yu Tsai <wens@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20241025175415.887368-1-wens@kernel.org>
 <pe2ornjaqn24i7e3x64rfdtqbp2c347mc5okgj5y6bfvkwnv6z@jux5yei3vxxa>
 <CAGb2v66WNDVDVqncPNjep3Usqwj2txuXVMxK_Uy0fSgbMFbX_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v66WNDVDVqncPNjep3Usqwj2txuXVMxK_Uy0fSgbMFbX_Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_152750_944662_FAF828C8 
X-CRM114-Status: GOOD (  21.15  )
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

SGksCgpPbiBGcmksIE5vdiAwOCwgMjAyNCBhdCAxMjoxNjo1N0FNIEdNVCwgQ2hlbi1ZdSBUc2Fp
IHdyb3RlOgo+IE9uIE1vbiwgT2N0IDI4LCAyMDI0IGF0IDY6NDfigK9BTSBPbmTFmWVqIEppcm1h
biA8bWVnaUB4ZmYuY3o+IHdyb3RlOgo+ID4KPiA+ID4gKwo+ID4gPiArICAgICAgICAgICAgIHVz
Yl9jb246IGNvbm5lY3RvciB7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInVzYi1jLWNvbm5lY3RvciI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9
ICJVU0ItQyI7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBkYXRhLXJvbGUgPSAiZHVhbCI7
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcC1zaW5rLW1pY3Jvd2F0dCA9IDwxMDAwMDAw
PjsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHBvd2VyLXJvbGUgPSAiZHVhbCI7Cj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICBzaW5rLXBkb3MgPQo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICA8UERPX0ZJWEVEKDUwMDAsIDEwMDAsIFBET19GSVhFRF9VU0JfQ09NTSk+
Owo+ID4KPiA+IFRoZSBib2FyZCBjYW4ndCBzaW5rIHBvd2VyIGZyb20gdGhpcyBwb3J0LiBJdCdz
IGEgc291cmNlIG9ubHkgcG9ydC4gU28gc2luay1wZG9zCj4gPiBjYW4gYmUgbG93ZXIsIHNvIHRo
YXQgaWYgeW91IHBsdWcgdGhpcyBpbnRvIHR5cGUtYyBodWIgYXMgYSBwZXJpcGhlcmFsLCB0aGUg
aHViCj4gPiBkb2Vzbid0IG5lZWQgdG8gcmVzZXJ2ZSA1VyBmb3IgdGhpcyBwb3J0Lgo+ID4KPiA+
IG9wLXNpbmstbWljcm93YXQgY2FuIGFsc28gYmUgbG93ZXIuIFRoZSBwb3J0IHdpbGwgbm90IHNp
bmsgYW55IHBvd2VyIHdoZW4KPiA+IGNvbm5lY3RlZCB0byA1ViBWQlVTIGV4dGVybmFsbHkuCj4g
Pgo+ID4gT3RoZXJ3aXNlIHlvdSBjYW4gcHJvYmFibHkga2VlcCBwb3dlci1yb2xlID0gImR1YWwi
Owo+IAo+IEkgZ3Vlc3MgaXQgc2hvdWxkIGp1c3QgYmUgcG93ZXItcm9sZSA9ICJzb3VyY2UiOwo+
IEFuZCB0aGVuIGRyb3AgYWxsIHRoZSBzaW5rIHJlbGF0ZWQgcHJvcGVydGllcy4KClByb2JhYmx5
IG5vdC4gVGhlIGJvYXJkIGlzIG5vdCBwb3dlcmVkIGZyb20gdGhhdCBwb3J0LCBidXQgSSBzaG91
bGQgc3RpbGwgYmUgYWJsZQp0byBwbHVnIGl0IHZpYSB0aGF0IHBvcnQgdG8gYSBQQywgYW5kIGlu
IHRoYXQgY2FzZSBpdCBzaG91bGQgbm90IGFjdCBhcyBwb3dlcgpzb3VyY2UgKHZidXMgc2hvdWxk
IGJlIGRpc2FibGVkKSwgYmVjYXVzZSBQQydzIHBvcnQgd2lsbCBwcm92aWRlIHBvd2VyLiAoc2F5
CnZpYSBVU0ItQSA8LT4gVVNCLUMgY2FibGUgY29ubmVjdGVkIHRvIFBDJ3MgVVNCIGhvc3QgcG9y
dCkKCkl0IHNob3VsZCBzdGlsbCBiZSBjYXBhYmxlIG9mIGJlaW5nIGluIHBvd2VyIHNpbmsgbW9k
ZSBvbiB0aGF0IHBvcnQsIGJ1dCBpdCB3aWxsCmp1c3Qgbm90IHBoeXNpY2FsbHkgc2luayBhbnl0
aGluZy4gSnVzdCB0aGUgYm9hcmQncyB2YnVzIHdpbGwgYmUgZGlzYWJsZWQuCgpXZSBzaG91bGQg
anVzdCBkZXNjcmliZSB0aGF0IGluIHNpbmsgbW9kZSBpdCB3aWxsIG5vdCBzaW5rIG11Y2ggb2Yg
YW55dGhpbmcuCgo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgc291cmNlLXBkb3MgPQo+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8UERPX0ZJWEVEKDUwMDAsIDMwMDAsIFBE
T19GSVhFRF9VU0JfQ09NTSk+Owo+ID4KPiA+IFRoaXMgcG9ydCBjYW4ndCBzb3VyY2UgM0EuIFUy
MiAoU1k2MjgwQUFDKSBpcyBjb25maWd1cmVkIHZpYSBSc2V0IGZvciAxLjQ0QQo+ID4gbGltaXQu
IFNvIGxldCdzIHNheSAxLjVBLgo+IAo+IFByb2JhYmx5IDEuNEEgdG8gYmUgc2FmZT8KCk9rLgoK
PiA+ID4gKyZ1MnBoeTEgewo+ID4gPiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICt9Owo+
ID4gPiArCj4gPiA+ICsmdTJwaHkxX290ZyB7Cj4gPgo+ID4gTmVlZHM6Cj4gPiAgICAgICAgIHBo
eS1zdXBwbHkgPSA8JnZjYzV2MF9ob3N0PjsKPiAKPiBZb3UgcHJvYmFibHkgbWVhbiB2Y2M1djBf
c3lzPwoKU29ycnksIGlnbm9yZSB0aGlzIHJlcXVlc3QgY29tcGxldGVseS4gSSB3YXMgbWlzLWxv
b2tpbmcgYXQgcXVhcnR6cHJvIERUUywgd2hlbgpyZXZpZXdpbmcgdGhpcyBwYXJ0IG9mIHRoZSBw
YXRjaC4KClRoYW5rIHlvdSwKCW8uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
