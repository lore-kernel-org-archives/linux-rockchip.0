Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC793C55173
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 16:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hA1USfMob8nmUBfjyOiFUawbYLa/ijANlFuR/v1BB10=; b=XYxfqvgZkCt/+G
	tTwu1oMBESYXnkV8b25bHrfxklABaLnbIST6SOQ3ZKeVHsuAm0MmcstliZRfon5oRBXfRIvvVqwxX
	hh0w3BKQcDXh7vA8ph/8d3pvN8K4ZrB9WI3phr1BMZClglqVghHe4Pof4+n+T0QnEJxfpSugfFK/L
	969u45Gjdpyi1p1YCa8mDkyNnjOEaZa03F/q5U+u4WqRSOOMRy5djE0Qv0P/XS+//3E/Ec0j9r9TO
	Hq+Mq0ZG6CD14D8GzQi70lkW/N/nDcLQ6XcqqmSGm0Vll8pEGq3zAoc8/WZ8zS/1vT88PQzTR1hIj
	mtediGyFjssyVEbHU6Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqCZm-0000000ErSh-0ZMH;
	Sat, 01 Aug 2026 16:28:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqCZj-0000000ErS1-0bSp;
	Sat, 01 Aug 2026 16:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=V06eygovF9pqY3vHyXKEpDH3PhLpNuC5Yjsi32fVPNY=; b=GkspQDxIH8XQuNGEPi3OaHsWVb
	MWqmQLy8kUKXVbYdQCn+ie/STVzV3V1s7aPOK5PK5RjrA5Wiyz8hXdbdIEgc6WcPFfAa21KBC40+n
	tiyw0Mn+j6oxgkEwMCeuve4BVeBfqLtB2EPeZ7wTyUU4mSmU1sLPii9wSHsjQ5BuPbhAuQtRTEjA5
	n8pZMtkAH/FxaT++U1I8L6londMFmfOBCEtEEp2HcNsc6P3S1esk+oUHFDqac/TtiB/qTngEgeWVx
	vxh6+0AgQRrVMtC7TkoRzlWwcomWycXXPeveXnhe6HMtGaMMJNgHU/uwXIYS2D1qggPlKOWmYdUmd
	HqiZeHug==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, Coia Prant <coiaprant@gmail.com>,
 Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 05/10] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock
 nodes
Date: Sat, 01 Aug 2026 18:28:11 +0200
Message-ID: <2847036.GUH7pLUipS@diego>
In-Reply-To: <20260801142244.679437-7-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
 <20260801142244.679437-7-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_092839_215141_5A762A9C 
X-CRM114-Status: GOOD (  18.07  )
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

