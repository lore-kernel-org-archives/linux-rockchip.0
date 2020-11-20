Return-Path: <SRS0=tk72=E2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD0EC64E8A
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2020 16:18:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58F47238E6
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2020 16:18:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="g0qHRF9n";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEKoIH8i"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58F47238E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LPXIUNsbVMmt0cCF5VHYz0usntJTCcfPY/LBFHt9h28=; b=g0qHRF9nIZKRkWde4Lm46h81R
	OyTHsBSRs/reg0iNCiSnJsMJ1TIRQzU04uB6qBsXo/+oefi3blKseTfpHXKauPipNba/uFseM7hAN
	Kwpn0uYxbI14wk0vIorJ7hxAG/oEIHTSyVMP22h6FSZ1ENVxL0vpdnsQcvPdIARbUEvmUxKh/vYzQ
	1Mi8lemjyU/dHhoEy3zYxNfqz1o9j/az7VqT9F6W7qAAUwdhWUmPJ7VXdFPlw/QAz0c40Zod1sKiZ
	/2qQSLqcgu62tQMJAMhR4FnrgM8QfSUE6n+IZJAUJgPnOiB/5PR58J4RwvPrqGisert5dYn/Z6Q+m
	zwY0YChqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kg97D-0007E6-NS; Fri, 20 Nov 2020 16:18:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kg976-0007Bb-8P; Fri, 20 Nov 2020 16:18:21 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C0DA22464;
 Fri, 20 Nov 2020 16:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605889099;
 bh=BHZ6nUetqig2aNv0C70O6rfOF+ARiHZiTexSCji7bWY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qEKoIH8i5FwAd5ly1vMetYZhFMu1kpGGqVE0UUn9liC3Pi2D6HO3lIEMkW8i9iaIP
 sNmP3yJA84yDGQ6X8WBlUdXg32+sjozEnLCoNRgkwkHHoCYqRV7xID/N1XiaadZ4jB
 2FoLPoO6eL220nGxQEDKgQA4xBeZprhpFjIkGsag=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org
Subject: [PATCH 10/38] ASoC: rockchip: drop of_match_ptr from of_device_id
 table
Date: Fri, 20 Nov 2020 17:16:24 +0100
Message-Id: <20201120161653.445521-10-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201120161653.445521-1-krzk@kernel.org>
References: <20201120161653.445521-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201120_111820_430923_A5C32784 
X-CRM114-Status: GOOD (  16.70  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Takashi Iwai <tiwai@suse.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLiAgVGhpcyBmaXhlcwpjb21waWxlIHdh
cm5pbmcgKCFDT05GSUdfT0Ygb24geDg2XzY0KToKCiAgc291bmQvc29jL3JvY2tjaGlwL3JvY2tj
aGlwX2kycy5jOjU2OTozNDogd2FybmluZzog4oCYcm9ja2NoaXBfaTJzX21hdGNo4oCZIGRlZmlu
ZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCiAgc291bmQvc29jL3Jv
Y2tjaGlwL3JvY2tjaGlwX3BkbS5jOjQ2MzozNDogd2FybmluZzog4oCYcm9ja2NoaXBfcGRtX21h
dGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCiAg
c291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3NwZGlmLmM6NDQ6MzQ6IHdhcm5pbmc6IOKAmHJr
X3NwZGlmX21hdGNo4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJp
YWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5v
cmc+Ci0tLQogc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jICAgfCAyICstCiBzb3Vu
ZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfcGRtLmMgICB8IDIgKy0KIHNvdW5kL3NvYy9yb2NrY2hp
cC9yb2NrY2hpcF9zcGRpZi5jIHwgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL3JvY2tjaGlwL3JvY2tj
aGlwX2kycy5jIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jCmluZGV4IDU5MzI5
OTY3NWI4Yy4uMzlkN2NlMWY1M2E3IDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfaTJzLmMKKysrIGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jCkBAIC03
MTQsNyArNzE0LDcgQEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfaTJz
X2RyaXZlciA9IHsKIAkucmVtb3ZlID0gcm9ja2NoaXBfaTJzX3JlbW92ZSwKIAkuZHJpdmVyID0g
ewogCQkubmFtZSA9IERSVl9OQU1FLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIo
cm9ja2NoaXBfaTJzX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gcm9ja2NoaXBfaTJzX21h
dGNoLAogCQkucG0gPSAmcm9ja2NoaXBfaTJzX3BtX29wcywKIAl9LAogfTsKZGlmZiAtLWdpdCBh
L3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9wZG0uYyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9y
b2NrY2hpcF9wZG0uYwppbmRleCA1YWRiMjkzZDA0MzUuLjE3MWI1NWU0MDEwYSAxMDA2NDQKLS0t
IGEvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX3BkbS5jCisrKyBiL3NvdW5kL3NvYy9yb2Nr
Y2hpcC9yb2NrY2hpcF9wZG0uYwpAQCAtNjE0LDcgKzYxNCw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxh
dGZvcm1fZHJpdmVyIHJvY2tjaGlwX3BkbV9kcml2ZXIgPSB7CiAJLnJlbW92ZSA9IHJvY2tjaGlw
X3BkbV9yZW1vdmUsCiAJLmRyaXZlciA9IHsKIAkJLm5hbWUgPSAicm9ja2NoaXAtcGRtIiwKLQkJ
Lm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0Y2hfcHRyKHJvY2tjaGlwX3BkbV9tYXRjaCksCisJCS5v
Zl9tYXRjaF90YWJsZSA9IHJvY2tjaGlwX3BkbV9tYXRjaCwKIAkJLnBtID0gJnJvY2tjaGlwX3Bk
bV9wbV9vcHMsCiAJfSwKIH07CmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2No
aXBfc3BkaWYuYyBiL3NvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zcGRpZi5jCmluZGV4IDY3
NDgxMDg1MWZiYy4uOTg2OWRhN2JjY2VhIDEwMDY0NAotLS0gYS9zb3VuZC9zb2Mvcm9ja2NoaXAv
cm9ja2NoaXBfc3BkaWYuYworKysgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc3BkaWYu
YwpAQCAtMzgxLDcgKzM4MSw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIHJrX3Nw
ZGlmX2RyaXZlciA9IHsKIAkucmVtb3ZlID0gcmtfc3BkaWZfcmVtb3ZlLAogCS5kcml2ZXIgPSB7
CiAJCS5uYW1lID0gInJvY2tjaGlwLXNwZGlmIiwKLQkJLm9mX21hdGNoX3RhYmxlID0gb2ZfbWF0
Y2hfcHRyKHJrX3NwZGlmX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gcmtfc3BkaWZfbWF0
Y2gsCiAJCS5wbSA9ICZya19zcGRpZl9wbV9vcHMsCiAJfSwKIH07Ci0tIAoyLjI1LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
