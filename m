Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F6BC021BB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 12:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EdfqpTHzm+XeL8i06OPdl3q4EtqwSAho/TOS5pC4x7E=; b=X17eP7EXRq1a+k
	JY2orS8/QZ9vgDTs7dc491d2hX37aa9NWL0w+JkqdgXjP54CnAMsmdjU8rhrZsI2NzbIOGpz1IoXd
	NNs/r9fddHF5ttx+w+HNS7eIYWU4/gwlLIwtt1xRaTp7oR1Wa6MJJYtXHyGV9DnurozQWShvohIk9
	Hb5oGXg8kzotfsVGnvOnowT7U5zlBUy6Ml6BBoXaNw8QTPTT4Y7M+1SpBbErX+Q/nwWD0rgUxNulq
	R1AhYNx+NwECO7EIoJ54eLtFWKvrsw1vGVpazTuyngsOUSiL7JDUxN+rNYJ3qpyvUSon/BGptjM08
	5JP0bQ8As8JgJhRsNjAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmu6q-0000000HDgz-2O57;
	Tue, 25 Feb 2025 12:32:24 +0000
Received: from smtp-1908.mail.infomaniak.ch ([185.125.25.8])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtVY-0000000H6c5-2cMa
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 11:53:55 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Z2GGN1zmGzPp2;
	Tue, 25 Feb 2025 12:53:48 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Z2GGM4bc9zCcj;
	Tue, 25 Feb 2025 12:53:47 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 25 Feb 2025 12:53:29 +0100
Subject: [PATCH v3 1/2] arm64: dts: rockchip: fix pinmux of UART0 for PX30
 Ringneck on Haikou
MIME-Version: 1.0
Message-Id: <20250225-ringneck-dtbos-v3-1-853a9a6dd597@cherry.de>
References: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
In-Reply-To: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
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
X-CRM114-CacheID: sfid-20250225_035352_824327_28C1CCD5 
X-CRM114-Status: UNSURE (   8.45  )
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
ciBjb21taXQgd2lsbCBtYWtlIFVBUlQ1IHJlcXVlc3QgdGhlIEdQSU8gcGlubXV4LgoKRml4ZXM6
IGM0ODRjZjkzZjYxYiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUFgzMC3CtVE3IChSaW5n
bmVjaykgU29NIHdpdGggSGFpa291IGJhc2Vib2FyZCIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnClNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnku
ZGU+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtv
dS5kdHMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3UuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5kdHMKaW5k
ZXggZWI5NDcwYTAwZTU0OWZjMTA3NjAzYmUyMTZhNWY3MTQ5MTRlN2EyYy4uOWE1NjhmM2QwYTk5
MTZkZmYyMjIyMmM1OWU1ZTBjOTRjZTIyNjg1OCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9weDMwLXJpbmduZWNrLWhhaWtvdS5kdHMKQEAgLTIyMiw2ICsyMjIs
NyBAQCAmdTJwaHlfb3RnIHsKIH07CiAKICZ1YXJ0MCB7CisJcGluY3RybC0wID0gPCZ1YXJ0MF94
ZmVyPjsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCgotLSAKMi40OC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
