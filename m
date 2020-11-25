Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD21C83016
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:05:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF9E92158C
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:05:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="sELZL9qq";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y06x7KpL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CF9E92158C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=35sIUxdrXLo6ncYWLQWbnUQxJsawxvP0zhu8OyeCjlI=; b=sELZL9qqxYVb+gJoeY/HaQTNWk
	Ix3ZSTAul8C0QJPZN8N9vWBPrRPwZKLA3Q+5Nue/87/c+6ume9ONFHm9KyiNVYLxY3YaS/g9jOxe0
	P/HFMFgXwdpBXC35sKPv4uNhiVEjW3Vvpeq7wuPhaNqTMBM6VDHPXjNw8fws2HzUbhXr1ZZZNra6C
	v6L0R61ESInimJQ8Q+bIVrMZeAQ+0V9eVDGkN8tb7b5/FAX3HLrpOngDX+f1pxZ4NDHm2Mwe58tNX
	bui1DFz2QEVGwWd/8fdca/vH4oXoFaAse15+yhQfTgBgZ2TpJz3rNmlBcwzwCss9kM37E+aTPXseX
	9xMcb2Bg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyDt-0007Gb-VP; Wed, 25 Nov 2020 17:04:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxxB-0006uk-0U; Wed, 25 Nov 2020 16:47:38 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FC112173E;
 Wed, 25 Nov 2020 16:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322855;
 bh=DS1nymrUd49e3536q4ErunpnmZeajDywtvhVRNThnTM=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Y06x7KpL/Ul+BwyDJid2u2gBwjWStNYe6D5S+RpY+EsRHq7+h5pMLz+JkdqgEFFz5
 moR2TRDFqC+z4c6r1UBlnI2fWV99V0JGAAlNOq+7OU+vSmfgWhfn32wvwvQWMkRLGc
 /DgDd9wtfgtDoa4UVP7Xqb8+xuHodhMqgatV4QIg=
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
Subject: [PATCH v2 33/39] ASoC: es7134: mark OF related data as maybe unused
Date: Wed, 25 Nov 2020 17:44:46 +0100
Message-Id: <20201125164452.89239-34-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114737_213367_E2539FD7 
X-CRM114-Status: GOOD (  16.56  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2MvY29kZWNzL2VzNzEzNC5jOjI2NDozMzog
d2FybmluZzog4oCYZXM3MTU0X2NoaXDigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2Vk
LWNvbnN0LXZhcmlhYmxlPV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4KLS0tCiBzb3VuZC9zb2MvY29kZWNzL2VzNzEzNC5jIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3NvdW5kL3NvYy9jb2RlY3MvZXM3MTM0LmMgYi9zb3VuZC9zb2MvY29kZWNzL2VzNzEzNC5j
CmluZGV4IDAwNTE4NDA2ZWIyYi4uZTJiNzk4NzkzNTRiIDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mv
Y29kZWNzL2VzNzEzNC5jCisrKyBiL3NvdW5kL3NvYy9jb2RlY3MvZXM3MTM0LmMKQEAgLTE4Myw3
ICsxODMsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHNuZF9zb2NfZGFwbV9yb3V0ZSBlczcxMzRf
ZXh0cmFfcm91dGVzW10gPSB7CiAJeyAiUGxheWJhY2siLCBOVUxMLCAiVkREIiwgfQogfTsKIAot
c3RhdGljIGNvbnN0IHN0cnVjdCBlczcxMzRfY2hpcCBlczcxMzRfY2hpcCA9IHsKK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgZXM3MTM0X2NoaXAgZXM3MTM0X2NoaXAgX19tYXliZV91bnVzZWQgPSB7CiAJ
LmRhaV9kcnYgPSAmZXM3MTM0X2RhaSwKIAkubW9kZXMgPSBlczcxMzRfbW9kZXMsCiAJLm1vZGVf
bnVtID0gQVJSQVlfU0laRShlczcxMzRfbW9kZXMpLApAQCAtMjYxLDcgKzI2MSw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgc25kX3NvY19kYXBtX3JvdXRlIGVzNzE1NF9leHRyYV9yb3V0ZXNbXSA9
IHsKIAl7ICJQbGF5YmFjayIsIE5VTEwsICJQVkREIiwgfQogfTsKIAotc3RhdGljIGNvbnN0IHN0
cnVjdCBlczcxMzRfY2hpcCBlczcxNTRfY2hpcCA9IHsKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZXM3
MTM0X2NoaXAgZXM3MTU0X2NoaXAgX19tYXliZV91bnVzZWQgPSB7CiAJLmRhaV9kcnYgPSAmZXM3
MTU0X2RhaSwKIAkubW9kZXMgPSBlczcxNTRfbW9kZXMsCiAJLm1vZGVfbnVtID0gQVJSQVlfU0la
RShlczcxNTRfbW9kZXMpLAotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
