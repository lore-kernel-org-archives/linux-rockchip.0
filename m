Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05177C56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:49:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E243206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:49:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MC+lE2zv";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBUnr1cA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7E243206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C3lWhu23UNZMdkb04IFPeEQloigbvWjSPe05+8Z3/Co=; b=MC+lE2zv1gobqPajtZYWjMYAw5
	llcfKHM8Go3M5d9OVtuFU5uF9tHxpV1erGE8x5bU5IC1IuzQKnwsnit6IYb8kvj/GogTXSHIreEIc
	0Z5pL0eQmFRPg/bSLUP6EfsucyEmsPk/d+F2AoxeVo5pgiQ8UYKf5qiJOX3CDqbQ3HekUNuot+jUl
	nIUhUrMWGDcdtHSFsh8pVlUvgDvsEi8ScP//C0QdMpvTdqwbYHcsCCVI5tLquWkDhN6ztyUC/4Kg3
	kOuLqCJrJ+4RC836WkAj0L9LBQfK0kps3LhKYyUWPxbo/YGaU6aBjGiKPd8BlWbIe5UnS5UR5mFFu
	hyywyoyg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khxzK-0007qZ-6C; Wed, 25 Nov 2020 16:49:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvK-00066A-KC; Wed, 25 Nov 2020 16:45:43 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A70221973;
 Wed, 25 Nov 2020 16:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322741;
 bh=1EoeOU1HdN3bYTNow0bWtkQGItTZBUyVz0dyrz8aCbY=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=dBUnr1cADQ7AtUpsu8Sixmgan9lv5nsS3af2svJgeQ/q4XlrIQ9TCNndwGMAbn5II
 iltp+YDRQQKKQnul+GxBknQRNQWSm88TJWGCYa3XdFjz5OsyHQxlbmN5fe23aGbjQ0
 WtL3FsYIjgvHZWLRKI6u0HzjgQQlPu1Whqr7IPQU=
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
Subject: [PATCH v2 07/39] ASoC: kirkwood: armada-370-db: mark OF related data
 as maybe unused
Date: Wed, 25 Nov 2020 17:44:20 +0100
Message-Id: <20201125164452.89239-8-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114542_878953_B916B4FE 
X-CRM114-Status: GOOD (  17.36  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2Mva2lya3dvb2QvYXJtYWRhLTM3MC1kYi5j
OjEzNzozNDogd2FybmluZzog4oCYYTM3MGRiX2R0X2lkc+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNl
ZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtv
emxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIHNvdW5kL3NvYy9raXJrd29vZC9hcm1hZGEt
MzcwLWRiLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mva2lya3dvb2QvYXJtYWRhLTM3MC1kYi5jIGIv
c291bmQvc29jL2tpcmt3b29kL2FybWFkYS0zNzAtZGIuYwppbmRleCA4ZTQ0YWUzN2FkMWUuLjgx
MzI2NDI2ZGEzMyAxMDA2NDQKLS0tIGEvc291bmQvc29jL2tpcmt3b29kL2FybWFkYS0zNzAtZGIu
YworKysgYi9zb3VuZC9zb2Mva2lya3dvb2QvYXJtYWRhLTM3MC1kYi5jCkBAIC0xMzQsNyArMTM0
LDcgQEAgc3RhdGljIGludCBhMzcwZGJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAlyZXR1cm4gZGV2bV9zbmRfc29jX3JlZ2lzdGVyX2NhcmQoY2FyZC0+ZGV2LCBjYXJkKTsK
IH0KIAotc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYTM3MGRiX2R0X2lkc1tdID0g
eworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgYTM3MGRiX2R0X2lkc1tdIF9fbWF5
YmVfdW51c2VkID0gewogCXsgLmNvbXBhdGlibGUgPSAibWFydmVsbCxhMzcwZGItYXVkaW8iIH0s
CiAJeyB9LAogfTsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
