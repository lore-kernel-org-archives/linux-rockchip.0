Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06787C43460
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 06:56:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D58561448
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 06:56:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D58561448
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mIqbGCoMMaTLc63ozlnS7X1EVTgyXFi84z3Y6KJwuE4=; b=l9xgu/nbKd6bUn6+SUUJpkPI9D
	3bOhSNepsyM03+dbRIqHVXvpGuQkMLXICLmBdPtQrCSULKia/v2BGuHH2QBS/wh6nHun5Eku5uIAz
	lL1t73t2YUv5mszSq1q6l4piI18Xlvsii1h9jlUjpwN82+V2zbMT2hOmiWiRjRqq7ZPLR4WznL+nY
	F0nos8tU6b5ApPWUlq7e11MKJ2GhPytDqzVCZofact01u+ZosX8CLSfGiHLI4fejSHqunWiP/xpIj
	oO8FigmOrT5QGBK2FgE9FfD6oIxCbS4fh1JBfLixgnSifZ6bN8vO30FME3fXaK/r+MFckiC/3F9kC
	ao2ekT3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfzpl-00DQ8U-7s; Mon, 10 May 2021 06:56:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfzok-00DPru-4B
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 06:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=fZQh5/pikwftQUygg0bDqSCCoQX3NUvTvsliZRpwd6s=; b=KTY56OcUZ0JMxXn+s7NoRbbIgq
 ERFy6tO/SJY9uWluxDkATo93dqSgF+sXeN9fG8Yiq0HBr4WacXFeU+p/ku5VmF6I58U45FTbmAI+0
 eYdTfgrEU37DeXPgiEYaWurM11Jr68tyi3lLnqUlHt9EwHYOF4BxSDDuRS1em3gDPiTdrY1fOefgC
 gV40jygVXMwTSFrAB8BfaxnIJF6xGWKtaKG8GchRbyl0TmW4ZFf+Ano9aUNn24nFQshHlw/6mKXcN
 8o3JtMasiifqcm2nUOaNMfSbNA0L3gS9Sly2yfsSD7fk+cloH+ENqePVksLx9eKmpi1pE8JgD9uIx
 xQYSxUSA==;
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfzog-008LsZ-OS
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 06:55:00 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id 25A48B91AE8; Mon, 10 May 2021 08:54:53 +0200 (CEST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] arm64: dts: rockchip: Increase maximal SDIO voltage to 3.3 V
Date: Mon, 10 May 2021 08:54:49 +0200
Message-Id: <20210510065449.942173-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_235458_961283_FA02B2FD 
X-CRM114-Status: GOOD (  10.84  )
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

V2hpbGUgY29tcGFyaW5nIHRoZSB2ZW5kb3IgZHRzIHdpdGggdGhlIG9uZSBhZGRlZCBpbiB2NS4x
MS1yYzEgSSBub3RpY2VkCnRoYXQgdGhlIHZlbmRvciBkdHMgc3BlY2lmaWVkIDMuMyBWIHdoaWNo
IG1hdGNoZXMgdGhlIFNESU8gc3BlY2lmaWNhdGlvbi4KClNvIGZpeCB0aGUgc2RpbyByZWd1bGF0
b3IgdG8gcHJvdmlkZSAodXAgdG8pIDMuMyBWLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1L
w7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzCmluZGV4IDE5NDg1
YjU1MmJjNC4uMzlhMWQyNzZiZDA1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1rb2JvbC1oZWxpb3M2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRzCkBAIC0yNTYsMTEgKzI1NiwxMSBA
QCB2Y2Nfc2Rpb19zMDogTERPX1JFRzQgewogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJCQkJ
cmVndWxhdG9yLWJvb3Qtb247CiAJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAw
MD47Ci0JCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CisJCQkJcmVndWxh
dG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47CiAKIAkJCQlyZWd1bGF0b3Itc3RhdGUtbWVt
IHsKIAkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7Ci0JCQkJCXJlZ3VsYXRvci1zdXNwZW5k
LW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKKwkJCQkJcmVndWxhdG9yLXN1c3BlbmQtbWljcm92b2x0
ID0gPDMzMDAwMDA+OwogCQkJCX07CiAJCQl9OwogCi0tIAoyLjMwLjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
