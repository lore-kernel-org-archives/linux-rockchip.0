Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1318FC25B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 17:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwimQh17LnXG1852Iw4bf+GuN5m/5t0bx33dyHZKHaA=; b=4NuNIX2hnB1aqM
	ijGIwNLldSemTP6F6DNuhwKrJnOzKdNqdjPMah4KJpzJz2lt2J+qosUY0AX+3zgfoM0pPyM94jV6d
	tSC+24g7Gi7TcyU4jHj2d86cwtLFhjiiJGfHyk23t1lJJxrGIADU57hBQRVGa3OhhIdxSKXXPMUI4
	LUmUM+oxtLIQ7XkFs428hctU1D6sNj7H90b1fMVWlXVj8+o/3Tc4jY8kAy4Q7q2sFHoyo5zF5Zfpx
	w5bt72CpJNhCie+r9j7a3AORjsRPqKhJeIlVxLKvd7LRrh9hd/rRWHl+JRTtAdT4ZQha5B6PV3P0S
	KgWuonZCZx4Visr9nggg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7I07-00000002Cmj-19UZ;
	Wed, 15 May 2024 17:01:11 +0000
Received: from smtp-16.smtpout.orange.fr ([80.12.242.16] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Hzv-00000002CgS-33hq;
	Wed, 15 May 2024 17:01:09 +0000
Received: from [192.168.1.37] ([86.243.17.157])
	by smtp.orange.fr with ESMTPA
	id 7Hzes2damneGh7Hzes8m3C; Wed, 15 May 2024 19:00:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1715792447;
	bh=uAPBiVpF/LesUtYKfiBkex5dpCAGm4bpcdCFjHILMPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=l13p/AzFVdQnSJBQg3ARSek/TirfLo9RIgL6Bf38BtaZl27yEu05RTS4kX39dVSob
	 XJ5Wy+Y0vKojkeQn3Lwu7KoA+DdteKq8UFv0qQiSvibo6ZfhzERIt0B1Pqh/VAE4T6
	 emfGYv39p/JQQN1wbHNHqyxVeVmu7D8kc6Zw5DOOaPj1l9g1AMBsfVebzhgHAl+w48
	 OnywulfPJCXH3t5iXOHpzVo7kehbl+DkzsDJwmx1c94E5qEh4WWhLsOVD62+GOXF4P
	 NKa593bnAzkhTwu7QIz7r33Fx5O5h6M41b/sErZqt3co5RHLs+2Egd511smBLJekvR
	 TcIglie92Rz8w==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Wed, 15 May 2024 19:00:47 +0200
X-ME-IP: 86.243.17.157
Message-ID: <d2c0bc2b-91a1-4533-bd14-3973277b5f6f@wanadoo.fr>
Date: Wed, 15 May 2024 19:00:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pinctrl: rockchip: add rk3308b SoC support
To: Dmitry Yashin <dmt.yashin@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <20240515121634.23945-4-dmt.yashin@gmail.com>
Content-Language: en-MW
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240515121634.23945-4-dmt.yashin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_100100_427807_5F9733BC 
X-CRM114-Status: GOOD (  19.28  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgMTUvMDUvMjAyNCDDoCAxNDoxNiwgRG1pdHJ5IFlhc2hpbiBhIMOpY3JpdMKgOgo+IEFkZCBw
aW5jdHJsIHN1cHBvcnQgZm9yIHJrMzMwOGIuIFRoaXMgcGluIGNvbnRyb2xsZXIgbXVjaCB0aGUg
c2FtZSBhcwo+IHJrMzMwOCdzLCBidXQgd2l0aCBhZGRpdGlvbmFsIGlvbXV4IHJvdXRlcyBhbmQg
M2JpdCBpb211eGVzIHNlbGVjdGVkCj4gdmlhIGdwaW8jI19zZWxfc3JjX2N0cmwgcmVnaXN0ZXJz
LiBTZXQgdGhlbSB1cCBpbiB0aGUgZnVuY3Rpb24KPiByazMzMDhiX3NvY19zZWxfc3JjX2luaXQg
dG8gdXNlIG5ldyAzYml0IGlvbXV4ZXMgb3ZlciBzb21lIDJiaXQgb2xkIG9uZXMuCj4gCj4gRml4
ZXM6IDFmM2UyNWEwNjg4MyAoInBpbmN0cmw6IHJvY2tjaGlwOiBmaXggUkszMzA4IHBpbm11eCBi
aXRzIikKPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgWWFzaGluIDxkbXQueWFzaGluQGdtYWlsLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMgfCAyMDAgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLXJv
Y2tjaGlwLmggfCAgIDEgKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyMDEgaW5zZXJ0aW9ucygrKQoK
SGksCgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5j
IGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYwo+IGluZGV4IGNjNjQ3ZGI3Njky
Ny4uMTVkMjA0NWY5MjllIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJv
Y2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gQEAg
LTYzMiw2ICs2MzIsMTE1IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfbXV4X3JlY2FsY2VkX2Rh
dGEgcmszMzA4X211eF9yZWNhbGNlZF9kYXRhW10gPSB7Cj4gICAJfSwKPiAgIH07Cj4gICAKPiAr
c3RhdGljIHN0cnVjdCByb2NrY2hpcF9tdXhfcmVjYWxjZWRfZGF0YSByazMzMDhiX211eF9yZWNh
bGNlZF9kYXRhW10gPSB7CgpJdCBpcyBsaWtlbHkgdGhhdCBpdCB3b3VsZCByZXF1aXJlIHNvbWUg
b3RoZXIgY2hhbmdlcywgYnV0IGl0IGxvb2tzIHRvIApiZSBhIGdvb2QgY2FuZGlkYXRlIGZvciBz
dGF0aWMgY29uc3Qgc3RydWN0LgoKPiArCXsKPiArCQkvKiBncGlvMWI2X3NlbCAqLwo+ICsJCS5u
dW0gPSAxLAo+ICsJCS5waW4gPSAxNCwKPiArCQkucmVnID0gMHgyOCwKPiArCQkuYml0ID0gMTIs
Cj4gKwkJLm1hc2sgPSAweGYKPiArCX0sIHsKCi4uLgoKPiBAQCAtODgyLDYgKzk5MSwzNSBAQCBz
dGF0aWMgc3RydWN0IHJvY2tjaGlwX211eF9yb3V0ZV9kYXRhIHJrMzMwOF9tdXhfcm91dGVfZGF0
YVtdID0gewo+ICAgCVJLX01VWFJPVVRFX1NBTUUoMiwgUktfUEE0LCAzLCAweDYwMCwgQklUKDE2
ICsgMikgfCBCSVQoMikpLCAvKiBwZG0tY2xrbS1tMiAqLwo+ICAgfTsKPiAgIAo+ICtzdGF0aWMg
c3RydWN0IHJvY2tjaGlwX211eF9yb3V0ZV9kYXRhIHJrMzMwOGJfbXV4X3JvdXRlX2RhdGFbXSA9
IHsKClNhbWUKCj4gKwlSS19NVVhST1VURV9TQU1FKDAsIFJLX1BDMywgMSwgMHgzMTQsIEJJVCgx
NiArIDApIHwgQklUKDApKSwgLyogcnRjX2NsayAqLwo+ICsJUktfTVVYUk9VVEVfU0FNRSgxLCBS
S19QQzYsIDIsIDB4MzE0LCBCSVQoMTYgKyAyKSB8IEJJVCgxNiArIDMpKSwgLyogdWFydDJfcnht
MCAqLwo+ICsJUktfTVVYUk9VVEVfU0FNRSg0LCBSS19QRDIsIDIsIDB4MzE0LCBCSVQoMTYgKyAy
KSB8IEJJVCgxNiArIDMpIHwgQklUKDIpKSwgLyogdWFydDJfcnhtMSAqLwo+ICsJUktfTVVYUk9V
VEVfU0FNRSgwLCBSS19QQjcsIDIsIDB4NjA4LCBCSVQoMTYgKyA4KSB8IEJJVCgxNiArIDkpKSwg
LyogaTJjM19zZGFtMCAqLwoKLi4uCgo+IEBAIC0zNzQ2LDYgKzM5MjksMjEgQEAgc3RhdGljIHN0
cnVjdCByb2NrY2hpcF9waW5fY3RybCByazMzMDhfcGluX2N0cmwgPSB7Cj4gICAJCS5zY2htaXR0
X2NhbGNfcmVnCT0gcmszMzA4X2NhbGNfc2NobWl0dF9yZWdfYW5kX2JpdCwKPiAgIH07Cj4gICAK
PiArc3RhdGljIHN0cnVjdCByb2NrY2hpcF9waW5fY3RybCByazMzMDhiX3Bpbl9jdHJsID0gewoK
VGhpcyBvbmUgY291bGQgYmUgY29uc3RpZnkgd2l0aG91dCBhbnkgb3RoZXIgY2hhbmdlcyBJIHRo
aW5rIChhbmQgYWxzbyAKbWFrZXMgbW9yZSBzZW5zZSBiZWNhdXNlIG9mIGl0cyBmdW5jdGlvbiBw
b2ludGVycykKCkp1c3QgbXkgMmMuCgpDSgoKPiArCQkucGluX2JhbmtzCQk9IHJrMzMwOF9waW5f
YmFua3MsCj4gKwkJLm5yX2JhbmtzCQk9IEFSUkFZX1NJWkUocmszMzA4X3Bpbl9iYW5rcyksCj4g
KwkJLmxhYmVsCQkJPSAiUkszMzA4Yi1HUElPIiwKPiArCQkudHlwZQkJCT0gUkszMzA4QiwKPiAr
CQkuZ3JmX211eF9vZmZzZXQJCT0gMHgwLAo+ICsJCS5pb211eF9yZWNhbGNlZAkJPSByazMzMDhi
X211eF9yZWNhbGNlZF9kYXRhLAo+ICsJCS5uaW9tdXhfcmVjYWxjZWQJPSBBUlJBWV9TSVpFKHJr
MzMwOGJfbXV4X3JlY2FsY2VkX2RhdGEpLAo+ICsJCS5pb211eF9yb3V0ZXMJCT0gcmszMzA4Yl9t
dXhfcm91dGVfZGF0YSwKPiArCQkubmlvbXV4X3JvdXRlcwkJPSBBUlJBWV9TSVpFKHJrMzMwOGJf
bXV4X3JvdXRlX2RhdGEpLAo+ICsJCS5wdWxsX2NhbGNfcmVnCQk9IHJrMzMwOF9jYWxjX3B1bGxf
cmVnX2FuZF9iaXQsCj4gKwkJLmRydl9jYWxjX3JlZwkJPSByazMzMDhfY2FsY19kcnZfcmVnX2Fu
ZF9iaXQsCj4gKwkJLnNjaG1pdHRfY2FsY19yZWcJPSByazMzMDhfY2FsY19zY2htaXR0X3JlZ19h
bmRfYml0LAo+ICt9OwoKLi4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
