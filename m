Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D70BC56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:49:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FAC12083E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:49:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VhfucIiF";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQUooFv8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9FAC12083E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rdxFtc4oQUM9rgiTH+TZUkyGUmgo/GEWELszqVQbdOM=; b=VhfucIiFyM31fgVpaA4L/WkaRr
	ZA0/VAU52zaClceg/ARt7tjSP25flneIefcukJ+Givszo9QtrXRj6twaRBiTmP+fEfrlcmybeAsXN
	PyvbdUTm3CkRxh3CFVlPlYi6nCiQlhniEDG+K61Rd2cNTkwckXBoCwMpvXDdFy7qv88jhMiOFNwwl
	JdID8UsiWJahkXcJQDNVvYcvnXzjJTNoMu2uB6LGBrdi17+9GAfnVJ+yZKrF6EyyiT1rIXbvPgO7x
	EkN7yqJn8MKl53aiosfQlaZTWWj6T/q+djJL4WVsRbJh4GkM13yJ2FSmo0hQqqOKdswgLbvb+yYxX
	/vlIqy3g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khxyw-0007fk-6o; Wed, 25 Nov 2020 16:49:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvP-000683-Ac; Wed, 25 Nov 2020 16:45:48 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DD84217A0;
 Wed, 25 Nov 2020 16:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322746;
 bh=etf7Q71IvSLRzmtXXA3ATxczWkvUTrzJz/PrLFLwlkY=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=YQUooFv8yP6VUj0YY/2BFcSN4MVaqsNAMifxxrQ7O4pXbNkybn4F/9UIbxbAUPspI
 T8i+KboaNovuBGaGimXxcmSEhIlnfuFWWNDYt23eO08K35hfAHn4zkhR0/DKvPBCYC
 anEHWWIGA5JIAMJm6XhhFWVHZzRTZIe51RmHZ2Os=
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
Subject: [PATCH v2 08/39] ASoC: meson: t9015: mark OF related data as maybe
 unused
Date: Wed, 25 Nov 2020 17:44:21 +0100
Message-Id: <20201125164452.89239-9-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114547_553357_131EEACC 
X-CRM114-Status: GOOD (  17.19  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2MvbWVzb24vdDkwMTUuYzozMTU6MzQ6IHdh
cm5pbmc6IOKAmHQ5MDE1X2lkc+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29u
c3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPgotLS0KIHNvdW5kL3NvYy9tZXNvbi90OTAxNS5jIHwgMiArLQogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQv
c29jL21lc29uL3Q5MDE1LmMgYi9zb3VuZC9zb2MvbWVzb24vdDkwMTUuYwppbmRleCA1NmQyNTky
YzE2ZDUuLjRjMTM0OWRkMWUwNiAxMDA2NDQKLS0tIGEvc291bmQvc29jL21lc29uL3Q5MDE1LmMK
KysrIGIvc291bmQvc29jL21lc29uL3Q5MDE1LmMKQEAgLTMxMiw3ICszMTIsNyBAQCBzdGF0aWMg
aW50IHQ5MDE1X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCQkJCSAgICAg
ICAmdDkwMTVfZGFpLCAxKTsKIH0KIAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
dDkwMTVfaWRzW10gPSB7CitzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCB0OTAxNV9p
ZHNbXSBfX21heWJlX3VudXNlZCA9IHsKIAl7IC5jb21wYXRpYmxlID0gImFtbG9naWMsdDkwMTUi
LCB9LAogCXsgfQogfTsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
