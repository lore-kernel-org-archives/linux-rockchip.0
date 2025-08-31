Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60354CA1000
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 15:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRmb3Tahpa9IcRZD4/SEo5R4yzahyBljY5WGF/ZnnC8=; b=XZa20jbN9vxV00
	HyVyn7OcmHjzkpKmZ7Xf/cWP2KSYUmpHdcVQjB+oxZ4YIic29M2dnYSAvCE9q/Rf3JWD/DE/Oz8xt
	hhbAWHlY0Kdw5M4GiFgad2c+7NWBfoV0I49zxbgxfshRCSuE8h4peebd2t0iC5agIjWNI13FBv/LZ
	jJmgaV+8FxLheWQvnA7ouwsyLV26nQ4syy5RbWQzOVDKubghzlAcww4AG55DVk1A7g0qGa0P9jEyy
	hwCJacefelbibo5pdQ+VVPfLyN1EyCkvq2Pnph/Kf9mVWWcsBwkNy470jfupL8GI2G4XebVIvMcbl
	zRrm6fXQacSLkia2E04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjk0-0000000ALDH-1yHi;
	Sun, 31 Aug 2025 15:13:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usjgu-0000000AKnz-48VT;
	Sun, 31 Aug 2025 15:10:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m2D31ldRCNyyz8A8vsgNbC3FnyuJad7s6giy8XoOyqU=; b=otdUEdVXVjmS2dJIdEkiGfJrSh
	DhqOUY5/k7q+TlolUG+CZKhggYQI+oniHZhoHXGdIVHffkOQwEGLBdL0T81ZNJykOHCOTgrAZJqDO
	9GfkMhJbie4xTpjbrEhi50d59yqqnJig5P/E6HKR7hvMGdwiHQ16Ia7wYaW9L0w9ctkseGD5VuvKk
	PL3/NPl75XlvYLwdD7K5/D1bHU0ZSLg1ToJwOPXgTsp7FiyYOTsYbt6GuNYg0iChF2Gu1y6XGBExL
	Pp9rvxKLkrDLIJK6R0GPeHKL4aXvyuMdecTRnrBo6Mu/rzCKX3Dub015T1zit4r+n5mSgfL5PKyBi
	96MtlX+Q==;
