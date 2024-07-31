Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6600DC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 13:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zr15U0MKTqhMn0CMSyvgKuy+/kW/aUppqqkn7hln2FI=; b=zlYGnbwW64Xn+N8CtvFJL0q7+z
	R8UGh5EwIgdhc9he1nwEg0c/BhHRItajQomk4Ra8QRoW7SWuSr+Popw8r3tIBzFYuIdNs8ifc8PQU
	K/m/LDRlIhZa+aNxixn7n8Od1zDATC6pW2zS3aknG1AJbfzHxjqV7z2wPdaP07TlFNbsR7ZnXXfmu
	tt19bj7XAhP1AcN/TBcBfCOgprB8FW9ffFRMOoIdkw++KI+YkA4u1cUDd30cO1U3HW1m/ecly0DVl
	Y7MDlT1PnLH77GMTSeyQGlKwWdOpM0UZFMXGS7Q8VvSIeRSb9naBMwQyW7DW0bvPytOxPSGguKwYO
	QF54K8OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ9FS-00000001HGH-49Tv;
	Wed, 31 Jul 2024 13:20:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ9F0-00000001HCW-3rk8;
	Wed, 31 Jul 2024 13:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Subject:To:From:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=Kf91bU7nTpoF+VHvd+VaXKxWYIj8+ssQUleOWsGFE1U=; b=JnyNVVxHiUhtzlcNJLE13BwcuD
	vZZibh35O6ySvP95ZEWmDUaj9mng5/pNNT+2KEqcm0PAFNAOm7s/wTlsiXzmJDc0daEYh4HG9a6dG
	GZLml5SdfBDc63Em5kAC/e+rTN/CX43vrpNfyHQqIbUGY1c0UMQ6MaEjgewRfxy5lL/j7aOZ2mHHp
	YX57TZxmXWsPVyQySCCo8680E7bVs883CG+MEsI37CESd958YeCIt9Wlg/akZsiE4G7fvVTWyJjpM
	FnvJppWne9uzv7O8CaFf4rwF1agxFwurXbG9AJM+9CAzG6Zc52A4uWpvYz0DjU4qDNnljrnCjW2Nf
	vGXp3Ftg==;
Received: from host81-156-46-112.range81-156.btcentralplus.com ([81.156.46.112] helo=mx.warmcat.com)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ9Ex-00000005Epm-0gAH;
	Wed, 31 Jul 2024 13:19:41 +0000
