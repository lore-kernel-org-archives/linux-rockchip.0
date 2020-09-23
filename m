Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06C27C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 09:33:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97394214D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 09:33:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2CaLiFM7";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="vKXM7V9I"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97394214D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h0vUfquCN6Wgo2HQ4YQnvLOooLt2+FsZulsVKaf1f+0=; b=2CaLiFM77MKN50RAi+VJzJh46
	UqsLBwCUyH6QbhyVEdGs5HU3FlcqSfWjLMKwjbdn86yP1hXEP3tva66HiGIR6wlXUDMQuFR7a9WdM
	xsTrkyynaG64L9M1QeWL4b/auJ1A/lCB01QoJ1LR/QgWyl/oO4mtxEX53/qwJwq29OAWG4NyoiBOj
	33DK3HPX9Wh/FrtFS16rX7Fd9+2XHlYJvDSGCwKJ99NjvNYB4I2ce9NZAVd4eY4K7KP6XU6BNMYuf
	VoWbkUcdN7P7tAQTApTunNr4oqOGwDZbI/FRY9oqmql0MntL94qK97Agnlfrn0H2onVW4a1tNWmhm
	iKt11OwUg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL19J-0007O3-63; Wed, 23 Sep 2020 09:33:17 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL19H-0007N8-3X
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 09:33:15 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q4so2923445pjh.5
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 02:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PnqHt4jS0alkdyVRgXzqAWUQbwleCthomnxJbBt7S2Y=;
 b=vKXM7V9IaRJFUX2IdNYNW1Zy1R25GDZkrk5Hyk1dhgnFYCQorOqAVSgtprBJJkk8OO
 W6nNeL+g8IgbCCbspGba5oIqAkqAFZFP28bO0XK/dCjk9r6zNAigikfNH2gNtcnGyQEG
 TSIvdqAystVUlZX0g8CcpeBU+GQsbpZDf/60Z19HutzfvCIJrTJoVwLazSl92QK9pCq3
 VvxxqUD2ZE0mEftVAZfdg/dStWGSKCmRdpkrexp4F93IUDcChgfiXdhhLzqrRzc0ZIHx
 VlN1nP88lXA/MLCOtkuZZ7nSck+bcOHcka5C8ztShq9tAId1i9LwWK9oaUlC8lw4GCuD
 8A4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PnqHt4jS0alkdyVRgXzqAWUQbwleCthomnxJbBt7S2Y=;
 b=koY7C2JWydr72cCKv3mw2B5Djbv4CcP79yJnvZXm0fDYblq7v8zfwy8NCLY33KNMQz
 PDecvVDtJB1eC3nEGbjTtuX7dJhJopurBCJg5bdaz7ONq3sSTX6r9YoOvMXlkaRcuNtl
 PVUTvbGnVinV+knjetgh5Tff6oYa4MQnOwuZFiiRMkNH7tcQjtOKrKD/DqPOYJqTJ9R0
 I0lAUA+zg/CIHJJe5WjaLmWXCKjJLSZmKAZbJvohD6LHR1zRP/9DZUZzqsFzF0QgkwuS
 clgB3z8DthEhHG/JWNgyQQOGmCLuCFJmsoS2EfcXpXKLBjg+rCCj2taYeztoLZ0iCu0g
 3NwA==
X-Gm-Message-State: AOAM530J8LcxkDXi4MoDTTg2zhjlCgCXLZPnebfwvZ1caLFnZ9U68YF7
 cnrSDeyXdXOp6e3CeiCQhPG3h66hL5Fbfw==
X-Google-Smtp-Source: ABdhPJzjIYHSIZG9DTYZiy48DQxVixoEEbNIIB8WjIYP2Iy5zBhKFm6lcpUYLWteVSMQ3jAyJSn8ZQ==
X-Received: by 2002:a17:90a:528a:: with SMTP id
 w10mr7349907pjh.107.1600853593019; 
 Wed, 23 Sep 2020 02:33:13 -0700 (PDT)
Received: from universe.lan (80.251.221.29.16clouds.com. [80.251.221.29])
 by smtp.gmail.com with ESMTPSA id h35sm16874348pgl.31.2020.09.23.02.33.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 02:33:12 -0700 (PDT)
From: Artem Lapkin <email2tema@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399-khadas-edge: add missed
 spiflash node
Date: Wed, 23 Sep 2020 17:32:33 +0800
Message-Id: <20200923093234.1512037-2-email2tema@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200923093234.1512037-1-email2tema@gmail.com>
References: <20200923093234.1512037-1-email2tema@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_053315_154741_DDCC54EE 
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
Cc: art@khadas.com, gouwa@khadas.com, nick@khadas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Artem Lapkin <art@khadas.com>

The Khadas Edge Boards uses winbond - w25q128 spi flash with 104Mhz
---
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index e36837c04dc..42ebbd6fa46 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -805,3 +805,17 @@ &vopl {
 &vopl_mmu {
 	status = "okay";
 };
+
+
+&spi1 {
+    max-freq = <104000000>;
+    status = "okay";
+
+    spiflash: flash@0 {
+    u-boot,dm-pre-reloc;
+    compatible = "winbond,w25q128fw", "jedec,spi-nor";
+    reg = <0>;
+    spi-max-frequency = <104000000>;
+    };
+};
+
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
