Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52239C25B06
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Aug 2022 04:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bt0ubjgEv6bZUkbLd4J60GsdBDbB3HFAj8+9gFQDIFk=; b=bmDv1EyvNPiPv7
	30N3Z2jvH2udD4vm39POlQXcfVjPxZrtLOnieMOTQQO0H5w6p6OdAsDrGG60enXVYeABn3yjTAFnk
	evdxhvzSp4RKgCIg99YApJrq0Gs4dYaH+Ok4B25YTqLkWYGz8ETgoMOkIVgTxfw6j2z0RoI+BVLc6
	7F4XP6R4Y+8u4sWeKJ8WToO9N/J2bKHZowezvVehjO+WJEU0/g3gPZXYdYjTsaDoeOvsuBMS3AJr4
	gAH5bFb3VOZWeRzzSEmV5y4ngPRuDPU5xrZsdSuVePv2iRDiWdRTdMbhb5iv0y4lYQlnjpW3Uh9Ig
	YC1sNBCLzyvLyjSTPBTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oN4w9-002yCf-HE; Sun, 14 Aug 2022 04:09:17 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oN4vw-002y5C-Vh; Sun, 14 Aug 2022 04:09:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id BB56F5C0095;
	Sun, 14 Aug 2022 00:08:58 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sun, 14 Aug 2022 00:08:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm1; t=1660450138; x=1660536538; bh=xlxrEcPRt7QJWiPNqdAOJW0gy
	VsucqKY52m23/gcz0s=; b=CAQnaZV5IL6WKgz00DfL1kamOOP/xG1fVaLzcKmtd
	1CycTSnv24tctUzn9/hZ67r4VyIbWM6TChEsQ6kc3izGLEk1rOwl+O3MECSfE6ji
	j5dgK8m0Avm2H7+aasfWFRjLYDHEZvKWq9sUgxMt1h0rz00hsWm0P81hzmeLr9rG
	B63r19iWaf7hlaLyvLVfAmyqmGZbWOOTPwrT9dz7yw0QZMjz/UP06zz+hmepcFgq
	wf4BDdl4BNKtjBe6WG3JIRYikhlFUxmkyjDnO3al/7mkQHeovJ2FvyHv5YRlTfyM
	1Rl4TlkeridmQf3JS4+37RD2HV72SCclmd8UGPZW16A3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1660450138; x=1660536538; bh=xlxrEcPRt7QJWiPNqdAOJW0gyVsucqKY52m
	23/gcz0s=; b=TTs0mHOjagr7WiUI13hjrxCJCz/NggxcY5MBG9u07nLJNdTQGNP
	01LEwIVS6EhTe4yR5QpuwjXpdklznUE5+NCkHtRzoAu9vF2lV0NUQEzP2YeKfnxv
	dm1s9ScWU7PDZLqjZUucqWZqyUczfo91Kis6KxyJGSFKI+eOKnfX8AqripYoyLCV
	yKJMim070JOLJGCOnIc7eR2uQsJdSuFy0SD1s26KUNHAuAraYtlO4kh6SclsoXfV
	QVrVZkt6PUrgka6mOetCpIrb7vyklHqOZxJMZNOfr5fB8oHlK+O1G6kb7X3bsxSj
	B0DGR7ef5q/PskfA4s3t3ewRkmnEFm7gWdg==
X-ME-Sender: <xms:WXX4YkYGPLMjFc032UaCOrv20g35mltchop1yWEf9jjHQdYzoywTlw>
    <xme:WXX4YvarrwLB5Zwxm75EUe3dexy3Ov3SkyJ585XHJcpP9Ha-HEX5YLOx8mdOFUQ-J
    jUFc2N3RDCcnUJmmmo>
X-ME-Received: <xmr:WXX4Yu-Tc8tcAq-AYXXpvHGs44zQClsTPhUs9KmjO46xt3LXJ8rPZQL7nEN3Ww2FUrred_mlhGYQ7tcuEbp59SInRtY8MXpNp8VLi-Sog9EIJTZoCXwX_MFINA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegledgkeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomheplfgrrhhrrghh
    ucfiohhssggvlhhluceokhgvrhhnvghlsehunhguvghfrdhtohholhhsqeenucggtffrrg
    htthgvrhhnpeejueevgfejfeeghffhfeehvdffleetheekkedvfeehieetuedtheevgefh
    geekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hkvghrnhgvlhesuhhnuggvfhdrthhoohhlsh
X-ME-Proxy: <xmx:WXX4YuoiVl7Pul8-JHdIjRHge-t5f5wxpsqeTB3nDYDUZ1AaQs9y0A>
    <xmx:WXX4YvrdBuYP29baPgf_5leEqAQ2qmp22jA2X0tFve0QVreMumNXdQ>
    <xmx:WXX4YsS7uQs6IIkulv-qgzfFW0bKjsb1zyiFtoCDG0c_ZzME5PDYCQ>
    <xmx:WnX4Yi3SQU_4TUCJoNyFkAvPGIc2PHR1exIqOWhVdcI-DMTJLuZlmQ>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Aug 2022 00:08:54 -0400 (EDT)
From: Jarrah Gosbell <kernel@undef.tools>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Jarrah Gosbell <kernel@undef.tools>
Subject: [PATCH] media: rockchip: rga: Fix probe rga_parse_dt bugs
Date: Sun, 14 Aug 2022 04:08:07 +0000
Message-Id: <20220814040806.7523-1-kernel@undef.tools>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220813_210905_131787_E8EE39F9 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ondrej Jirman <megi@xff.cz>

rga_parse_dt is missing a error return, so if some of the resources
return DEFER_PROBE, probe will succeed without these resources.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Jarrah Gosbell <kernel@undef.tools>
---
 drivers/media/platform/rockchip/rga/rga.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 2f8df74ad0fd..b88dd7ed2036 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -815,8 +815,10 @@ static int rga_probe(struct platform_device *pdev)
 	mutex_init(&rga->mutex);
 
 	ret = rga_parse_dt(rga);
-	if (ret)
+	if (ret) {
 		dev_err(&pdev->dev, "Unable to parse OF data\n");
+		return ret;
+	}
 
 	pm_runtime_enable(rga->dev);
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
