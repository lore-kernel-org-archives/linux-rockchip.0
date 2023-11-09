Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DB6C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/RodmmW8/RnYX0o0eNNXHrDFfhzsAx/afTQ1N2yoBs=; b=2gSWsf/BN2hcx3
	AVI4jUy5L+WvyDt3KN8+W8F+G1uUYsf60Q9K3E+8Xvv/K4sTf0nemHREsCrx9cdWtOoku56va2KmR
	FGLYtxasw8LL8aLI8ONnOMqbWUtc0H2b+GzI6pnBLb6du/UauBUNREa8hwWRleVEl6duC+rsHfwRh
	PaMsUjcTdZmoAxbcZ+V1jSLDJZWDjebxir6X+zjLNsshOZwpbL6TJBrMgDBE6O69KopdwlYA2NhmG
	xI7aK1xFdX2kY5ykrVVFJU7K2cP8EQRUXlA/YvIs1GeU+RsGkBKh/eZLw/m88PoaoTVTlmttpYQNP
	rlFn93XYoBrl6ZkqEezQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r10CW-005adD-01;
	Thu, 09 Nov 2023 08:15:44 +0000
Received: from mail-m127111.qiye.163.com ([115.236.127.111])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r10CS-005acg-0g;
	Thu, 09 Nov 2023 08:15:41 +0000
DKIM-Signature: a=rsa-sha256;
	b=EX8/MwsRplvL5wtx/0z10jCnhnFrvZ1SfgJWzLg1D9tkfgm26aNnlXtm7Hdqq2vSsHPrLlx4EZRfAVLHDTxL0Cw4IIFoq3SG4VEpN5sRd2pPv/ExJEHWivm+ghuMkRlx1/Oe8g8U+NCPgFRjPk9iJjSYrQ6l2b4O0Frbbwgf4Xk=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=18Gkx2GiMHfpYUb29bSeLsFtQHGrYGeLSfPMEOaVu54=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.49] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id B40A54003F3;
	Thu,  9 Nov 2023 16:06:44 +0800 (CST)
Message-ID: <a11c847c-4f95-ea7b-3497-6ada0586c486@rock-chips.com>
Date: Thu, 9 Nov 2023 16:06:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
 <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
 <20231109-send-pushchair-45b37551102a@wendy>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <20231109-send-pushchair-45b37551102a@wendy>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkpJT1YYSkodHk1DGRkYGBhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5DTUtIVUpLS1VKQl
	kG
X-HM-Tid: 0a8bb31e8af12eb3kusnb40a54003f3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mww6Czo4DDw1Vg8MTj8NKUgv
	MVEKFBxVSlVKTUJCTkpMSUtOQ0NCVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5OT0o3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_001540_433730_6CE05166 
X-CRM114-Status: GOOD (  12.61  )
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

