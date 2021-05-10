Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EE8DC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 09:06:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB5B060232
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 09:06:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB5B060232
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RhpSHduMWNlrQqWsL5ATTAcbjpweEdMiBdqMSGh7NU4=; b=dcU50JnGiZ6GRPq3Cqv3KtylZE
	A8aJblIGaxjbuZ/iUVb2s1odAYJkQhvjtsCcBbWHBMt/3IchCMFZqynqt1aFQKJ6njwvQI2QzhTlG
	W09PVUSUKSvuteU7uyQobcGo85FtlcrpQSfV2pdks0srwla6DxC5qrfDGyLwfTj2rJL9Oc2uuGplg
	7bDQMULDxeubnavhXFxU7PS0MRFbZWSvggqI83LxJht2tU81XvpNPITzaucZRr+mQnTRdBEuh3+Ji
	1KDmxwlOtTiWeYMgDwD/uIgFUoogalWuizwXL0k3Dbmu0n5JoXxYnHtaUItL7QSyIFoyxODpA0uYH
	Gpo/PAkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg1ry-00Di8T-KH; Mon, 10 May 2021 09:06:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg1rk-00Di7o-0h
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 09:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=Mzr7L4vZi2LsQrseyiQ0fmS9pjWrd9vd0Kpq93HROb0=; b=W6SRTHilJZfLEijlqh9GmF5rds
 oCxgbcuq/KYvsSnAoGonFrysVmW60164H9oeA60JSoweI5RV2KxvPk+tA4flGt8qhmW4G5c1YtuA+
 9Tn0tPzDeIJ7xUK6pJ0qF6MLhNzRHj3s7N+v4hyTDAe9x1cTH+VPmnhzOpIOyTBZrtSuFv1bicR8E
 woa8uHv0zlxo0CIb86jphS/AdiOinDnf3yUI6saSC1Ri/pHqo75un6lIgrHov3H3aZ9btGY3zecOq
 06K2lu1HJuXVxdHed85Zgom+3sdTZGak1dHLJYDXnQbFum7YDNymsSTlsqQcUJhfm3XWbzJeM+gI5
 GxsePEZA==;
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg1rh-008RLK-BI
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 09:06:14 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id F21D5B91E0B; Mon, 10 May 2021 11:06:11 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM fans
Date: Mon, 10 May 2021 11:06:07 +0200
Message-Id: <20210510090607.970145-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_020613_557972_A7664674 
X-CRM114-Status: GOOD (  10.64  )
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

T24gdGhlIGhlbGlvczY0IGJvYXJkIHRoZSB0d28gY29ubmVjdG9ycyBQNiBhbmQgUDcgYXJlIHN1
cHBvc2VkIHRvCnBvd2VyIHR3byBmYW5zLiBBZGQgdGhlIGNvcnJlc3BvbmRpbmcgcHdtLWZhbiBk
ZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29l
bmlnLm9yZz4KLS0tCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMg
ICAgfCAyNCArKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtv
Ym9sLWhlbGlvczY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtv
Ym9sLWhlbGlvczY0LmR0cwppbmRleCAzOWExZDI3NmJkMDUuLjFkZDk1MzU1MjBiMiAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQu
ZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlv
czY0LmR0cwpAQCAtNTgsNiArNTgsMjAgQEAgbGVkLTEgewogCQl9OwogCX07CiAKKwlmYW4xIHsK
KwkJLyogZmFuIGNvbm5lY3RlZCB0byBQNyAqLworCQljb21wYXRpYmxlID0gInB3bS1mYW4iOwor
CQlwd21zID0gPCZwd20wIDAgNDAwMDAgMD47CisJCWNvb2xpbmctbGV2ZWxzID0gPDAgODAgMTcw
IDI1NT47CisJfTsKKworCWZhbjIgeworCQkvKiBmYW4gY29ubmVjdGVkIHRvIFA2ICovCisJCWNv
bXBhdGlibGUgPSAicHdtLWZhbiI7CisJCXB3bXMgPSA8JnB3bTEgMCA0MDAwMCAwPjsKKwkJY29v
bGluZy1sZXZlbHMgPSA8MCA4MCAxNzAgMjU1PjsKKwl9OworCiAJdmNjMXY4X3N5c19zMDogdmNj
MXY4LXN5cy1zMCB7CiAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKIAkJcmVndWxh
dG9yLW5hbWUgPSAidmNjMXY4X3N5c19zMCI7CkBAIC0zNTIsNiArMzY2LDE2IEBAICZwbXVfaW9f
ZG9tYWlucyB7CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJnB3bTAgeworCS8qIHB3bS1mYW4g
b24gUDcgKi8KKwlzdGF0dXMgPSAib2theSI7Cit9OworCismcHdtMSB7CisJLyogcHdtLWZhbiBv
biBQNiAqLworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZzZGhjaSB7CiAJYnVzLXdpZHRoID0g
PDg+OwogCW1tYy1oczIwMC0xXzh2OwotLSAKMi4zMC4yCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
