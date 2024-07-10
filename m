Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8940C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/Bp1DTEXTBldiZgM8ps6vTpcI3xkMPu3ojWCQsjOGE=; b=baXkWJg+qPq8RK8FZtb8g0L3A3
	Qnl8YWZbUCTE7RexSJ+HSsuYohkxdwW7lyohbQoF5/VQjSb0IqMSoVOnED5D3X/ArSCuBUgNpcpfH
	uZLWhHPKytxX53cKDGPyUelLknEckbprKEP9oK7M3709TUwXE3/aPhbRY32ayx9vx5IErf3n+Dkhp
	B50yIrmAYOpZaybGSX0cocvOfAJ6WAyLL4VrZtCNmzSLC8SDTZh8qdwPs3lqlVPAftwxSLNlTXo73
	RgL5lPk9cAPhSbJhzOVAAZU5jTT0f9BKlzEJ8OtSmiVN9pR6YW5blB4oGxE2DS+nL15NNHqV5AYvm
	aHf4R/jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZNr-0000000AzIX-372s;
	Wed, 10 Jul 2024 15:37:31 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRZNW-0000000Az7r-01Sa
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 15:37:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720625827;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=o5YO3vDsKii1RIWSK3o403YfJhyfiHeTw4kZwp3Y5Qo=;
	b=ZLZqfZlC02eYLNF66XHatbEQe0l1dBLEn57xRtf7jPbU9UTrjLi+2me7BI5YIXidRQ/7SR
	AHfQZe6uP3uzrVTYYp9ygrUC0SDm6xs6vTjnMkIT62dRoYrgxq/cuZ7+kOW4cRS7lbujDv
	nMaQBFoeZsKCNasTfQooOXCXM02D//ThsiraJhRgkvMMwTT8z4mZdunbBx61Yb2WojsL1Z
	fePbjW6exjUTujOJDIxkmxts6xxS/YTrEg/XkO0MP+x68VLRrEeIzmpjnDsUrTHmS2G/5w
	F2D1JWyKHAvYlYXbHm+m2AYQq2ux3RNdi2LjpeqSi9G/hrwZN8BJkicmA4hspg==
Date: Wed, 10 Jul 2024 17:37:06 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
In-Reply-To: <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
 <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
 <9da2d4cf-1210-4e5c-9cab-ae500ae303f9@pironex.com>
Message-ID: <184e5fef15492d43d1e56cc2f7f6a735@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_083710_526885_C67C08E0 
X-CRM114-Status: GOOD (  20.74  )
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

