Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33660C07E96
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 14:59:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1F986052B
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 14:59:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1F986052B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dAZofTGa/KHerXTl+3LSNf257udo9A76vmRyNT56Wg0=; b=xuoV4j1jBtWQG+
	C2dFrg8wn1A/YP/MFMxttSpJJ5MAUrR/Kb+jU4PhP8fJo+nEm2ofFsWMQOLtPxijTqfdqhrozSNKx
	fWu3LrV2ymK7+1xDek8NLHkplxHMmk49MaYjoZjNVSrwRftKRUeGFEANuW5va55voR+Y4jZ9lksLi
	UwfH8+awPeLJEN2qYqJkiQDFg097Tk/dGQ6bBlvFwZHXrKsYQvi9WyvUXX5Yx9fY80FJ6oW9VPRL8
	wuY7T4k+nLLGABhYvsO+TAwbLZoBXxkJ1+NIwJsND7Of7EVpfFgBHIuMjGaLMql/8Jr7Ze7hwtlub
	lGGbmXPeqMkPehfB4Y7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2avY-005DEG-Fb; Sun, 11 Jul 2021 14:59:28 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2avF-005DCy-Ad; Sun, 11 Jul 2021 14:59:10 +0000
Received: by mail-ej1-x632.google.com with SMTP id bg14so28088004ejb.9;
 Sun, 11 Jul 2021 07:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kVKa/qYsm/LpBgzMfgFjq0sOew6IiQd+6gndsgTAoYI=;
 b=Ykk/6xz1usz9fsC1y04TF/bA30koNu2R8BTHIxArpRCZDmuJrslu6KANI2roRVhGBS
 VM+vZkL8+Y+BuIPs8o6l60nvMUc7b8R5ArvXkFIZzV7w8TVdRzg7w3aMp2uP5MCZNGsU
 J6Fob66RzlCNPB0Ta8ZRBbmb//bhNd0oWxTujujnk2GUkmH13ReXUD9l1wrBtx/MDwck
 T8aIuJvLv1/VrCAaTw2RVRN3xIDNPTb2Q2F1uPMFYUlPFNIDaYD2HNTzkC9qC3lFr2v6
 8xDvjKJm1oHANCEKYPcIdBvHNkc1v0BAUsrchPvVh8REUsoqtZGl7z/c4x2+mbjmjJKu
 WOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kVKa/qYsm/LpBgzMfgFjq0sOew6IiQd+6gndsgTAoYI=;
 b=bPDMQuUptIGcYmyImyPcvpSVF1ohRTnWSdsiCYRm9Hv///GX6ZyDcxIdapSgARFiDS
 LCpBMm6Rc+A1OcWMzQzaA9MYNmDvDAKjTbNrmVqTGHTvHiCeh7X3hBiPle9CQZEQZiD/
 4tqTZ2RXsAxft5vpQA7FdCz6AlyQvof2N6WJdmEV9J2Xwv+DrfeQGQr55v1s83AI6by3
 CKTgW29bFsf75d4QngZpQBLaHXngF8MZLPS2/095isV6zXAUqG8TCx1XoSuiyZIlRe7a
 Lnv5fX4PnG+G7ML34TfQrMbIa1pC5UOlFmPHLafGCso9a8sj2S64msMI84fA65bM+58m
 K9hQ==
X-Gm-Message-State: AOAM53035ghAFHhw/07fzjPylL5KcuxjBEU4PvdHiZn0KSQ3i4ZiA5UA
 dvrQRLohkrD+YFNISbWu8Gs=
X-Google-Smtp-Source: ABdhPJxiqiHLAFDJEPlGH9Q9L7eaaJxjFmJd+1auawdbNyKHUZxhCQNu7/YDdiqHmB1tyW9wPQY6Xw==
X-Received: by 2002:a17:906:660f:: with SMTP id
 b15mr48961130ejp.443.1626015548161; 
 Sun, 11 Jul 2021 07:59:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t4sm1318045ejo.125.2021.07.11.07.59.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Jul 2021 07:59:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rename flash nodenames
Date: Sun, 11 Jul 2021 16:59:00 +0200
Message-Id: <20210711145900.15443-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_075909_422325_DC0DB87F 
X-CRM114-Status: GOOD (  13.43  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Nodes with compatible "jedec,spi-nor" are now checked with
jedec,spi-nor.yaml and mtd.yaml. The pattern is now
"^flash(@.*)?$", so change that for the boards with a
Rockchip SoC.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 1b0f7e455..f69a38f42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -345,7 +345,7 @@
 &spi0 {
 	status = "okay";
 
-	spiflash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index c1bcc8ca3..e310b51ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -543,7 +543,7 @@ ap_i2c_audio: &i2c8 {
 	pinctrl-names = "default", "sleep";
 	pinctrl-1 = <&spi1_sleep>;
 
-	spiflash@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
