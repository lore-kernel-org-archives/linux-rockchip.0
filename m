Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31851C43327
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 10:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIwY7G/4HTj1HuDGfQf8Q4YWy3JqhEX+a5JdLmcQAno=; b=y/jSjBH8YWAYWh
	jgqaFBCVVFGPg4eKfBWmOGV2wy4cJiqJdhR6//o7ToMXXmyzY0BqTKLuBFc/7KusSyOt8weY+vfh1
	AOq8LANBjBFu2b48KGSYGP5rXVAJgFQCUmE88RVuxWicy905r0NDvGrJc4+EufydK77geucloLjNE
	5syNGBObE5PA2sTCKURXW5UXM9LPpjHz9ogeaK5yHhE5rg1cW9tpwPWf6SxNttEgJbTBewAIKkGOe
	48NNKzH3kDEVcYdMNRrvUeLQK4MftjfCxeDtk+uxh795tBboLkg+SJQyUSRLo5OsDdslQLNToZhe0
	gRPJvZdJ4q6EoxCoxb2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdQFP-0000000CNLC-1Epe;
	Sat, 27 Jun 2026 10:26:51 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdQFN-0000000CNJr-070m
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 10:26:50 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-13809223fd4so2193657c88.1
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 03:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782556008; x=1783160808; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=RF6LMMxbbNFUXFLicImDlmgh/CxnjvTa0a9DiRfAHY5u+MrU4ZEJB74T1N0k8eGLdK
         zBiqXhPODivY6MTrCZcGVIpbYLunNwHKOVtIFH1lc2Ppc1m1dGl7bNKDtIRXDlBYLI+X
         RROcAShovuC7IrO7LkoKh6qHCrOI16Ur1gzFOOxCGB+45WLGNZJWvn2uDs+cOt01p3gs
         P/T/P98IPN2sNQeR3GR7KQVCooKQwxUaFy8aSlOugwz93E8u8x8kA9Z4aLa02Aph/etd
         NnfmsDxgvNiCpqPUPvATIb6HLiXK/3rN9miTq3Y2gAzwVfSYr37PZAJYE6DobAC9Yqab
         EN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782556008; x=1783160808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=PvpDFZtDtFM2j23HLAO6bqK3gLJZiezJvtoSbEwkgitS8UoDUeZasvlY777fVsXYXC
         bdtl4LI95oH2bt5Aldx2FBEJVm8pJ3h/5BP4uqY+cWn+1FUdIhq6tNn19ywM3W+zlXtD
         e37VG01IqFSQuodEO6h5PWFPd+0lo+wvaFsIA/IE+6h5UTIJcOfAUZdDrcaCfnPQ9brR
         oT6xlDuOZ8q/mXF9A1BqH4WODg252JXy6fdWtRUNTT2fMOZFp2OiOivH8azVcrKMaSsj
         4Tmwh6dAJ4GvA2suy0atd0g5sN1QWn0DGMm9JGFdTWWDbLFjAfB7Bik2kzrmD2JVVrFm
         PDVw==
X-Gm-Message-State: AOJu0Yw6J9Ik/lMb3VKPIyA/QydvHqOH++vf/s5rXAVzQwuUFVHkKBb0
	rg+4RrB5PhZPp7+0/9lSRYk41er3ulQCP/ZizpRnjT/Zr9NCMmQd4qNzw1FUg1Ep
X-Gm-Gg: AfdE7cmlgTrhpCwuhGCd0h2+zoPrjdaXVJP5EVnBAnpEyhbntXFkfxKutZOahphkn8h
	fghZ9jWWPdI0lPB10d1CRqO/CN71gWtqkRe9wV8g0Y1gOu3g1QhN8OQ92/g8b6PGBdxiigQhYeY
	NoI1C+VFUGeIdbwZZfIq4SXVneM436WE4ejZwPsdBR1deCBpheQc+x7esNLoMgX3MAzTv1CRroc
	MQaaSla1HVfWGWnLoLSnY2/UVVN9yU1z5mjSXAUnXZu6hoYQIgfJ2YoK16qTb6/WAAbNxcWzLqb
	RzoG4tkCnSXN4bZosuTbTpDs7GmLvN7+Jgwv7xY2Tn2VxnYYGClAtDDXVZkXbSczqguYZmCEcud
	JYZlNHvuuE8vhDu/VlLM5Mhz+tnH//cb/7/mqcVkVVqttH1YDh4wKdZqfERBOUYlN9lThLCLZji
	44S/xIqCHuE6DIicLvMhk=
X-Received: by 2002:a05:7022:6098:b0:137:fb6c:5355 with SMTP id a92af1059eb24-139db9e6413mr7764693c88.3.1782556007971;
        Sat, 27 Jun 2026 03:26:47 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d912197bsm43776437c88.15.2026.06.27.03.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 03:26:47 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Sat, 27 Jun 2026 15:56:32 +0530
Message-ID: <20260627102633.86222-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627102633.86222-1-hrushirajg23@gmail.com>
References: <20260627102633.86222-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_032649_093821_5AB90856 
X-CRM114-Status: UNSURE (   8.40  )
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
