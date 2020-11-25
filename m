Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D5CC56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:51:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E999C206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:51:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fZ9TwidW";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABUnJcDn"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E999C206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cE7vOM6Nn31OUBSgoJPJVKX39fU+LkCrtBDTmQKn0KQ=; b=fZ9TwidW6/dqqMd4gbPP644DSH
	mfixDFQSw8HPe+JyjflSngJDzZ0mHvjXMEb5elGq+PUXDTNi2xyEaXB9MjTfsJyOOm4fdEUCOX+Ee
	36ySid6oyxE35BxfJbRuyH5LJcJIXg32ugDxc/YnkjAIOtGpFMqGpKbfczkuiV5yORHykibhYwng+
	yhIuI8d9hGt/O+Z9FOYQBCnj8nw4K6ZRMpvBRGdSBL7Vn8N6ouRnSkgVZxRJQC6QWQhVbZezmlzUi
	yliwTab8MYCJh2P8EUwzqH3Hm1F6Xq4lF9kKJ3z7KAISRhFymVT3Ybo/EROG26fXIHi5n4rX/qN5q
	HNnNHAbg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy0i-0008Rh-Up; Wed, 25 Nov 2020 16:51:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvX-0006BC-NF; Wed, 25 Nov 2020 16:45:57 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDA662168B;
 Wed, 25 Nov 2020 16:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322754;
 bh=ChXOP4zPna7HLSdSgT8m2+soTCG3Ay8aEpjklXp+WKs=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=ABUnJcDnN6ylKoo+I2gOz+UMVxpb8U8JOqC1IL3b3bAWCVLgiVitzklgrAcfdV6JX
 TkYX9jJOIZCcZLqNGaN4gMZMoVIKYeiWTajFqoBJAmfJpNDVD3QGc9IvGefx4Ov9sq
 UlwPn8D077TrVLinR0EucSrMz/gTgAEq6Tbkesjk=
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
Subject: [PATCH v2 10/39] ASoC: samsung: smdk_wm8994: mark OF related data as
 maybe unused
Date: Wed, 25 Nov 2020 17:44:23 +0100
Message-Id: <20201125164452.89239-11-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114555_946914_CB7D7426 
X-CRM114-Status: GOOD (  17.41  )
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

VGhlIGRyaXZlciBjYW4gYmUgY29tcGlsZSB0ZXN0ZWQgd2l0aCAhQ09ORklHX09GIG1ha2luZyBj
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2Mvc2Ftc3VuZy9zbWRrX3dtODk5NC5jOjEz
OTozNDogd2FybmluZzog4oCYc2Ftc3VuZ193bTg5OTRfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQg
bm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KCi0tLQoKTm90IGFkZGluZyBTeWx3ZXN0
ZXIncyByZXZpZXcgYXMgcGF0Y2ggY2hhbmdlZC4KLS0tCiBzb3VuZC9zb2Mvc2Ftc3VuZy9zbWRr
X3dtODk5NC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL3NhbXN1bmcvc21ka193bTg5OTQuYyBiL3Nv
dW5kL3NvYy9zYW1zdW5nL3NtZGtfd204OTk0LmMKaW5kZXggNjRhMWE2NDY1NmFiLi4yOGQ2ZWIx
NGQ3ZGIgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zYW1zdW5nL3NtZGtfd204OTk0LmMKKysrIGIv
c291bmQvc29jL3NhbXN1bmcvc21ka193bTg5OTQuYwpAQCAtMTM2LDcgKzEzNiw3IEBAIHN0YXRp
YyBzdHJ1Y3Qgc25kX3NvY19jYXJkIHNtZGsgPSB7CiAJLm51bV9saW5rcyA9IEFSUkFZX1NJWkUo
c21ka19kYWkpLAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc2Ftc3Vu
Z193bTg5OTRfb2ZfbWF0Y2hbXSA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IHNhbXN1bmdfd204OTk0X29mX21hdGNoW10gX19tYXliZV91bnVzZWQgPSB7CiAJeyAuY29tcGF0
aWJsZSA9ICJzYW1zdW5nLHNtZGstd204OTk0IiwgLmRhdGEgPSAmc21ka19ib2FyZF9kYXRhIH0s
CiAJe30sCiB9OwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
