Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2552C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIwY7G/4HTj1HuDGfQf8Q4YWy3JqhEX+a5JdLmcQAno=; b=QZbvxklZLsSTpz
	uAQRkP7x3F/CnSMZSy8ww2njHfpEdIYi5Ne1QaLmfX6mKbyx8H79VLHMsqYdJDQzq80PjxZ10gpLy
	VTJSFa397Km+g94TJqWUGSjY5N7/gwYbgCj37CBHdDpEu7wdlr3yXGHA/5J9EiwtDYhkSWoLrwm9m
	CcJP4EbtPXQQIHB8nfGylvxJEU/aIG73fcGU6JBvbY8TuTh6M4nTaPecgMs2iYHzo22u/vAn+eImM
	7A6rHs34jNYpb1DHNhhmlijIUv+rUohmVsFZlH3+CGm2zNpSA3Yx9hJwflPvVPTwtY3m7serWPr5v
	4VcU92vjp2bFh5WBWpRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnJ-0000000AxMR-0mHC;
	Tue, 14 Jul 2026 05:35:01 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnG-0000000AxIv-1gW8
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:35:00 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-8485ef63b68so3409410b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007297; x=1784612097; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=M4vgRkTRiYnuAThbb+C34zqrk0C6GipIId5fcgSj9fU377rTe3hNgHgelPAa+Mg5LO
         LvTXEfhaLCmh+/DtDavSG2+HBlcViJ/1XSSa1FnYUHZQiA0/cUy5Cciu5PVmtkJi/Y1j
         nFrA4AKv8x2TzbAbSqVcBk9TCAkkvUc4SP/9+hUryZDT2F1G00W0s79/iJ6G+BF9Ugj7
         BPjh8bogWP4/sSdGbxIyglvAjRGNv31pGeUc2OzVV4NwevGOmvJm3GhcRoUaDD+6FSfD
         JMOrkcTuBLTM0VWewPvM/P+TAMp6Gi404RdigAFBesru1qqcnLgHJXe3H5Nd7bFMksvA
         vq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007297; x=1784612097;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=f9aD+UzCKptdhfPqdLVtvPKxPLnXUJFM7M7rdL5U2DFh0jhOB2eE3abyd1m3xwhCMM
         EfLSuh2AqMTT7eHlDxPWYuYuuUjdNbnheXPpXqrr6kPqUcikCsC1S8Csc+8oU+Zua8Mn
         AkQPm5YS329zo4kq5StlPGrUcDo3mI9kZs2Yc1WfgJFM5hWyi+UvAVYv0/j9xZDhAwiF
         3eDIteWpSXBif9kRhX3OTXbVjR18UthdfNy+T3R2rkFJzk7BnrocFEUBg/yyFmjcZJWz
         3oKdHRtYkFccwo737aYJVY2c4V/unH4XiNYpMfZsJpfU959KIxEVsv4DZvLBYfwJ95XX
         FfkQ==
X-Gm-Message-State: AOJu0YxzwzVRHfTq9fxALVYFQwQ0HUmneB7TbLUvuH7cw50pkHbFNzXN
	P+ItwQmYzs5Jq3QEFvOivj+9jLqaNwvCplvbUuvLd4wjQC4HwMnSZD5i1yM+f5U/
X-Gm-Gg: AfdE7cn+5qB51KzTxzPgXph7enJkLYq1gJnunokebbrTInZge2ll4SU4BoZ3pDjKln6
	ZERox0LFLDxNdDvXGa71hYLHdIU+camNAHJ4MT9z4FkPZFlbAs6Sm+J+uzdyRiBR3Bra1saLk1B
	jyeL4230qmPaW3YbuBEQ9fS1L5jbxJZfTCtfVGwcNHolzocMpoik3sryWncvDcOPpSbFcMJnf2p
	gh7ujq5ZUnk8TFMPpe5b7bAqnQJLrfLuY7GaQuP3yYDKBbseCNmMiPVEsGmNLENTVMgWMU+VYsq
	4Fl5YmSmcHbft/OyjYMiQjhlgAhj3Ob1i/jXt74Wn7aJMNZdq8omQaXu9vidI7DJE4PPY0KSuh5
	PGLZiNymcW5y+BWAjx7Pl1VLQVHTdDbZ1dqhy25gaIf0xb1DyWj3ufrz6FweWXSZx22BAmFHLSi
	Q9a2B77JvLsAppt5pF0MP7
X-Received: by 2002:a05:6a20:c6c9:b0:3bf:aa1a:d2ef with SMTP id adf61e73a8af0-3c35724a49bmr939151637.56.1784007297473;
        Mon, 13 Jul 2026 22:34:57 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659d8da9sm131882715c88.14.2026.07.13.22.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:34:55 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Tue, 14 Jul 2026 11:04:38 +0530
Message-ID: <20260714053442.265587-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714053442.265587-1-hrushirajg23@gmail.com>
References: <20260714053442.265587-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_223458_477928_CC54532A 
X-CRM114-Status: UNSURE (   8.80  )
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

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
