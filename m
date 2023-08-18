Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1E8DEE499B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Aug 2023 21:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kA0dgxobn3mL3PThNiq/X23bS7bwbGGQeb/uEpcUmQY=; b=B1GopPFaROVPj+
	xGq/B37pxNJ1FD68ptAjzw/vBSazxhTUiwcmkJr18e9eT5RpsSBYU5XP3ATzTiUYKsJdApiO43uJf
	G4s/5xw48ehcceT7Cb3Ygm+2xvaOffsd0wbchMkWsaV8UqKHjLyaay/5Q0eDbOJq+VEylnvz3d9Tx
	KGLVHcrsAcl1snCQB/qh+Un4WCB/c8sIBRErq4BO/mTsYShCFYQd+EeQqW0KBOC50q6np46zzf4dp
	KZM5GbMy140HU6kSuT/4zVDIFC2u25c1xsQ4UnTTXqDjoS+5BTlwPQjVlsLqboFIeCM2pqnY0j/1z
	7xXW9/YAjeX5UI5jQ7Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX6xb-00A31U-2D;
	Fri, 18 Aug 2023 21:24:47 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX6xX-00A30Z-0j;
	Fri, 18 Aug 2023 21:24:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1692393876; bh=M+DHT0rB/MweS/ca6aK+aZ+iPETlJQF4lcQpM2Cr3a8=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=GWFF9yOrac0IUrCu6n6Sq+HmdNFBO2Dh706GYFkKkyE7dgDZRcP+ljrlUsyrh+Qx1
	 LjK2qPEPV8Oo6VtISQZtJbHe/0GOJF5QSnNUl1Nkcbn9n+en1fQczIDG9IWqTySrrL
	 eu4jbLYF5Sybqd4j47Opmwzdb5chgBwkm6E2gaZw=
Date: Fri, 18 Aug 2023 23:24:36 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Muhammed Efe Cetin <efectn@6tel.net>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, 
	sebastian.reichel@collabora.com, jonas@kwiboo.se
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Orange Pi 5
Message-ID: <fjlgsejdzef3iap5qamzwp46hiqrjundlkrpbtlh23ldvnjstu@effddwoml7k5>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Muhammed Efe Cetin <efectn@6tel.net>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, 
	sebastian.reichel@collabora.com, jonas@kwiboo.se
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <cover.1692372351.git.efectn@6tel.net>
 <201e8df24c3a2f25c13d3f1d129f8be4fe2eb97a.1692372351.git.efectn@6tel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201e8df24c3a2f25c13d3f1d129f8be4fe2eb97a.1692372351.git.efectn@6tel.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_142444_026804_AC3DAD77 
X-CRM114-Status: GOOD (  10.73  )
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

