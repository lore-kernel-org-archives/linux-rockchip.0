Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0B81C021B5
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 14:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3EPT2DLzv+vQwfYF6M9Md9NWwyReipwDmGj+X+5bJI=; b=Ct2MAlbXwNodAS
	YTPHud1gRlf/GiR2Ml6EF/eM+kPZr8ld1jhU6BoSk56TXeoV0gG6HEe+THw71g9IM5BtyLWTOpfBY
	SnA1yf3U+EHuGOFtPc9X8CagBnWSFvhwlCIbwZ2Y7AhGu/jSAew5zNlNzSzUfgfOIpd1Icm8rE4pW
	oz2gIIA92ERjEAEH55Yia2loqiAEKLI7mcF/IuE1ZR5FOlzAWVFuPwrGOWQwB3xEmI5PO2LFQYj21
	la8qoeLuSXI53lTWlqu52s21yO5US2AulswtBSv02Q1VqX2XrwY3ZCH8Ot58D7MsNfp5Wutxmoyn2
	ME897o67b+J5jMuerMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlTfr-00000005koP-2bpj;
	Fri, 21 Feb 2025 14:06:39 +0000
Received: from smtp-bc0f.mail.infomaniak.ch ([2001:1600:7:10::bc0f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlTeK-00000005kMZ-2Qdz
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Feb 2025 14:05:07 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YzsMc4NCDzVD1;
	Fri, 21 Feb 2025 15:05:00 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YzsMb6vqwzYln;
	Fri, 21 Feb 2025 15:04:59 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 21 Feb 2025 15:04:33 +0100
Subject: [PATCH v2 1/5] arm64: dts: rockchip: fix pinmux of UART0 for PX30
 Ringneck on Haikou
MIME-Version: 1.0
Message-Id: <20250221-ringneck-dtbos-v2-1-310c0b9a3909@cherry.de>
References: <20250221-ringneck-dtbos-v2-0-310c0b9a3909@cherry.de>
In-Reply-To: <20250221-ringneck-dtbos-v2-0-310c0b9a3909@cherry.de>
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
X-CRM114-CacheID: sfid-20250221_060504_760905_00A46002 
X-CRM114-Status: UNSURE (   8.07  )
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