CuWcqCAyMDIzLzExLzkgMTU6MjksIENvbm9yIERvb2xleSDlhpnpgZM6Cj4gT24gVGh1LCBOb3Yg
MDksIDIwMjMgYXQgMDI6Mjc6MzhQTSArMDgwMCwgemhhbmdxaW5nIHdyb3RlOgo+PiBIaToKPj4K
Pj4g5ZyoIDIwMjMvMTEvOCAyMDowMSwgQ29ub3IgRG9vbGV5IOWGmemBkzoKPj4+IE9uIFdlZCwg
Tm92IDA4LCAyMDIzIGF0IDAyOjE4OjIxUE0gKzA4MDAsIEVsYWluZSBaaGFuZyB3cm90ZToKPj4+
PiBleHBvcnQgUENMS19WTzFHUkYgZm9yIERULgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogRWxh
aW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgaW5j
bHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1LmggfCAzICsrLQo+Pj4+
ICAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Pgo+
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4
OC1jcnUuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5o
Cj4+Pj4gaW5kZXggNTc5MGIxMzkxMjAxLi41MGJhNzI5ODAxOTAgMTAwNjQ0Cj4+Pj4gLS0tIGEv
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1LmgKPj4+PiArKysg
Yi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaAo+Pj4+IEBA
IC03MzMsOCArNzMzLDkgQEAKPj4+PiAgICAjZGVmaW5lIEFDTEtfQVYxX1BSRQkJCTcxOAo+Pj4+
ICAgICNkZWZpbmUgUENMS19BVjFfUFJFCQkJNzE5Cj4+Pj4gICAgI2RlZmluZSBIQ0xLX1NESU9f
UFJFCQkJNzIwCj4+Pj4gKyNkZWZpbmUgUENMS19WTzFHUkYJCQk3MjEKPj4+PiAtI2RlZmluZSBD
TEtfTlJfQ0xLUwkJCShIQ0xLX1NESU9fUFJFICsgMSkKPj4+PiArI2RlZmluZSBDTEtfTlJfQ0xL
UwkJCShQQ0xLX1ZPMUdSRiArIDEpCj4+PiBUaGlzIGRlZmluaXRpb24gaXMgcGFydCBvZiB0aGUg
QUJJLCBpZiBpdCBpcyBzYWZlIHRvIGNoYW5nZSBpdCwgdGhlbiBpdAo+Pj4gaXMgc2FmZSB0byBk
ZWxldGUgaXQuCj4+IFRoZSBuZXcgSUQgaXMgdG8gc29sdmUgdGhlIG5pdSBjbG9jayBkZXBlbmRl
bmN5IHByb2JsZW0oVXNlZCBpbiBQQVRDSCBWNQo+PiA0LzQpLlRoaXMgbmV3IElEIHdpbGwgYWxz
byBiZSB1c2VkIGluIERUUyBpbiB0aGUgZnV0dXJlLgo+Pgo+PiBDTEtfTlJfQ0xLUyByZXByZXNl
bnRzIHRoZSBudW1iZXIgb2YgY2xvY2tzIHVzZWQgYnkgdGhlCj4+IGRyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1ya3h4eC5jLiBJdCBpcyBzYWZlIHRvIG1vZGlmeSBpdCwgYnV0IGNhbm5vdCBkZWxl
dGUKPj4gaXQuCj4gVGhlbiBkZWxldGUgaXQgZnJvbSB0aGUgaGVhZGVyIGFuZCBtb3ZlIGl0IHRv
IGNsay1ya3h4eC5jCkkgZG9uJ3QgdGhpbmsgaXQncyBtb3JlIGFwcHJvcHJpYXRlIHRvIG1vdmUg
dG8gY2xrLXJreHh4LmMuCkJlY2F1c2UgaWYgdGhlcmUgYXJlIG5ldyByZXF1aXJlbWVudHMgbGF0
ZXIsIGFuZCBhZGQgbmV3IGNsayBpZCwgaXQgaXMgCm5vdCBpbiB0aGUgc2FtZSBmaWxlLCBtYXli
ZSBmb3JnZXQgdG8gbW9kaWZ5IENMS19OUl9DTEtTLgoKLS0gCuW8oOaZtArnkZ7oiq/lvq7nlLXl
rZDogqHku73mnInpmZDlhazlj7gKUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLEx0ZArlnLDlnYDv
vJrnpo/lu7rnnIHnpo/lt57luILpk5znm5jot6/ova/ku7blpKfpgZM4OeWPt+i9r+S7tuWbrUHl
jLoyMeWPt+alvApBZGQ6Tm8uMjEgQnVpbGRpbmcsIEEgRGlzdHJpY3QsIE5vLjg5IFNvZnR3YXJl
IEJvdWxldmFyZCBGdXpob3UsIEZ1amlhbiAzNTAwMDMsIFAuUi5DaGluYQpUZWw6Kzg2LTA1OTEt
ODM5OTE5MDYtODYwMQrpgq7nvJbvvJozNTAwMDMKRS1tYWlsOmVsYWluZS56aGFuZ0Byb2NrLWNo
aXBzLmNvbQoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqCuS/neWvhuaPkOekuu+8muacrOmCruS7tuWPiuWF
tumZhOS7tuWQq+acieacuuWvhuS/oeaBr++8jOS7heWPkemAgee7meacrOmCruS7tuaJgOaMh+eJ
ueWumuaUtuS7tuS6uuOAguiLpemdnuivpeeJueWumuaUtuS7tuS6uu+8jOivt+WLv+WkjeWItuOA
geS9v+eUqOaIluaKq+mcsuacrOmCruS7tueahOS7u+S9leWGheWuueOAguiLpeivr+aUtuacrOmC
ruS7tu+8jOivt+S7juezu+e7n+S4reawuOS5heaAp+WIoOmZpOacrOmCruS7tuWPiuaJgOaciemZ
hOS7tu+8jOW5tuS7peWbnuWkjemCruS7tuaIluWFtuS7luaWueW8j+WNs+WIu+WRiuefpeWPkeS7
tuS6uuOAguemj+W3nueRnuiKr+W+rueUteWtkOaciemZkOWFrOWPuOaLpeacieacrOmCruS7tuS/
oeaBr+eahOiRl+S9nOadg+WPiuino+mHiuadg++8jOemgeatouS7u+S9leacque7j+aOiOadg+iu
uOWPr+eahOS+teadg+ihjOS4uuOAggoKSU1QT1JUQU5UIE5PVElDRTogVGhpcyBlbWFpbCBpcyBm
cm9tIEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZCAuVGhlIGNvbnRlbnRzIG9m
IHRoaXMgZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBtYXkgY29udGFpbiBpbmZvcm1hdGlvbiB0
aGF0IGlzIHByaXZpbGVnZWQsIGNvbmZpZGVudGlhbCBhbmQvb3IgZXhlbXB0IGZyb20gZGlzY2xv
c3VyZSB1bmRlciBhcHBsaWNhYmxlIGxhdyBhbmQgcmVsZXZhbnQgTkRBLiBJZiB5b3UgYXJlIG5v
dCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgYXJlIGhlcmVieSBub3RpZmllZCB0aGF0IGFu
eSBkaXNjbG9zdXJlLCBjb3B5aW5nLCBkaXN0cmlidXRpb24sIG9yIHVzZSBvZiB0aGUgaW5mb3Jt
YXRpb24gaXMgU1RSSUNUTFkgUFJPSElCSVRFRC4gUGxlYXNlIGltbWVkaWF0ZWx5IGNvbnRhY3Qg
dGhlIHNlbmRlciBhcyBzb29uIGFzIHBvc3NpYmxlIGFuZCBkZXN0cm95IHRoZSBtYXRlcmlhbCBp
biBpdHMgZW50aXJldHkgaW4gYW55IGZvcm1hdC4gVGhhbmsgeW91LgoKKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
