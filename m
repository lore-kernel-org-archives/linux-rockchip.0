Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 467A0C44529
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 12:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Al7v35uzw1CPcodkH7dT0pGJyTiSBFghcdpXZN2TAZU=; b=XKUhRGi8xhp1Tu
	NgLlDwtbuw2Jw8+bBdCfxC+yI+RtsIPvHgAokb0ssob8qAEwFS/GVgVMbJWqTx3o1EsN8NXNYLpkS
	U0UAMfSm5+pfgnDgwYuo9S9hS5ZYfBmDK1sbUWj975iNFdW6CyLwttmeyqj6/7AAVSc6wbR7S/fBb
	9W3jbp6eWrKgmpnm8/T5/KxPklN3aR32JUvGbSRIwauKUNZfnrmCIDIWJp6uXfJriq+qAQyWXF7Fp
	LlTEEZekrX8YnmiANqQqfnbbc/vwrt/OUGBvWvAftMT422jd0Wi9zZutpxf8UdCLgzHXQ/z70WlLc
	FpeVbrTQI/Ht/776PC6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm9cz-00000009QSz-2Pke;
	Tue, 21 Jul 2026 12:31:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm9cw-00000009QS8-3dGe;
	Tue, 21 Jul 2026 12:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pSOO82rGZ9vf4QviO3ci9+FEx87mVFslO4kBFj925fQ=; b=TJ4Oysv43cFrTxhtyiWLeDZnBv
	2AjXndaq382fbBu49j+SvshHJlKW8X8MFF2nNBBQI7TXsDoyXKgAVTj0oezpBn35Dq//vFxkPGVEc
	y2QuOd35TUYgbiGGSAgrs/Fcp6Tr+nYrrSFHod5KE+odP6OWylUmkF4MgNGf71dQty8u75VZwyaHO
	HgudQ3MHNt5DOKl4jWhN1lRd+O3tkqelcDlo/55VjuDU+nTy8x1vx8ymNKKHqfbjctkgAr2A4EreE
	DBLj0GGCI7N/RYtMRhq95q3Yn2AFDUzwdiIrz+JpLe2tOsVJqrBx4lIqyuUMcNJHLEDF7O8eT0t/3
	+zlTW0oQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Simon Glass <sjg@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Fabio Estevam <festevam@nabladev.com>, devicetree@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Bartosz Golaszewski <brgl@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Riesch <michael.riesch@collabora.com>, Rob Herring <robh@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Yao Zi <ziyao@disroot.org>,
 huang lin <hl@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/6] dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
Date: Tue, 21 Jul 2026 14:30:53 +0200
Message-ID: <3926001.VQhiAETyHQ@diego>
In-Reply-To: <20260721-didactic-tan-dodo-112ffc@quoll>
References: <20260714193656.2196447-1-sjg@chromium.org>
 <20260714193656.2196447-4-sjg@chromium.org>
 <20260721-didactic-tan-dodo-112ffc@quoll>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_053114_961465_0224394F 
X-CRM114-Status: GOOD (  20.85  )
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

