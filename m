Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46D59C56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:52:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6656206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:52:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Tc2hILZH";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqkENPgb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C6656206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=06rqd8l/Xx+ekYMwFDp3/EHqqYKBLycPKFXdHfWbqLI=; b=Tc2hILZHK+18VFghbCky20WALU
	7Y9Ca9hTrEWfVHDUas0+9hkjHtwD9ZhmJeZR8DVDh3rmCjyAQ57YI++ggZBvvo5wH8Ob5F0JpKq/u
	25inxQtqBX6kZ6bwDlBDQj0GvJ9c5rCKnq9F5dag7B2cqYTheFb76NCW1yvXfin4CWz7RaGMGsThU
	zz4gd/LnHspyMZY5FeJWiBuQGQXHYvlxFpTM4O04fiWIgCdoJsZm/R8igxr2oBcjv9N2jnPKOas50
	PtMUJZBquCys25Lt7/BwvgunqLYHxvOhp6NCW/eAMnEU3zD8xrOWfhgxcF4lUbM6oeVB/YUG4cuXB
	NedfJHcg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy26-0000vP-1N; Wed, 25 Nov 2020 16:52:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvp-0006I7-Uz; Wed, 25 Nov 2020 16:46:16 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66BE021734;
 Wed, 25 Nov 2020 16:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322772;
 bh=0HugLJZa8zS4Le6aM6WdEG5ldLVgwL6aMNqW9XESAyY=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=rqkENPgbXoOKMgot+Dm0OoYJBa0IaaBVqyoNFF42d2n4g/yiR9J+GqkJGcJ/e8HX+
 Ae6SiVtKuirhuvDUJ4ktVXErrTp4aPUUtHiRE4F+SooyywYsPX0G7qNxPlGIUZWvPf
 Mq2UAkTOpDRxkADPNrr088Md1ZQAr2DuXiFRjx/k=
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
Subject: [PATCH v2 14/39] ASoC: ak4118: skip of_device_id table when !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:27 +0100
Message-Id: <20201125164452.89239-15-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114614_195301_B6353A5B 
X-CRM114-Status: GOOD (  14.94  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL2FrNDExOC5j
OjQwNzozNDogd2FybmluZzog4oCYYWs0MTE4X29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1
c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogc291bmQvc29jL2NvZGVjcy9hazQxMTgu
YyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9z
b3VuZC9zb2MvY29kZWNzL2FrNDExOC5jIGIvc291bmQvc29jL2NvZGVjcy9hazQxMTguYwppbmRl
eCBmNDRkOWE0YTg1MDcuLjVkNDZhZTg1NTY2YyAxMDA2NDQKLS0tIGEvc291bmQvc29jL2NvZGVj
cy9hazQxMTguYworKysgYi9zb3VuZC9zb2MvY29kZWNzL2FrNDExOC5jCkBAIC00MDQsMTEgKzQw
NCwxMyBAQCBzdGF0aWMgaW50IGFrNDExOF9pMmNfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmky
YywKIAkJCQkmc29jX2NvbXBvbmVudF9kcnZfYWs0MTE4LCAmYWs0MTE4X2RhaSwgMSk7CiB9CiAK
KyNpZmRlZiBDT05GSUdfT0YKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGFrNDEx
OF9vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAiYXNhaGkta2FzZWksYWs0MTE4Iiwg
fSwKIAl7fQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGFrNDExOF9vZl9tYXRjaCk7Cisj
ZW5kaWYKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGFrNDExOF9pZF90YWJs
ZVtdID0gewogCXsgImFrNDExOCIsIDAgfSwKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
