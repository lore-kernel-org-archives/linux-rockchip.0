Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38079C63798
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:54:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A308F206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:54:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="3iL0JgAY";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="2h8WEMQD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A308F206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DMqWYpN8t3rd3YHz7XmmTgzkyI9bpSzxuIyD25UQUwo=; b=3iL0JgAYbyUW8sWm0pSn80/zd6
	7MGKxtNdTmbpZ1mO5BPnfgkxEYNZAEIZu7uQJkhAsdwZIst/K9qhSGT07E47UKO/sRo8/mqh7lQlo
	Ng9aQspQaxajxLYhSDu6UUJfzv7ilsDYd6gagca9FpfsIwUBnFK18yDjLYNI+WKfDgQj1gGNnA170
	BllHrHZiUIQGZXBq3yqxomMq0TKomcME9GEX45wYzF8zz7WENpfm9OiDxf/KCv7uSTmW8Jm5POS4N
	OPvLYglPMvwub0p7Epc/WIUWYqhbURuCKhhDXYE9dtXB4AW0MCbhrmM2TE4k83l8pGyo5UvHT8fJr
	FdbQPvxQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy3a-0001rX-Qk; Wed, 25 Nov 2020 16:54:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxw3-0006NS-3W; Wed, 25 Nov 2020 16:46:28 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97F0C21527;
 Wed, 25 Nov 2020 16:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322785;
 bh=sO3ez0EZ5UNNfG4j2+8DCfucIft1SFisc/XRA8bljPg=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=2h8WEMQDro27iQkr3Y8Y8iCPyI+EQLdieR0jmGURic78f9mutiIvcWtQIewH6yuv1
 wZBQuoMA3MQMS4PYqXuBhQhTvb10ZdVHHm+c7sE7v5mBX/9ntEAXuIric6vzy/LNPh
 07LF14QLzGuJOnobzQMvBfzMzV41iuXouMWca3xs=
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
Subject: [PATCH v2 17/39] ASoC: da7218: skip of_device_id table when !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:30 +0100
Message-Id: <20201125164452.89239-18-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114627_381744_2B35F435 
X-CRM114-Status: GOOD (  15.73  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL2RhNzIxOC5j
OjIyODE6MzQ6IHdhcm5pbmc6IOKAmGRhNzIxOF9vZl9tYXRjaOKAmSBkZWZpbmVkIGJ1dCBub3Qg
dXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgotLS0KIHNvdW5kL3NvYy9jb2RlY3MvZGE3MjE4
LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
c291bmQvc29jL2NvZGVjcy9kYTcyMTguYyBiL3NvdW5kL3NvYy9jb2RlY3MvZGE3MjE4LmMKaW5k
ZXggNmQ3OGJjY2I1NWMzLi4yYmZhZmJlOWUzZGMgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9jb2Rl
Y3MvZGE3MjE4LmMKKysrIGIvc291bmQvc29jL2NvZGVjcy9kYTcyMTguYwpAQCAtMjI3OCwxMiAr
MjI3OCwxNCBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgZGE3MjE4X2lycV90aHJlYWQoaW50IGlycSwg
dm9pZCAqZGF0YSkKICAqIERUCiAgKi8KIAorI2lmZGVmIENPTkZJR19PRgogc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgZGE3MjE4X29mX21hdGNoW10gPSB7CiAJeyAuY29tcGF0aWJs
ZSA9ICJkbGcsZGE3MjE3IiwgLmRhdGEgPSAodm9pZCAqKSBEQTcyMTdfREVWX0lEIH0sCiAJeyAu
Y29tcGF0aWJsZSA9ICJkbGcsZGE3MjE4IiwgLmRhdGEgPSAodm9pZCAqKSBEQTcyMThfREVWX0lE
IH0sCiAJeyB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgZGE3MjE4X29mX21hdGNoKTsK
KyNlbmRpZgogCiBzdGF0aWMgaW5saW5lIGludCBkYTcyMThfb2ZfZ2V0X2lkKHN0cnVjdCBkZXZp
Y2UgKmRldikKIHsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
