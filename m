Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48AEAC76188
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 13:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQ2ZJ44kophR1Bf4hCig72S9oul2S5NzcoKBCPg1V0A=; b=emZaCVKYtjY3fB
	DI2pxRtFWa8vOizQXWLFh8tNC5Bz/kjnHir1NZbuN8mdneC29e/FzGgMxfamFwjXjjqrBo4Cnbhc4
	4IldFCJgee0lOtwHN1f1B/TthMI31lPCNJexo8VDQ5rHQGWLpXzL9nKjT2/5c3fVH9H2/qH/9BJU+
	EK4QF16bfJuy6UnVD5+B6tPs6ovPV6AMYJAeLgBlxIAahxc1qEatds9iZvtWhC6/j7g8LVqVZ5TWp
	nIqjr9HSQZXUtmfi9UeXvTWCGK+qMbjSd5RTlV7p9QNpHF06tbrt52t+bg1RBH/IRHkYXYWC8x/vR
	f0dKQWE7JLONmyqj8z2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk3aG-004a7a-0F;
	Wed, 05 Apr 2023 13:53:56 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk3aC-004a5q-1b;
	Wed, 05 Apr 2023 13:53:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1680702819; bh=SglPtmd8DYP0j+Ut/cLCKckFgwpz7VD/TiG39V/Slz0=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=RJc6XM3h+sP+QL+qPHQZQKQYEDVMDyCm6LWwqGz/visMGORFSowk98xNRsh2ZJdTN
	 z4wJG9ELeiYt+FCE459mS18zFfUj7mzM/jwZ8gDnoAB0CSfB3Jt3sxOUwMhPlw0BZf
	 Ed0LibDH0ergMPMpr0dXBpsZ8D3lYo5XmPXOwwPA=
Date: Wed, 5 Apr 2023 15:53:39 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume
 keys
Message-ID: <20230405135339.bcdyjdbtynuwf5yz@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230405123813.2272919-1-pbrobinson@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_065352_704132_E6AA6B71 
X-CRM114-Status: GOOD (  20.15  )
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

