Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A8E2CCF2C4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 06:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnWziIDjHlG66AxMPp0ZJaAurfSg20wowfoUJMM4eaI=; b=u9hidsLzorqdZQ
	gQw9rh50+kGOnaZGZyJLrouWOE0P/pyx4BDHyNMoJ6bnEmvntAAZuIFRdJXbvgc1QbuDwWRdRl+8B
	WEheneOX9F8Bl6wPKxLrvz7RCur7Id+yH1LPy/mGcdfAeuV5ut+1IZHUz84gpdRZHMHKW1HwinX1i
	RhMrGg7wIIJsbrs9NdGvDGrgbwyWe9PLL4OZaSmCPoicocvLoT/kGXAn1VbXm4xCJS2CYjfWx+5wO
	h/NHtM7hI2PpHgMIOaUdLVzEjQURPCK4QWtovuTnO6rqAIpOxE6SzKgjIBZSh5iO8i/Y0qQa5zEak
	LMJRp0uOXsh0bCFwn4Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKeF-00000005djK-0miK;
	Sun, 18 Oct 2026 06:45:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKeA-00000005di4-2e76;
	Sun, 18 Oct 2026 06:45:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 56CD744500;
	Sun, 18 Oct 2026 06:45:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 320A71F000C5;
	Sun, 18 Oct 2026 06:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792305930;
	bh=7foX2sltJUBrduQaVLWCnWkINXoCkL4ewEk5y5ZKQ58=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Zogmw17uoSjVmvTpbTjGgSQHk/XQKQObiSDRXGOMLOqj8YxLEaWE4DCQwudfUyuzJ
	 GEjLPRfApfAvyS6x9APx5Yr4MO9E5I5b3tCAZ13Dkxzy9mbt+Ekz4FsLZNlY/nKd2U
	 HGStFM2SUZoqs2sWqHojVeCh/dswU9yY6cQkSWRrSmQYR3pZbp9SFVeSCJajUEv3SJ
	 iWzKzWf9ZXpjSsIVp9Pj4sxX2VktaHgX/3fcJ3GC+2rWUAisjlXlQsKYqmQsJ5SeS/
	 quS33+0yUAwrG7STT+Sqeo/LJ9sCsyXWivR63BWr+mj2518y1r7+JfT+BwB3K1Qirz
	 tOmqHQkZZMKWQ==
Subject: Re: [PATCH net-next v12 2/6] dt-bindings: net: pcs: add
 rockchip,rk3568-xpcs support
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: kuba@kernel.org, netdev@vger.kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
 david.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Sun, 18 Oct 2026 06:45:28 +0000