QW0gU2Ftc3RhZywgMS4gQXVndXN0IDIwMjYsIDE2OjIyOjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ29pYSBQcmFudDoKPiBUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVz
IGEgU3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgcHJvdmlkZXMKPiB0aGUgUGh5c2ljYWwg
Q29kaW5nIFN1YmxheWVyIGZvciAxMDAwQkFTRS1YLCBTR01JSSwgYW5kIFFTR01JSQo+IGludGVy
ZmFjZXMgdmlhIGl0cyBmb3VyIE1JSSBwb3J0cy4gIEFkZCB0aGUgWFBDUyBkZXZpY2Ugbm9kZSBh
bmQKPiBpdHMgcGNzLW1paSBzdWItbm9kZXMgdG8gdGhlIFNvQyBkZXZpY2UgdHJlZS4KPiAKPiBU
aGUgWFBDUyBkZXZpY2UgaXMgYWNjZXNzZWQgdmlhIHRoZSBBUEIzIGJ1cyBhdCAweGZkYTAwMDAw
IGFuZAo+IHJlcXVpcmVzIHRoZSBDU1IgY2xvY2sgKFBDTEtfWFBDUykgZm9yIHJlZ2lzdGVyIGFj
Y2VzcyBhbmQgdGhlIEVFRQo+IGNsb2NrIChDTEtfWFBDU19FRUUpIGZvciBFbmVyZ3kgRWZmaWNp
ZW50IEV0aGVybmV0IG9wZXJhdGlvbi4gIFRoZQo+IFBEX1BJUEUgcG93ZXIgZG9tYWluIG11c3Qg
YmUgZW5hYmxlZCBiZWZvcmUgYW55IHJlZ2lzdGVyIGFjY2Vzcy4KPiAKPiBBbHNvIGFkZCB0d28g
Zml4ZWQtY2xvY2sgbm9kZXMgKHhwY3NfZ21hYzBfY2xrIGFuZCB4cGNzX2dtYWMxX2NsaykKPiBw
cm92aWRpbmcgdGhlIDEyNSBNSHogcmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgR01BQ3Mgd2hlbiBv
cGVyYXRpbmcKPiB3aXRoIFhQQ1MuICBUaGVzZSBjbG9ja3MgYXJlIHVzZWQgYXMgdGhlIGFzc2ln
bmVkLWNsb2NrLXBhcmVudHMKPiBmb3IgdGhlIHJlc3BlY3RpdmUgR01BQyBub2RlcyBpbiBib2Fy
ZC1sZXZlbCBkZXZpY2UgdHJlZXMuCj4gCj4gVGhlIFhQQ1Mgbm9kZSBhbmQgaXRzIHBjcy1taWkg
c3ViLW5vZGVzIGFyZSBkaXNhYmxlZCBieSBkZWZhdWx0IGFuZAo+IG11c3QgYmUgZW5hYmxlZCBh
dCB0aGUgYm9hcmQgbGV2ZWwgd2hlbiAxMDAwQkFTRS1YL1NHTUlJL1FTR01JSSBpcwo+IGluIHVz
ZS4gIFRoZSBmaXhlZC1jbG9jayBub2RlcyBhcmUgYWx3YXlzIHByZXNlbnQgYW5kIGRvIG5vdCBo
YXZlIGEKPiBzdGF0dXMgcHJvcGVydHksIGFzIHRoZXkgYXJlIHN0YXRpYyBjbG9jayBzb3VyY2Vz
Lgo+IAo+IFRoZSBYUENTIG5vZGUgYWxzbyByZXF1aXJlcyBhIHJlZmVyZW5jZSB0byB0aGUgYXBw
cm9wcmlhdGUgTmFuZW5nCj4gQ29tYm8gUEhZIHZpYSB0aGUgcGh5cyBwcm9wZXJ0eSBhdCB0aGUg
Ym9hcmQgbGV2ZWwuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdt
YWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRz
aSB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDUgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+
IGluZGV4IDNiYzY1M2YwMjdmMWYuLjk4OWUxNjRjMGViMzkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiBAQCAtMTEwLDYgKzExMCw1MSBAQCBzYXRhMDog
c2F0YUBmYzAwMDAwMCB7Cj4gIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgCX07Cj4gIAo+ICsJ
eHBjczogcGNzQGZkYTAwMDAwIHsKPiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC14
cGNzIjsKPiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArCQkjc2l6ZS1jZWxscyA9IDwwPjsK
PiArCQlyZWcgPSA8MHgwIDB4ZmRhMDAwMDAgMHgwIDB4MjAwMDAwPjsKPiArCQljbG9ja3MgPSA8
JmNydSBQQ0xLX1hQQ1M+LCA8JmNydSBDTEtfWFBDU19FRUU+Owo+ICsJCWNsb2NrLW5hbWVzID0g
ImNzciIsICJlZWUiOwo+ICsJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU2OF9QRF9QSVBF
PjsKPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICsKPiArCQl4cGNzX21paTA6IHBjcy1taWlA
MCB7Cj4gKwkJCXJlZyA9IDwwPjsKPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+
ICsKPiArCQl4cGNzX21paTE6IHBjcy1taWlAMSB7Cj4gKwkJCXJlZyA9IDwxPjsKPiArCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiArCQl4cGNzX21paTI6IHBjcy1taWlAMiB7
Cj4gKwkJCXJlZyA9IDwyPjsKPiArCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsK
PiArCQl4cGNzX21paTM6IHBjcy1taWlAMyB7Cj4gKwkJCXJlZyA9IDwzPjsKPiArCQkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsJfTsKPiArCj4gKwl4cGNzX2dtYWMwX2NsazogeHBj
cy1nbWFjMC1jbG9jayB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gKwkJY2xv
Y2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2stb3V0cHV0LW5hbWVzID0gImNs
a19nbWFjMF94cGNzX21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0gPDA+Owo+ICsJfTsKPiArCj4g
Kwl4cGNzX2dtYWMxX2NsazogeHBjcy1nbWFjMS1jbG9jayB7Cj4gKwkJY29tcGF0aWJsZSA9ICJm
aXhlZC1jbG9jayI7Cj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xv
Y2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMV94cGNzX21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxz
ID0gPDA+Owo+ICsJfTsKCkkgZG9uJ3QgZnVsbHkgYmVsaWV2ZSB0aG9zZSBjbG9ja3MgYXJlICJq
dXN0IHRoZXJlIiBpbnNpZGUgdGhlIFNvQy4KSW5zdGVhZCBJIF9hc3N1bWVfIHRoZXkgYXJlIGdl
bmVyYXRlZCBieSBzb21lIG9zY2lsbGF0b3Igb24gdGhlCmluZGl2aWR1YWwgYm9hcmRzPwoKQmVj
YXVzZSBhcyBkZXNjcmliZWQgdGhlcmUsIHRoZXkgd291bGQgYmUganVzdCBtYWdpY2FsbHkgYmUg
dGhlcmUuCgpTbyBwbGVhc2UgYWltIGZvciBhIHJlYWwgY2xvY2sgZGVzY3JpcHRpb24gKGxpa2Vs
eSBvbiBhIGJvYXJkLWxldmVsKQoKCkhlaWtvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
