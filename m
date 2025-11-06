Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC21FCCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zv4M7p47k3GCPuGxM03ugtRO/6U12+q16xpoNfvyR8w=; b=ljxL11DI8uT2OP
	AN8i+3v0/vGgs/HaarheeOsXVr5cKNKk6Ao9u0vUyE3Eg51Y+YqaorjMXhf+y49UurhhjpKMCnE/+
	VKanmBEGt1bEEAw7SQE6Qph+j0it39lMwNffzd1bIY1fZaD2bf5+qYYZVXIMzJo4ZR89z/K38nm2D
	lxlkqlVS11m24KCSxEIxStGCSNtUC3bkoRuoTAZvY4M4TJ7SrCC9jbgPROBDcWjP5n5kOlDjT9VEZ
	XCT5pK6l6WJlfESFq6aKmg+oIR7tI9w/2Ic6FlRjlQ5KLkEcSInoiOsSkCc5gS9bGhT2x0pdjJGFI
	BeDeVKksN4kZss3OXy8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8zj-0000000GLZc-3AwW;
	Thu, 06 Nov 2025 23:02:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8zh-0000000GLZD-26pL
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:02:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=REEIgQSUy6G/4v+A0xbrY164raqMUxEgfkqw+DKyrGI=; b=ZiNEBZpFwOV0OXOI1ZQCpkAfbV
	hTkPXMhpcpQO6aVGpuR0XRQbSw5unj4BYV8Ar3OmKaG4ZE8+3xpMxXdwWnwbk/zTKhs4kpPYsGXY6
	E2MqeJOY/v1eXTDVa98T5nM2ahJh+yhM5UwJHoseGs1quoQV+lrbrpIvCMCiwhIDBmBo3y4XCd5yn
	ZLuKKR0MMQVNiTfPxJBy/ipX3Gf3F4I+lfPhfQf3Ne5GF49me8/DgzoRURYDstQN9mgXfHH9meEm7
	d1sftFivStmQJHQHh1jPaHNN8MHgKvApLvYcVfkc+TGdN1a4zLHZzHwIfGRuSo6PCAEREnmi054Jd
	iPz9CY5w==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8zf-0001tg-QN; Fri, 07 Nov 2025 00:02:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Detlev Casanova <detlev.casanova@collabora.com>, linux-mmc@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Fix wrong internal phase calculate
Date: Fri, 07 Nov 2025 00:02:15 +0100
Message-ID: <3369161.5fSG56mABF@phil>
In-Reply-To: <1762228283-5025-1-git-send-email-shawn.lin@rock-chips.com>
References: <1762228283-5025-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_150217_541939_5D9F5735 
X-CRM114-Status: GOOD (  15.67  )
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

QW0gRGllbnN0YWcsIDQuIE5vdmVtYmVyIDIwMjUsIDA0OjUxOjIzIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgU2hhd24gTGluOgo+IGNpdSBjbG9jayBpcyAyIHRpbWVzIG9m
IGlvIGNsb2NrLCBidXQgdGhlIHNhbXBsZSBjbGsgdXNlZCBpcwo+IGRlcml2ZWQgZnJvbSBpbyBj
bG9jayBwcm92aWRlZCB0byB0aGUgY2FyZC4gU28gd2Ugc2hvdWxkIHVzZQo+IGlvIGNsb2NrIHRv
IGNhbGN1bGF0ZSB0aGUgcGhhc2UuCj4gCj4gRml4ZXM6IDU5OTAzNDQxZjVlNCAoIm1tYzogZHdf
bW1jLXJvY2tjaGlwOiBBZGQgaW50ZXJuYWwgcGhhc2Ugc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1i
eTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgpBY2tlZC1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4gCj4gIGRyaXZlcnMvbW1jL2hvc3Qv
ZHdfbW1jLXJvY2tjaGlwLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9k
d19tbWMtcm9ja2NoaXAuYyBiL2RyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiBp
bmRleCA4MmRkOTA2Li42ODEzNTQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvZHdf
bW1jLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5j
Cj4gQEAgLTQyLDcgKzQyLDcgQEAgc3RydWN0IGR3X21jaV9yb2NrY2hpcF9wcml2X2RhdGEgewo+
ICAgKi8KPiAgc3RhdGljIGludCByb2NrY2hpcF9tbWNfZ2V0X2ludGVybmFsX3BoYXNlKHN0cnVj
dCBkd19tY2kgKmhvc3QsIGJvb2wgc2FtcGxlKQo+ICB7Cj4gLQl1bnNpZ25lZCBsb25nIHJhdGUg
PSBjbGtfZ2V0X3JhdGUoaG9zdC0+Y2l1X2Nsayk7Cj4gKwl1bnNpZ25lZCBsb25nIHJhdGUgPSBj
bGtfZ2V0X3JhdGUoaG9zdC0+Y2l1X2NsaykgLyBSSzMyODhfQ0xLR0VOX0RJVjsKPiAgCXUzMiBy
YXdfdmFsdWU7Cj4gIAl1MTYgZGVncmVlczsKPiAgCXUzMiBkZWxheV9udW0gPSAwOwo+IEBAIC04
NSw3ICs4NSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfbW1jX2dldF9waGFzZShzdHJ1Y3QgZHdf
bWNpICpob3N0LCBib29sIHNhbXBsZSkKPiAgCj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfbW1jX3Nl
dF9pbnRlcm5hbF9waGFzZShzdHJ1Y3QgZHdfbWNpICpob3N0LCBib29sIHNhbXBsZSwgaW50IGRl
Z3JlZXMpCj4gIHsKPiAtCXVuc2lnbmVkIGxvbmcgcmF0ZSA9IGNsa19nZXRfcmF0ZShob3N0LT5j
aXVfY2xrKTsKPiArCXVuc2lnbmVkIGxvbmcgcmF0ZSA9IGNsa19nZXRfcmF0ZShob3N0LT5jaXVf
Y2xrKSAvIFJLMzI4OF9DTEtHRU5fRElWOwo+ICAJdTggbmluZXRpZXMsIHJlbWFpbmRlcjsKPiAg
CXU4IGRlbGF5X251bTsKPiAgCXUzMiByYXdfdmFsdWU7Cj4gCgoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
