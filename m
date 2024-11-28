Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D66DCD690EE
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 09:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DAjpV4szmqtbBg0u2zr6f7V9Q3v9ovuLMswpbIjiS/E=; b=0RJLrQF14K1BN7l7Yl1ZuXSATn
	JPwNhlFxlWEEGjHwgM/RDEvCNN3sFT+D+5IVFVtBh+ADnLXhTMh3jc+Xw7yiSGiDtguhN0V8HfMll
	dpKeygozm2DbD1l4KLmJVTrxFtBaZaJoExl3GJv1yuTyZFHdrct9CsFLBb9/x+P5VBe1v7WDOiQpx
	NYUp8bAe7KV80JdabAHAMOWWkm7/pRYrOcdRCQ1MXpmTyDt132DG71nBL0IqWf5eBw/jBH3xkXQzO
	lx08WVAfX5x0To7/VSb1ELeZYDIj24+eoEcp8gYApc4qMssA1oaM0mm4wv7t01qzSrq7XhrN+8F4x
	fpHkI3Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaSI-0000000F6lG-2Wo6;
	Thu, 28 Nov 2024 09:04:58 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaSG-0000000F6kj-1M41
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Nov 2024 09:04:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1732784693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ldR/uHYWReTVbi7ij2TG+qwpyW4jFa6oh0arwlI8e1Y=;
	b=KCct7+alPLJOKOYK86z7p0Z6ppoEnE709quiqHgNpAkw7bAQ47Z+SoGGRqc/7kNxxvu8SI
	6fW740CYDnlN6B/isO5hjWWcBEftMIaxl4g0G5I7tQtdV0Ape8xkMxpNyEJOuBnic3WDRK
	XWg4+53KEOm9saeeWpXiqIfmygKceovZvXFbt6o96IKZYsgqAQleYJbcdAxk6sO6gqUUbD
	OvkfIoTkAZZi0TYUneLRdlWywJ1PrLj9YKYJ9spv240f7BLsXJ/Ewjh+wHHVSL8rxyFZys
	1Ka48k8eaDIG76Xirs2av/02vv1CJYjB+jNDC6yfjnqiqugch+/vjrFW6630EQ==
Date: Thu, 28 Nov 2024 10:04:52 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for
 Radxa ROCK 5C
In-Reply-To: <F596759069124768+5da60c49-3b1f-423c-b96e-8435e0cef88a@radxa.com>
References: <20241119100813.78820-1-naoki@radxa.com>
 <f1255d6a5c18fb43c47fab756f622891@manjaro.org>
 <F596759069124768+5da60c49-3b1f-423c-b96e-8435e0cef88a@radxa.com>
Message-ID: <86803e3c7797d9d661826fb56a0622b2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_010456_663754_49D69D34 
X-CRM114-Status: GOOD (  18.45  )
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

