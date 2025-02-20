Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13ED5C021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 12:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3EPT2DLzv+vQwfYF6M9Md9NWwyReipwDmGj+X+5bJI=; b=MteWIXClQlc5Qh
	BbHxYzrB88zAOx60VusG+e/aBGQiD33gRkzUNfECVHxF2NiwIahRA9ucwY9N6DMe2EC52tQZqWJ2S
	gt2tEKG/9NfjIujYQ+KYShf5KVTDMxLxshBT61bpvB+9NXMKAwYnGfzlfoTV/ua/r8Bl8GJ7dz2F4
	1gvZThGYfkcoqIJQND5L8c8fHXaL7HhsJkrQQrCqVuxOVzL5qmwNpdUR7adzpHgtJH+6bH7ECWlpU
	U6Hrm1WzCCq1J4sjTRLDOAXR3Q/BjLeulOQJJ6lpxVXiFQ1WksntGWG+QRNeLTzEQE/9qKReYxM0d
	cUnuuyWoEW6AfvmTzQzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl5gN-00000000nmg-1uDO;
	Thu, 20 Feb 2025 12:29:35 +0000
Received: from smtp-42ac.mail.infomaniak.ch ([2001:1600:4:17::42ac])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl5Xk-00000000knW-0IWT
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 12:20:42 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YzC5b6L7Zzpd8;
	Thu, 20 Feb 2025 13:20:35 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YzC5b11GfzGGs;
	Thu, 20 Feb 2025 13:20:35 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 20 Feb 2025 13:20:10 +0100
Subject: [PATCH 1/5] arm64: dts: rockchip: fix pinmux of UART0 for PX30
 Ringneck on Haikou
MIME-Version: 1.0
Message-Id: <20250220-ringneck-dtbos-v1-1-25c97f2385e6@cherry.de>
References: <20250220-ringneck-dtbos-v1-0-25c97f2385e6@cherry.de>
In-Reply-To: <20250220-ringneck-dtbos-v1-0-25c97f2385e6@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_042040_241378_F4828BE5 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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

RnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KClVBUlQwIHBp
bm11eCBieSBkZWZhdWx0IGNvbmZpZ3VyZXMgR1BJTzBfQjUgaW4gaXRzIFVBUlQgUlRTIGZ1bmN0
aW9uIGZvcgpVQVJUMC4gSG93ZXZlciwgYnkgZGVmYXVsdCBvbiBIYWlrb3UsIGl0IGlzIHVzZWQg
YXMgR1BJTyBhcyBVQVJUIFJUUyBmb3IKVUFSVDUuCgpUaGVyZWZvcmUsIGxldCdzIHVwZGF0ZSBV
QVJUMCBwaW5tdXggdG8gbm90IGNvbmZpZ3VyZSB0aGUgcGluIGluIHRoYXQKbW9kZSwgYSBsYXRl
ciBjb21taXQgd2lsbCBtYWtlIFVBUlQ1IHRvIHJlcXVlc3QgdGhlIEdQSU8gcGlubXV4LgoKRml4
ZXM6IGM0ODRjZjkzZjYxYiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUFgzMC3CtVE3IChS
aW5nbmVjaykgU29NIHdpdGggSGFpa291IGJhc2Vib2FyZCIpCkNjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnClNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVy
cnkuZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhh
aWtvdS5kdHMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3UuZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5kdHMK
aW5kZXggZTQ1MTdmNDdkNTE5Y2MwOGVjOWVlNzA1YTZmNTFhNzQwNjg3ZjZkZi4uMjMyMTUzNmM1
NTNmZWQyMGJjMDJkOTFmNDBhNWQ1YTZkYzIwODkyYyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5kdHMKKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5kdHMKQEAgLTIyMiw2ICsy
MjIsNyBAQCAmdTJwaHlfb3RnIHsKIH07CiAKICZ1YXJ0MCB7CisJcGluY3RybC0wID0gPCZ1YXJ0
MF94ZmVyPjsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCgotLSAKMi40OC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
