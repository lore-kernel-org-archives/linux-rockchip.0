Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A09B6C3DA61
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VoORGsZdQVRrkEuwyg7I/TqaEr7J241tzXmCyRbuRy8=; b=h/InpyIw/XpYD3hg42MyGJ3FWe
	TKAdzJIsCzkNnr9xjLzJZHBWBpnl2GPVf/ChRUKTwT/kjl4Be1UuqT/JgvbP4R5lL9LHnbY/7folS
	+i+SzVlslr9DbtThfe7Zj4xFWSnr+8ZndcK5DBjbfe6Ku45Oa/9p5kcwJeO505rx1UXz5bTG9oap0
	VzVtHxOqCkl9Ct6sFE5wrL6KrFLZE1xdKqMWUS0J4heTY8M/9F54bETZbRgHh62cLm6Xah2jisF7o
	ESVyp/vEYHovoAZAchFFDtmqFhWFEKDayTncHAGe5DX1Folh36o/jyYtyCjw6U2DNxS5k23LVxHbw
	0T34YA5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMkJ-0000000GRU9-41pm;
	Thu, 18 Jul 2024 08:44:15 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMjx-0000000GROp-0mTs;
	Thu, 18 Jul 2024 08:43:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721292231;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kKk8adyi9jKYJ3vFAHnVWE13YqvAw47sg8mkzonVaMk=;
	b=XTBAEQjIAr/Sm2A4jEnG0EecGJsQtbpQ71+5D9saa21Z31AlZzAuCCJB2UV93jw/+uf09E
	lDPD9O//Y2wtfeIcL7hsxVWsTxU2ZzvfK7ZbSH8u80DZvCnk7+lGC6VUb5tolqXY08I/AZ
	2Bqjlc0+wt6+pNVWN9rWx4LLHRjvd1gA/wbcoFfAwKoUxeKgkLU1d4Ti3Iyekvwslzkz1/
	6D+44dufeuQDm6SbfFpestveehQS/w9ROgX63HRgrec1bbQLe4/+wo9UMhBaJRPYldAOHJ
	o9t65FddTbvPbu9rItji07hs6ooM5kbuOrUBkPbCYURzvo+WWhU09JQk+Qc3Kg==
Date: Thu, 18 Jul 2024 10:43:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Christopher Obbard <chris.obbard@collabora.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>, Collabora Kernel Mailing List
 <kernel@collabora.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 with baseboard
In-Reply-To: <20240718-lapped-suffocate-0216bad82c68@wendy>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
 <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
 <0c804e9a0227904b16bfb779f2009af1@manjaro.org>
 <e34f1a0a81de24437be7f582c719d3f128d44b51.camel@collabora.com>
 <20240718-lapped-suffocate-0216bad82c68@wendy>
Message-ID: <6ed3e6c6b74ddba1bca1a719dfdf3ac4@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_014353_566369_7AEEAA36 
X-CRM114-Status: GOOD (  17.23  )
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

T24gMjAyNC0wNy0xOCAxMDozNCwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFRodSwgSnVsIDE4
LCAyMDI0IGF0IDA5OjMxOjQ1QU0gKzAxMDAsIENocmlzdG9waGVyIE9iYmFyZCB3cm90ZToKPj4g
VGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+PiAKPj4gT24gVGh1LCAyMDI0LTA3LTE4IGF0IDA2OjM2
ICswMjAwLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+ID4gSGVsbG8gQ2hyaXN0b3BoZXIsCj4+ID4K
Pj4gPiBPbiAyMDI0LTA3LTE3IDE4OjQ2LCBDaHJpc3RvcGhlciBPYmJhcmQgd3JvdGU6Cj4+ID4g
PiBBZGQgYmluZGluZyBmb3IgdGhlIEZpcmVmbHkgQ29yZS1QWDMwLUpENCBTb00gd2hlbiB1c2Vk
IGluIGNvbmp1bmN0aW9uCj4+ID4gPiB3aXRoIHRoZSBNQi1KRDQtUkszMzI4ICYgUFgzMCBiYXNl
Ym9hcmQuCj4+ID4gPgo+PiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZXIgT2JiYXJkIDxj
aHJpcy5vYmJhcmRAY29sbGFib3JhLmNvbT4KPj4gPiA+IC0tLQo+PiA+ID4gwqBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA2ICsrKysrKwo+PiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+ID4gPgo+PiA+ID4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFt
bAo+PiA+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKPj4gPiA+IGluZGV4IDFlZjA5ZmJmZGZhZjUuLjMzY2E4MDI4YmMxNTEgMTAwNjQ0Cj4+
ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKPj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbAo+PiA+ID4gQEAgLTE0OCw2ICsxNDgsMTIgQEAgcHJvcGVydGllczoKPj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGVuZ2ljYW0scHgzMC1jb3JlCj4+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2NrY2hpcCxweDMwCj4+ID4gPgo+PiA+
ID4gK8KgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogRmlyZWZseSBDb3JlLVBYMzAtSkQ0IHdpdGgg
TUItSkQ0LVBYMzAgYmFzZWJvYXJkCj4+ID4gPiArwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGZpcmVmbHkscHgzMC1tYi1qZDQKPj4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogZmlyZWZseSxweDMwLWNvcmUtamQ0Cj4+ID4K
Pj4gPiBTaW1pbGFybHkgdG8gaG93IEkgc3VnZ2VzdGVkIHRoZSBuZXcgZHRzKGkpIGZpbGVzIHRv
IGJlIG5hbWVkLCBbMV0KPj4gPiB0aGUgbW9kZWwgbmFtZXMgc2hvdWxkIGJlIG5hbWVkIGxpa2Ug
dGhpczoKPj4gPgo+PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGZpcmVmbHkscHgz
MC1qZDQtY29yZQo+PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGZpcmVmbHkscHgz
MC1qZDQtY29yZS1tYgo+PiAKPj4gSSBzdXBwb3NlIHRoZSBvcmRlciBzaG91bGQgYmUgdGhlIG90
aGVyIHdheSBhcm91bmQgdG8gbWF0Y2ggb3RoZXIgCj4+IGVudHJpZXMsIGUuZwo+PiBmaXJlZmx5
LHB4MzAtamQ0LWNvcmUtbWIgZmlyc3Q/Cj4gCj4gWWVzLiBNYWluYm9hcmQgZmlyc3QsIHRoZW4g
c29tLCB0aGVuIHNvYy4KCkFoIHllcywgc29ycnksIEkgc29tZWhvdyBtYW5hZ2VkIHRvIGdldCB0
aGUgb3JkZXIgd3JvbmcuICBCYXNpY2FsbHksCml0IGdvZXMgZnJvbSBtb3JlIHNwZWNpZmljIHRv
IGxlc3Mgc3BlY2lmaWMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
