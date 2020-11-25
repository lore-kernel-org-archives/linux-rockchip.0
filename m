Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 799D7C56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:54:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 016CC2083E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:54:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ty8x3lrk";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLXDfCUE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 016CC2083E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6AV1xok0DjRt8Yf0jZHAVHsSTvxmz/nwJyQTdlqo94=; b=Ty8x3lrkbHSqi0VzbmwcaK5ZRg
	8EmkSnN8qaCR7N3ThoqHJcxQKUHVJDPl1/ryJ5ksy0TTk4nkNv6iTvZZbxfZV3G19mA1uF3PRAQZ1
	NgmaKFE7yLNYwkdARZsSvubhz9hNP+P43rvEDKcd83K8iolb/xrzll2IGq/5ScC7UoYMcr3TijmfZ
	DIhjUMClqHrxJ8d74SNLXc6xXNdnBsfIv5CWnnUesdseAdDN72Rxr//DjY0EpEnH1qydkK2v92D9w
	F6k1hbHHPVzAu3EgBZlEN2eyW2Xad7jBa8d/OdaSoU2xxtLfTuRMtvT4YCSxtFI/JZ8XCDzDTja8R
	mqQIgiFg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khy3o-0001yH-AF; Wed, 25 Nov 2020 16:54:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxvy-0006MD-ML; Wed, 25 Nov 2020 16:46:25 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2E71721D1A;
 Wed, 25 Nov 2020 16:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322781;
 bh=iiT953SPfN8VyA44unfiNSwE/7K2fqWVO8986O34OFE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=PLXDfCUEeeIg3AO2/Y6LGIv2LCcudhIgioULsFR1yF1jK6f59FAtYRCypwScAB1ms
 gJijCxqcPUBZmLpzSxrpOccKwLKsi7+xHm63HRMwwkgQceg8/a9SYyW7QwTiKlIuDQ
 UZbvny3nK86nJSU30TotsziEqjrxRutkyvPktYDA=
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
Subject: [PATCH v2 16/39] ASoC: alc5632: skip of_device_id table when
 !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:29 +0100
Message-Id: <20201125164452.89239-17-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114622_939706_86C4A5DC 
X-CRM114-Status: GOOD (  15.50  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL2FsYzU2MzIu
YzoxMTcwOjM0OiB3YXJuaW5nOiDigJhhbGM1NjMyX29mX21hdGNo4oCZIGRlZmluZWQgYnV0IG5v
dCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0
b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogc291bmQvc29jL2NvZGVjcy9hbGM1
NjMyLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvc291bmQvc29jL2NvZGVjcy9hbGM1NjMyLmMgYi9zb3VuZC9zb2MvY29kZWNzL2FsYzU2MzIu
YwppbmRleCA5ZDZkY2QzZmZhNTcuLmJkZTVkZWQ2Nzc1NCAxMDA2NDQKLS0tIGEvc291bmQvc29j
L2NvZGVjcy9hbGM1NjMyLmMKKysrIGIvc291bmQvc29jL2NvZGVjcy9hbGM1NjMyLmMKQEAgLTEx
NjcsMTEgKzExNjcsMTMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGFsYzU2
MzJfaTJjX3RhYmxlW10gPSB7CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIGFsYzU2MzJf
aTJjX3RhYmxlKTsKIAorI2lmZGVmIENPTkZJR19PRgogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgYWxjNTYzMl9vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAicmVhbHRl
ayxhbGM1NjMyIiwgfSwKIAl7IH0KIH07CiBNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBhbGM1NjMy
X29mX21hdGNoKTsKKyNlbmRpZgogCiAvKiBpMmMgY29kZWMgY29udHJvbCBsYXllciAqLwogc3Rh
dGljIHN0cnVjdCBpMmNfZHJpdmVyIGFsYzU2MzJfaTJjX2RyaXZlciA9IHsKLS0gCjIuMjUuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
