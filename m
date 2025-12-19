Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6264ED7876A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 13:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5qJxJY9fEIh+RaHDc0jaXpkEepWadDchl91M08UcAM=; b=n7EVaCaQd29zdt
	aO2Yj02tKXME8pupf0XUygcjzeOrlH6HKOs4sdrh8Y178Bj0c3agHpz0E+1HHnkyskAGGy/UZhAGO
	8QTB1rTLXmdMBr2mxQCwzcP8AMtcH/wG1ZjH9ncDT3V7Lxk5/lQ12sCRwcej2ivT1ta0MeOfKayWZ
	ynd62jbg1aWmBICBK5aHlHLW63C+C4WOs6E/gga+HtZA1Ls9zIK1hoPG/vpgpG1kxcVuTfuun3AIq
	+5YNasH4Oohy1kQxoN4gGMz023v5wyra1XFLEEvPK9z7CreKLfuRs0GGStw9L2PZpq+rxUYN3hc1r
	NPQHtVusNSmtk7gxhW6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWaBp-0000000AKnt-1kuE;
	Fri, 19 Dec 2025 13:06:37 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWaBh-0000000AKk5-39nw;
	Fri, 19 Dec 2025 13:06:31 +0000
X-QQ-mid: zesmtpip2t1766149539t952d8a5d
X-QQ-Originating-IP: jY9hh+hZRftMelyYq4qMI68uWxnYw+8R5DaNR3RP260=
Received: from [IPV6:240f:10b:7440:1:13e:d253: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 19 Dec 2025 21:05:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9508836906846272605
Message-ID: <0758EFC1271A57A7+ededcd65-5064-479b-b4c0-1a2765d05a37@radxa.com>
Date: Fri, 19 Dec 2025 22:05:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable both 2.5GbE ports on Rock
 5T
To: =?UTF-8?Q?Martin_Holovsk=C3=BD_=28Probably_Nothing_s=2Er=2Eo=2E=29?=
 <mh@probably.group>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <034BDB37-34FB-441F-B79E-1631CA501576@probably.group>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <034BDB37-34FB-441F-B79E-1631CA501576@probably.group>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NrJHW3hvBPkCeDB2sAP+7WW8XTBwRLnQuq2YtY5vgOoHuLwAr7x10aNL
	IFmRtakVQS6K8ZGKmJS+P3s370PjegiAMctkboy5uAxJR5HlQu2fKDIWBT2uIZQrh2BMUKD
	StF+2IWNISuYqWAZHANrW6esBKXcpPjH8vEhel8uriXOgt1bJB0kY8xBIHWNXgS2p5dPoYc
	IYyByqETQh5xbYPsqbDOkGnPhrqDP+bF+Hz8iAUREyFGsL7m3ORwVyUIbGcZuY+JormO9iC
	Ndmtu6uOqGidca6WNegVurExUmR7qHj+oy+Jf/a6apOyiVLo3IFi5WXbBjfrQLTgbIDofgS
	P2rcue1XNsybYFvlIChqd3vlW5o2DQrK4SvQzBtPJVFe3QzJYQA5nzAf2hqFZ3RlZQsnDa6
	XQ7dVbjlqNmEN4FmHkyfO2ru1sE/O959fxOkFOYgfYBKTLreXXgcMm3Sz+qTXDEJiCcDX+s
	PASlhVztfD3v/aQ+G4uQkwxF7pCDg3LpivoX31lC5QQGri2PbcV/czeFORvJwyuzByp9L/Z
	Nrj2P8kz6NFZNkM5VRugD2Dmm+ECFqRzckWQVTVW0Dp2da+1fqtvPit/zb63hGJJc7bAchX
	xJ3UPOpLtiQA6sNLsWLkNj751UNtMQP7uCDVJzlz5cy3/qbWEFjcTlTDqDIzzB/7Lve3GcG
	wcwQ/aDUMxdapX1AF6hEhkgAKNPx01BktvN2iqJDVhsu7S5L98OjN4jKmUKY437fWXrA7iy
	qy96Co/QywX4mRAWn5Ee0ETZIfc+ul+xb7vlxjRvChxhQGOxbFNqGc0wGeQbZ/MT6fSi8RD
	7+M11pNWu2+NyM+cMKIW0zGwJLjBTlgUK9if7lDXvL0uW3+XCnSc7tWKZ3yr0nbrWe52CKi
	CAhRZ/E9DL5glXKHfAYg82yffSO75z11fb3Umsx06yoH4FBOp+rBqI2WfBxTXbdOBBdjSvp
	9sOsu765+gU30RKUtJl/jz2nhakCc0u5gnH5CKd/5ROtX2g==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_050630_677941_845B4626 
X-CRM114-Status: GOOD (  16.84  )
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

SGkgTWFydGluLAoKUGxlYXNlIGNoZWNrCiAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi01YnAtNXQuZHRzaT9oPXY2LjE4I240NjkKCkJl
c3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kKUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBD
by4sIEx0ZC4KCk9uIDEyLzE4LzI1IDE1OjI3LCAiTWFydGluIEhvbG92c2vDvSAoUHJvYmFibHkg
Tm90aGluZyBzLnIuby4pIiB3cm90ZToKPiBUaGUgUmFkeGEgUm9jayA1VCBib2FyZCBmZWF0dXJl
cyB0d28gUlRMODEyNUIgMi41R2JFIEV0aGVybmV0IGNvbnRyb2xsZXJzCj4gY29ubmVjdGVkIHZp
YSBQQ0llIGxhbmVzIHBjaWUyeDFsMCAoZmUxNzAwMDApIGFuZCBwY2llMngxbDIgKGZlMTkwMDAw
KS4KPiBDdXJyZW50bHkgb25seSBvbmUgaW50ZXJmYWNlIGlzIGZ1bmN0aW9uYWwgYmVjYXVzZSB0
aGUgUENJZSBjb250cm9sbGVyCj4gbm9kZXMgbGFjayB0aGUgbmVjZXNzYXJ5IHJlc2V0IEdQSU8g
Y29uZmlndXJhdGlvbi4KPiAKPiBXaXRob3V0IHRoZSByZXNldC1ncGlvcyBwcm9wZXJ0eSwgdGhl
IFJUTDgxMjVCIFBIWXMgcmVtYWluIGluIHJlc2V0IHN0YXRlCj4gYW5kIGFyZSBub3QgZW51bWVy
YXRlZCBieSB0aGUgUENJZSBidXMuIFRoaXMgcmVzdWx0cyBpbiBvbmx5IG9uZSBFdGhlcm5ldAo+
IGludGVyZmFjZSBiZWluZyBkZXRlY3RlZCwgb3Igbm9uZSBhdCBhbGwgZGVwZW5kaW5nIG9uIFUt
Qm9vdCBpbml0aWFsaXphdGlvbi4KPiAKPiBUaGlzIHBhdGNoIGFkZHMgdGhlIG1pc3NpbmcgY29u
ZmlndXJhdGlvbiBmb3IgYm90aCBQQ0llIGNvbnRyb2xsZXJzOgo+IC0gRW5hYmxlcyBib3RoIHBj
aWUyeDFsMCBhbmQgcGNpZTJ4MWwyIG5vZGVzIChzdGF0dXMgPSAib2theSIpCj4gLSBDb25maWd1
cmVzIHJlc2V0IEdQSU9zIChHUElPNF9QQTUgYW5kIEdQSU8zX1BCMCByZXNwZWN0aXZlbHkpCj4g
LSBBZGRzIGNvcnJlc3BvbmRpbmcgcGluY3RybCBkZWZpbml0aW9ucwo+IAo+IFdpdGggdGhpcyBj
aGFuZ2UsIGJvdGggMi41R2JFIGludGVyZmFjZXMgYXJlIHByb3Blcmx5IGRldGVjdGVkIGFuZAo+
IGZ1bmN0aW9uYWwgb24gdGhlIFJvY2sgNVQuCj4gCj4gVGVzdGVkIG9uIFJhZHhhIFJvY2sgNVQg
djEuMiBydW5uaW5nIExpbnV4IDYuMTIuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFydGluIEhvbG92
c2t5IDxtaEBwcm9iYWJseS5ncm91cD4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0gU29ydGVk
IHBjaWUgbm9kZXMgYWxwaGFudW1lcmljYWxseQo+IC0gU29ydGVkIHBpbmN0cmwgbm9kZXMgYWxw
aGFudW1lcmljYWxseQo+IC0gQWRkZWQgU2lnbmVkLW9mZi1ieSBsaW5lCj4gCj4gICAuLi4vYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNXQuZHRzICAgICAgfCAyOCArKysrKysrKysrKysr
KysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+IAo+ICAgCQl9Owo+
ICsKPiArCQlwY2llMl8yX3JzdDogcGNpZTItMi1yc3Qgewo+ICsJCQlyb2NrY2hpcCxwaW5zID0g
PDMgUktfUEIwIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+ICsJCX07Cj4gKwo+ICAg
CQlwY2llMl8wX3ZjYzN2M19lbjogcGNpZTItMC12Y2MtZW4gewo+ICAgCQkJcm9ja2NoaXAscGlu
cyA9IDwyIFJLX1BDMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiAgIAkJfTsKPiAK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01
dC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTV0LmR0cwo+
IGluZGV4IDBkZDkwYzc0NDM4MC4uYWViOGUwZDQyZjA5IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNXQuZHRzCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01dC5kdHMKPiBAQCAtNjgsMTAgKzY4LDI0
IEBAICZwY2llMngxbDEgewo+ICAgCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTIgR1BJT19B
Q1RJVkVfSElHSD47Cj4gICAJc3RhdHVzID0gIm9rYXkiOwo+ICAgfTsKPiAgIAo+ICsmcGNpZTJ4
MWwwIHsKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnBj
aWUyXzBfcnN0PjsKPiArCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTUgR1BJT19BQ1RJVkVf
SElHSD47Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmcGNpZTJ4MWwyIHsKPiAr
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUyXzJfcnN0
PjsKPiArCXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjAgR1BJT19BQ1RJVkVfSElHSD47Cj4g
KwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICAgJnBjaWUzMHBoeSB7Cj4gICAJZGF0YS1s
YW5lcyA9IDwxIDEgMiAyPjsKPiAgIH07Cj4gQEAgLTEwMSw2ICsxMTUsMTQgQEAgcGNpZTIgewo+
ICsJCXBjaWUyXzBfcnN0OiBwY2llMi0wLXJzdCB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBS
S19QQTUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gKwkJfTsKPiArCj4gICAJCXBj
aWUyXzFfcnN0OiBwY2llMi0xLXJzdCB7Cj4gICAJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEEy
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+OwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
