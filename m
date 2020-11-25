Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95471C56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:04:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B5B72145D
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:04:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ItHT9Y/n";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2ApKwcg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B5B72145D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fqExy3WQgO+wbUnC/49UyzKmhhUIpKTSY0eXJizIck4=; b=ItHT9Y/nlrpP9oqRQ5xZlp3o/Y
	pX7+ztvDnD5I7Kh521VrZ41lDRKYe0ez96YUM3SA0sIAFWAjyBxGCA1ivcem+KNUrAePq0vpXVe+p
	57EcYjU9KMwxjCtb/tQR7v0ZsdBcrKBrKZ1cdxIjk6M5w0Wo9F/YpsVgSUeN0JY1UEVcOqGksJh8Y
	AcLbGhFQMRy3EsKEkyHxMLf5DUwo3iCVTmb3vFGl23wUpSg7V3On/WUYnCxVmZTHGz2XzhIYjkF9l
	I4ThTK9soGO7Fw6RIx2sYJQEZfL2AMFDUhAyFCI/jFY7KIWSQZ51XuzPu6CgVcztlxwbK0c1N6Lxp
	OT5fYtzA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyDF-0006w2-5b; Wed, 25 Nov 2020 17:04:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxx6-0006sQ-Q3; Wed, 25 Nov 2020 16:47:34 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EF602083E;
 Wed, 25 Nov 2020 16:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322851;
 bh=evb6wjGRVMwrWJRqEySL6t4LzK9d/Rg6xYP1e4Vt620=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=g2ApKwcg2y22ZSIZ61QYf9Kz15eGW631ZhoA7hgpHvNJjG5zBUugFdnbCBTukAsdH
 9mLAyDdWDy0EAVfPkSpK7D8pdoiXk7ycCWaVMaMJMDqz43iHyaR+rSx6JUlLr8wGh+
 94VTPIFmmap5FCtXdULzLJN6KbopAx5MpBsxtMzY=
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
Subject: [PATCH v2 32/39] ASoC: ts3a227e: skip of_device_id table when
 !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:45 +0100
Message-Id: <20201125164452.89239-33-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114733_357850_E34B0867 
X-CRM114-Status: GOOD (  15.40  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL3RzM2EyMjdl
LmM6MzY5OjM0OiB3YXJuaW5nOiDigJh0czNhMjI3ZV9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBu
b3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6
dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIHNvdW5kL3NvYy9jb2RlY3MvdHMz
YTIyN2UuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9zb3VuZC9zb2MvY29kZWNzL3RzM2EyMjdlLmMgYi9zb3VuZC9zb2MvY29kZWNzL3RzM2Ey
MjdlLmMKaW5kZXggM2VkM2I0NWZhN2JhLi45NjJmNWQ0ODM3OGEgMTAwNjQ0Ci0tLSBhL3NvdW5k
L3NvYy9jb2RlY3MvdHMzYTIyN2UuYworKysgYi9zb3VuZC9zb2MvY29kZWNzL3RzM2EyMjdlLmMK
QEAgLTM2NiwxMSArMzY2LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCB0
czNhMjI3ZV9pMmNfaWRzW10gPSB7CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIHRzM2Ey
MjdlX2kyY19pZHMpOwogCisjaWZkZWYgQ09ORklHX09GCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCB0czNhMjI3ZV9vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAidGks
dHMzYTIyN2UiLCB9LAogCXsgfQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHRzM2EyMjdl
X29mX21hdGNoKTsKKyNlbmRpZgogCiAjaWZkZWYgQ09ORklHX0FDUEkKIHN0YXRpYyBzdHJ1Y3Qg
YWNwaV9kZXZpY2VfaWQgdHMzYTIyN2VfYWNwaV9tYXRjaFtdID0gewotLSAKMi4yNS4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