T24gMjAyNC0wNy0xMCAxNzoxNCwgUGhpbGlwcCBQdXNjaG1hbm4gd3JvdGU6Cj4gQW0gMTAuMDcu
MjQgdW0gMTY6NTYgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+IE9uIDIwMjQtMDctMTAgMTI6MjAs
IFBoaWxpcHAgUHVzY2htYW5uIHdyb3RlOgo+Pj4gQW0gMTAuMDcuMjQgdW0gMTI6MDIgc2Nocmll
YiBEaWVkZXJpayBkZSBIYWFzOgo+Pj4+IE9uIFdlZG5lc2RheSwgMTAgSnVseSAyMDI0IDExOjMz
OjU2IENFU1QgUGhpbGlwcCBQdXNjaG1hbm4gd3JvdGU6Cj4+Pj4+IERNQSBuYW1lcyBhcmUgcmVx
dWlyZWQgYnkgb2ZfZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbCBmdW5jdGlvbiAKPj4+Pj4gdGhh
dCBpcwo+Pj4+PiBjYWxsZWQgZHVyaW5nIHVhcnQgcHJvYmUuIFNvIHRvIGVuYWJsZSBETUEgZm9y
IHVhcnRzIGFkZCB0aGUgbmFtZXMgCj4+Pj4+IGFzIGluCj4+Pj4+IHRoZSBSSzM1NjggVFJNLgo+
Pj4+IAo+Pj4+IFNldHRpbmcgaXQgb24gY2hhbm5lbHMgd2l0aG91dCBmbG93IGNvbnRyb2wgYXBw
YXJlbnRseSBjYXVzZXMgCj4+Pj4gaXNzdWVzLiBTZWUKPj4+PiAKPj4+PiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDYyODEyMDEzMC4yNDA3Ni0xLWRpZGkuZGVi
aWFuQGNrbm93Lm9yZy8KPj4+IAo+Pj4gQWggaXMgc2VlLiBUaGUgb25seSBwcm9ibGVtIHRoYXQg
aSBoYXZlIGlzIHRvIGVuYWJsZS9kaXNhYmxlIGRtYXMgYnkKPj4+IGhhdmluZyBvciBub3QgaGF2
aW5nCj4+PiBkbWEtbmFtZXMgcHJvcGVydGllcywgd2hlcmUgdGhlIGxhdHRlciBjYXNlIGlzIGZv
bGxvd2VkIGJ5IGtlcm5lbAo+Pj4gZXJyb3IgbWVzc2FnZXMuIFRoYXQKPj4+IGlzIHZlcnkgY291
bnRlcmludHVpdGl2ZS4gTWF5YmUgYSBleHBsaWNpdCBib29sZWFuIGxpa2UgZG1hLWJyb2tlbgo+
Pj4gd291bGQgYmUgYmV0dGVyLiBUaGF0Cj4+PiBjb3VsZCBiZSBzZXQgb24gZHRzaSBsZXZlbCBh
cyBkZWZhdWx0IGFuZCBkZWxldGVkIG9uIGJvYXJkIGR0cyBpZgo+Pj4gd2FudGVkLiBXaXRoIHN1
Y2gKPj4+IGEgYm9vbGVhbiB3ZSBjb3VsZCBhbHNvIHByZXZlbnQgdGhlIG1pc2xlYWRpbmcgImRt
YS1uYW1lcyBwcm9wZXJ0eSAKPj4+IG9mIgo+Pj4gZXJyb3IgbWVzc2FnZQo+Pj4gYW5kIHJlcGxh
Y2UgaXQgd2l0aCBhIGhpbnQgdGhhdCBkbWEgaXMgZGlzYWJsZWQgb24gcHVycG9zZS4KPj4gCj4+
IEZyb20gd2hhdCBJJ3ZlIHJlYWQgaW4gdGhlIHByaW9yIGRpc2N1c3Npb25zLCB0aGlzIHNlZW1z
IGxpa2UgYSBkcml2ZXIKPj4gaXNzdWUsIHNvIHRoZSBkcml2ZXIgc2hvdWxkIGJlIGZpeGVkIGlu
c3RlYWQuCj4gCj4gSSB3b3VsZCB0ZW5kIHRvIGRpc2FncmVlLiBUaGUgc2VyaWFsIGRyaXZlciBq
dXN0IHVzZXMgdGhlIGdlbmVyaWMgZG1hCj4gQVBJLiBUaGUgZXJyb3IKPiBtZXNzYWdlIGNvbWVz
IGZyb20gb2ZfZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbCgpIGluIAo+IGRyaXZlcnMvZG1hL29m
LWRtYS5jCj4gYW5kIGlzIGNhbGxlZCBmcm9tIGRtYV9yZXF1ZXN0X2NoYW4oKSBpbm4gZHJpdmVy
cy9kbWEvZG1hZW5naW5lLmMuCj4gCj4gVGhlIGZpcnN0IGZ1bmN0aW9uIGV4cGVjdHMgYSBkZXZp
Y2UgdHJlZSBub2RlIGFuZCAiZG1hcyIgYW5kCj4gImRtYS1uYW1lcyIgcHJvcGVydGllcy4KPiBB
bmQgImRtYS1uYW1lcyIgaXMgbWlzdXNlZCBhcyAiZW5hYmxlIiBzd2l0Y2ggYW5kIGlmIG5vdCBw
cmVzZW50IChha2EKPiBkaXNhYmxlZCkgaXQKPiBkdW1wcyAiZG1hLW5hbWVzIHByb3BlcnR5IG9m
IG5vZGUgWCBtaXNzaW5nIG9yIGVtcHR5Ii4gRm9yIG1lIGl0J3MgCj4gY2xlYXIgdGhhdAo+IGEg
Y2xlYW4gd2F5IHRvIGRpc2FibGUgb3IgZW5hYmxlIHVzaW5nIGRtYSB2aWEgZHRzIHdvdWxkIGJl
IGJldHRlciB0byAKPiB0ZWxsIHRoZQo+IG9mX2RtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwgZnVu
Y3Rpb24gdGhhdCBkbWEgaXMgZGlzYWJsZWQgb24gcHVycG9zZSwgCj4gc28gaXQKPiBjb3VsZCBy
ZXR1cm4gRU5PREVWIGJ1dCB3aXRob3V0IHByaW50aW5nIGEgbWlzbGVhZGluZyBlcnJvciBsZXZl
bCAKPiBtZXNzYWdlLgoKSG1tLCBwbGVhc2UgZ2l2ZSBtZSBzb21lIHRpbWUgdG8gaW52ZXN0aWdh
dGUgaXQgZnVydGhlci4KCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgUHVzY2htYW5uIDxw
LnB1c2NobWFubkBwaXJvbmV4LmNvbT4KPj4+Pj4gLS0tCj4+Pj4+IMKgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSB8IDEwICsrKysrKysrKysKPj4+Pj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Pj4+PiAKPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPj4+Pj4gYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpIGluZGV4IAo+Pj4+PiBkODU0M2I1NTU3ZWUuLjRh
ZTQwNjYxY2E2YQo+Pj4+PiAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NnguZHRzaQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2eC5kdHNpCj4+Pj4+IEBAIC00ODksNiArNDg5LDcgQEAgdWFydDA6IHNlcmlhbEBm
ZGQ1MDAwMCB7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZwbXVjcnUgU0NMS19V
QVJUMD4sIDwmcG11Y3J1IFBDTEtfVUFSVDA+Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGNsb2Nr
LW5hbWVzID0gImJhdWRjbGsiLCAiYXBiX3BjbGsiOwo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGRt
YXMgPSA8JmRtYWMwIDA+LCA8JmRtYWMwIDE+Owo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZG1hLW5h
bWVzID0gInR4IiwgInJ4IjsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnVh
cnQwX3hmZXI+Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgcmVnLWlvLXdpZHRoID0gPDQ+Owo+Pj4+PiBAQCAt
MTM4OSw2ICsxMzkwLDcgQEAgdWFydDE6IHNlcmlhbEBmZTY1MDAwMCB7Cj4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqAgY2xvY2tzID0gPCZjcnUgU0NMS19VQVJUMT4sIDwmY3J1IFBDTEtfVUFSVDE+Owo+
Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImJhdWRjbGsiLCAiYXBiX3BjbGsi
Owo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgIGRtYXMgPSA8JmRtYWMwIDI+LCA8JmRtYWMwIDM+Owo+
Pj4+PiArwqDCoMKgwqDCoMKgwqAgZG1hLW5hbWVzID0gInR4IiwgInJ4IjsKPj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoCBwaW5jdHJsLTAgPSA8JnVhcnQxbTBfeGZlcj47Cj4+Pj4+IMKgwqDCoMKgwqDC
oMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBy
ZWctaW8td2lkdGggPSA8ND47Cj4+Pj4+IC4uLgo+Pj4gCj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
