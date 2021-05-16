Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0FDC43461
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 341BB6100A
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 23:09:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 341BB6100A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K7AB/GSCqcadNeKrGKQ/lc6pSqvK+syCUl6yOLx/a/A=; b=i/bKrmMffZrXorQiRQyVJQ5Yd
	XzyS16iQQBAwqE+7qx3yI7A8ePdUb2LtHsGN9lWDHPoT5GFK9t1qakicRPF63dPOWJFDoxKkfT86C
	+GtdJv8ogeSQ0Bo8O+fhf3l/VfVLIcZCqtrgWcBs8RLgqD1IFpoiodsa2+OJVQ71cWucpfXDjGcMd
	f8AETFVy6nVid4QrKN1/omIHSSJHy/GX+a88XAW51Qk1EeE9idEU4gA9+E8IHUANuNBc8moTQ7b0T
	E+7TG3Nqv6MI1jffpLacf/hxuOwyt9JE6/V5LlbzcZ2si5rq35tE52riYChRxSUZZbvvL2RdEI36g
	O6V3HE8Ag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPsl-00D8oT-Ka; Sun, 16 May 2021 23:09:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq9-00D7ob-06; Sun, 16 May 2021 23:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=PiAtmuEq23FRlRQfE0sPADKHqpiKdshWBduacG3QKzI=; b=W2bQnHicJ0/0ubSjp90FfUe/D5
 j6boH40Qx6GlCnQzBVOLTRI2hI84nOdNOtTGUBc1CpCQPJhG2pDdAJo6VknwsqNXZWj0jV19zxZ5L
 vugCrkZGyz3w+6vbIQHJDMxOOI+REV8aQZtK+5XWE0KdxDVKxor/UuvgpRiHURqSeK4xRvs7NwWlv
 3O2EgT/MAYcu9BNgAwKCouwoUxgihI9EvwaH/k2C+X2YxHciYBRHbJy+V2c/kyWOXpmSfbR5VZvgS
 R5D4Q+L0zgnhWGhM6TjzBE77JT4vj5kSKE7hH5Y+2FZarzvPgaTb0BLGd2ux3zZEIJDH0c2hyINwG
 Ts7Hm8Sw==;
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPq6-00DKeE-2W; Sun, 16 May 2021 23:06:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 6AA63B1EB;
 Sun, 16 May 2021 23:06:21 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org
Subject: [PATCH 7/9] arm64: dts: rockchip: rk1808: Prepare eMMC node
Date: Mon, 17 May 2021 01:05:49 +0200
Message-Id: <20210516230551.12469-8-afaerber@suse.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210516230551.12469-1-afaerber@suse.de>
References: <20210516230551.12469-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_160626_278950_4CBEDDD3 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

QWRkIGFuIGVNTUMgRFQgbm9kZS4KClNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZh
ZXJiZXJAc3VzZS5kZT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5k
dHNpIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazE4MDguZHRzaQppbmRleCBhZjJiNTFhZmRhN2QuLmI0
YTcxYzVjOGJlNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazE4
MDguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5kdHNpCkBA
IC0xOTksNSArMTk5LDE0IEBAIHVhcnQ3OiBzZXJpYWxAZmY1YzAwMDAgewogCQkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDQ0IElSUV9UWVBFX0xFVkVMX0hJR0g+OwogCQkJc3RhdHVzID0gImRpc2Fi
bGVkIjsKIAkJfTsKKworCQllbW1jOiBtbWNAZmZkMDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazE4MDgtZHctbXNoYyIsICJyb2NrY2hpcCxyazMyODgtZHctbXNoYyI7CisJCQly
ZWcgPSA8MHhmZmQwMDAwMCAweDQwMDA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDQ3IElS
UV9UWVBFX0xFVkVMX0hJR0g+OworCQkJbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+OworCQkJ
Zmlmby1kZXB0aCA9IDwweDEwMD47CisJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OwogCX07
CiB9OwotLSAKMi4zMS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