SGkgS3J6eXN6dG9mLAoKQW0gRGllbnN0YWcsIDIxLiBKdWxpIDIwMjYsIDEwOjE2OjMzIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBP
biBUdWUsIEp1bCAxNCwgMjAyNiBhdCAwMTozNjo0MFBNIC0wNjAwLCBTaW1vbiBHbGFzcyB3cm90
ZToKPiA+IEFkZCB0aGUgY29tcGF0aWJsZXMgZm9yIHRoZSBnZW5lcmFsIHJlZ2lzdGVyIGZpbGVz
IG9mIHRoZSBSb2NrY2hpcAo+ID4gUlYxMTA2OiB0aGUgbWFpbiBHUkYsIGFuZCB0aGUgcGVyLWJh
bmsgR1BJTyBJT0MgYmxvY2tzIHVzZWQgYnkgdGhlIHBpbgo+ID4gY29udHJvbGxlci4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1bS5vcmc+Cj4gPiAtLS0K
PiA+IAo+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+IC0gRHJvcCB0aGUgZ3JmLWNydSBjbG9jay1jb250
cm9sbGVyIGNoaWxkIGFuZCB1c2UgdGhlIHN5c2Nvbi1vbmx5Cj4gPiAgIGdyb3VwIGZvciB0aGUg
bWFpbiBHUkYsIHNpbmNlIHRoZSBDUlUgbm93IHByb3ZpZGVzIHRoZSBNTUMgcGhhc2UKPiA+ICAg
Y2xvY2tzCj4gPiAtIFVzZSBhIHNpbmdsZSBncGlvLWlvYyBjb21wYXRpYmxlIGZvciB0aGUgcGVy
LWJhbmsgSU9DIGJsb2NrcyBpbgo+ID4gICBwbGFjZSBvZiB0aGUgaW9jIGFuZCBwbXVpb2MgcmVn
aW9ucwo+ID4gCj4gPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9yb2Nr
Y2hpcC9ncmYueWFtbCB8IDIgKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
c29jL3JvY2tjaGlwL2dyZi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3NvYy9yb2NrY2hpcC9ncmYueWFtbAo+ID4gaW5kZXggMmNjNDM3NDJiOGUzLi5mZDkyMzVhYzEz
MzQgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29j
L3JvY2tjaGlwL2dyZi55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sCj4gPiBAQCAtNjQsNiArNjQsOCBAQCBwcm9wZXJ0
aWVzOgo+ID4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtdm8xLWdyZgo+ID4gICAg
ICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1ODgtdm9wLWdyZgo+ID4gICAgICAgICAgICAgICAg
LSByb2NrY2hpcCxydjExMDNiLWlvYwo+ID4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjEx
MDYtZ3Bpby1pb2MKPiAKPiBBbmQgdGhpcyBhbHNvIGFuc3dlcnMgbXkgcHJldmlvdXMgZW1haWwg
KHBpbmN0cmwvZ3BpbyBiYW5rKTogeW91IGhhdmUKPiBvbmUgR1BJTyBJT0MsIG5vdCBtdWx0aXBs
ZSBvbmVzLCBhbHRob3VnaCBjb21taXQgbXNnIHRlbGxzIGRpZmZlcmVudAo+IHN0b3J5LiBDb25m
dXNpbmcuIFRoZSBjb21wYXRpYmxlIGhlcmUgZGVmaW5lcyByZWdpc3RlciBsYXlvdXQgKHNlZQo+
IHdyaXRpbmcgYmluZGluZ3MgLSBpdCBpcyBleHBsaWNpdGx5IGRvY3VtZW50ZWQgdGhlcmUpIHNv
IGRvIHlvdSBoYXZlIG9uZQo+IGRldmljZSBvciBtdWx0aXBsZSB3aXRoIHRoZSBzYW1lIHJlZ2lz
dGVyIGxheW91dD8KCkl0J3MgYWN0dWFsbHkgb3B0aW9uIDMgOy0pIC4KClRoZSBUUk0gZGVzY3Jp
YmVzIHNlcGFyYXRlIEdlbmVyYWwtUmVnaXN0ZXItRmlsZXMKCUdQSU8wIC0gdGhlIGFjdHVhbCBH
UElPIGNvbnRyb2xsZXIgLSAgMHhGRjM4MDAwMApHUElPMF9JT0MgLSAweEZGMzg4MDAwICAocGlu
Y29uZmlnKQoJWyBidW5jaCBvZiBvdGhlciBkZXZpY2VzIGxpa2UgdGhlIHZpZGVvIGVuY29kZXIg
XQoJR1BJTzEgLSAweEZGNTMwMDAwCkdQSU8xX0lPQyAtIDB4RkY1MzgwMDAKCS4uLgpHUElPMl9J
T0MgLSAweEZGNTQ4MDAwIAoJLi4uCkdQSU8zX0lPQyAtIDB4RkY1NTgwMDAKCS4uLgpHUElPNF9J
T0MgLSAweEZGNTY4MDAwCgpCdXQgdGhlaXIgcmVnaXN0ZXItbGF5b3V0cyBhcmUgZGVmaW5pdGx5
IG5vdCBpZGVudGljYWwuIEZvciBleGFtcGxlIGluCkdQSU8wX0lPQyB0aGVyZSBpcyBvbmUgcmVn
aXN0ZXIgY29udHJvbGxpbmcgU2NobWl0dCBUcmlnZ2VycyBhdCBvZmZzZXQKMHg1OCwgKCBHUElP
MF9JT0NfR1BJTzBBX0lFX1NNVCApIC0gYmVjYXVzZSBvbmx5IHRoZSBmaXJzdCA4IHBpbnMgaGF2
ZQp0aG9zZSwgd2hpbGUgaW4gR1BJTzFfSU9DLCA0IFNNVCByZWdpc3RlciBzdGFydCBhdCAweDI4
MC4KClNvIHRoZXkgZG8gbmVlZCBzZXBhcmF0ZSBjb21wYXRpYmxlcywgcGVyIHlvdXIgY29tbWVu
dC4KCgpIZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
