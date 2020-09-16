Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1A1FC43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 952C12244C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WPJWJIcG";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="uad7FDK4"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 952C12244C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QL9qNZ0mGGiwnYePkm7SNeCdEjQml/uf/MN8PBIwNOs=; b=WPJWJIcGV7/f/bD/FmcxdVUZM
	tkXPIzo+y2rlpXR+ymbvMot3K6Toj/SbhoMcL+UpDGbGjNuSGSEEZUQ4XfUbffN3owE5GhbFU+aTe
	qro2RzmMj8yD0fcGMI9E9joY80TUR72qcXwXZpm3zRFnKfzC0rfILG0AxRFgAaymL18NyF0bWhJEE
	xafqfVQh2dyM21lIJkhgThBdsEA1XHbiEmKe1gOMbWWaMWuVBBItFEJ5/TnsH+BZ4lHCDKVhpZeDD
	1EH1uVmdabueLPHFEWeU8IaB7sz8L0qiO/JpkpVm4DPa8Me5BqK+lmNnUxxTsOy8J8UyBJgQ1GJx6
	SMDBi2bPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIa8g-0002PL-TX; Wed, 16 Sep 2020 16:18:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIa8M-0002FL-47; Wed, 16 Sep 2020 16:18:15 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B30122955;
 Wed, 16 Sep 2020 16:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600273093;
 bh=d96KYZZMydcJHEl9ntD8CVmSDdqIiH31PsoEq+mfyUQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uad7FDK4a+Ne5IYmZfeU+1YD99kDHHrIlZutKKrYvUTLFZmBTRwlLmBx02L+gdKmT
 MTXHEXjysUHsNp9b6pr/mXmJg4XB4MRZhGPeFw02cwXudkz35qpubMtJJ9zQtzjhi9
 45bZmPAi3H4zojr6wkUQO4eJoHTiNA7QT5KWRctY=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 6/6] clk: rockchip: rk3308: drop unused mux_timer_src_p
Date: Wed, 16 Sep 2020 18:17:40 +0200
Message-Id: <20200916161740.14173-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200916161740.14173-1-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_121814_360251_EA999467 
X-CRM114-Status: GOOD (  13.57  )
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIHBhcmVudCBuYW1lcyAnbXV4X3RpbWVyX3NyY19wJyBpcyBub3QgdXNlZDoKCiAgSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYzoxMzowOgog
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYzoxMzY6Nzogd2FybmluZzog4oCYbXV4
X3RpbWVyX3NyY19w4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJp
YWJsZT1dCgpTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5v
cmc+Ci0tLQogZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzMwOC5jIHwgMSAtCiAxIGZpbGUg
Y2hhbmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1yazMzMDguYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYwppbmRleCBi
MGJhZjg3YTI4M2UuLjViZjE1ZjJhNDRiNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvcm9ja2No
aXAvY2xrLXJrMzMwOC5jCisrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYwpA
QCAtMTMzLDcgKzEzMyw2IEBAIFBOQU1FKG11eF91YXJ0MV9wKQkJPSB7ICJjbGtfdWFydDFfc3Jj
IiwgImR1bW15IiwgImNsa191YXJ0MV9mcmFjIiB9OwogUE5BTUUobXV4X3VhcnQyX3ApCQk9IHsg
ImNsa191YXJ0Ml9zcmMiLCAiZHVtbXkiLCAiY2xrX3VhcnQyX2ZyYWMiIH07CiBQTkFNRShtdXhf
dWFydDNfcCkJCT0geyAiY2xrX3VhcnQzX3NyYyIsICJkdW1teSIsICJjbGtfdWFydDNfZnJhYyIg
fTsKIFBOQU1FKG11eF91YXJ0NF9wKQkJPSB7ICJjbGtfdWFydDRfc3JjIiwgImR1bW15IiwgImNs
a191YXJ0NF9mcmFjIiB9OwotUE5BTUUobXV4X3RpbWVyX3NyY19wKQkJPSB7ICJ4aW4yNG0iLCAi
Y2xrX3J0YzMyayIgfTsKIFBOQU1FKG11eF9kY2xrX3ZvcF9wKQkJPSB7ICJkY2xrX3ZvcF9zcmMi
LCAiZGNsa192b3BfZnJhYyIsICJ4aW4yNG0iIH07CiBQTkFNRShtdXhfbmFuZGNfcCkJCT0geyAi
Y2xrX25hbmRjX2RpdiIsICJjbGtfbmFuZGNfZGl2NTAiIH07CiBQTkFNRShtdXhfc2RtbWNfcCkJ
CT0geyAiY2xrX3NkbW1jX2RpdiIsICJjbGtfc2RtbWNfZGl2NTAiIH07Ci0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
