Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D094CC56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:01:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 540C221527
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:01:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zwtnySTq";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVYnSKo8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 540C221527
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kb55uL5aUJUlLT2ctGQPW2pV98yoz0JQNiT06DxQfs0=; b=zwtnySTq+VVKaEppFfdYBkYirZ
	dBuFVV5I3GXFfbrwxcjM6T0Eix8PRID43VTNQd6m1w5TrIs1XmFXj1WTTrYHWlxW/4ur1mEk6GIuP
	+HhJtM0KNCmKu105SC0nFlvbx20PrRx1d7P2Uk0fYNkZWqoaN3T9bUcw7i2cT6Bu6X2T6EK5E1mRW
	no4AHYenTRETspb0YoTNh7dkJv9inYXXZyzK3EHcrbEEsa4/4AIadFy7hASWwz6FBQBRSj7XME7YG
	DZ9b0yG34z6rYoGuJcT7j3Vp5tkqPryb96H9k4PyGcWUuIEngtUlNqEF24SREtSnCklnjG3Y0Zjrp
	OWB21Tjg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyAA-0005PL-BN; Wed, 25 Nov 2020 17:01:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxwp-0006k5-3l; Wed, 25 Nov 2020 16:47:16 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D21F32145D;
 Wed, 25 Nov 2020 16:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322833;
 bh=+j1OMI4byGz3lhkFhbKgRErhPASUUpHiO1mBssgMMAU=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=FVYnSKo8NZMKjj5jXrcsWobxdF2LQSLDQY4mHbY2krhz4fMjmEFrRofb0aVM1NxaJ
 T6KAGjDHcE4VI9E6YqSNVmTk6L9zM1dwoezG6tdZAL8uz6IX22oBZXzzttxn6FJLNv
 hNiuBHXOuyLF/Y3zLiPdYRZ7MGq2GPsTiE48T/Jg=
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
Subject: [PATCH v2 28/39] ASoC: pcm179x: skip of_device_id table when
 !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:41 +0100
Message-Id: <20201125164452.89239-29-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114715_341938_3EF2CF3F 
X-CRM114-Status: GOOD (  15.26  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL3BjbTE3OXgt
aTJjLmM6MzM6MzQ6IHdhcm5pbmc6IOKAmHBjbTE3OXhfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQg
bm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBzb3VuZC9zb2MvY29kZWNzL3Bj
bTE3OXgtaTJjLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvc291bmQvc29jL2NvZGVjcy9wY20xNzl4LWkyYy5jIGIvc291bmQvc29jL2NvZGVj
cy9wY20xNzl4LWkyYy5jCmluZGV4IDM2ZTAxNjc4YmVmNC4uMzRhM2Q1OTZmMjg4IDEwMDY0NAot
LS0gYS9zb3VuZC9zb2MvY29kZWNzL3BjbTE3OXgtaTJjLmMKKysrIGIvc291bmQvc29jL2NvZGVj
cy9wY20xNzl4LWkyYy5jCkBAIC0zMCwxMSArMzAsMTMgQEAgc3RhdGljIGludCBwY20xNzl4X2ky
Y19wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAogCXJldHVybiBwY20xNzl4X2NvbW1v
bl9pbml0KCZjbGllbnQtPmRldiwgcmVnbWFwKTsKIH0KIAorI2lmZGVmIENPTkZJR19PRgogc3Rh
dGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcGNtMTc5eF9vZl9tYXRjaFtdID0gewogCXsg
LmNvbXBhdGlibGUgPSAidGkscGNtMTc5MmEiLCB9LAogCXsgfQogfTsKIE1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIHBjbTE3OXhfb2ZfbWF0Y2gpOworI2VuZGlmCiAKIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaTJjX2RldmljZV9pZCBwY20xNzl4X2kyY19pZHNbXSA9IHsKIAl7ICJwY20xNzl4IiwgMCB9
LAotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
