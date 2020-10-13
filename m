Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA370C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 16:14:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41CBA25247
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 16:14:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rQeivNb+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 41CBA25247
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xQFXyjD364weLE+WyEHszHb9LA9dxO1Tb8vGmrgAzLk=; b=rQeivNb+ja/aP9+H10YQ4Qw/Y
	/m6EFyWfKo5NDgO/2DQvrc60FuYqAsS7Rd5RJViydDTHKT7erUzPVN71vn3vo8PamK3WmchwBFIGy
	Gqz9pB/RuAiPieo52tFGVkjdKSj/kIeKw1mik43laMT7MEyc0IJCnj/d5t2RkCDhzH3vAYYO54QqW
	Nq2SLVk1ydKq6tZ88QC9PrY/lVdU7tsANxt4JfnoR66IQKXqH/t+6LSyQ6AIdMDtfXwOzjWITAFrq
	CWhSfr6TtITL0s9F45AfKC/nA7gWc15zA1BFC3OGJhBcjibTgR1cDKU28cfY4cQ9UAXwys/2d7Et6
	6CPKXSRsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSMwF-0000w0-NB; Tue, 13 Oct 2020 16:14:12 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSMvx-0000ky-R8; Tue, 13 Oct 2020 16:13:55 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 931E8A53275; Tue, 13 Oct 2020 18:13:42 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH v3 1/2] dt-bindings: vendor-prefixes: Add kobol prefix
Date: Tue, 13 Oct 2020 18:13:39 +0200
Message-Id: <20201013161340.720403-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201013161340.720403-1-uwe@kleine-koenig.org>
References: <20201013161340.720403-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_121354_036493_94832FFD 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIHByZWZpeCBpcyBhbHJlYWR5IHVzZWQgaW4gYXJtL2FybWFkYS0zODgtaGVsaW9zNC5kdHMu
CgpBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTog
VXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgfCAyICsrCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCmluZGV4IDYzOTk2YWIwMzUy
MS4uYjJjYmRhZDQ1ODQ2IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCkBAIC01NDUsNiArNTQ1LDggQEAgcGF0dGVy
blByb3BlcnRpZXM6CiAgICAgZGVzY3JpcHRpb246IEtpb25peCwgSW5jLgogICAiXmtvYm8sLioi
OgogICAgIGRlc2NyaXB0aW9uOiBSYWt1dGVuIEtvYm8gSW5jLgorICAiXmtvYm9sLC4qIjoKKyAg
ICBkZXNjcmlwdGlvbjogS29ib2wgSW5ub3ZhdGlvbnMgUHRlLiBMdGQuCiAgICJea29lLC4qIjoK
ICAgICBkZXNjcmlwdGlvbjogS2FvaHNpdW5nIE9wdG8tRWxlY3Ryb25pY3MgSW5jLgogICAiXmtv
bnRyb24sLioiOgotLSAKMi4yOC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
