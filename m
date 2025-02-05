Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A83EFC02193
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 02:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8zijxTI2kcjrEtdHHcDP7/tROESwT6cWBbmdk0Xu0A=; b=ILzqx8TWCueFQG
	msw//fJIm8Pe7B0bih61M2kqipzVxBvm9eDo94du+SF0J+h0PyIk+nRgKwbEmNEqvVEkzga8mxjVG
	J04EXUSmKlMzxSWx7EOIVc9xYJyP81PAXvbRwCwkYK0J0UDy5MLS5EZSGKLzFuS7y50j+0+QzUpx7
	+KA8zE8D7aFaYEma04fIDPNdXTJky2XyBOqgmdVg+/UDZ7ZOsaO7XOyE9zF0wRb3E3mKaOb+vVtgg
	EFmOoU10SXKD7SFkgRKbcFdBf61WZ4zVWM8avgNHjR1ImwW2KqFK3h41m394CsotM7FSf9WKzx9HV
	B/9Da+hiiGGfVX2k2haQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfUzu-000000027DW-08B3;
	Wed, 05 Feb 2025 02:18:38 +0000
Received: from mail-m3295.qiye.163.com ([220.197.32.95])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfUzr-000000027Ca-3CRq;
	Wed, 05 Feb 2025 02:18:37 +0000
Received: from [172.16.12.30] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id a2f6aecf;
	Wed, 5 Feb 2025 10:18:31 +0800 (GMT+08:00)
Message-ID: <b85a4449-f178-4877-9ba7-65ddcc231052@rock-chips.com>
Date: Wed, 5 Feb 2025 10:18:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] Revert "arm64: dts: rockchip: Increase VOP clk
 rate on RK3328"
To: Jonas Karlman <jonas@kwiboo.se>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250125011545.15547-1-zhangqing@rock-chips.com>
 <20250125011545.15547-3-zhangqing@rock-chips.com>
 <d1ddec89-08d5-4eed-8ecc-7df47294230a@kwiboo.se>
From: zhangqing <zhangqing@rock-chips.com>
In-Reply-To: <d1ddec89-08d5-4eed-8ecc-7df47294230a@kwiboo.se>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk9NTFZPGUtISk1NTUxLHh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	9VSktLVUpCS0tZBg++
X-HM-Tid: 0a94d3e6e17103a3kunma2f6aecf
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mz46Pyo6EjIJGhQyFyMPGg09
	TEIaCUxVSlVKTEhDTElKQkpJTUNOVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9LTUk3Bg++
DKIM-Signature: a=rsa-sha256;
	b=btvd4bzt9LMDt9sePPl5TCU6js+OoOuX0XD0PnJMAA5dUVJif3cBsEOSWfFan99MzUBSvi5QTyGysRWh1s7jo2pfiS7gSJz3h2jiekDJaTNIAMNbhpDOGj7PDLa+aC0GdK5I0mzeyP7vrtTNgkc3wi/txmf0CmlAFb8S6ewZGt8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/1w0LAq2M+/NtKCh0lzYTdc188jbF90/W0yNry5dtdc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_181835_984780_DA3B38E0 
X-CRM114-Status: GOOD (  21.23  )
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

