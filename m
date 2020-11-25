Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44AB1C56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:53:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B2B0B206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:53:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="sD/DJ0X6";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmN1WHi1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B2B0B206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vzRj4EqH5km08yaauYPe4uTCVcfnatPRcJbuFIEPyLY=; b=sD/DJ0X6Ap5xLoVs8/uOswef+z
	JFXATe59ru9jrgG2+AEdxlWNArgEwI30Fjf2ai5hehxwLLdPDZCCgWd2mGU3Yc08tXyH+k1K4X9nP
	6xvE9ORwxZPBKbcOeIblgH1QrXN/JE47O+o58Kzz2dsQ/E9sR/+Q7tZi5IZCriV3l2HCVx70Tvozm
	B8O8uFt/G3UBu0SJZsrHoHYyg7iFHeGTN4NSeOkQZeKwuqBU2nvh9LUbCM41ehXtlchp4LUKur3zM
	GTkXN1jWrF7lt2Ep4du6/xAgcQy+0MYelbUC27uL8fyHOuEO26/fBNtsuqj/6lXOUuP1127eVjRRD
	lSyufLuw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy2l-0001Nf-H4; Wed, 25 Nov 2020 16:53:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvt-0006K0-LS; Wed, 25 Nov 2020 16:46:18 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA9DB21D46;
 Wed, 25 Nov 2020 16:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322776;
 bh=C3hkFsDb3sE4GUFvIjYxN4SbnZ/Y/EW4EfgcLWyYLN4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=WmN1WHi1nG3w9yaKinT5fZCMqNfy4vgk4lVRuuwhUNITqjEo9aYq4hxay1cmKef8z
 ozshdjWi3rwuSSW4AIxOQM0SePFsiRD1Idu0zv2/L8ek/6woXW17/HleOmJVXpA/+K
 dnzqMNqC7fplFZKcK+omCxT7g6ItDjTGZbKgOyHo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Support Opensource <support.opensource@diasemi.com>,
 Oder Chiou <oder_chiou@realtek.com>,
 Kevin Cernekee <cernekee@chromium.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Patrick Lai <plai@codeaurora.org>,
 Banajit Goswami <bgoswami@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 15/39] ASoC: alc5623: skip of_device_id table when
 !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:28 +0100
Message-Id: <20201125164452.89239-16-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114617_860268_1E16027D 
X-CRM114-Status: GOOD (  15.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

VGhlIGRyaXZlciBjYW4gbWF0Y2ggYnkgbXVsdGlwbGUgbWV0aG9kcy4gIEl0cyBvZl9kZXZpY2Vf
aWQgdGFibGUgaXMKcmVmZXJlbmNlZCB2aWEgb2ZfbWF0Y2hfcHRyKCkgc28gaXQgd2lsbCBiZSB1
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL2FsYzU2MjMu
YzoxMDcxOjM0OiB3YXJuaW5nOiDigJhhbGM1NjIzX29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5v
dCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogc291bmQvc29jL2NvZGVjcy9hbGM1
NjIzLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvc291bmQvc29jL2NvZGVjcy9hbGM1NjIzLmMgYi9zb3VuZC9zb2MvY29kZWNzL2FsYzU2MjMu
YwppbmRleCAzZDE3NjFhNTMxZjUuLjU0ZjQ4OTgzNzE2MiAxMDA2NDQKLS0tIGEvc291bmQvc29j
L2NvZGVjcy9hbGM1NjIzLmMKKysrIGIvc291bmQvc29jL2NvZGVjcy9hbGM1NjIzLmMKQEAgLTEw
NjgsMTEgKzEwNjgsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGFsYzU2
MjNfaTJjX3RhYmxlW10gPSB7CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIGFsYzU2MjNf
aTJjX3RhYmxlKTsKIAorI2lmZGVmIENPTkZJR19PRgogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgYWxjNTYyM19vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAicmVhbHRl
ayxhbGM1NjIzIiwgfSwKIAl7IH0KIH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBhbGM1NjIz
X29mX21hdGNoKTsKKyNlbmRpZgogCiAvKiAgaTJjIGNvZGVjIGNvbnRyb2wgbGF5ZXIgKi8KIHN0
YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBhbGM1NjIzX2kyY19kcml2ZXIgPSB7Ci0tIAoyLjI1LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
