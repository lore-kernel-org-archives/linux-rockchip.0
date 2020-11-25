Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EF0BC56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:02:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C67C1206D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:02:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="D3QjRqIB";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRaB8GQt"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C67C1206D9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5n62D3XORxZpvZO+iAuJch2Ms9mjpkS655dI22xBAfI=; b=D3QjRqIBAenZvRJCOokn7UerwB
	rUzaXaekSJj3ADko61HUVCBi485xkDrchWs+eQFNjcwOEu5Y2NnsoIWFiEl2JWH65HblHHkkOLFtB
	BVHQDSY9tbEyv3RpmMV7LmJBYmRPQYXLHf6430NjK9fj3yKIhYi/rUTJ2nkVgOi67IodrRikBy7M4
	xx0HxmdBzlTOXPuH1xR8//kB3WYeTOAPcUq/7ix6/yLjWpmluFEqvBlNQgwnl/uySeD74hTzSF/jn
	95y7Hi2H2ffgI3BaxEr5PW4xHjZEI/EuJCREEl7Xu85bgPlGMvQfQeGVnGuJY22lr6axkj7FUCjPk
	Avhpu+lQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyBf-00066R-08; Wed, 25 Nov 2020 17:02:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxwx-0006ob-Ts; Wed, 25 Nov 2020 16:47:25 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B9BE21741;
 Wed, 25 Nov 2020 16:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322842;
 bh=Qndidju4iqoGNSvs1izHnQ1sh03cOOHXUD8yp7FDt+M=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=YRaB8GQt1nDMKVzF23BA1+1KV8GA3BfKSAjYKRp/1w12/olHYvA6S9kCi+ND/f5Iv
 GuL9d19tdW/uFM86Y4uWKtW1Jx0kTzzDBsDob8BhOiDilrSA1ktxPAP7aGLPqpRBLZ
 8cJooopkiWxfwhmQsItydXUtmRiROHdPJ66ED3HU=
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
Subject: [PATCH v2 30/39] ASoC: tas2562: skip of_device_id table when
 !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:43 +0100
Message-Id: <20201125164452.89239-31-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114724_157596_F1363BAF 
X-CRM114-Status: GOOD (  16.01  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL3RhczI1NjIu
Yzo4MDU6MzQ6IHdhcm5pbmc6IOKAmHRhczI1NjJfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90
IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRv
ZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBzb3VuZC9zb2MvY29kZWNzL3RhczI1
NjIuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9zb3VuZC9zb2MvY29kZWNzL3RhczI1NjIuYyBiL3NvdW5kL3NvYy9jb2RlY3MvdGFzMjU2Mi5j
CmluZGV4IGYxZmYyMDRlM2FkMC4uMTk5NjVmYWJlOTQ5IDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mv
Y29kZWNzL3RhczI1NjIuYworKysgYi9zb3VuZC9zb2MvY29kZWNzL3RhczI1NjIuYwpAQCAtODAy
LDYgKzgwMiw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCB0YXMyNTYyX2lk
W10gPSB7CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIHRhczI1NjJfaWQpOwogCisjaWZk
ZWYgQ09ORklHX09GCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCB0YXMyNTYyX29m
X21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJ0aSx0YXMyNTYyIiwgfSwKIAl7IC5jb21w
YXRpYmxlID0gInRpLHRhczI1NjMiLCB9LApAQCAtODEwLDYgKzgxMSw3IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHRhczI1NjJfb2ZfbWF0Y2hbXSA9IHsKIAl7IH0sCiB9Owog
TU9EVUxFX0RFVklDRV9UQUJMRShvZiwgdGFzMjU2Ml9vZl9tYXRjaCk7CisjZW5kaWYKIAogc3Rh
dGljIHN0cnVjdCBpMmNfZHJpdmVyIHRhczI1NjJfaTJjX2RyaXZlciA9IHsKIAkuZHJpdmVyID0g
ewotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
