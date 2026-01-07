Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17B81CF6C00
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 08:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m3SJLI7eaIk3nCxJ+9zlV9TLHGG4a667YiZ5AvOppdA=; b=1Sm0gSykYhzstz
	6euwa6JqseHCs7yXDxQMIojG8r9rmwGUWYc9CxaYR4gY9yTMWfODIHfv5B4j6jVk0CM4BkcBTSsYD
	IYsRGjryniv0t2EfhfLfXGI5Ur2jOT2bRKkCTOxXJSa5KWV6Qq24viWzE7cytxRDvP4DJvgAiricz
	Qs7LRziXaziELrEZmsifh06t0SPW2UFO8ZcnubYQn+3m5frX7oyqVT1eexUDuld8DeEbrQBeQrnHo
	nlv0c+IdombWLuX32s1jIEpN7Yedkc1u8LnJGja38h32SyzsadzTLZR5YezfkJx8Iujdjva9ItRvp
	ZzQVDASc4e9zHNx52RlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOnK-0000000EOLb-0DVF;
	Wed, 07 Jan 2026 08:21:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOnG-0000000EOKa-2Ql5;
	Wed, 07 Jan 2026 08:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=usWnJ1Rw5KKtaFN+POFS8USjtMWUxqAVJ7bixsDUg8k=; b=DLwSKyLYN/LdD0/WXvn2Rs89I5
	2v7J+yhxRIWB39YOFf9Z+MLBFr6j7l8KJ+dLztW8zknXyw1d3LrDfPZB3BuY84D3bzkkdpyk8AjQy
	YJmOSlFVD2/f+HDCpi1g/GZ/NbzkX2IZUPmXQXjIWA5bDSdFo2XSXs2Hakx4vKYeRPWll2qfWdOBA
	GWrbX6AG6PJfWD4krWsr8ycofxnY4W3Mhp2T4+FK3u9A10m1XHWobrxfIozmM81w+xbj3eW8PbHLa
	GTbii7pEW7P88JsVaZKUVyb7XW69PpO+fygTz9GcFYKOPPz+xAMELdWfL17wdp4+oBedV9vOneaX/
	PiinqkuA==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdOmx-001Lir-9F; Wed, 07 Jan 2026 09:21:07 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chaoyi Chen <kernel@airkyi.com>, Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 07 Jan 2026 09:21:06 +0100
Message-ID: <2437891.BjyWNHgNrj@diego>
In-Reply-To: <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
References: <20260107070322.323-1-kernel@airkyi.com>
 <20260107070322.323-3-kernel@airkyi.com>
 <CABjd4Yw1Dqsa9EsMRFT8LOvyU8QN1C8VP+j0tY6h1uJhhXRSSw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_002126_888425_C08D280A 
X-CRM114-Status: GOOD (  19.75  )
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

