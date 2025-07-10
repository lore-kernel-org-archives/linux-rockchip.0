Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 032D0C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9oDPBsr2PEYSeJSqCYVAWZ8q0geO959KHxwOnS2UcQ=; b=3bRDqlj5UsqgD4
	j+v4J8cH+puppBTbmsxQEmQvpjAERIWIvxYqeD8bBc2OG5G/W/TNLjE+YIpoWbcApUo/PX++KLrUd
	HalCTTAhdpsTDPkqWJa/pyf1h0LMpyMn6eULi1m3o1Dp7FXl2UqXYHhxoeyWA7vdsCoZFy9b8Lo78
	ng2sR4FWmqU78gfXr5N5bKkf9IG8sZK2p814IB+oJluCy4CZKRQlefV3UgNI+H7EbklE+wiyW/B6U
	rMTDZxsmWKX5Fmd7ZKsBZmgq8sgtkpuU6Jj0jQQCJ2wth/M5XkH5IYwoUAYG3xC1YlDzXC+ZnKHY8
	cS8ArwwAWHgluPDyuinw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZqoe-0000000BqWM-1WzS;
	Thu, 10 Jul 2025 12:55:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpio-0000000BfRy-2yWy;
	Thu, 10 Jul 2025 11:45:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=reD0Z/OzeLLuQebkmfVULjQ6q5KpdwV263NNwktOYOs=; b=Swqb+u8NjwNq2ygF9l+WvV62ey
	Pkv9pnKzNdO83sVwKtwjQVXeOV6gSh8xMmgNz7fZfu1UJpupxMuQbVMWIYXUtAxjPi/8pAg2sMWbl
	PHOyY/G+UNhh/+ZUKngi4IC1BpfMnn+7VIttbB0C0UjFVDZzXbn25A/LRkYwvKFf6hDjFMBYgG+9g
	qkm3alOdWNgnzVVecL+xxKz7QbxfnPhsbidddS3TdgttvQxvr2KlGhsUcV/pVr31IGsOcfrF9DOW+
	no8FwUJHfq4Bj/eOSWV+0bCYbd3IOyUPozMYEA04UbE83UlTbsnID5V+mVr0woRc6WqWulZ3AfF+9
	cDS5fPSg==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZpih-0004ca-Op; Thu, 10 Jul 2025 13:45:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, Jonas Karlman <jonas@kwiboo.se>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency scaling
 support
Date: Thu, 10 Jul 2025 13:45:43 +0200
Message-ID: <5025631.aeNJFYEL58@phil>
In-Reply-To: <20250620100010.1291658-2-amadeus@jmu.edu.cn>
References: <20250620100010.1291658-1-amadeus@jmu.edu.cn>
 <20250620100010.1291658-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_044550_749854_ABE1B3F4 
X-CRM114-Status: GOOD (  16.58  )
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