CuWcqCAyMDI1LzEvMjYgNTozOSwgSm9uYXMgS2FybG1hbiDlhpnpgZM6Cj4gSGkgRWxhaW5lLAo+
Cj4gT24gMjAyNS0wMS0yNSAwMjoxNSwgRWxhaW5lIFpoYW5nIHdyb3RlOgo+PiBUaGlzIHJldmVy
dHMgY29tbWl0IDBmMmRkYjEyOGZhMjBmODQ0MWQ5MDMyODU2MzJmMmM2OWU5MGZhZTEuCj4+Cj4+
IEJlZm9yZSBjaGFuZ2luZyB0aGUgUExMIGZyZXF1ZW5jeSwgaW4gb3JkZXIgdG8gYXZvaWQgb3Zl
cmNsb2NraW5nIHRoZQo+PiBjaGlsZCBjbG9jaywgc2V0IHRoZSBjaGlsZCBjbG9jayB0byBhIGxh
cmdlIGRpdiBmaXJzdCwgYW5kIHRoZW4gc2V0IHRoZQo+PiBDTEsgYXMgcmVxdWlyZWQgYWZ0ZXIg
dGhlIFBMTCBpcyBzZXQuCj4gVGhpcyBjb21taXQgbWVzc2FnZSBkb2VzIG5vdCBtYXRjaCB3aGF0
IHRoaXMgcGF0Y2ggZG9lcy4gSW4gdGhpcyBwYXRjaAo+IHlvdSByZXZlcnQgYSBjaGFuZ2UgYW5k
IGluIG5leHQgcGF0Y2ggeW91IHJlLWludHJvZHVjZSBzYW1lIHRoaW5nCj4gc2xpZ2h0bHkgZGlm
ZmVyZW50Lgo+Cj4gQXMgbWVudGlvbmVkIGluIHYxLCBzZWUgWzFdLCB5b3Ugc2hvdWxkIG1lcmdl
IGJvdGggcGF0Y2hlcyBhcyBhIHNpbmdsZQo+IGZpeCwgaWYgYSBmaXggcmVhbGx5IGlzIG5lZWRl
ZC4KT2ssIFRoaXMgd2lsbCBiZSBmaXhlZCBpbiB0aGUgbmV4dCByZWxlYXNlLgo+Cj4gVGVzdGlu
ZyBvbiBhIHJrMzMyOC1yb2NrNjQgSSBzZWUgbm8gZGlmZmVyZW5jZSBiZWZvcmUgb3IgYWZ0ZXIg
dGhlc2UKPiBjaGFuZ2VzLiBQbGVhc2UgZGVzY3JpYmUgd2hhdCB0aGlzIGZpeGVzIGJlY2F1c2Ug
Y2xrX3N1bW1hcnkgc2hvdyBzYW1lCj4gY2xvY2sgdHJlZSBhbmQgcmF0ZXMgYmVmb3JlIGFuZCBh
ZnRlciB0aGlzIGZpeC4KVGhlIGNsb2NrIHRyZWUgbWlnaHQgc2VlIHRoZSBzYW1lIHJlc3VsdC4K
Ckl0IGlzIG5vdCBzYWZlIG9yIGNvcnJlY3QgdG8gc2V0IHRoZSBjaGlsZCBjbG9jayBmcmVxdWVu
Y3kgYmVmb3JlIApzZXR0aW5nIHRoZSBQTEwgZnJlcXVlbmN5LCBhbmQgdGhlIHBhcmVudCBjbG9j
ayBQTEwgZnJlcXVlbmN5IG1heSBub3QgYmUgCnRoZSBmaW5hbCBleHBlY3RlZCB2YWx1ZSBhdCB0
aGlzIHRpbWUuClRoZXJlZm9yZSwgdGhlIGNvcnJlY3Qgc2V0dGluZyBvZiB0aGUgY2hpbGQgY2xv
Y2sgZnJlcXVlbmN5IHNob3VsZCBiZSAKYWZ0ZXIgdGhlIFBMTCBmcmVxdWVuY3kgaXMgc2V0LgoK
VGhlIHBhcnRpYWwgY2xvY2sgaXMgc2V0IGJlZm9yZSB0aGUgUExMIHNldHRpbmcgZnJlcXVlbmN5
LCB3aGljaCBpcyB0byAKcHJldmVudCB0aGUgY2hpbGQgY2xvY2sgZnJvbSBvdmVyY2xvY2tpbmcg
d2hlbiB0aGUgUExMIGlzIHNldCwgc28gZW5zdXJlIAp0aGF0IHRoZSBjaGlsZCBjbG9jayBpcyBh
dCBhIHNhZmUgZnJlcXVlbmN5IGJlZm9yZSBzZXR0aW5nIHRoZSBQTEwsIGFuZCAKcmVzZXQgdGhl
IGNoaWxkIGNsb2NrIGZyZXF1ZW5jeSBhZnRlciB0aGUgUExMIGlzIHNldC4KPgo+IEFsc28gZm9y
IG5leHQgcmV2ZXJ0IHBhdGNoIHlvdSBzZW5kLCBwbGVhc2UgaW5jbHVkZSB0aGUgcGF0Y2ggYXV0
aG9yIGluCj4gdGhlIHJlY2lwaWVudCBsaXN0IDotKQo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC9jYWU5Y2IwYS0xNTAwLTRmYmMtYmJmNC1hNjI2NjU0OWJjYjlAa3dpYm9vLnNl
Lwo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4+IEZpeGVzOiAwZjJkZGIxMjhmYTIgKCJhcm02NDog
ZHRzOiByb2NrY2hpcDogSW5jcmVhc2UgVk9QIGNsayByYXRlIG9uIFJLMzMyOCIpCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+PiAt
LS0KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpIHwgNCArKy0t
Cj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4+IGluZGV4IDdkOTky
YzNjMDFjZS4uZjNlZjhjYmZiZGFlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzI4LmR0c2kKPj4gQEAgLTg1Miw4ICs4NTIsOCBAQAo+PiAgIAkJCTwwPiwgPDI0MDAw
MDAwPiwKPj4gICAJCQk8MjQwMDAwMDA+LCA8MjQwMDAwMDA+LAo+PiAgIAkJCTwxNTAwMDAwMD4s
IDwxNTAwMDAwMD4sCj4+IC0JCQk8MzAwMDAwMDAwPiwgPDEwMDAwMDAwMD4sCj4+IC0JCQk8NDAw
MDAwMDAwPiwgPDEwMDAwMDAwMD4sCj4+ICsJCQk8MTAwMDAwMDAwPiwgPDEwMDAwMDAwMD4sCj4+
ICsJCQk8MTAwMDAwMDAwPiwgPDEwMDAwMDAwMD4sCj4+ICAgCQkJPDUwMDAwMDAwPiwgPDEwMDAw
MDAwMD4sCj4+ICAgCQkJPDEwMDAwMDAwMD4sIDwxMDAwMDAwMDA+LAo+PiAgIAkJCTw1MDAwMDAw
MD4sIDw1MDAwMDAwMD4sCj4KLS0gCuW8oOaZtArnkZ7oiq/lvq7nlLXlrZDogqHku73mnInpmZDl
hazlj7gKUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLEx0ZArlnLDlnYDvvJrnpo/lu7rnnIHnpo/l
t57luILpk5znm5jot6/ova/ku7blpKfpgZM4OeWPt+i9r+S7tuWbrUHljLoyMeWPt+alvApBZGQ6
Tm8uMjEgQnVpbGRpbmcsIEEgRGlzdHJpY3QsIE5vLjg5IFNvZnR3YXJlIEJvdWxldmFyZCBGdXpo
b3UsIEZ1amlhbiAzNTAwMDMsIFAuUi5DaGluYQpUZWw6Kzg2LTA1OTEtODM5OTE5MDYtODYwMQrp
gq7nvJbvvJozNTAwMDMKRS1tYWlsOmVsYWluZS56aGFuZ0Byb2NrLWNoaXBzLmNvbQoqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqCuS/neWvhuaPkOekuu+8muacrOmCruS7tuWPiuWFtumZhOS7tuWQq+acieac
uuWvhuS/oeaBr++8jOS7heWPkemAgee7meacrOmCruS7tuaJgOaMh+eJueWumuaUtuS7tuS6uuOA
guiLpemdnuivpeeJueWumuaUtuS7tuS6uu+8jOivt+WLv+WkjeWItuOAgeS9v+eUqOaIluaKq+mc
suacrOmCruS7tueahOS7u+S9leWGheWuueOAguiLpeivr+aUtuacrOmCruS7tu+8jOivt+S7juez
u+e7n+S4reawuOS5heaAp+WIoOmZpOacrOmCruS7tuWPiuaJgOaciemZhOS7tu+8jOW5tuS7peWb
nuWkjemCruS7tuaIluWFtuS7luaWueW8j+WNs+WIu+WRiuefpeWPkeS7tuS6uuOAguemj+W3nueR
nuiKr+W+rueUteWtkOaciemZkOWFrOWPuOaLpeacieacrOmCruS7tuS/oeaBr+eahOiRl+S9nOad
g+WPiuino+mHiuadg++8jOemgeatouS7u+S9leacque7j+aOiOadg+iuuOWPr+eahOS+teadg+ih
jOS4uuOAggoKSU1QT1JUQU5UIE5PVElDRTogVGhpcyBlbWFpbCBpcyBmcm9tIEZ1emhvdSBSb2Nr
Y2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZCAuVGhlIGNvbnRlbnRzIG9mIHRoaXMgZW1haWwgYW5k
IGFueSBhdHRhY2htZW50cyBtYXkgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IGlzIHByaXZpbGVn
ZWQsIGNvbmZpZGVudGlhbCBhbmQvb3IgZXhlbXB0IGZyb20gZGlzY2xvc3VyZSB1bmRlciBhcHBs
aWNhYmxlIGxhdyBhbmQgcmVsZXZhbnQgTkRBLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQg
cmVjaXBpZW50LCB5b3UgYXJlIGhlcmVieSBub3RpZmllZCB0aGF0IGFueSBkaXNjbG9zdXJlLCBj
b3B5aW5nLCBkaXN0cmlidXRpb24sIG9yIHVzZSBvZiB0aGUgaW5mb3JtYXRpb24gaXMgU1RSSUNU
TFkgUFJPSElCSVRFRC4gUGxlYXNlIGltbWVkaWF0ZWx5IGNvbnRhY3QgdGhlIHNlbmRlciBhcyBz
b29uIGFzIHBvc3NpYmxlIGFuZCBkZXN0cm95IHRoZSBtYXRlcmlhbCBpbiBpdHMgZW50aXJldHkg
aW4gYW55IGZvcm1hdC4gVGhhbmsgeW91LgoKKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
