Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EFCC56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:56:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5D1D206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:56:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="k6oDmEK7";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="edghX3QE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5D1D206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SIoKtcsxbgF3ud0u+APHpnbe17vf9vlgL1qYVusQ5o0=; b=k6oDmEK7YseW+OTUnF5xUIOzRE
	FFyPYMED9rXOMWrbIOJz3L4fiR4GzW+epxPeFYaAoPUUepQkM9H1mk+AgJ9PksZB8ZylocFkKEdOd
	+JWebZwKuX/2Xd5eZJER7L/LoaHaQn6up/rn2NuGbYkWdBm3ULfpLn7xdnSMlXkuF1UwlQxZunScn
	1vQUUrweLDswWZlEUNnQAeqWOrZM3cOC5Z+94A47BfrJLNPtyoCPQAGi1huNfATtvn+O+6X0nsHGz
	6CLYvp8TqTlCMMI05OOO+ZgrlXbviXFTXAZ3cLvDurxBKhvapNyDTW0Qb1jimhjw17xSW77QGK9pI
	YqS4xUGw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy5B-0002qI-ME; Wed, 25 Nov 2020 16:55:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxwG-0006TC-Dg; Wed, 25 Nov 2020 16:46:41 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16C84206D8;
 Wed, 25 Nov 2020 16:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322799;
 bh=P+vy5VoZ2F85soXfnFUh9AixDyXElRDgch2cjs4F6Is=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=edghX3QERAr+5sRbZiNtHzHeCF2pS1En5z+/XHZ/zJ+Py11EZX4Yf3L+5SO1kjlDC
 81ySQoDnc5uBRQYNkR1MhtSrbSHfHQWZQ1lMX8l7WWub4rCP7hwwGqUaNuhX3SBcqx
 /AuRw5alTg6jPG3LszxkC1rvOHjujfP4332hqmro=
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
Subject: [PATCH v2 20/39] ASoC: es8316: skip of_device_id table when !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:33 +0100
Message-Id: <20201125164452.89239-21-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114640_724992_04B5D28E 
X-CRM114-Status: GOOD (  14.51  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL2VzODMxNi5j
OjgzNzozNDogd2FybmluZzog4oCYZXM4MzE2X29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1
c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2Yg
S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogc291bmQvc29jL2NvZGVjcy9lczgzMTYu
YyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9z
b3VuZC9zb2MvY29kZWNzL2VzODMxNi5jIGIvc291bmQvc29jL2NvZGVjcy9lczgzMTYuYwppbmRl
eCBiZDVkMjMwYzVkZjIuLmY5ZWM1Y2Y4MjU5OSAxMDA2NDQKLS0tIGEvc291bmQvc29jL2NvZGVj
cy9lczgzMTYuYworKysgYi9zb3VuZC9zb2MvY29kZWNzL2VzODMxNi5jCkBAIC04MzQsMTEgKzgz
NCwxMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgZXM4MzE2X2kyY19pZFtd
ID0gewogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBlczgzMTZfaTJjX2lkKTsKIAorI2lm
ZGVmIENPTkZJR19PRgogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZXM4MzE2X29m
X21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJldmVyZXN0LGVzODMxNiIsIH0sCiAJe30s
CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgZXM4MzE2X29mX21hdGNoKTsKKyNlbmRpZgog
CiAjaWZkZWYgQ09ORklHX0FDUEkKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9kZXZpY2VfaWQg
ZXM4MzE2X2FjcGlfbWF0Y2hbXSA9IHsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