SGVsbG8gUGV0ZXIsCgpPbiBXZWQsIEFwciAwNSwgMjAyMyBhdCAwMTozODoxM1BNICswMTAwLCBQ
ZXRlciBSb2JpbnNvbiB3cm90ZToKPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4K
PiAKPiBUaGVzZSBhcmUgaW1wbGVtZW50ZWQgdmlhIHJlZ3VsYXIgQURDLCBzbyByZWd1bGFyIHBv
bGxpbmcgaXMgbmVlZGVkLAo+IGZvciB0aGVzZSBrZXlzIHRvIHdvcmsuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gQ28tZGV2ZWxvcGVkLWJ5
OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1Pgo+IFNpZ25lZC1vZmYtYnk6IE9u
ZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFJvYmluc29u
IDxwYnJvYmluc29uQGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4uL2R0cy9yb2NrY2hpcC9yazMzOTkt
cGluZXBob25lLXByby5kdHMgICAgIHwgMjYgKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCj4gaW5kZXggYTA3OTVhMmIx
Y2IxLi5lY2Q0ODA0MGViMGMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwo+IEBAIC0xMCw2ICsxMCw3IEBACj4g
ICAqLwo+ICAKPiAgL2R0cy12MS87Cj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9ncGlv
LWtleXMuaD4KPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2xpbnV4LWV2ZW50LWNvZGVz
Lmg+Cj4gICNpbmNsdWRlICJyazMzOTkuZHRzaSIKPiAgI2luY2x1ZGUgInJrMzM5OS1vcHAuZHRz
aSIKPiBAQCAtMjksNiArMzAsMjYgQEAgY2hvc2VuIHsKPiAgCQlzdGRvdXQtcGF0aCA9ICJzZXJp
YWwyOjExNTIwMG44IjsKPiAgCX07Cj4gIAo+ICsJYWRjLWtleXMgewo+ICsJCWNvbXBhdGlibGUg
PSAiYWRjLWtleXMiOwo+ICsJCWlvLWNoYW5uZWxzID0gPCZzYXJhZGMgMT47Cj4gKwkJaW8tY2hh
bm5lbC1uYW1lcyA9ICJidXR0b25zIjsKPiArCQlrZXl1cC10aHJlc2hvbGQtbWljcm92b2x0ID0g
PDE2MDAwMDA+Owo+ICsJCXBvbGwtaW50ZXJ2YWwgPSA8MTAwPjsKPiArCj4gKwkJYnV0dG9uLXVw
IHsKPiArCQkJbGFiZWwgPSAiVm9sdW1lIFVwIjsKPiArCQkJbGludXgsY29kZSA9IDxLRVlfVk9M
VU1FVVA+Owo+ICsJCQlwcmVzcy10aHJlc2hvbGQtbWljcm92b2x0ID0gPDEwMDAwMD47Cj4gKwkJ
fTsKPiArCj4gKwkJYnV0dG9uLWRvd24gewo+ICsJCQlsYWJlbCA9ICJWb2x1bWUgRG93biI7Cj4g
KwkJCWxpbnV4LGNvZGUgPSA8S0VZX1ZPTFVNRURPV04+Owo+ICsJCQlwcmVzcy10aHJlc2hvbGQt
bWljcm92b2x0ID0gPDMwMDAwMD47CgpJIGRvbid0IGtub3cgYWJvdXQgdGhpcy4uLiBJJ3ZlIHRy
aWVkIHJlYWRpbmcgdm9sdGFnZSB2YWx1ZXMgZnJvbToKCiAgY2QgL3N5cy9idXMvaWlvL2Rldmlj
ZXMvaWlvOmRldmljZTAgKHBhdGggbWF5IGRpZmZlciBvbiB5b3VyIGtlcm5lbCkKCiAgZWNobyAk
KChgY2F0IGluX3ZvbHRhZ2Vfc2NhbGVgKmBjYXQgaW5fdm9sdGFnZTFfcmF3YCkpCgphbmQgSSBn
ZXQgdmFyaW91cyByZWFkaW5ncyBhcm91bmQgdGhlIHZhbHVlIDMwMCBtViBvbiBib3RoIHNpZGVz
IG9mIHRoZQp0aHJlc2hvbGQgd2hlbiBwcmVzc2luZyB0aGUgdm9sIGRvd24ga2V5LiBTbyB0aGlz
IHRocmVzaG9sZCBtYXkgbm90IGJlCmdvb2QgZW5vdWdoIGluIHByYWN0aWNlLgoKVmFsdWVzIEkg
Z2V0IGZvciBzZXZlcmFsIGRpZmZlcmVudCBwdXNoZXMgb2YgdGhlIGJ1dHRvbjoKCiAgMjkzLjU1
NDY4NzUKICAzMjguNzEwOTM3NQogIDMzMi4yMjY1NjI1CiAgMzA0LjEwMTU2MjUKICAyOTcuMDcw
MzEyNQogIDUyMi4wNzAzMTI1CgooSSBoYXZlIHRvIHByZXNzIHF1aXRlIGhhcmQgdG8gZ2V0IGJl
bGxvdyAzMDAgYW5kIHRvIGdldCByZWxpYWJsZSBkZXRlY3Rpb24Kb2Ygdm9sdW1lIGRvd24ga2V5
IHByZXNzKQoKT24gZGV2ZWxvcG1lbnQgdmVyc2lvbiBvZiB0aGUgcGhvbmUsIHRoZSB2YWx1ZSBy
ZXR1cm5lZCBieSBzYXJkYWMgaXMgbGVzcwp2YXJpYWJsZS4gQmFzaWNhbGx5IGVpdGhlciAyOTgu
ODI4MTI1IG9yIDMwMC41ODU5Mzc1IGJ1dCBpdCdzIGFsc28gb24KdGhlIGVkZ2UuCgpJIHN1Z2dl
c3QgcmFpc2luZyB0aGUgdGhyZXNob2xkIHRvIHNvbWV0aGluZyBsaWtlIDYwMCBhbmQgdG8gZG8g
eW91ciBvd24KdGVzdGluZywgdG8gZ2V0IG1vcmUgZGF0YSBwb2ludHMuIFVucHJlc3NlZCB2YWx1
ZSBpcyB+MTc5MS4yMTA5Mzc1IG9uIGJvdGgKcGhvbmVzLCBzbyA0MDAgc3RpbGwgZ2V0cyBhIGxv
dCBvZiBoZWFkcm9vbS4gQW5kIHZvbHVtZSB1cCBpcyBhbHdheXMgPCAxNQppbiBteSB0ZXN0cy4K
Ck90aGVyd2lzZToKClRlc3RlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpraW5k
IHJlZ2FyZHMsCglvLgoKPiArCQl9Owo+ICsJfTsKPiArCj4gIAlncGlvLWtleXMgewo+ICAJCWNv
bXBhdGlibGUgPSAiZ3Bpby1rZXlzIjsKPiAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
IEBAIC00MjksNiArNDUwLDExIEBAICZzZGlvMCB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07
Cj4gIAo+ICsmc2FyYWRjIHsKPiArCXZyZWYtc3VwcGx5ID0gPCZ2Y2NhMXY4X3MzPjsKPiArCXN0
YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gICZzZG1tYyB7Cj4gIAlidXMtd2lkdGggPSA8ND47
Cj4gIAljYXAtc2QtaGlnaHNwZWVkOwo+IC0tIAo+IDIuNDAuMAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
