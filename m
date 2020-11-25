Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16EA7C64E8A
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:05:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6227B206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:05:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="e0HKgU+L";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ddyh8IH/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6227B206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uJHIT3TGEM6/Tvo/BcpVR1twW7pobxIkVxkmenN/Tmg=; b=e0HKgU+LAO/SxiT2jcBnusvSCe
	IS+X8onKUL/k/ihtykFsjJoqAkaHAJkcRsplYAB5xGuhnGhdrQ6XnbKe9RMEQcYN5NVb0gJ/9wIii
	p5FaIvXi6RjI7Y7OSBekP3/TFD1YVpb3Tn8bYmSfNEsIUszkG5/QvVifGjWYaUOE1VqNu+XBHrhtV
	xUGa5gYos0kHN+YYRYb0Ad8kfThwdhSNyNCsde0m44YqZz+1NB+ZLTxuNC021LB87Yk+0R6TwofBh
	fUNnWsV/3wFYqhmhoksl/+QuA4zzpESWIGue8gPPvKO0/P7HREtZlWRVVrryHp+Y+bxkpG5PRp9YN
	ZZ/Wb+OA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyE1-0007MH-NJ; Wed, 25 Nov 2020 17:05:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxxF-0006we-Pq; Wed, 25 Nov 2020 16:47:43 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1430206D8;
 Wed, 25 Nov 2020 16:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322859;
 bh=eg5/nyaqALzijU8H2GOtWYcQapgeWcHG71oF3tWQQWg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Ddyh8IH/EJm5619WtvUJU6eDrl0i+w5CrYoy6MJVCswYzsnoLHCtroB5S1xZ8pe49
 fTkqFN0wAin3Z0pGTNw9O8nIYY12a41LySktCAXrbiA/3NOYzOUUgz9zhGN33cK64E
 bgeCfdRi/u7sFO+hYP7oNuv54qY3qQp0Gqi77JwY=
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
Subject: [PATCH v2 34/39] ASoC: es7241: mark OF related data as maybe unused
Date: Wed, 25 Nov 2020 17:44:47 +0100
Message-Id: <20201125164452.89239-35-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114742_244270_E54F8B52 
X-CRM114-Status: GOOD (  17.16  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2MvY29kZWNzL2VzNzI0MS5jOjIwNjozMzog
d2FybmluZzog4oCYZXM3MjQxX2NoaXDigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2Vk
LWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4KLS0tCiBzb3VuZC9zb2MvY29kZWNzL2VzNzI0MS5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
c291bmQvc29jL2NvZGVjcy9lczcyNDEuYyBiL3NvdW5kL3NvYy9jb2RlY3MvZXM3MjQxLmMKaW5k
ZXggODc5OTFiZDRhY2VmLi4yMzQ0YTBiMDM1MTggMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9jb2Rl
Y3MvZXM3MjQxLmMKKysrIGIvc291bmQvc29jL2NvZGVjcy9lczcyNDEuYwpAQCAtMjAzLDcgKzIw
Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZXM3MjQxX2Nsb2NrX21vZGUgZXM3MjQxX21vZGVz
W10gPSB7CiAJfSwKIH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgZXM3MjQxX2NoaXAgZXM3MjQx
X2NoaXAgPSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IGVzNzI0MV9jaGlwIGVzNzI0MV9jaGlwIF9f
bWF5YmVfdW51c2VkID0gewogCS5tb2RlcyA9IGVzNzI0MV9tb2RlcywKIAkubW9kZV9udW0gPSBB
UlJBWV9TSVpFKGVzNzI0MV9tb2RlcyksCiB9OwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
