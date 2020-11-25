Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A641C63798
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:56:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4968B2083E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:56:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="onSwQx/2";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGnDsS7g"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4968B2083E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l5TQ2A5nQTcsk4G2LKGIvyavywAoZhHmjn9ZVwsXjIQ=; b=onSwQx/2ZeRyv5D0bbJbMtiP+s
	3XPgfsrLOLWuikwA4QfUQcYzWbCGyg/8pg81PLXetFZOWlAUBRS/KMjp4647c5wer0oLy9XfyjLiu
	9AOpnJykl/+djX2qnbYbjLGohENUBDTGDcXj7RvEUp8CrfRVjDuWb8dHVg/D9oZB8cxZTu10SMUli
	xY8YNX3ZB45URKwqoQiN7C2GEhU61k+JhANKMcMD5/fYTHhQospHieCTj+QFtNOM6olSvJ2JV+Sql
	YnYmYRPLKM6LZAs8DJzr2qXYjOyQReYQ2SeiXi8hqWJWYpENTV+4ETAK+qA0nkYpljiniKBHzcYAP
	kD7/1Qew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy65-0003MR-79; Wed, 25 Nov 2020 16:56:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxwT-0006Z3-4K; Wed, 25 Nov 2020 16:46:54 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26BA821534;
 Wed, 25 Nov 2020 16:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322812;
 bh=+k60xKKTSOCYcdQsboL2M+3cBbm3IYtR2+dW8V1VbbU=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=PGnDsS7gMGeSJd29ZPtBL1COcOiVo5M6qrJkLCEmyhnGq1NZKdf0v6uFiQqqfVpP7
 jyaKeHsKTK0SFWIe8ttdpURvVMcxq4BBy2uGc3kGTJyW+5F1+kP6sACeC6m/zLhibu
 dU2hQ5dmH3KyjD89G++coRKfk6WrW51JnBWgBYTg=
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
Subject: [PATCH v2 23/39] ASoC: max98371: skip of_device_id table when
 !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:36 +0100
Message-Id: <20201125164452.89239-24-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114653_396178_EF26B272 
X-CRM114-Status: GOOD (  15.39  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL21heDk4Mzcx
LmM6NDExOjM0OiB3YXJuaW5nOiDigJhtYXg5ODM3MV9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBu
b3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIHNvdW5kL3NvYy9jb2RlY3MvbWF4
OTgzNzEuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9zb3VuZC9zb2MvY29kZWNzL21heDk4MzcxLmMgYi9zb3VuZC9zb2MvY29kZWNzL21heDk4
MzcxLmMKaW5kZXggZGZlZTA1Zjk4NWJkLi4wYjQzODMwM2UxZDUgMTAwNjQ0Ci0tLSBhL3NvdW5k
L3NvYy9jb2RlY3MvbWF4OTgzNzEuYworKysgYi9zb3VuZC9zb2MvY29kZWNzL21heDk4MzcxLmMK
QEAgLTQwOCwxMSArNDA4LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCBt
YXg5ODM3MV9pMmNfaWRbXSA9IHsKIAogTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIG1heDk4Mzcx
X2kyY19pZCk7CiAKKyNpZmRlZiBDT05GSUdfT0YKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2
aWNlX2lkIG1heDk4MzcxX29mX21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJtYXhpbSxt
YXg5ODM3MSIsIH0sCiAJeyB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgbWF4OTgzNzFf
b2ZfbWF0Y2gpOworI2VuZGlmCiAKIHN0YXRpYyBzdHJ1Y3QgaTJjX2RyaXZlciBtYXg5ODM3MV9p
MmNfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