SGVsbG8gRnVrYXVtaSwKCk9uIDIwMjQtMTEtMjggMDI6MDMsIEZVS0FVTUkgTmFva2kgd3JvdGU6
Cj4gT24gMTEvMjgvMjQgMDk6MzksIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNC0xMS0x
OSAxMTowOCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+IGFkZCAiZGNpbiIgbGFiZWwgdG8gdmNj
NXZfZGNpbiByZWd1bGF0b3IgYW5kIHVzZSBpdCBpbiB2Y2Nfc3lzaW4KPj4+IHJlZ3VsYXRvci4K
Pj4+IAo+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+
Pj4gLS0tCj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4gLSBub25lCj4+PiAtLS0KPj4+IMKgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzIHwgNCArKy0tCj4+PiDC
oDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+PiAKPj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01
Yy5kdHMKPj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMu
ZHRzCj4+PiBpbmRleCA2ZGExM2I2YjlhN2IuLmI1NDYwYzE3OWVmNyAxMDA2NDQKPj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVjLmR0cwo+Pj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWMuZHRzCj4+PiBA
QCAtODgsNyArODgsNyBAQCB2Y2MzdjNfcGNpZTJ4MWwyOiByZWd1bGF0b3ItdmNjM3YzX3BjaWUy
eDFsMiB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHZpbi1zdXBwbHkgPSA8JnZjY19zeXNpbj47Cj4+
PiDCoMKgwqDCoCB9Owo+Pj4gCj4+PiAtwqDCoMKgIHZjYzV2X2RjaW46IHJlZ3VsYXRvci12Y2M1
di1kY2luIHsKPj4+ICvCoMKgwqAgdmNjNXZfZGNpbjogZGNpbjogcmVndWxhdG9yLXZjYzV2LWRj
aW4gewo+PiAKPj4gSSBqdXN0IHdlbnQgdGhyb3VnaCB0aGUgYXNzb2NpYXRlZCBwYXJ0IG9mIHRo
ZSBST0NLIDVDIHNjaGVtYXRpYywKPj4gYW5kIEkgd2FzIHVuYWJsZSB0byBzZWUgYW55IHJlYXNv
bnMgd2h5IHNob3VsZCB3ZSBpbnRyb2R1Y2UgImRjaW4iCj4+IGFzIGFub3RoZXIgYWxpYXMgaGVy
ZT8KPj4gCj4+IFRoZSByb290IG9mIHRoZSBST0NLIDVDJ3MgcG93ZXIgdHJlZSBpcyBsYWJlbGVk
ICI1dl9kY2luIiBpbiB0aGUKPj4gc2NoZW1hdGljLCBzbyByZW5hbWluZyAidmNjNXZfZGNpbiIg
dG8gIjV2X2RjaW4iIHdvdWxkIG1ha2Ugc2Vuc2UsCj4+IGJ1dCBJIGRvbid0IHNlZSB3aHkgc2hv
dWxkIHdlIGFkZCBhbm90aGVyIGFsaWFzLgo+IAo+IFJPQ0sgNUEgaGFzIHZjYzEyX2RjaW4gd2hp
Y2ggc3VwcGx5IHBvd2VyIHRvIHZjY19zeXNpbi4gYm90aAo+IHZjYzV2X2RjaW4gb24gUk9DSzVD
IGFuZCB2Y2MxMnZfZGNpbiBvbiBST0NLIDVDIGhhdmUgYWRkaXRpb25hbCAiZGNpbiIKPiBsYWJl
bCBmb3Igc2hhcmluZyAuZHRzaS4gKHBsZWFzZSBjaGVjayBQQVRDSCAzLzMpCgpIbW0sIEkgZG9u
J3QgdGhpbmsgdGhhdCdzIHRoZSBiZXN0IHdheSB0byBhY2hpZXZlIHRoZSBzaGFyZWQgbmF0dXJl
Cm9mIHRoZSAuZHRzaSBmaWxlLiAgSSB0aGluayB0aGF0IGFuIGFjY2VwdGFibGUgd2F5IHRvIGFj
aGlldmUgdGhhdAp3b3VsZCBiZSB0byBqdXN0IHJlbmFtZSAidmNjNXZfZGNpbiIgdG8gInZidXNf
dHlwZWMiIChhbmQgcmVuYW1lCiJyZWd1bGF0b3ItdmNjNXYtZGNpbiIgdG8gInJlZ3VsYXRvci12
YnVzLXR5cGVjIiBhcyB3ZWxsKSwgYmVjYXVzZQoidmJ1c190eXBlYyIgaXMgYWN0dWFsbHkgdXNl
ZCBpbiB0aGUgUk9DSyA1QSBzY2hlbWF0aWMuICBUaG91Z2gsIGl0Cmlzbid0IHVzZWQgaW4gdGhl
IFJPQ0sgNUMgc2NoZW1hdGljLCBidXQgc2hvdWxkIHN0aWxsIGJlIG9idmlvdXMgdG8KYW55b25l
IHdhbnRpbmcgdG8gY29ycmVsYXRlIHRoZSBEVCBhbmQgdGhlIHNjaGVtYXRpYy4KCkl0IHNob3Vs
ZCBhbHNvIGJlIGRlc2NyaWJlZCBiZXR0ZXIgaW4gdGhlIHBhdGNoIGRlc2NyaXB0aW9uLCB3aGlj
aAppcyBzaW1wbHkgdG9vIHRlcnNlIGluIGl0cyBjdXJyZW50IGZvcm0uICBBbHNvLCB0aGlzIHBh
dGNoIHNlcmllcwpzaG91bGQgaGF2ZSBhIGNvdmVyIGxldHRlciB0aGF0IGRlc2NyaWJlcyBpdHMg
cHVycG9zZS4KCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZp
eGVkIjsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXZfZGNpbiI7
CgpIZXJlLCAidmNjNXZfZGNpbiIgc2hvdWxkIGFsc28gYmUgcmVuYW1lZCB0byAidmJ1c190eXBl
YyIgaW4gdGhlCnNoYXJlZCAuZHRzaSBmaWxlLCB3aGljaCBpcyByYXRoZXIgb2J2aW91cy4KCkFs
c28sIHRoZSBhc3NvY2lhdGVkIHJlZ3VsYXRvci1taW4tbWljcm92b2x0IGFuZCByZWd1bGF0b3It
bWF4LQptaWNyb3ZvbHQgcHJvcGVydGllcyBzaG91bGQgYmUgZHJvcHBlZCBpbiB0aGUgc2hhcmVk
IC5kdHNpIGZpbGUKYW5kIG1vdmVkIHRvIHRoZSBST0NLIDVBIGFuZCA1QyBib2FyZCAuZHRzIGZp
bGVzLCBiZWNhdXNlIHRoZQpST0NLIDVBIGFuZCA1QyBzY2hlbWF0aWNzIGluZGljYXRlIHRoYXQg
ZGlmZmVyZW50IFZCVVMgdm9sdGFnZXMKKDEyIFYgYW5kIDUgViwgcmVzcGVjdGl2ZWx5KSBhcmUg
dXNlZC4KCkZpbmFsbHksIGFsbCB0aGVzZSBEVCBjaGFuZ2VzIHNob3VsZCBiZWxvbmcgdG8gdGhl
IHBhdGNoIGluIHRoaXMKc2VyaWVzIHRoYXQgYWN0dWFsbHkgY3JlYXRlcyB0aGUgc2hhcmVkIC5k
dHNpIGZpbGUuICBJIHNlZSBubyBwb2ludApvciB2YWx1ZSBpbiBoYXZpbmcgaXQgcGVyZm9ybWVk
IGluIGEgc2VwYXJhdGUgcGF0Y2guCgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItYWx3
YXlzLW9uOwo+Pj4gQEAgLTE3MCw3ICsxNzAsNyBAQCB2Y2Nfc3lzaW46IHJlZ3VsYXRvci12Y2Mt
c3lzaW4gewo+Pj4gwqDCoMKgwqDCoMKgwqDCoCByZWd1bGF0b3ItYm9vdC1vbjsKPj4+IMKgwqDC
oMKgwqDCoMKgwqAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+PiDCoMKg
wqDCoMKgwqDCoMKgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+Pj4gLcKg
wqDCoMKgwqDCoMKgIHZpbi1zdXBwbHkgPSA8JnZjYzV2X2RjaW4+Owo+Pj4gK8KgwqDCoMKgwqDC
oMKgIHZpbi1zdXBwbHkgPSA8JmRjaW4+Owo+Pj4gwqDCoMKgwqAgfTsKPj4+IAo+Pj4gwqDCoMKg
wqAgdmNjYTogcmVndWxhdG9yLXZjY2EgewoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
