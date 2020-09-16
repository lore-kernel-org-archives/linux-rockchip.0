Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1021DC43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8608229C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Io370RuD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="viVZyB+w"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A8608229C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wdSyYPUeq9QW1IZkbwhcXrT1Ga/wwjhDMFEY8drYtY4=; b=Io370RuD0g61YwEgbaPqqSF8M
	k/vCGaCsVZ4pJpOoGC3jTPMURkjcv8Vfwvrei2ojHqRIQg1IL5Cjw0+mfDqqrzxZDVFYOJbwKD1Em
	nxLrMkQ1PCtR38LBFXSv7KW9boJpeRgd8j3Zo2K7nGShVZpLFY13vMX7+NMj20YtaWDwIHoLWNk6d
	y4tJ4FTLbbFhCQkJT+nKCPz7FrJFPBYsuzyz4adRzeeeEax+XFYtc0RUt75IeXKS8t2epK7tjoLL6
	nFZXqNKJSCTEg6Us4u2R/obRtSu/JTOR8GqPi9bPQ8HhuRZa3DeIV6alOR+QmSty3cI3Cjzi45e0M
	yLzF21uTw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIa8U-0002J1-Vn; Wed, 16 Sep 2020 16:18:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIa87-0002AT-QQ; Wed, 16 Sep 2020 16:18:01 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAC1F22597;
 Wed, 16 Sep 2020 16:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600273079;
 bh=dSNpGQ0mWKF9wKmXD2Ucm0zykyxGN3p0wNIaxZJV8Io=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=viVZyB+wDRwY1ciL2+gA9+KgFhjlpQqg/W9lnYVB4gOk7RbmAAAvaQ27FGmrqlW7/
 +I1NXf4LQ0ffvZem9VB5Mv/1cUPkVduhsDrViP689a7qii1kL3VwuxeOOQb1sRqNPp
 m1gB5VYdy2ohl3tc7TCDiPae8Dxc3vYgU6hDJ19c=
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
Subject: [PATCH 4/6] clk: mmp: pxa1928: drop unused 'clk' variable
Date: Wed, 16 Sep 2020 18:17:38 +0200
Message-Id: <20200916161740.14173-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200916161740.14173-1-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_121759_991407_45D53A93 
X-CRM114-Status: GOOD (  15.91  )
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

J2NsaycgaXMgYXNzaWduZWQgYnV0IG5ldmVyIHJlYWQ6CgogIGRyaXZlcnMvY2xrL21tcC9jbGst
b2YtcHhhMTkyOC5jOiBJbiBmdW5jdGlvbiDigJhweGExOTI4X3BsbF9pbml04oCZOgogIGRyaXZl
cnMvY2xrL21tcC9jbGstb2YtcHhhMTkyOC5jOjcxOjE0OiB3YXJuaW5nOiB2YXJpYWJsZSDigJhj
bGvigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KClNpZ25l
ZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KLS0tCiBkcml2
ZXJzL2Nsay9tbXAvY2xrLW9mLXB4YTE5MjguYyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvbW1w
L2Nsay1vZi1weGExOTI4LmMgYi9kcml2ZXJzL2Nsay9tbXAvY2xrLW9mLXB4YTE5MjguYwppbmRl
eCBjZWRlN2I0Y2EzYjkuLjk5OGZjNDIwN2IwZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9jbGsvbW1w
L2Nsay1vZi1weGExOTI4LmMKKysrIGIvZHJpdmVycy9jbGsvbW1wL2Nsay1vZi1weGExOTI4LmMK
QEAgLTY4LDcgKzY4LDYgQEAgc3RhdGljIHN0cnVjdCBtbXBfY2xrX2ZhY3Rvcl90YmwgdWFydF9m
YWN0b3JfdGJsW10gPSB7CiAKIHN0YXRpYyB2b2lkIHB4YTE5MjhfcGxsX2luaXQoc3RydWN0IHB4
YTE5MjhfY2xrX3VuaXQgKnB4YV91bml0KQogewotCXN0cnVjdCBjbGsgKmNsazsKIAlzdHJ1Y3Qg
bW1wX2Nsa191bml0ICp1bml0ID0gJnB4YV91bml0LT51bml0OwogCiAJbW1wX3JlZ2lzdGVyX2Zp
eGVkX3JhdGVfY2xrcyh1bml0LCBmaXhlZF9yYXRlX2Nsa3MsCkBAIC03Nyw3ICs3Niw3IEBAIHN0
YXRpYyB2b2lkIHB4YTE5MjhfcGxsX2luaXQoc3RydWN0IHB4YTE5MjhfY2xrX3VuaXQgKnB4YV91
bml0KQogCW1tcF9yZWdpc3Rlcl9maXhlZF9mYWN0b3JfY2xrcyh1bml0LCBmaXhlZF9mYWN0b3Jf
Y2xrcywKIAkJCQkJQVJSQVlfU0laRShmaXhlZF9mYWN0b3JfY2xrcykpOwogCi0JY2xrID0gbW1w
X2Nsa19yZWdpc3Rlcl9mYWN0b3IoInVhcnRfcGxsIiwgInBsbDFfNDE2IiwKKwltbXBfY2xrX3Jl
Z2lzdGVyX2ZhY3RvcigidWFydF9wbGwiLCAicGxsMV80MTYiLAogCQkJCUNMS19TRVRfUkFURV9Q
QVJFTlQsCiAJCQkJcHhhX3VuaXQtPm1wbXVfYmFzZSArIE1QTVVfVUFSVF9QTEwsCiAJCQkJJnVh
cnRfZmFjdG9yX21hc2tzLCB1YXJ0X2ZhY3Rvcl90YmwsCi0tIAoyLjE3LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
