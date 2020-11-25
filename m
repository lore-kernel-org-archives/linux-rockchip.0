Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98842C56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:51:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24EAC206D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:51:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="KiVrcMsO";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR8QlEvl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 24EAC206D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fts6bdbJ7UI7Ly53oBZdSQ3krzPHZj58udGc/9S5I3M=; b=KiVrcMsOL57s2uXF8+vNdE/5qb
	Zh4SE3Mj1ej/YFmwU/egu3ulJppL+osKJ+SYAU7v7HiyRTbuho7y1zDKn3Mtg90tatIj3dTOl39mV
	ztjHBy34PclcVTi6g6uwZv3t9x2V/0WtntqaGBvwY6JdTjOR/mkIZO7Nlh5uMgvFw35Ydrf9vem0e
	qufZNIQy4zbpo7KNnC/Fv65jIeKtm91cN/GKHsWCCA65EMfqgSZywvxecYaYo8F1Gu4wUibvHMO1r
	WRdpg31gdft02MglINrCARyBpcWfHFnW8ffaoeKuY67+aXeNqag+RgdVjz+5eLZzkCdyydyJoYTXn
	RaTzQ5AA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy1E-0000OO-87; Wed, 25 Nov 2020 16:51:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvc-0006DH-43; Wed, 25 Nov 2020 16:46:03 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A0BB20857;
 Wed, 25 Nov 2020 16:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322759;
 bh=odQNM+XbPMNEcW21zUeTrff3YIHJk7qUR6RFH1Cl5cY=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=KR8QlEvl/Gb/YFhHRR9Y5RV+ct0WXUN//0AkVjSNxIZbruMGjwJKiGtPKgsVAKiIZ
 B9t8NjINT1cY9oSr1B1k80hvIiSVcTYTZb7/1PIfIOblgHBqEQz5Qc0bg8tQfN7IRD
 AHykT+7rt3lxAJZkQNo+QrqAIwnQqS2VeTGXkO4s=
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
Subject: [PATCH v2 11/39] ASoC: rockchip: mark OF related data as maybe unused
Date: Wed, 25 Nov 2020 17:44:24 +0100
Message-Id: <20201125164452.89239-12-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114600_425353_19C601A2 
X-CRM114-Status: GOOD (  16.79  )
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
ZXJ0YWluIGRhdGEKdW51c2VkOgoKICBzb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmM6
NTY5OjM0OiB3YXJuaW5nOiDigJhyb2NrY2hpcF9pMnNfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90
IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICBzb3VuZC9zb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfcGRtLmM6NDYzOjM0OiB3YXJuaW5nOiDigJhyb2NrY2hpcF9wZG1fbWF0Y2jigJkgZGVm
aW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICBzb3VuZC9zb2Mv
cm9ja2NoaXAvcm9ja2NoaXBfc3BkaWYuYzo0NDozNDogd2FybmluZzog4oCYcmtfc3BkaWZfbWF0
Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KClNp
Z25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBz
b3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMgICB8IDIgKy0KIHNvdW5kL3NvYy9yb2Nr
Y2hpcC9yb2NrY2hpcF9wZG0uYyAgIHwgMiArLQogc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlw
X3NwZGlmLmMgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMg
Yi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMKaW5kZXggNTkzMjk5Njc1YjhjLi5l
YWUyODdkOTA1ZWIgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9pMnMu
YworKysgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfaTJzLmMKQEAgLTU2Niw3ICs1NjYs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrX2kyc19waW5zIHJrMzM5OV9pMnNfcGlucyA9IHsK
IAkuc2hpZnQgPSAxMSwKIH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJv
Y2tjaGlwX2kyc19tYXRjaFtdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
cm9ja2NoaXBfaTJzX21hdGNoW10gX19tYXliZV91bnVzZWQgPSB7CiAJeyAuY29tcGF0aWJsZSA9
ICJyb2NrY2hpcCxyazMwNjYtaTJzIiwgfSwKIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJr
MzE4OC1pMnMiLCB9LAogCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMjg4LWkycyIsIH0s
CmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfcGRtLmMgYi9zb3VuZC9z
b2Mvcm9ja2NoaXAvcm9ja2NoaXBfcGRtLmMKaW5kZXggNWFkYjI5M2QwNDM1Li5lNWY3MzI3NDdm
NzEgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9wZG0uYworKysgYi9z
b3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfcGRtLmMKQEAgLTQ2MCw3ICs0NjAsNyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcgcm9ja2NoaXBfcGRtX3JlZ21hcF9jb25maWcg
PSB7CiAJLmNhY2hlX3R5cGUgPSBSRUdDQUNIRV9GTEFULAogfTsKIAotc3RhdGljIGNvbnN0IHN0
cnVjdCBvZl9kZXZpY2VfaWQgcm9ja2NoaXBfcGRtX21hdGNoW10gPSB7CitzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCByb2NrY2hpcF9wZG1fbWF0Y2hbXSBfX21heWJlX3VudXNlZCA9
IHsKIAl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHBkbSIsCiAJICAuZGF0YSA9ICh2b2lkICop
UktfUERNX1JLMzIyOSB9LAogCXsgLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscHgzMC1wZG0iLApk
aWZmIC0tZ2l0IGEvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMgYi9zb3VuZC9z
b2Mvcm9ja2NoaXAvcm9ja2NoaXBfc3BkaWYuYwppbmRleCA2NzQ4MTA4NTFmYmMuLmZmYjRlYzMw
NjQ0MSAxMDA2NDQKLS0tIGEvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMKKysr
IGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmMKQEAgLTQxLDcgKzQxLDcgQEAg
c3RydWN0IHJrX3NwZGlmX2RldiB7CiAJc3RydWN0IHJlZ21hcCAqcmVnbWFwOwogfTsKIAotc3Rh
dGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgcmtfc3BkaWZfbWF0Y2hbXSA9IHsKK3N0YXRp
YyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJrX3NwZGlmX21hdGNoW10gX19tYXliZV91bnVz
ZWQgPSB7CiAJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMwNjYtc3BkaWYiLAogCSAgLmRh
dGEgPSAodm9pZCAqKVJLX1NQRElGX1JLMzA2NiB9LAogCXsgLmNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMTg4LXNwZGlmIiwKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
