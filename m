Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 857EAC56201
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:02:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D2DC206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:02:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Cbw0XXzU";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="2UhsR2lE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D2DC206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sqla4sW0JLFBcHbvL3KoGjvjQAbWY/nsvTCXcUpMHhk=; b=Cbw0XXzU/2T1P1lsDOPlh5B7ZD
	wBqCygw0eIPFGW4vZHp4D+unnx3Tubncb1ybLa6+SZ/QWsWsMxePsrESUHryykpeZ/st01c2koPOc
	FVTxMZ9LGKdr2zEi2yhYMYFWDY7GB7t+Ra0tXyd+QPrX9jwa0AKI+YSOGXN9LBHkelARw1RRvkQZz
	Zv2HzwleIxCG1TNe8kZzmcEkkU+gkYehfx3sc8OmLFje+mSaBsld3prTQ77NCp7Js573DzTpzJ5+i
	J6gIFJKLzYlC/XVUrDwqHGuaEoThDlgwJX80A9DyN3u1HqFppK0WV0sGp6ZWRSD8FczvXR9SS01ts
	6goxzG1g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyBP-0005zT-99; Wed, 25 Nov 2020 17:02:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxwt-0006mG-AO; Wed, 25 Nov 2020 16:47:20 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 303072173E;
 Wed, 25 Nov 2020 16:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322838;
 bh=4TwJDhvLUQ9SarMg0Cg8dwFxEwAJn3ntoVUmPHve+a8=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=2UhsR2lEphQwEhseQo7QQiQ5hicVJdRCFQa43ow39eGPnQa0e152eI7JvKwwK8G5n
 VD7YuP0OoF82cGkVOyqLA/sirKXdmOgdtVbZmoUPTmq77HfjAWPGGGZDgD11yiz9Wz
 fwuYnKVK4sLx5woXA1SDUOFB/qMhhDHPTpcZMHOs=
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
Subject: [PATCH v2 29/39] ASoC: rt5660: skip of_device_id table when !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:42 +0100
Message-Id: <20201125164452.89239-30-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114719_591273_518501C3 
X-CRM114-Status: GOOD (  14.81  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL3J0NTY2MC5j
OjEyMzg6MzQ6IHdhcm5pbmc6IOKAmHJ0NTY2MF9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3Qg
dXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIHNvdW5kL3NvYy9jb2RlY3MvcnQ1NjYw
LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
c291bmQvc29jL2NvZGVjcy9ydDU2NjAuYyBiL3NvdW5kL3NvYy9jb2RlY3MvcnQ1NjYwLmMKaW5k
ZXggOWUzODEzZjc1ODNkLi4wZWRmMDlkM2E0OTkgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9jb2Rl
Y3MvcnQ1NjYwLmMKKysrIGIvc291bmQvc29jL2NvZGVjcy9ydDU2NjAuYwpAQCAtMTIzNSwxMSAr
MTIzNSwxMyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgcnQ1NjYwX2kyY19p
ZFtdID0gewogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUoaTJjLCBydDU2NjBfaTJjX2lkKTsKIAor
I2lmZGVmIENPTkZJR19PRgogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcnQ1NjYw
X29mX21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0NTY2MCIsIH0sCiAJ
e30sCiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgcnQ1NjYwX29mX21hdGNoKTsKKyNlbmRp
ZgogCiAjaWZkZWYgQ09ORklHX0FDUEkKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9kZXZpY2Vf
aWQgcnQ1NjYwX2FjcGlfbWF0Y2hbXSA9IHsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