QW0gTWl0dHdvY2gsIDcuIEphbnVhciAyMDI2LCAwODo1NjowNCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+IEhpIENoYW95aSwKPiAKPiBPbiBX
ZWQsIEphbiA3LCAyMDI2IGF0IDExOjA04oCvQU0gQ2hhb3lpIENoZW4gPGtlcm5lbEBhaXJreWku
Y29tPiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1j
aGlwcy5jb20+Cj4gPgo+ID4gR2VuZXJhbCBmZWF0dXJlcyBmb3IgcmszNTc2IGV2YjIgYm9hcmQ6
Cj4gPiAgICAgLSBSb2NrY2hpcCBSSzM1NzYKPiA+ICAgICAtIExQRERSNC80WAo+ID4gICAgIC0g
ZU1NQzUuMQo+ID4gICAgIC0gUks4MDYtMngycGNzICsgRGlzY3JldGVQb3dlcgo+ID4gICAgIC0g
MXggSERNSTIuMSBUWCAvIEhETUkyLjAgUlgKPiA+ICAgICAtIDF4IGZ1bGwgc2l6ZSBEUDEuNCBU
WCAoT25seSAyIExhbmVzKQo+ID4gICAgIC0gMnggMTAvMTAwLzEwMDBNIEV0aGVybmV0Cj4gPiAg
ICAgLSA1eCBTQVRBMy4wIDdQaW4gU2xvdAo+ID4gICAgIC0gMnggVVNCMy4yIEdlbjEgSG9zdAo+
ID4gICAgIC0gM3ggVVNCMi4wIEhvc3QKPiA+ICAgICAtIFdJRkkvQlQKPiA+ICAgICAtIC4uLgo+
ID4KPiA+IFRlc3RlZCB3aXRoIGVNTUMvU0RNTUMvSERNSS9VU0IvRXRoZXJuZXQvV0lGSS9CVCBt
b2R1bGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJv
Y2stY2hpcHMuY29tPgoKWy4uLl0KCj4gPiArICAgICAgIHZidXM1djBfdHlwZWM6IHJlZ3VsYXRv
ci12YnVzNXYwLXR5cGVjIHsKPiA+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7Cj4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmJ1czV2
MF90eXBlYyI7Cj4gCj4gVGhpcyBtaWdodCBiZXR0ZXIgYmUgcmVuYW1lZCwgZ2l2ZW4gdGhhdCBs
YXN0IHRpbWUgeW91IG1lbnRpb25lZCB0aGlzCj4gYm9hcmQgZG9lc24ndCBoYXZlIGEgVHlwZS1D
IGNvbm5lY3Rvci4gUGVyaGFwcyByZWd1bGF0b3ItdmJ1czV2MC1vdGc/CgpBbHRlcm5hdGl2ZWx5
IGEgY29tbWVudCBhYm92ZSBpdC4KCkkuZS4gcmVndWxhdG9yLW5hbWluZyBzaG91bGQgYWx3YXlz
IGZvbGxvdyB0aGUgbmFtaW5nIHVzZWQgaW4gdGhlCnNjaGVtYXRpY3MsIHNvIHRoYXQgaXQgZ2V0
cyBlYXNpZXIgdG8gcmVmZXJlbmNlIGJldHdlZW4gc2NoZW1hdGljcwphbmQgZGV2aWNldHJlZS4K
Cgo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+
Owo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+
Owo+ID4gKyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+ICsgICAgICAgICAg
ICAgICBncGlvID0gPCZncGlvMCBSS19QRDEgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiArICAgICAg
ICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX2RldmljZT47Cj4gPiArICAgICAgICAgICAg
ICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgICAgICAgICAgICBwaW5jdHJs
LTAgPSA8JnVzYl9vdGcwX3B3cmVuPjsKPiA+ICsgICAgICAgfTsKPiA+ICsKPiA+ICsgICAgICAg
dmNjMTJ2X2RjaW46IHJlZ3VsYXRvci12Y2MxMnYtZGNpbiB7Cj4gPiArICAgICAgICAgICAgICAg
Y29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1uYW1lID0gInZjYzEydl9kY2luIjsKPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3It
YWx3YXlzLW9uOwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gKyAg
ICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPiA+ICsg
ICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4gPiAr
ICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgIHZjYzF2Ml91ZnNfdmNjcV9zMDogcmVndWxhdG9y
LXZjYzF2Mi11ZnMtdmNjcS1zMCB7Cj4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJy
ZWd1bGF0b3ItZml4ZWQiOwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZj
YzF2Ml91ZnNfdmNjcV9zMCI7Cj4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247
Cj4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ICsgICAgICAgICAg
ICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiA+ICsgICAgICAgICAg
ICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiA+ICsgICAgICAgICAg
ICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPiA+ICsgICAgICAgfTsKPiA+ICsKPiA+ICsg
ICAgICAgdmNjMXY4X3Vmc192Y2NxMl9zMDogcmVndWxhdG9yLXZjYzF2OC11ZnMtdmNjcTItczAg
ewo+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+
ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MxdjhfdWZzX3ZjY3EyX3MwIjsK
PiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYm9vdC1vbjsKPiA+ICsgICAgICAgICAgICAg
ICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4t
bWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgt
bWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8
JnZjY18xdjhfczM+Owo+ID4gKyAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICB2Y2MzdjNfaHVi
cmVzZXQ6IHZjYzN2My1odWJyZXNldCB7Cj4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0g
InZjYzN2M19odWJyZXNldCI7Cj4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247
Cj4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiAKPiBJZiB0aGlzIHJl
Z3VsYXRvciBzdXBwbGllcyBhIHNvbGRlcmVkLW9uIGRpc2NyZXRlIGh1YiBhbmQgaXMgcmVxdWly
ZWQKPiB0byBwb3dlciBpdCB1cCwgd29uJ3QgaXQgYmUgYmV0dGVyIHRvIGRlc2NyaWJlIHRoZSBo
dWIgaW4gdGhlIGRldmljZQo+IHRyZWUgKHNlZSBiaW5kaW5nIGF0IFsxXSksIG1ha2UgdGhlIHJl
Z3VsYXRvciBpdHMgc3VwcGx5LCBhbmQgcGVyaGFwcwo+IGRyb3AgdGhlICJyZWd1bGF0b3ItYm9v
dC1vbi9yZWd1bGF0b3ItYWx3YXlzLW9uIiBhbm5vdGF0aW9uIGhlcmUsCj4gbGV0dGluZyB0aGUg
cmVndWxhdG9yIGNvcmUgZGVhbCB3aXRoIGl0cyBlbmFibGluZyBpbnN0ZWFkPwo+IAo+IFsxXSBo
dHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi91c2ItZGV2aWNlLnlhbWwKClllcCwgaXQgd291bGQg
YmUgbmljZXIgdG8gaXQgdGhpcyB3YXkuCkEgbGl2ZSBleGFtcGxlIGNhbiBiZSBmb3VuZCBpbiB0
aGUgUm9jayA1IElUWCBbMl0KClsyXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cyNuMTI2NgoKCkhlaWtvCgoKPiBbc25pcF0K
PiAKPiBPdGhlciB0aGFuIHRoZXNlLCBMR1RNIC0gdGhhbmtzIGZvciBhZGRyZXNzaW5nIG15IGNv
bW1lbnRzIGZyb20gdjEhCj4gRmVlbCBmcmVlIHRvIGluY2x1ZGUgbXk6Cj4gCj4gUmV2aWV3ZWQt
Ynk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiAKPiBCZXN0IHJlZ2FyZHMs
Cj4gQWxleGV5Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
