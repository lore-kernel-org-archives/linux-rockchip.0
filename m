Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C2A6C56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:47:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C497921534
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:47:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="k35Y+QPH";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRTTyIKe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C497921534
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TlKUfyTca9D7xtRK0fKN9YvXG0K3RxxsGB+IKPhzQgc=; b=k35Y+QPHqExswrVSLdfAxFcKpg
	NHRR7TGiIShvlsuiEIWGoN5fD7+qaISqnB3jjyBAv645KvfzjF826DZBUehuzZ1uuXtSG0AL2+k0p
	Q/YDBP29C3JTeCiuSsxNqNZjE223Qsn8cfnfgpFZeQ7Ck9rW7q1ixk6Noy1kbNspbq63ttxAyp3UB
	3HM2XkIvkfRDNWc9c80EVjLvcZ77t5lX8V2U4LLsTK8Ji9Bbds+ozHc2m6HD0wxM16HJzKaf8c8/V
	TSIeyUXL5PesrSfSAJ4YCv2ptif8fdwYJQFCIeBUIYD4gFEBQzSu3baiZh/L0pRSGdNHizbKkPpNZ
	VzvebT+Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khxx0-0006q0-BO; Wed, 25 Nov 2020 16:47:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxv2-0005z9-7a; Wed, 25 Nov 2020 16:45:26 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6206E2083E;
 Wed, 25 Nov 2020 16:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322723;
 bh=0RU/z63TFqofN4jVwdcty/28q5bzXfhx8+l6Xu6QH9w=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=YRTTyIKeFh5OE8tlM0qsZO/vR/DVczg60FuY9hbjeL7Kw9ZNhwSiecFkk2GTJzE4k
 MiDEL6G6V76b3isTW9nnK5/b5D+hqepF2f+d2uAiZv9ok64ey2rOzabQ1AM0xlTkzT
 t16gJRMqNroRvXgPLjCAJjObpcZq4LOgWAicZA5w=
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
Subject: [PATCH v2 03/39] ASoC: gtm601: mark OF related data as maybe unused
Date: Wed, 25 Nov 2020 17:44:16 +0100
Message-Id: <20201125164452.89239-4-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114524_462490_77C1DEFB 
X-CRM114-Status: GOOD (  17.23  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2MvY29kZWNzL2d0bTYwMS5jOjkwOjM0OiB3
YXJuaW5nOiDigJhndG02MDFfY29kZWNfb2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQg
Wy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3ps
b3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBzb3VuZC9zb2MvY29kZWNzL2d0bTYwMS5jIHwg
MiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvc291bmQvc29jL2NvZGVjcy9ndG02MDEuYyBiL3NvdW5kL3NvYy9jb2RlY3MvZ3Rt
NjAxLmMKaW5kZXggYWU5ZTFjNzBjYTU3Li5lMTIzNWU2OTViMGYgMTAwNjQ0Ci0tLSBhL3NvdW5k
L3NvYy9jb2RlY3MvZ3RtNjAxLmMKKysrIGIvc291bmQvc29jL2NvZGVjcy9ndG02MDEuYwpAQCAt
ODcsNyArODcsNyBAQCBzdGF0aWMgaW50IGd0bTYwMV9wbGF0Zm9ybV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCQkJKHN0cnVjdCBzbmRfc29jX2RhaV9kcml2ZXIgKilkYWlf
ZHJpdmVyLCAxKTsKIH0KIAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZ3RtNjAx
X2NvZGVjX29mX21hdGNoW10gPSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBn
dG02MDFfY29kZWNfb2ZfbWF0Y2hbXSBfX21heWJlX3VudXNlZCA9IHsKIAl7IC5jb21wYXRpYmxl
ID0gIm9wdGlvbixndG02MDEiLCAuZGF0YSA9ICh2b2lkICopJmd0bTYwMV9kYWkgfSwKIAl7IC5j
b21wYXRpYmxlID0gImJyb2FkbW9iaSxibTgxOCIsIC5kYXRhID0gKHZvaWQgKikmYm04MThfZGFp
IH0sCiAJe30sCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
