Return-Path: <SRS0=PA1q=K5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20F5FC47096
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:11:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFE60613E7
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Jun 2021 12:11:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DFE60613E7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5e5VN1TSv+4CNLk/CEyjkXndNkftSt5amfuFMW2+ayQ=; b=IlAykUoDw2J+Ax
	P3BChv9SR3KaDqzlqypnejn6vpXf9ZQTBPOMB6wsRhE6HB2Yc+WAuQLR9yPaEoEK+IqYU7h95d/h4
	rNwAxQslB2vh5MOg9Pom62QSMl5g0L4gamnjSTMwkpTRLh+47dykXOHayTzMqqQv5dOBPKHYlEH7U
	JaxcvC9a3+1LflgMtMJ5unIh02Bw5rMuGfbxb8OgGXoajeB6JTP+wRvdh4obQ5w9eT77FEYilWZIp
	k40LO8rTkRWZL2ys105VOB9KNhAQQKI/Jb8qCVpsz/Xt4+puqQIoekjWj3DRrPIsac8Fpoqogk9SK
	LwCwaN2OwE9BAUsI6/0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lomC2-008ZgR-Iq; Thu, 03 Jun 2021 12:11:22 +0000
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lomC0-008ZfG-KX; Thu, 03 Jun 2021 12:11:21 +0000
Received: by mail-ej1-f47.google.com with SMTP id g20so8956272ejt.0;
 Thu, 03 Jun 2021 05:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7PO0CGCpV8AsN/73yaXhgONOIEZI3c1iQNVrhqwDq1U=;
 b=jYyg4ljpEQ8GjezGk/Hce31rsXKv50yJSkfMDdt3+G11mbrDn4vOGQPVRk/9ir6dEf
 RbPlS88AC1XR8VNs/4/C4LnCGWJYW/DnUHK0ZaVEs85LLqwI7t2pqbsao6f6SFsNedHk
 6aShLMCWTUFs5F+tq7vaA4WuZw/piIsEAHKD4PSkQ1VZVykkzjaHppuSFmhjPlBjMqEZ
 QVjhu/9Hx1VJKsh0uEWWrRyDEB3uIKu7WoKFKuSdd9UEnT98/AErRAjDZyKIpvmyT2ti
 qGaMx9GgohDoJL0Ld0Q9gyeLhWaRSFPpky17YdolXjOQp7Shvlk3ri78oynVUg7CkMmT
 JOZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7PO0CGCpV8AsN/73yaXhgONOIEZI3c1iQNVrhqwDq1U=;
 b=W1PuaJsgnL7/2bzBU8e7/+N8Vuwhbar4d/YWjaIorVaLrS+/KeaeDxZ2lBzCMXmiX4
 B2p23r2FGd2QSRjiuTXq3x4OlLmT12nkn4awJrsZZKwpbkH9whiT/EFTkgswttmwN1mI
 daLhUwKw6LKnO3vZtCKtoFYhxZq8+xMcn7FxFKDpBYd7JAQboLi25A0KTAfWb0+SPTz+
 w458n9s7a4RsQfoPgAd8hL4zywq21EG1W/FTXNPer8bI8KxibRKO8BP6fuVQF+scEMnw
 8KpKCk7kqcSleAak1YpArXK6nToQdgo5IzI44FMZV7LAaWz3HiXy05Xah3kgCuMYvTBF
 q9/w==
X-Gm-Message-State: AOAM53212WISazx1WEbMCYlZdL3OoDWPNkykc/GjVbkXFyLmrTubB/91
 Ebqb5kb9xsUY6mubDBTuVqk=
X-Google-Smtp-Source: ABdhPJzyWrNlOg4d+ANkP/HpgRnB5moybwkyin/NQLNomD+w8DUwGh8hRS1MCB1gQxVYTJqbwTJXMQ==
X-Received: by 2002:a17:906:4747:: with SMTP id
 j7mr30290606ejs.419.1622722217530; 
 Thu, 03 Jun 2021 05:10:17 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id de19sm1703813edb.70.2021.06.03.05.10.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Jun 2021 05:10:17 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: remove #phy-cells from usbphy node
 rk3066/rk3188
Date: Thu,  3 Jun 2021 14:10:10 +0200
Message-Id: <20210603121010.4315-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_051120_697348_947BC784 
X-CRM114-Status: GOOD (  11.17  )
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

The review process of rockchip-usb-phy.yaml was not finished
when the patch in the link below was already applied.
Remove the unneeded #phy-cells property.

https://lore.kernel.org/r/20210512122346.9463-4-jbx6244@gmail.com

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 1 -
 arch/arm/boot/dts/rk3188.dtsi  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 30dcf557e..511311d25 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -684,7 +684,6 @@
 	usbphy: usbphy {
 		compatible = "rockchip,rk3066a-usb-phy",
 			     "rockchip,rk3288-usb-phy";
-		#phy-cells = <0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 3a0c50026..b36fcdd9a 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -644,7 +644,6 @@
 	usbphy: usbphy {
 		compatible = "rockchip,rk3188-usb-phy",
 			     "rockchip,rk3288-usb-phy";
-		#phy-cells = <0>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
