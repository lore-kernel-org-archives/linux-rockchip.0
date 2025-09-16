Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A08F2CAC599
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 07:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1y3E+KuYOZatMtm/n5dkxCNJkrXy6s3BM3KQUwG7jI=; b=Y3poLoXyTWgtL/
	fz452NBoz1aHwXSs+oCKgcQZyPxd9msTKnV1V9rQKV9fHJXq8xoxm3dbqgcbJNbpZfbePp/5E4VFn
	O40m/9s3GpFw52jNdoKnBKrGtU3FSQutgMf9rdMprN3611wZEWWF5YRrfNPT0H8s3jPBKB4mDgXjs
	j9Gy2R8Ul9AGl2X6QcpjtHNjAV7n0BqJfUDRLeM5I1CoY9qcBB15R4lza0hafqEm0u80BnbrNljWX
	e47KFXH99ZT6jOEKIeOu1nPtP3/+LrON7E84CzB9L/G1jjVj/1VkMuJZy/jhH7wVX3h3RWNdA4Ry5
	aZhPb7ngAX7fh51yOEVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQDB-0000000725O-3Mw4;
	Tue, 16 Sep 2025 07:34:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyQD9-0000000723y-0GSJ;
	Tue, 16 Sep 2025 07:34:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/d8NPHHoHLLLmfSMKxDnV22O73BappyZrrJ8bU33Oq4=; b=nWPVUPfN5V9OJZVJkYajiP2J7z
	n7rLQ8eY3R8jFRO4V8BbRorqcFQMSOjp3y0hBD+AvTBcS4x2NfEuIQ/j8o9E+mGiWhPMOXGDCBt6F
	vuPV42fW4SRZv+r1VTBNfZgFcPJkKbyJbK5mVqmay2y3o12STWu82wMw/5KNZLuhLYcRPq6ts2gDs
	OO8KT2QOU9lgVcisSBM6Tq4b/VV1WQUBWtzcWgTyribLGpUXFRi0v7bXv8brcjYSfG2pinDj2IfCA
	2uCV5clSNof+eLiy+B2GK0zuFSd0cQoMF8HPrfZIrPIaD6FnpZ/6sDFnWO/VbZbbeF8GhtiMMLMV6
	8Lf289rg==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uyQCw-00066R-7K; Tue, 16 Sep 2025 09:34:34 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: "Rob Herring (Arm)" <robh@kernel.org>, Kaison Deng <dkx@t-chip.com.cn>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Robinson <pbrobinson@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>,
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
 Andrew Lunn <andrew@lunn.ch>, Dragan Simic <dsimic@manjaro.org>,
 Wayne Chou <zxf@t-chip.com.cn>, Kaison Deng <dkx@t-chip.com.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Firefly ROC-RK3588-RT
Date: Tue, 16 Sep 2025 09:34:32 +0200
Message-ID: <3034003.o0KrE1Onz3@diego>
In-Reply-To: <EEABCC59F39E8FC5+04995f9826d047eeb5f4bada25c3dd93e50983b0.camel@t-chip.com.cn>
References: <cover.1757902513.git.dkx@t-chip.com.cn>
 <175794446144.2732898.9504412064423841025.robh@kernel.org>
 <EEABCC59F39E8FC5+04995f9826d047eeb5f4bada25c3dd93e50983b0.camel@t-chip.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_003447_295717_63A4A5ED 
X-CRM114-Status: GOOD (  19.70  )
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

SGksCgpBbSBEaWVuc3RhZywgMTYuIFNlcHRlbWJlciAyMDI1LCAwNToyODozMyBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEthaXNvbiBEZW5nOgo+IE9uIE1vbiwgMjAyNS0w
OS0xNSBhdCAwODo1NCAtMDUwMCwgUm9iIEhlcnJpbmcgKEFybSkgd3JvdGU6Cj4gPiBPbiBNb24s
IDE1IFNlcCAyMDI1IDEwOjIyOjA0ICswODAwLCBLYWlzb24gRGVuZyB3cm90ZToKPiA+ID4gVGhp
cyBkb2N1bWVudHMgRmlyZWZseSBST0MtUkszNTg4LVJUIHdoaWNoIGlzIGEgU0JDIGJhc2VkIG9u
IFJLMzU4OAo+ID4gPiBTb0MuCj4gPiA+IAo+ID4gPiBMaW5rOiBodHRwczovL2VuLnQtZmlyZWZs
eS5jb20vcHJvZHVjdC9pbmR1c3RyeS9yb2NyazM1ODhydAo+ID4gPiAKPiA+ID4gU2lnbmVkLW9m
Zi1ieTogS2Fpc29uIERlbmcgPGRreEB0LWNoaXAuY29tLmNuPgo+ID4gPiAtLS0KPiA+ID4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDUgKysr
KysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiAKPiA+
IFBsZWFzZSBhZGQgQWNrZWQtYnkvUmV2aWV3ZWQtYnkgdGFncyB3aGVuIHBvc3RpbmcgbmV3IHZl
cnNpb25zLgo+ID4gSG93ZXZlciwKPiA+IHRoZXJlJ3Mgbm8gbmVlZCB0byByZXBvc3QgcGF0Y2hl
cyAqb25seSogdG8gYWRkIHRoZSB0YWdzLiBUaGUKPiA+IHVwc3RyZWFtCj4gPiBtYWludGFpbmVy
IHdpbGwgZG8gdGhhdCBmb3IgYWNrcyByZWNlaXZlZCBvbiB0aGUgdmVyc2lvbiB0aGV5IGFwcGx5
Lgo+ID4gCj4gPiBJZiBhIHRhZyB3YXMgbm90IGFkZGVkIG9uIHB1cnBvc2UsIHBsZWFzZSBzdGF0
ZSB3aHkgYW5kIHdoYXQgY2hhbmdlZC4KPiA+IAo+ID4gTWlzc2luZyB0YWdzOgo+ID4gCj4gPiBB
Y2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8u
b3JnPgo+ID4gCj4gPiAKPiAKPiBPay4gRG8gSSBuZWVkIHRvIHJlc2VuZCB0aGUgbmV4dCB2ZXJz
aW9uIGZvciB0aGUgbWlzc2VkIHRhZ3M/Cgpub3BlLCB0aGF0IGlzIG5vdCBuZWNlc3NhcnksIEkg
Y2FuIHBpY2sgdXAgdGhlIG9uZSBmcm9tIHYyLgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
