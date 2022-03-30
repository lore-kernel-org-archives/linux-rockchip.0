Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14E5AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnK2V/NRvOyRshKsDs8Mj+64KVnT28EgCIEuqdJbejs=; b=Mp6aDpVHZ0cQfH
	NwR+A0Gy7Y5LjLWel3xsZyRKMBJnhvvyvIsOpevMCKJNR1zqXIu9t/tVA2PmbdQ3xobr8n04rW6am
	3994gsqlBRlixnf/qGwaWyx/+J0RUosb+sy0xigpAzc5mJPsg6pbA9wYRXnz1u1P0Z+EWiApjgl03
	1zL0o2WXsadqjfEC4Pv4ejcXrAasAQZnPIwKXBa+kjqmgVrHuFzU9tR5UI+av9YgqA6xCLLmby5ms
	X80ixMfxVElhrB0Wk1tKZXOsiZpU2RRsGH6i8D8qSrbENT/K0QE1bqPdh5qAjx+JpcASWW5B7efiP
	rwVeqn62PCttlHuglZ9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZXqc-00FtvV-5s; Wed, 30 Mar 2022 12:54:50 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZXIT-00Fe66-Tk; Wed, 30 Mar 2022 12:19:35 +0000
Received: by mail-ej1-x62f.google.com with SMTP id j15so41095352eje.9;
 Wed, 30 Mar 2022 05:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yb13D0MHL1q0I5GMitPig2+TSOgHDixtNwuPnXxvwfA=;
 b=dI7gx0ZI5YlOBk1wG2SDHXM04Peh5+DkcX7RDGRl9EwkN6RszSeZBTj6ZN7fE6Yxx4
 UMNH8SIDUrXlcSZ5IRBPixrf7W0oXWo8IB23yIYe7GCEAe10pIT7oL9xs8EVvXrPdtlY
 mpbuImX83TEuRXCPaxnag7HtMh7oj7XRVe5H57whU6AAGHsWPl47gXIvWgLspvf6bEGc
 naxxdvy0YYl9tYpUDNexlLoA2LCVWK68KOA33vQDD85RVDsQkgB9H80JSPhOtDl4WE8Z
 d7Wep1OhiBOzSHrVJQbI68jkXrqvJPLKdxuiB61MnNOUh7PnIM/HdK1ZjtPe8gmJxfWG
 SwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yb13D0MHL1q0I5GMitPig2+TSOgHDixtNwuPnXxvwfA=;
 b=7x1Rmn7yAhA2qDncTkmrdS0Va1n+sitpc4+AJVeiQTeJTMIsyql8SwMA1/CNosXaw6
 i/ODsIEJ9IyzB6bOmCIfkTqxW8FjQqD18MQS2FNx2sy7VVmfBdMoCy6E0Nf1SXdehM91
 O+3R4eUq+uiQGzB6NmdOaP65l6GZR7plbU2Ih9DneTLVMy8kcfiM21ETMOgRwoJpyehs
 4DKUNKjVICOQDLGmh0DxXFsZhgtTs0HSEjFZNYlpzZI00RlqntgkY9C0dZsSHtc7Kjol
 SZS5j5V510k5ZLlHqqbaFBX9oEWkNYjhOVcVSALNCnSJaL/cnlyGnWXwk7sKEZzJtHqy
 mVlg==
X-Gm-Message-State: AOAM533niWcRQB54Q3jbDYNFQxZjFnm7monTD741HFiots6FFQJlQuIQ
 SdQFS6JEE0BUCGsFc7QxwxA=
X-Google-Smtp-Source: ABdhPJz5HqJgfVLDw1fcgFbevMH0wU4OD3vKhI5tl/7Qy20DQc2ktAI+VZ2y8SpWOlN8Rd2RDGSLmw==
X-Received: by 2002:a17:907:2513:b0:6e1:2c10:2ada with SMTP id
 y19-20020a170907251300b006e12c102adamr10865184ejl.211.1648642772122; 
 Wed, 30 Mar 2022 05:19:32 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j21-20020a170906255500b006e08c4862ccsm7288778ejb.96.2022.03.30.05.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Mar 2022 05:19:31 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] ARM: dts: rockchip: rk322x: use generic node name for
 dma
Date: Wed, 30 Mar 2022 14:19:23 +0200
Message-Id: <20220330121923.24240-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220330121923.24240-1-jbx6244@gmail.com>
References: <20220330121923.24240-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_051934_001759_783A24C9 
X-CRM114-Status: GOOD (  12.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The node names should be generic, so fix this for the rk3228 dma node
and rename it to "dma-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 2547f46fe..ffc16d6b9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -503,7 +503,7 @@
 			<75000000>;
 	};
 
-	pdma: pdma@110f0000 {
+	pdma: dma-controller@110f0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x110f0000 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
