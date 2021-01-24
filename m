Return-Path: <SRS0=fTsq=G3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E4BBC433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Jan 2021 21:03:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FC5B22CA2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Jan 2021 21:03:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2FC5B22CA2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/dOnQkvfMd9dxV/2ijZ9/t76lUw6RNtEqKQIAUpfTVc=; b=dKTupCz4v4+V0m3ZxCOELSBpqN
	S2A1ird8n4HhcnC42ixEbfcIfGT1W2N4dR/uB1L7eS20QyKFCxjYWSYlFRkfEpDsdq8HVkPRoyvo3
	T2J8paudeYMhi4uNxlJ67/PdeKDgwbVivEEGe4tT8YGIikFwL6mOGz+MlT4TDF7JTZGYZpwRZN+9g
	dY+3lCRXI0DVqcwEZiK2QfLzOSH3AM0Gj/7XPjCPIuDvTEj4B3xEjl1Kcnwjoga4PLF9UVf1U8eMD
	gSrfe6dk8gpB5OOCdmkhtFtJE4cywotEC+rugqtJKI9bauGhjsHiQ4kI5nHDg1+FA0YZPJnEiqiI6
	xJ0J5Pew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3mXr-00078O-Vw; Sun, 24 Jan 2021 21:03:40 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3mXo-00077U-9Y
 for linux-rockchip@lists.infradead.org; Sun, 24 Jan 2021 21:03:37 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id A932BADC8EC; Sun, 24 Jan 2021 22:03:30 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] arm64: dts: rockchip: Increase maximal SDIO voltage to
 3.3 V
Date: Sun, 24 Jan 2021 22:03:27 +0100
Message-Id: <20210124210328.611707-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210124_160336_448553_ED5CE1C0 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: devicetree@vger.kernel.org, Aditya Prayoga <aditya@kobol.io>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

V2hpbGUgY29tcGFyaW5nIHRoZSB2ZW5kb3IgZHRzIHdpdGggdGhlIG9uZSBhZGRlZCBpbiB2NS4x
MS1yYzEgSSBub3RpY2VkCnRoYXQgdGhlIHZlbmRvciBkdHMgc3BlY2lmaWVkIDMuMyBWIHdoaWNo
IG1hdGNoZXMgdGhlIFNESU8gc3BlY2lmaWNhdGlvbi4KClNvIGZpeCB0aGUgc2RpbyByZWd1bGF0
b3IgdG8gcHJvdmlkZSAodXAgdG8pIDMuMyBWLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzCmluZGV4IDJhNTYx
YmU3MjRiMi4uZDY0NDZjMzJiOTFlIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzCkBAIC0yNTEsMTEgKzI1MSwxMSBA
QCB2Y2Nfc2Rpb19zMDogTERPX1JFRzQgewogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJCQkJ
cmVndWxhdG9yLWJvb3Qtb247CiAJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAw
MD47Ci0JCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CisJCQkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CiAKIAkJCQlyZWd1bGF0b3Itc3RhdGUtbWVt
IHsKIAkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7Ci0JCQkJCXJlZ3VsYXRvci1zdXNwZW5k
LW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKKwkJCQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0
ID0gPDMzMDAwMDA+OwogCQkJCX07CiAJCQl9OwogCgpiYXNlLWNvbW1pdDogMTljMzI5ZjY4MDg5
OTViMTQyYjM5NjYzMDFmMjE3YzgzMWU3Y2YzMQotLSAKMi4yOS4yCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