SGkgTXVoYW1tZWQsCgpPbiBGcmksIEF1ZyAxOCwgMjAyMyBhdCAwNzowNTo1MVBNICswMzAwLCBN
dWhhbW1lZCBFZmUgQ2V0aW4gd3JvdGU6Cj4gQWRkIGluaXRpYWwgc3VwcG9ydCBmb3IgT1BpNSB0
aGF0IGluY2x1ZGVzIHN1cHBvcnQgZm9yIFVTQjIsIFBDSWUyLCBTYXRhLAo+IFNkbW1jLCBTUEkg
Rmxhc2gsIFBNSUMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTXVoYW1tZWQgRWZlIENldGluIDxlZmVj
dG5ANnRlbC5uZXQ+Cj4KPiBbLi4uXQo+Cj4gKwo+ICsJYWRjLWtleXMgewo+ICsJCWNvbXBhdGli
bGUgPSAiYWRjLWtleXMiOwo+ICsJCWlvLWNoYW5uZWxzID0gPCZzYXJhZGMgMT47Cj4gKwkJaW8t
Y2hhbm5lbC1uYW1lcyA9ICJidXR0b25zIjsKPiArCQlrZXl1cC10aHJlc2hvbGQtbWljcm92b2x0
ID0gPDE4MDAwMDA+Owo+ICsJCXBvbGwtaW50ZXJ2YWwgPSA8MTAwPjsKPiArCj4gKwkJYnV0dG9u
LXJlY292ZXJ5IHsKPiArCQkJbGFiZWwgPSAiUmVjb3ZlcnkiOwo+ICsJCQlsaW51eCxjb2RlID0g
PEtFWV9WRU5ET1I+Owo+ICsJCQlwcmVzcy10aHJlc2hvbGQtbWljcm92b2x0ID0gPDEwMDA+OwoK
SSBjYWxjdWxhdGVkIDE4MDAuICgxLjhlNiAqIDEwIC8gMTBlMykKCj4gKwkJfTsKPiArCX07Cj4g
Kwo+Cj4gWy4uLl0KPgo+ICsKPiArCXZjY18xdjFfbmxkb19zMzogdmNjLTF2MS1ubGRvLXMzLXJl
Z3VsYXRvciB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ICsJCXJlZ3Vs
YXRvci1uYW1lID0gInZjY18xdjFfbmxkb19zMyI7Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsK
PiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwx
MTAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMTAwMDAwPjsKPiArCQl2
aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiArCX07CgpUaGlzIGlzIHN0aWxsIHdyb25nLiB2
Y2NfMXYxX25sZG9fczMgaXMganVzdCBhbGlhcyBmb3IgZGNkYy1yZWc2LgoKPiArJmkyYzIgewo+
ICsJc3RhdHVzID0gIm9rYXkiOwo+ICsKPiArCXZkZF9ucHVfczA6IHZkZF9ucHVfbWVtX3MwOiBy
ZWd1bGF0b3JANDIgewo+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscms4NjAyIjsKPiArCQly
ZWcgPSA8MHg0Mj47Cj4gKwkJZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciA9IDwxPjsKPiAr
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbnB1X3MwIjsKPiArCQlyZWd1bGF0b3ItYWx3YXlzLW9u
Owo+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDU1MDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8OTUwMDAwPjsKPiArCQly
ZWd1bGF0b3ItcmFtcC1kZWxheSA9IDwyMzAwPjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2M1djBf
c3lzPjsKPiArCj4gKwkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gKwkJCXJlZ3VsYXRvci1vZmYt
aW4tc3VzcGVuZDsKPiArCQl9Owo+ICsJfTsKPiArfTsKPiArCj4gKyZpMmM2IHsKPiArCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JmkyYzZtM194ZmVyPjsKPiAr
CXN0YXR1cyA9ICJva2F5IjsKPiArCj4gKwloeW04NTYzOiBydGNANTEgewo+ICsJCWNvbXBhdGli
bGUgPSAiaGFveXUsaHltODU2MyI7Cj4gKwkJcmVnID0gPDB4NTE+Owo+ICsJCSNjbG9jay1jZWxs
cyA9IDwwPjsKPiArCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiaHltODU2MyI7Cj4gKwkJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8Jmh5bTg1NjNfaW50PjsKPiAr
CQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMD47Cj4gKwkJaW50ZXJydXB0cyA9IDxSS19QQjAg
SVJRX1RZUEVfTEVWRUxfTE9XPjsKPiArCQl3YWtldXAtc291cmNlOwo+ICsJfTsKPiArfTsKPiAr
Cj4gKyZtZGlvMSB7Cj4gKwlyZ21paV9waHkxOiBldGhlcm5ldC1waHlAMSB7Cj4gKwkJY29tcGF0
aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7Cj4gKwkJcmVnID0gPDB4MT47Cj4g
Kwl9Owo+ICt9Owo+ICsKPiArJnBjaWUyeDFsMiB7Cj4gKwlyZXNldC1ncGlvcyA9IDwmZ3BpbzMg
UktfUEQxIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsJdnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNf
cGNpZTIwPjsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZwaW5jdHJsIHsKPiAr
CWdwaW8tZnVuYyB7Cj4gKwkJbGVkc19ncGlvOiBsZWRzLWdwaW8gewo+ICsJCQlyb2NrY2hpcCxw
aW5zID0gPDAgUktfUEEyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICsJCX07Cj4g
Kwl9Owo+ICsKPiArCWh5bTg1NjMgewo+ICsJCWh5bTg1NjNfaW50OiBoeW04NTYzLWludCB7Cj4g
KwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQjAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9u
ZT47Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICsJdXNiLXR5cGVjIHsKPiArCQl1c2JjMF9pbnQ6IHVz
YmMwLWludCB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QRDMgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfdXA+Owo+ICsJCX07Cj4gKwo+ICsJCXR5cGVjNXZfcHdyZW46IHR5cGVjNXYtcHdy
ZW4gewo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEMwIFJLX0ZVTkNfR1BJTyAmcGNmZ19w
dWxsX25vbmU+Owo+ICsJCX07Cj4gKwl9Owo+ICt9Owo+ICsKPiArJnNhcmFkYyB7Cj4gKwl2cmVm
LXN1cHBseSA9IDwmYXZjY18xdjhfczA+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsK
PiArJnNkbW1jIHsKPiArCW1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsKPiArCW5vLXNkaW87
Cj4gKwluby1tbWM7Cj4gKwlidXMtd2lkdGggPSA8ND47Cj4gKwljYXAtbW1jLWhpZ2hzcGVlZDsK
CklzIHRoaXMgdXNlZnVsIGZvciBhbnl0aGluZywgd2hlbiB5b3UgaGF2ZSBuby1tbWMgc3BlY2lm
aWVkPwoKPiArCWNhcC1zZC1oaWdoc3BlZWQ7Cj4gKwlkaXNhYmxlLXdwOwo+ICsJc2QtdWhzLXNk
cjEwNDsKPiArCXZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3NkX3MwPjsKPiArCXZxbW1jLXN1cHBs
eSA9IDwmdmNjaW9fc2RfczA+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKCldpdGgg
dGhlIGFib3ZlIHJlZ3VsYXRvciBpc3N1ZSBmaXhlZDoKClJldmlld2VkLWJ5OiBPbmTFmWVqIEpp
cm1hbiA8bWVnaUB4ZmYuY3o+CgooSSByZXZpZXdlZCBqdXN0IGZvciBzY2hlbWF0aWMgPC0+IERU
IGNvcnJlc3BvbmRlY2UpCgpraW5kIHJlZ2FyZHMsCglvLgoKPiAtLSAKPiAyLjQxLjAKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