Message-ID: <179230592878.3135.12873232337699291552@kernel.org>
In-Reply-To: <20261017054406.1828061-3-coiaprant@gmail.com>
References: <20261017054406.1828061-3-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIG5ldyBiaW5kaW5nCiAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAscmszNTY4LXhwY3Mu
eWFtbOKApgoKLS0KCmR0LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJvY2tjaGlwLHJrMzU2OC14
cGNzIHN1cHBvcnQKClRoaXMgcGF0Y2ggYWRkcyBhIGRldmljZSB0cmVlIGJpbmRpbmcgZm9yIHRo
ZSBTeW5vcHN5cyBEZXNpZ25XYXJlIFhQQ1Mgb24KdGhlIFJvY2tjaGlwIFJLMzU2OCBTb0MuIFRo
ZSBYUENTIHNpdHMgb24gdGhlIEFQQjMgYnVzIGFuZCBjb25uZWN0cwppbnRlcm5hbGx5IHRvIHRo
ZSBOYW5lbmcgQ29tYm8gU2VyRGVzIFBIWS4gSXQgc3VwcG9ydHMgMTAwMEJBU0UtWCwgU0dNSUkK
YW5kIFFTR01JSS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9uZXQvcGNzL3JvY2tjaGlwLHJrMzU2OC14cGNzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvbmV0L3Bjcy9yb2NrY2hpcCxyazM1NjgteHBjcy55YW1sCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi5hMzMxODgwZWIxMWMxCj4g
LS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9u
ZXQvcGNzL3JvY2tjaGlwLHJrMzU2OC14cGNzLnlhbWwKClsgLi4uIF0KCj4gK3Byb3BlcnRpZXM6
Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiByb2NrY2hpcCxyazM1NjgteHBjcwo+ICsK
PiArICByZWc6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVt
czoKPiArICAgICAgLSBkZXNjcmlwdGlvbjogQVBCMyBidXMgaW50ZXJmYWNlIGNsb2NrIChjbGtf
Y3NyX2kpLCByZXF1aXJlZCBmb3IgcmVnaXN0ZXIgYWNjZXNzCj4gKyAgICAgIC0gZGVzY3JpcHRp
b246IEVFRSBjbG9jayAoY2xrX2VlZV9pKSwgcmVxdWlyZWQgZm9yIEVuZXJneSBFZmZpY2llbnQg
RXRoZXJuZXQgb3BlcmF0aW9uCj4gKwo+ICsgIGNsb2NrLW5hbWVzOgo+ICsgICAgaXRlbXM6Cj4g
KyAgICAgIC0gY29uc3Q6IGNzcgo+ICsgICAgICAtIGNvbnN0OiBlZWUKPiArCj4gKyAgcGh5czoK
PiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVt
czogMQo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAt
IGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIHBoeXMKPiArICAtIHBvd2VyLWRvbWFp
bnMKPiArCj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQoKW1NldmVyaXR5OiBMb3ddClNo
b3VsZCB0aGlzIGJpbmRpbmcgbGV0IHRoZSBYUENTIGFjdCBhcyBhIGNsb2NrIHByb3ZpZGVyPwoK
VGhlIFJLMzU2OCBDUlUgdXNlcyBYUENTLW5hbWVkIGNsb2NrcyBhcyBwYXJlbnRzIGZvciB0aGUg
R01BQyBSWC9UWAptdXhlcywgaW4gZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2OC5jOgoK
UE5BTUUobXV4X2dtYWMwX3J4X3R4X3ApID0geyAiY2xrX2dtYWMwX3JnbWlpX3NwZWVkIiwgImNs
a19nbWFjMF9ybWlpX3NwZWVkIiwgImNsa19nbWFjMF94cGNzX21paSIgfTsKUE5BTUUobXV4X2dt
YWMxX3J4X3R4X3ApID0geyAiY2xrX2dtYWMxX3JnbWlpX3NwZWVkIiwgImNsa19nbWFjMV9ybWlp
X3NwZWVkIiwgImNsa19nbWFjMV94cGNzX21paSIgfTsKClRoZXNlIGFyZSB0aGUgcGFyZW50cyBv
ZiBTQ0xLX0dNQUMwX1JYX1RYIGFuZCBTQ0xLX0dNQUMxX1JYX1RYLgpyazM1NngtYmFzZS5kdHNp
IHBhc3NlcyB0aG9zZSBjbG9ja3MgdG8gdGhlIEdNQUMgYXMgbWFjX2Nsa19yeCwKbWFjX2Nsa190
eCBhbmQgY2xrX21hY19zcGVlZC4gTm90aGluZyBpbiB0aGUgdHJlZSByZWdpc3RlcnMKY2xrX2dt
YWMwX3hwY3NfbWlpIG9yIGNsa19nbWFjMV94cGNzX21paSB0b2RheS4KCkZvciBTR01JSSBvbiBH
TUFDMC9HTUFDMSwgYSBib2FyZCBEVCB3b3VsZCBuZWVkIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMK
dG8gcG9pbnQgU0NMS19HTUFDbl9SWF9UWCBhdCB0aGUgWFBDUyBNSUkgY2xvY2suIFRoaXMgc2No
ZW1hIGhhcyBubwojY2xvY2stY2VsbHMgb3IgY2xvY2stb3V0cHV0LW5hbWVzLCBhbmQgYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCm1lYW5zIGR0X2JpbmRpbmdfY2hlY2sgcmVqZWN0cyB0aGVt
LiBTbyB0aGUgRFQgY2FuJ3QgbmFtZSB0aGUgWFBDUyBub2RlCmFzIHRoZSBzb3VyY2Ugb2YgdGhh
dCBjbG9jay4gQm9hcmRzIHdvdWxkIGhhdmUgdG8gdXNlIGEgZml4ZWQtY2xvY2sKcGxhY2Vob2xk
ZXIgY2FycnlpbmcgdGhlIENSVSdzIHN0cmluZyBuYW1lIGluc3RlYWQuCgpEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvd3JpdGluZy1iaW5kaW5ncy5yc3Qgc2F5cyAiRE8gYXR0ZW1w
dAp0byBtYWtlIGJpbmRpbmdzIGNvbXBsZXRlIGV2ZW4gaWYgYSBkcml2ZXIgZG9lc24ndCBzdXBw
b3J0IHNvbWUKZmVhdHVyZXMiLiBUaGUgY29tbWl0IG1lc3NhZ2UgZXhwbGFpbnMgd2h5IHRoZSBT
UlNUX1hQQ1MqIHJlc2V0cyBhcmUKbGVmdCBvdXQgYnV0IHNheXMgbm90aGluZyBhYm91dCB0aGUg
TUlJIGNsb2NrIG91dHB1dHMuCgpDb3VsZCAjY2xvY2stY2VsbHMgKGFuZCBjbG9jay1vdXRwdXQt
bmFtZXMsIGlmIG5lZWRlZCkgYmUgYWRkZWQgZm9yIHRoZQpwZXItcG9ydCBNSUkgY2xvY2tzPyBP
ciBjb3VsZCB0aGUgY29tbWl0IG1lc3NhZ2Ugc2F5IHdoeSB0aGV5IGFyZSBsZWZ0Cm91dD8KCj4g
Kwo+ICtleGFtcGxlczoKClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQvMjAyNjEwMTcwNTQ0
MDYuMTgyODA2MS0xLWNvaWFwcmFudCU0MGdtYWlsLmNvbQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
