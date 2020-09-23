Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00451C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:09:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B2DE20708
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 13:09:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ikWoiZXO";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QuiN1zkZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B2DE20708
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zstqenD6Q6nvMGF+616NhGT/asENgYlkMZmmKyhd7+U=; b=ikWoiZXOU+lSa9/JwEyfmHcb5
	e40KHX7ra2FHEFIeqYsnY/A2ZOdrEMWWv6EWUZ6tEr9r4O3P7g1BwyXpMvwUTfifDk64IEVSzfzAg
	Ackk9NC4dCsE1T2c3FZRNmnRPmKAE94xZpQ+oyFLX6A2My4WUbQc58yK8mqLDCQUOh4s5Mvj7NDXn
	WrpscmEOChL15gVyDnFQowIkLtH1b5Lyvapn8sQ29hmo6oX5WVUfHIKg24bmOwNOTEq/Cp5CkmIfg
	Bwhh8tG/tizMqNQ0uyML5KHcdTObdHT6kg9tovbFfS40wOeNia7CF16ocgZlzIoeNK5nByzBuM0ud
	yhfTv9hPw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL4Wl-0006F1-S9; Wed, 23 Sep 2020 13:09:43 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL4Wj-0006EA-Ll
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 13:09:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id q12so6802703plr.12
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 06:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UnZ1othxt40JVdFDvzcd0FUgCJIb6rGQXftesSvbrIE=;
 b=QuiN1zkZF3duFFEEey4Mm4htkTp6YKh54DOd1sf7OVPCOc6/eRC7n0DTUm8hzYASu+
 rcFk1DChiC2SXL4pUeHKVnKCYbFPtDupyz/tLs9ZLL3r/dncLKjjDQr8P/Nrxa3jAftJ
 r5ZOlZLX9ZbZFWI1OB35seHvzxiaTuAdfKt6upUfFEK3H+7KUVxgRoodt/IzIn9h7aJ/
 mfOi6waYqTxTJKTRSYmRjzMu3er+lpkSzpCnJZBP0ZaSaXD4tvE52M+c3+LLa1ZcBtQ2
 yG/fYrMZ1kOR5j2lMCH6fHVq1CYGbQZ78fmP7uNMpAL/4xZd0qObugGHJp49jTJ9rSEW
 ATOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UnZ1othxt40JVdFDvzcd0FUgCJIb6rGQXftesSvbrIE=;
 b=lZ0iPsT+AXxUqX2eYYqA4O/h/QqsAPD+04Z/307pc4X3algwgdxvyUlWe7tSR902ii
 uUpow4jfHcFh2yhI09UA/1QJ3YHK85VxOO9vQngt6pogUjLoTjJY43I6xcZc8loz7gWh
 e/WyRfvNABvTpYcCNZc1cIVUwL7F/A93HawbsoumKEKpKyyude9h/bhevlyrkaWhSHac
 CTodueAYVBkbhaqn3IFCcuWtDrq6Z/PDSdy8ANcjW4k7QMTl4Ezsrt8t7oEXl0iU6AIQ
 gh3/PGIfy5sVWkQpJZ08iLJDyukkkQKuzd+CGJ0To2HRDvhIRx5J0RMLZdjLBYrZkdwO
 x8rw==
X-Gm-Message-State: AOAM531/8MxEKa7GZsEjbaGzoqjhtAQZQKC7qwWmeCWsU7UVZWc9vlmH
 OzHvZaoKmu3KO4nyL2wmuhMEcVOyjf19vg==
X-Google-Smtp-Source: ABdhPJxFY/heJH40gpbGKqTUkFa6+HbtG5RIWOz+HFSSjY2t3bIm8dHVfaBIL8wVBV+4S7EmVRqVFg==
X-Received: by 2002:a17:902:8689:b029:d1:9bf7:230a with SMTP id
 g9-20020a1709028689b02900d19bf7230amr1832115plo.22.1600866579755; 
 Wed, 23 Sep 2020 06:09:39 -0700 (PDT)
Received: from universe.lan (80.251.221.29.16clouds.com. [80.251.221.29])
 by smtp.gmail.com with ESMTPSA id b11sm17913362pfd.33.2020.09.23.06.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 06:09:39 -0700 (PDT)
From: Artem Lapkin <email2tema@gmail.com>
X-Google-Original-From: Artem Lapkin <art@khadas.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/2] arm64: dts: rockchip: add spiflash node to
 rk3399-khadas-edge
Date: Wed, 23 Sep 2020 21:08:22 +0800
Message-Id: <20200923130823.1612533-2-art@khadas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200923130823.1612533-1-art@khadas.com>
References: <20200923130823.1612533-1-art@khadas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_090941_718061_C447A17F 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: linux-rockchip@lists.infradead.org, Artem Lapkin <art@khadas.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Khadas Edge Boards uses winbond - w25q128 spi flash with 104Mhz

Signed-off-by: Artem Lapkin <art@khadas.com>
Tested-by: Artem Lapkin <art@khadas.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index e36837c04dc..c67420578fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -690,6 +690,16 @@ &sdhci {
 	status = "okay";
 };
 
+&spi1 {
+	status = "okay";
+
+	spiflash: flash@0 {
+		compatible = "winbond,w25q128fw", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+	};
+};
+
 &tcphy0 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