Received: from i53875b56.versanet.de ([83.135.91.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usjgq-0007PW-SX; Sun, 31 Aug 2025 17:09:56 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v1 0/7] drm/rockchip: Add MIPI DSI support for RK3368
Date: Sun, 31 Aug 2025 17:09:55 +0200
Message-ID: <22816630.EfDdHjke4D@diego>
In-Reply-To: <20250831104855.45883-1-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_081001_031240_163CC6C8 
X-CRM114-Status: GOOD (  18.33  )
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

SGksCgpBbSBTb25udGFnLCAzMS4gQXVndXN0IDIwMjUsIDEyOjQ4OjQ4IE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+IFRoaXMgc2VyaWVzIGFkZHMgTUlQ
SSBEU0kgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIFJLMzM2OCBTb0MsIGVuYWJsaW5nCj4gbmF0
aXZlIGRpc3BsYXkgY29ubmVjdGl2aXR5IHRocm91Z2ggdGhlIE1JUEkgRFNJIGhvc3QgY29udHJv
bGxlciBhbmQKPiBQSFkuIFRoZSBjaGFuZ2VzIHNwYW4gbXVsdGlwbGUgc3Vic3lzdGVtcywgaW5j
bHVkaW5nIGNsb2NrIGNvbnRyb2wsCj4gRFJNL1ZPUCBpbnRlZ3JhdGlvbiwgRFNJIGNvbnRyb2xs
ZXIgYmluZGluZywgYW5kIFBIWSBkcml2ZXIgdXBkYXRlcy4KPiAKPiBLZXkgY2hhbmdlczoKPiAg
IC0gVXBkYXRlIHRoZSBSb2NrY2hpcCBNSVBJIERTSSBQSFkgZHJpdmVyIHRvIHByZXBlcmx5IGhh
bmRsZSBSSzMzNjgKPiAgICAgcGh5IGluaXRpYWxpemF0aW9uLgoKd2hpY2ggcGF0Y2ggaXMgZG9p
bmcgdGhpcywgYmVjYXVzZSBJIGRvbid0IHNlZSBhbnkgcGh5LXJlbGF0ZWQgY2hhbmdlCgo+ICAg
LSBBZGQgbWlzc2luZyBsdXRfc2l6ZSBvZiB2b3BfZGF0YSBmb3IgUkszMzY4Lgo+ICAgLSBBZGQg
bWlzc2luZyBjbG9jayBJRCBTQ0xLX01JUElEU0lfMjRNIHRvIHRoZSBSSzMzNjggQ1JVIGRyaXZl
ciwKPiAgICAgd2hpY2ggaXMgcmVxdWlyZWQgZm9yIGVuYWJsaW5nIHRoZSAyNE1IeiByZWZlcmVu
Y2UgY2xvY2suCj4gICAtIEFkZCBNSVBJIERTSSBub2RlIHRvIHJrMzM2OC5kdHNpIHdpdGggY29y
cmVjdCBjbG9ja3MsIHJlc2V0cywKPiAgICAgYW5kIHJlZ2lzdGVyIG1hcHBpbmdzLgo+IAo+IFRo
ZXNlIGNoYW5nZXMgd2VyZSB0ZXN0ZWQgb24gYSBSSzMzNjgtYmFzZWQgYm9hcmQgd2l0aCBhIE1J
UEkgRFNJCj4gcGFuZWwgWzFdLiBUaGUgZGlzcGxheSBib290cyBzdWNjZXNzZnVsbHkgd2l0aCBj
b25zb2xlIG91dHB1dC4KPiAKPiBbMV0gaHR0cHM6Ly9pZWlhby5naXRodWIuaW8vd2lraS9lbWJl
ZGRlZC1kZXYvcm9ja2NoaXAvcmszMzY4CgpEbyB5b3UgcGxhbiBvbiBzdWJtaXR0aW5nIHRoaXMg
Ym9hcmQgdG8gbWFpbmxpbmU/CkJlY2F1c2UgaGF2aW5nIGFuIGFjdHVhbCB1c2VyIG9mIHRoZSBj
b2RlIHlvdSdyZSBhZGRpbmcgd291bGQKYmUgcmVhbGx5IHJlYWxseSBuaWNlLgoKVGhhbmtzCkhl
aWtvCgo+IAo+IFRlc3RlZC1ieTogV2VpSGFvIExpIDxjbi5saXdlaWhhb0BnbWFpbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogV2VpSGFvIExpIDxjbi5saXdlaWhhb0BnbWFpbC5jb20+Cj4gCj4gV2Vp
SGFvIExpICg3KToKPiAgIGRybS9yb2NrY2hpcDogZHNpOiBBZGQgc3VwcG9ydCBmb3IgUkszMzY4
Cj4gICBkcm0vcm9ja2NoaXA6IHZvcDogYWRkIGx1dF9zaXplIGZvciBSSzMzNjggdm9wX2RhdGEK
PiAgIGR0LWJpbmRpbmdzOiBjbG9jazogcmszMzY4OiBBZGQgU0NMS19NSVBJRFNJXzI0TQo+ICAg
Y2xrOiByb2NrY2hpcDogdXNlIGNsb2NrIGlkcyBmb3IgU0NMS19NSVBJRFNJXzI0TSBvbiByazMz
NjgKPiAgIEFSTTogZHRzOiByb2NrY2hpcDogQWRkIGRpc3BsYXkgc3Vic3lzdGVtIGZvciBSSzMz
NjgKPiAgIEFSTTogZHRzOiByb2NrY2hpcDogQWRkIEQtUEhZIGZvciBSSzMzNjgKPiAgIEFSTTog
ZHRzOiByb2NrY2hpcDogQWRkIERTSSBmb3IgUkszMzY4Cj4gCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzY4LmR0c2kgICAgICB8IDc5ICsrKysrKysrKysrKysrKysrKysKPiAg
ZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzM2OC5jICAgICAgICAgICAgIHwgIDIgKy0KPiAg
Li4uL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYyAgIHwgMjAgKysrKysK
PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyAgIHwgIDEgKwo+
ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JrMzM2OC1jcnUuaCAgICAgICAgfCAgMSArCj4g
IDUgZmlsZXMgY2hhbmdlZCwgMTAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiAK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
