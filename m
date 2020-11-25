Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F8FC56202
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:03:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37B072083E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 17:03:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tbXgna0X";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="chhnwZ13"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 37B072083E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wk8lspSKE4zwYxcnHXaay2ksgHiVyAh0YacoDdwrYMc=; b=tbXgna0XRGRr5FBbULzZ2uL3po
	Y+1vpsoNDOQPnFlEXG/Q0uUatdDPrBy6eUC7D0oGDWj048BjTfzOyipgnZKuisP0S/1vqy8J3PpUD
	zFk/30yAkHTZTdexAPRsrwJmWQjb7hdoyWSSNpcPNI4GgD+N5wY90tsZPv6Paww6jndk1fodxCY2z
	NdGIEh7VyimdnAGN/sFZJbyObc8UOLN8Y8nBPHxzmnVQ9enbXRCUTm8yofbd5yQygu6Q7oyU94hi+
	GBVXXtArmRfXprTMQC40GP5IbtTcRTYvWmZcccaKmBVgU/ztGydrF6ZOgPDcelkM4Q2xz5jn/KE1h
	2kR8DNxA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khyCK-0006Tr-7Z; Wed, 25 Nov 2020 17:03:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxx1-0006qj-Sj; Wed, 25 Nov 2020 16:47:29 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE4F52173E;
 Wed, 25 Nov 2020 16:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322846;
 bh=WHszfzaet9THpQ07YzL3T8dCwt/v5KzLv3SE9+AV0Kc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=chhnwZ13LmhWF8rezbDeVIf/5F8dK/D/VCTGuEeNy2Ged+P/6IhYEoBJekx1EYGWN
 MfxNP0qMdBOz00S3GbuxrSBs/Tbsg84wO4hM/do8IJUWWMBzZxZmZ4vxNFgLkpV2wL
 /FsAkptCZeSktYPmDQcNNfKPXDsHfxxDza77HLVA=
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
Subject: [PATCH v2 31/39] ASoC: tlv320: skip of_device_id table when !CONFIG_OF
Date: Wed, 25 Nov 2020 17:44:44 +0100
Message-Id: <20201125164452.89239-32-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201125164452.89239-1-krzk@kernel.org>
References: <20201125164452.89239-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114728_087654_EA051B2F 
X-CRM114-Status: GOOD (  15.89  )
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
bnVzZWQgZm9yICFDT05GSUdfT0YKYnVpbGRzOgoKICBzb3VuZC9zb2MvY29kZWNzL3RsdjMyMGFp
YzIzLWkyYy5jOjM4OjM0OiB3YXJuaW5nOiDigJh0bHYzMjBhaWMyM19vZl9tYXRjaOKAmSBkZWZp
bmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3QtdmFyaWFibGU9XQogIHNvdW5kL3NvYy9j
b2RlY3MvdGx2MzIwYWRjeDE0MC5jOjEwNzY6MzQ6IHdhcm5pbmc6IOKAmHRsdjMyMGFkY3gxNDBf
b2ZfbWF0Y2jigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxl
PV0KClNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4K
LS0tCiBzb3VuZC9zb2MvY29kZWNzL3RsdjMyMGFkY3gxNDAuYyAgIHwgMiArKwogc291bmQvc29j
L2NvZGVjcy90bHYzMjBhaWMyMy1pMmMuYyB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL2NvZGVjcy90bHYzMjBhZGN4MTQwLmMg
Yi9zb3VuZC9zb2MvY29kZWNzL3RsdjMyMGFkY3gxNDAuYwppbmRleCA1M2E4MDI0NmFlZTEuLjNm
MDI3YzgyMzRhNiAxMDA2NDQKLS0tIGEvc291bmQvc29jL2NvZGVjcy90bHYzMjBhZGN4MTQwLmMK
KysrIGIvc291bmQvc29jL2NvZGVjcy90bHYzMjBhZGN4MTQwLmMKQEAgLTEwNzMsNiArMTA3Myw3
IEBAIHN0YXRpYyBzdHJ1Y3Qgc25kX3NvY19kYWlfZHJpdmVyIGFkY3gxNDBfZGFpX2RyaXZlcltd
ID0gewogCX0KIH07CiAKKyNpZmRlZiBDT05GSUdfT0YKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIHRsdjMyMGFkY3gxNDBfb2ZfbWF0Y2hbXSA9IHsKIAl7IC5jb21wYXRpYmxlID0g
InRpLHRsdjMyMGFkYzMxNDAiIH0sCiAJeyAuY29tcGF0aWJsZSA9ICJ0aSx0bHYzMjBhZGM1MTQw
IiB9LApAQCAtMTA4MCw2ICsxMDgxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgdGx2MzIwYWRjeDE0MF9vZl9tYXRjaFtdID0gewogCXt9LAogfTsKIE1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIHRsdjMyMGFkY3gxNDBfb2ZfbWF0Y2gpOworI2VuZGlmCiAKIHN0YXRpYyBpbnQg
YWRjeDE0MF9pMmNfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmkyYywKIAkJCSAgICAgY29uc3Qg
c3RydWN0IGkyY19kZXZpY2VfaWQgKmlkKQpkaWZmIC0tZ2l0IGEvc291bmQvc29jL2NvZGVjcy90
bHYzMjBhaWMyMy1pMmMuYyBiL3NvdW5kL3NvYy9jb2RlY3MvdGx2MzIwYWljMjMtaTJjLmMKaW5k
ZXggNTAyNWU1YzQzNzgzLi5kYmI4Zjk2OTI3NGMgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9jb2Rl
Y3MvdGx2MzIwYWljMjMtaTJjLmMKKysrIGIvc291bmQvc29jL2NvZGVjcy90bHYzMjBhaWMyMy1p
MmMuYwpAQCAtMzUsMTEgKzM1LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9p
ZCB0bHYzMjBhaWMyM19pZFtdID0gewogCiBNT0RVTEVfREVWSUNFX1RBQkxFKGkyYywgdGx2MzIw
YWljMjNfaWQpOwogCisjaWZkZWYgQ09ORklHX09GCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCB0bHYzMjBhaWMyM19vZl9tYXRjaFtdID0gewogCXsgLmNvbXBhdGlibGUgPSAidGks
dGx2MzIwYWljMjMiLCB9LAogCXsgfQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHRsdjMy
MGFpYzIzX29mX21hdGNoKTsKKyNlbmRpZgogCiBzdGF0aWMgc3RydWN0IGkyY19kcml2ZXIgdGx2
MzIwYWljMjNfaTJjX2RyaXZlciA9IHsKIAkuZHJpdmVyID0gewotLSAKMi4yNS4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
