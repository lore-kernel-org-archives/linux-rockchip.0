Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A244FC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 11:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05V49u0tExyEW7VEIbbauuTBTSBTK16dy6uTJMkc7yY=; b=X51n0zRx7ynZ0X
	oESREA6o2apEHJ4qIRV+1utidzjXgCXK+IJy83xqQvfJKTKgDglGnwsbguwg4xyC7MPZTHqnnjRVp
	0n2Q0KnZrSDDGdcvENzSveNOYTePcKHAkZMTBMSAS5bwMMSJO5ck9jf1p+tQyWAaRKKIRFxo/7s3L
	/88gZfuztqnVhWMqaHTFtjV9YzCwDvJTv9BVotKXJxTITmq4VnzIlcOQCtRxDDLaeZQTr5t0+VXs/
	VqbxncnBZiOs3RYuQRcp7dqgsgpdGbTbVYZs6s02lgk1tg3bkpVoKRVCslcLhh0GGoZMVTXUz0TjO
	2xsBo/CqKO/LoLPo8jbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZAAD-00C03R-Fo; Tue, 29 Mar 2022 11:37:29 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZA9q-00BzxD-Hp; Tue, 29 Mar 2022 11:37:07 +0000
Received: by mail-ej1-x62a.google.com with SMTP id j15so34478779eje.9;
 Tue, 29 Mar 2022 04:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M61AFRbLUdMV7oXCOaCCHm47RW/KqcD8CWFb8D1XXr8=;
 b=mNpnpt5ezVff5NEy7crvvpIdVosqYlaiuf5N6qnfUetlpcAQS2F8bqovdtp/HtR7tA
 NVTE6pVSAbAZe26NInTiHSLr7zBpAI2k/C5ApVbc7yoWs6xk8s2aCkoLUBQEK9cXejRt
 RQU6i7+pQnKCW9hLn/TWAC4vgZe1/d4XKSP0s5jSrS7ue/0FcJjb0phZ3NYNTd5vQV88
 9kU2gvhti9Tf43YCdyVrmIbK9c6w5ro+rHY2KuUZpzvsKMy8tFntvT7aDpowvUq5nh8q
 VJxFz/Tcn8wNGpeBx67xIbQiGICSOjwUihrxtLCS6M2pPuejanVOHrs8klooqRhAZHlo
 dqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M61AFRbLUdMV7oXCOaCCHm47RW/KqcD8CWFb8D1XXr8=;
 b=nCBbb3TY+llyNl5ICtyJIreg2DCKGlhNyOsFuoc1DXlzazgOveAsfhVwlX8U1464u2
 Qir33k8v7/OoJIP1L/ouSoPkyI4YYz4ZKOFPZPUjSLgbBLHZrHjS4oA+O/0QNORU7F1l
 P1i4/3AX37o/iaEwJDqK9ZGuqsSGqkPYB5m4nH5iLTnRAFemP3tsQrLkHLcKqH0/GYIC
 IEg/kPPtk4rXZ1PhIp8vOXbuo/2bVYq0MgnWn6PgIxr+Dz/L+uNLYLknsww/gJIN+S1J
 e6AZCpnx6lqx11hxHhviaHly0HlQYzQqadruLOk57qNU86q8td4ifFuZEGZzOuqIpJVw
 Jptw==
X-Gm-Message-State: AOAM530gNeNoqbaiegcZOLay1B2bojAwxbFN29ugDLt+AdRAReRyyJ04
 Hs5tdq/VQiETKsBiJF2O70E=
X-Google-Smtp-Source: ABdhPJx4VMchVqZE8V93EQ5INMuQkm1Q6o8OPqlzDmpYQAC3yEjsNTUGbvY/cGeHSiv1PLxfVEL+ng==
X-Received: by 2002:a17:906:2bc1:b0:6cf:d009:7f6b with SMTP id
 n1-20020a1709062bc100b006cfd0097f6bmr33203632ejg.17.1648553824861; 
 Tue, 29 Mar 2022 04:37:04 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 da19-20020a056402177300b00413583e0996sm8171298edb.14.2022.03.29.04.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 04:37:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: rockchip: add clocks property to cru node
 rk3288
Date: Tue, 29 Mar 2022 13:36:57 +0200
Message-Id: <20220329113657.4567-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329113657.4567-1-jbx6244@gmail.com>
References: <20220329113657.4567-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_043706_610423_C6A8406F 
X-CRM114-Status: GOOD (  10.29  )
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

Add clocks property to rk3288 cru node to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 26b9bbe31..487b0e03d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -862,6 +862,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3288-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