Received: from [10.199.0.173] (unknown [10.199.0.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (P-256) server-digest SHA256)
	(Client did not present a certificate)
	by mx.warmcat.com (Postfix) with ESMTPSA id AE60220E04;
	Wed, 31 Jul 2024 14:12:02 +0100 (BST)
Message-ID: <377dc5cd-c9a2-4632-a819-6b28762191a6@warmcat.com>
Date: Wed, 31 Jul 2024 14:12:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: andy@warmcat.com
To: Arend van Spriel <arend.vanspriel@broadcom.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jacobe Zang <jacobe.zang@wesion.com>,
 robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, conor+dt@kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, efectn@protonmail.com,
 dsimic@manjaro.org, jagan@edgeble.ai, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <3d3b8e0a-7492-4db1-bd73-c30a488edaa7@kernel.org>
 <191035b8c28.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <k3dhdsa5bjzad2ha5e2uurg2azzs773ier5thkot4w2qcvnv54@yuf52eluqsae>
 <dd381dc1-454f-4ecd-adb7-55de2e15d592@broadcom.com>
In-Reply-To: <dd381dc1-454f-4ecd-adb7-55de2e15d592@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_141939_331853_80E55E1D 
X-CRM114-Status: GOOD (  29.19  )
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

CgpPbiA3LzMxLzI0IDE6NTcgUE0sIEFyZW5kIHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBi
cm9hZGNvbS5jb20+IHdyb3RlOgo+IE9uIDcvMzAvMjAyNCA3OjM4IFBNLCBTZWJhc3RpYW4gUmVp
Y2hlbCB3cm90ZToKCj4gPiBiZSBwcm9iZWQuIFRvIGJlY29tZSB2aXNpYmxlIHRoZSBkZXZpY2Vz
IHJlcXVpcmVzOgo+ID4KPiA+IDEuIFRoZSBMUE8gY2xvY2sgdG8gYmUgZW5hYmxlZAo+ID4gMi4g
UG93ZXIgdG8gYmUgYXBwbGllZAo+ID4gMy4gVGhlIFdMX0VOIGdwaW8gdG8gYmUgY29uZmlndXJl
ZCBjb3JyZWN0bHkKPiA+Cj4gPiBJZiBvbmUgb2YgdGhlIGFib3ZlIGlzIG5vdCBtZXQsIHRoZSBk
ZXZpY2Ugd2lsbCBub3QgZXZlbiBhcHBlYXIgaW4KPiA+ICdsc3BjaScuIEkgYmVsaWV2ZSB0aGUg
YmluZGluZyBuZWVkcyB0byB0YWtlIGludG8gY29uc2lkZXJhdGlvbiwgdGhhdAo+ID4gcHdyc2Vx
IGlzIG5lZWRlZCBmb3IgdGhlIFBDSWUgc2lkZS4gRm9ydHVhbnRlbHkgdGhlIGhlYXZ5IGxpZnRp
bmcgb2YKPiA+IGNyZWF0aW5nIHRoZSBwcm9wZXIgaW5mcmFzdHJ1Y3R1cmUgZm9yIHRoaXMgaGFz
IGFscmVhZHkgYmVlbiBkb25lIGJ5Cj4gPiBCYXJ0b3N6IEdvbGFzemV3c2tpIGZvciBRdWFsY29t
bSBXTEFOIGNoaXBzLiBXaGF0IGlzIG1pc3NpbmcgaXMgYQo+ID4gcHdyc2VxIGRyaXZlciBmb3Ig
dGhlIEJyb2FkY29tIGNoaXAgKG9yIHRoaXMgc3BlY2lmaWMgbW9kdWxlPykuCj4gCj4gVGhhdCBk
b2VzIG5vdCByZWFsbHkgbWFrZSBzZW5zZS4gVGhlcmUgaXMgbm8gcmVsYXRpb24gYmV0d2VlbiB0
aGUgTFBPIAo+IGNsb2NrIGFuZCB0aGUgUENJZSBjbG9ja3Mgc28gMSkgYmVpbmcgYSByZXF1aXJl
bWVudCBmb3IgcHJvYmluZyB0aGUgCj4gZGV2aWNlIGxvb2tzIG9kZC4gSXQgYWxzbyBkb2VzIG5v
dCBtYXRjaCBwYXN0IGV4cGVyaWVuY2Ugd2hlbiBJIGFzc2lzdGVkIAo+IEFuZHkgR3JlZW4gaW4g
Z2V0dGluZyB0aGlzIG1vZHVsZSB1cCBhbmQgcnVubmluZyBhbG1vc3QgdHdvIHllYXJzIGFnby4K
PiAKPiAiIiIKPiBPbiAxMS85LzIyIDE4OjI2LCBBcmVuZCBWYW4gU3ByaWVsIHdyb3RlOgo+ICA+
IE9uIE5vdmVtYmVyIDgsIDIwMjIgMTE6NDg6MjIgQU0gQW5keSBHcmVlbiA8YW5keUB3YXJtY2F0
LmNvbT4gd3JvdGU6Cj4gID4+IEhpIC0KPiAgPj4KPiAgPj4gSSdtIHRyeWluZyB0byBicmluZyB1
cCBBUDYyNzUgc3VwcG9ydCBvbiA2LjEtcmM0Li4uIEkgaGF2ZSB0cmllZCBhIAo+IGZvcndhcmQt
cG9ydGVkIHNkayBicm9hZGNvbSBkcml2ZXIgZnJvbSB0aGUgNS4xMCBiYXNlZCBzb2Mgc2RrLCBh
bmQgdGhlIAo+IG1haW5saW5lIGJyY20gZnVsbG1hYyBkcml2ZXIuCj4gID4KPiAgPiBEbyB5b3Ug
aGF2ZSBhIHJlZmVyZW5jZSB0byB0aGUgU0RLPyBGb3Igd2hhdCBTb0M/Cj4gCj4gSGkgQXJlbmQg
LQo+IAo+IEl0J3MgdGhlIE9PVCBicm9hZGNvbSBkcml2ZXIgdGhhdCBjYW1lIHdpdGggdGhlIGxh
dGVzdCAoU2VwdCAyMDIyKSAKPiB2ZW5kb3IgU0RLIGZvciBSSzM1ODgsIGZyb20gUm9ja2NoaXAu
wqAgVGhlaXIgZXZiIGhhcyBhbiBBUDYyNzUgb25ib2FyZC4KPiAKPiBQQ0llIGdlbmVyYWxseSBp
cyB3b3JraW5nIG9uIHRoaXMgKGVnLCBmb3IgTlZNZSBpbiB0aGUgUENJZSA0LWxhbmUgc2xvdCkg
Cj4gYW5kIGZvciBuZXR3b3JrLCBhbmQgdGhlIFBDSWUgcGFydCBzZWVtcyBPSyB3aGVuIEkgaGFj
ayBpbiBhIGdwaW8gCj4gcmVndWxhdG9yIHRvIGhvbGQgdXAgdGhlIG1vZHVsZSBlbmFibGUgZ3Bp
by4KPiAiIiIKPiAKPiBTbyByZWdhcmRpbmcgMikgYW5kIDMpIEkgYWdyZWUgd2l0aCB5b3UuCgpB
cyBmYXIgYXMgSSByZWNhbGwgKHRoZXJlIGhhcyBiZWVuIGEgbG90IG9mIHdhdGVyIHVuZGVyIHRo
ZSBicmlkZ2UpIEkgdGhpbmsgZXZlcnlvbmUgaGFzIGhhZCB0aGUgc2FtZSBleHBlcmllbmNlIGFu
ZCBjb3JyZWN0bHkgZXhwbGFpbmluZyBpdC4uLiBwY2llIGNhbiB3b3JrIGdlbmVyYWxseSBvbiB0
aGF0IHBsYXRmb3JtIChzYXksIGZvciBudm1lKSBmaW5lLCB3aXRob3V0IHJlZmVyZW5jZSB0byAz
MmtIeiBSVEMgY2xvY2s7IGJ1dCBmb3Igc3BlY2lmaWNhbGx5IHRoZSBBUDYyNzUgbW9kdWxlIGJl
aW5nIHRoZSBwY2llIGRldmljZSwgaGUgd29uJ3QgcGxheSBiYWxsIHVubGVzcyBoZSBjYW1lIHVw
IHdpdGggMzJrSHogdG8gdGhlIG1vZHVsZS4gIEl0IGZlbHQgbGlrZSwgZWcsIGhlIHVzZWQgdGhh
dCBhcyB0aGUgaW5wdXQgZm9yIGhpcyBtYWluIFBMTCBvciBzb21lc3VjaC4KClNvIDEpIGlzIGp1
c3QgYSByZXF1aXJlbWVudCBvZiB0aGF0IG1vZHVsZSB0byBjb21lIHVwIGFuZCB0aGVuIGFwcGVh
ciBhcyBhIHBjaWUgZGV2aWNlLCBpdCdzIG5vdCB0cnlpbmcgdG8gc2F5IGdlbmVyYWxseSB0aGF0
IHBjaWUgZnVuY3Rpb24gZGVwZW5kcyBvbiAzMmtIeiBjb21pbmcgb24gdGhhdCBwbGF0Zm9ybS4K
CkhUSAoKLUFuZHkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
