Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED00C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 21:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtNVrSudsZlcguzu1RME0mYAc/hZccg5QEPl9u377Y4=; b=kS24/qxSgVApDW
	UduCXaekONi5DhKwtJz5tIzRctz/5aAF18lRvE54JSb3182ZmaPJR/Kbfxa0fnBH/Bfna6I29z3v2
	jNj32s8mBlhX7kblYQ8O+W1lUXnBLlMZuo8QHVu7zkY8NGJl5Hgr64v9W5uH4fq3lmms7au1BK+By
	dnSYM3ydO6828FUPdttYa8FVnTunpcZuycgR1Um5V5mXYeiAcQparqx23n0U77N+rRsGaHa9+uqCi
	oe7StGuo2X2/s6RfyXnQn2JbZjzAblQCJk93M/uE8//ugRYRDmtf6T8nWV6/M/PrSerJ6QVGztfhu
	SHAlSYx4h29MsIE2l+hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n09CX-00BLYD-97; Wed, 22 Dec 2021 21:31:09 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n09C9-00BLN6-L5; Wed, 22 Dec 2021 21:30:46 +0000
Received: by mail-ed1-x533.google.com with SMTP id j6so13490803edw.12;
 Wed, 22 Dec 2021 13:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qQXUaN0G/M7AuMBSJmA3Q8Ph5u2SiY7RJ4xRri99ZLE=;
 b=AumMTRNWoZx/L5fXOyl3GJKgA4sfsO4D5ZIKm+9We5Y/AvzVLyE2MwEvvYCChW3CIb
 8eHNz3bxYNg52d2Wy2uFHkY0Pr1HbLd5y6c2ir8Hqyx09+z+ns1nHf+MF6MXS9JMjBjY
 Y7dKi1+vEZCDDfmcb6z2wIADqnY6UtiYCB69ca8xWN/WLwpzUj1dcRepWBS/tXPqmg9I
 XsSHNYUTy0Wn0HbRaqOq6fjVwc9mzAjH+oGFR+QW5tmMjswoSkC64Pe5nATUs94H8z0j
 iVL6HIOTOFW4VboFn7aPXJB0dcgWYRODeS0Gt/U45dzgLCplRT1ApdwPXyZDZiTBxeGv
 nuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qQXUaN0G/M7AuMBSJmA3Q8Ph5u2SiY7RJ4xRri99ZLE=;
 b=GmU9A33OJIowrTqI/Lj6804eufSsk4Z23d7GJp9NSkcTAEeC1D6WTyVnvlrN4CSwiU
 8Nq9X9Q+4tOQ+G2o35Cr2P/ytoQriAgWbe1l4RXTAoExhSlbHLkXes7ERK5UaqljvSBL
 pTk/fF2hHTaH9VX9338gXm0WdQjmtTUn4pHRn/v5fYEmRga4udaN8p6IwzZwxTJbALU+
 KEksmYikKxiIzaqV7Hgq3mQwQb4qKVd6VEM48HaqVYE0170mEwQ3Z1ikH41RyoTwGC4O
 WHvJpJYqD4zsCQ4A1QVQoBKy3vUuq6PxoFrPoKF/06ywAZKjuBgKHuf1PfBARUOtPEYj
 Bt/w==
X-Gm-Message-State: AOAM533V2a/gPdPItsbL5oW6z7Z3ARsDgiDMO3QtPa36uWCw7ZhpE4e7
 JfYuWveSoJ6l6Hmc7hRbcpM=
X-Google-Smtp-Source: ABdhPJz6Fpffv+KYXV7xi5AzTzY21/iPgukLA+zAUVKyJuepnnsc0k2qSeJgVh35yHAEQAghE25M/A==
X-Received: by 2002:a17:907:1c9c:: with SMTP id
 nb28mr4053483ejc.452.1640208640675; 
 Wed, 22 Dec 2021 13:30:40 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ne2sm1087776ejc.108.2021.12.22.13.30.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:30:40 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, lee.jones@linaro.org, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v6 1/4] dt-bindings: mfd: syscon: add naneng multi phy
 register compatible
Date: Wed, 22 Dec 2021 22:30:29 +0100
Message-Id: <20211222213032.7678-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211222213032.7678-1-jbx6244@gmail.com>
References: <20211222213032.7678-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_133045_718145_FF686BE8 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
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

Add Naneng multi phy register compatible.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 5de16388a..9f0c8aa81 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -52,6 +52,8 @@ properties:
               - rockchip,rk3288-qos
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