QW0gRnJlaXRhZywgMjAuIEp1bmkgMjAyNSwgMTI6MDA6MTAgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+IEJ5IGRlZmF1bHQsIHRoZSBDUFVzIG9uIFJL
MzUyOCBvcGVyYXRlcyBhdCAxLjVHSHouIEFkZCBDUFUgZnJlcXVlbmN5IGFuZAo+IHZvbHRhZ2Ug
bWFwcGluZyB0byB0aGUgZGV2aWNlIHRyZWUgdG8gZW5hYmxlIGR5bmFtaWMgc2NhbGluZyB2aWEg
Y3B1ZnJlcS4KPiAKPiBUaGUgT1BQIHZhbHVlcyBjb21lIGZyb20gZG93bnN0cmVhbSBrZXJuZWxb
MV0uIEJvdGggNDA4TUh6IGFuZCA2MDBNSHoKPiBmcmVxdWVuY2llcyB1c2UgdGhlIG5vcm1hbCBQ
TEwsIHNvIHVzZSB0aGUgY29ycmVzcG9uZGluZyBoaWdoZXN0IHZvbHRhZ2UuCj4gCj4gVGhlIHZv
bHRhZ2UgdXNlZCBmb3Igb3RoZXIgZnJlcXVlbmNpZXMgY2FuJ3QgYmUgbGVzcyB0aGFuIGFib3Zl
ICg4NzVtVikuCj4gVGhlcmVmb3JlLCA4MTZNSHogdG8gMTIwME1IeiBhbHNvIHVzZXMgdGhlIGNv
cnJlc3BvbmRpbmcgaGlnaGVzdCB2b2x0YWdlLgoKVGhlcmUgaGFzIG9mdGVuIGJlZW4gdGhlIGFy
Z3VtZW50IHRoYXQgc2VsZWN0aW5nIGEgZnJlcXVlbmN5IHRoYXQgaGFzIHRoZQpzYW1lIHZvbHRh
Z2UgYXMgYSBmYXN0ZXIgZnJlcXVlbmN5IGRvZXMgbm90IHNhdmUgYW55IHBvd2VyLgoKSGVuY2Ug
SSByZW1lbWJlciB0aGF0IHdlIGRyb3BwZWQgc2xvd2VyIGZyZXF1ZW5jaWVzIG9uIG90aGVyIHNv
Y3MKdGhhdCBzaGFyZSB0aGUgc2FtZSB2b2x0YWdlIHdpdGggYSBoaWdoZXIgZnJlcXVlbmN5LgoK
PiAKPiBUaGUgcmVtYWluaW5nIDE0MTZNSHogdG8gMjAxNk1IeiB1c2UgYSB2b2x0YWdlIGNsb3Nl
IHRvIGFjdHVhbCBmcmVxdWVuY3kuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hp
cC1saW51eC9rZXJuZWwvYmxvYi9kZXZlbG9wLTUuMTAvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1MjguZHRzaQo+IAo+IFNpZ25lZC1vZmYtYnk6IENodWt1biBQYW4gPGFtYWRldXNA
am11LmVkdS5jbj4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Mjgu
ZHRzaSB8IDY0ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjQg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzUyOC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRz
aQo+IGluZGV4IDgyOWY5ODBlYTM1My4uNWNiN2YxMGI3OWVkIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzUyOC5kdHNpCj4gQEAgLTUzLDYgKzUzLDcgQEAgY3B1MDogY3B1
QDAgewo+ICAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwo+ICAJCQllbmFibGUtbWV0aG9kID0gInBz
Y2kiOwo+ICAJCQljbG9ja3MgPSA8JnNjbWlfY2xrIFNDTUlfQ0xLX0NQVT47Cj4gKwkJCW9wZXJh
dGluZy1wb2ludHMtdjIgPSA8JmNwdV9vcHBfdGFibGU+Owo+ICAJCX07Cj4gIAo+ICAJCWNwdTE6
IGNwdUAxIHsKPiBAQCAtNjEsNiArNjIsNyBAQCBjcHUxOiBjcHVAMSB7Cj4gIAkJCWRldmljZV90
eXBlID0gImNwdSI7Cj4gIAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7Cj4gIAkJCWNsb2NrcyA9
IDwmc2NtaV9jbGsgU0NNSV9DTEtfQ1BVPjsKPiArCQkJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwm
Y3B1X29wcF90YWJsZT47Cj4gIAkJfTsKPiAgCj4gIAkJY3B1MjogY3B1QDIgewo+IEBAIC02OSw2
ICs3MSw3IEBAIGNwdTI6IGNwdUAyIHsKPiAgCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiAgCQkJ
ZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKPiAgCQkJY2xvY2tzID0gPCZzY21pX2NsayBTQ01JX0NM
S19DUFU+Owo+ICsJCQlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHVfb3BwX3RhYmxlPjsKPiAg
CQl9Owo+ICAKPiAgCQljcHUzOiBjcHVAMyB7Cj4gQEAgLTc3LDYgKzgwLDY3IEBAIGNwdTM6IGNw
dUAzIHsKPiAgCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKPiAgCQkJZW5hYmxlLW1ldGhvZCA9ICJw
c2NpIjsKPiAgCQkJY2xvY2tzID0gPCZzY21pX2NsayBTQ01JX0NMS19DUFU+Owo+ICsJCQlvcGVy
YXRpbmctcG9pbnRzLXYyID0gPCZjcHVfb3BwX3RhYmxlPjsKPiArCQl9Owo+ICsJfTsKPiArCj4g
KwljcHVfb3BwX3RhYmxlOiBvcHAtdGFibGUtY3B1IHsKPiArCQljb21wYXRpYmxlID0gIm9wZXJh
dGluZy1wb2ludHMtdjIiOwo+ICsJCW9wcC1zaGFyZWQ7Cj4gKwo+ICsJCW9wcC00MDgwMDAwMDAg
ewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwODAwMDAwMD47Cj4gKwkJCW9wcC1taWNyb3Zv
bHQgPSA8ODc1MDAwIDg3NTAwMCAxMTAwMDAwPjsKPiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0
MDAwMD47Cj4gKwkJCW9wcC1zdXNwZW5kOwo+ICsJCX07Cj4gKwo+ICsJCW9wcC02MDAwMDAwMDAg
ewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDYwMDAwMDAwMD47Cj4gKwkJCW9wcC1taWNyb3Zv
bHQgPSA8ODc1MDAwIDg3NTAwMCAxMTAwMDAwPjsKPiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0
MDAwMD47Cj4gKwkJfTsKPiArCj4gKwkJb3BwLTgxNjAwMDAwMCB7Cj4gKwkJCW9wcC1oeiA9IC9i
aXRzLyA2NCA8ODE2MDAwMDAwPjsKPiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw4NzUwMDAgODc1MDAw
IDExMDAwMDA+Owo+ICsJCQljbG9jay1sYXRlbmN5LW5zID0gPDQwMDAwPjsKPiArCQl9Owo+ICsK
PiArCQlvcHAtMTAwODAwMDAwMCB7Cj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTAwODAwMDAw
MD47Cj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8ODc1MDAwIDg3NTAwMCAxMTAwMDAwPjsKPiArCQkJ
Y2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4gKwkJfTsKPiArCj4gKwkJb3BwLTEyMDAwMDAw
MDAgewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEyMDAwMDAwMDA+Owo+ICsJCQlvcHAtbWlj
cm92b2x0ID0gPDkwMDAwMCA5MDAwMDAgMTEwMDAwMD47Cj4gKwkJCWNsb2NrLWxhdGVuY3ktbnMg
PSA8NDAwMDA+Owo+ICsJCX07Cj4gKwo+ICsJCW9wcC0xNDE2MDAwMDAwIHsKPiArCQkJb3BwLWh6
ID0gL2JpdHMvIDY0IDwxNDE2MDAwMDAwPjsKPiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw5MjUwMDAg
OTI1MDAwIDExMDAwMDA+Owo+ICsJCQljbG9jay1sYXRlbmN5LW5zID0gPDQwMDAwPjsKPiArCQl9
Owo+ICsKPiArCQlvcHAtMTYwODAwMDAwMCB7Cj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTYw
ODAwMDAwMD47Cj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8OTc1MDAwIDk3NTAwMCAxMTAwMDAwPjsK
PiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAwMD47Cj4gKwkJfTsKPiArCj4gKwkJb3BwLTE4
MDAwMDAwMDAgewo+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDE4MDAwMDAwMDA+Owo+ICsJCQlv
cHAtbWljcm92b2x0ID0gPDEwMzc1MDAgMTAzNzUwMCAxMTAwMDAwPjsKPiArCQkJY2xvY2stbGF0
ZW5jeS1ucyA9IDw0MDAwMD47Cj4gKwkJfTsKPiArCj4gKwkJb3BwLTIwMTYwMDAwMDAgewo+ICsJ
CQlvcHAtaHogPSAvYml0cy8gNjQgPDIwMTYwMDAwMDA+Owo+ICsJCQlvcHAtbWljcm92b2x0ID0g
PDExMDAwMDAgMTEwMDAwMCAxMTAwMDAwPjsKPiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9IDw0MDAw
MD47Cj4gIAkJfTsKPiAgCX07Cj4gIAo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
