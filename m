Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40188C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 12:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05V49u0tExyEW7VEIbbauuTBTSBTK16dy6uTJMkc7yY=; b=qp1dbBE7Pl2ykU
	IbYVNjkCxRqoQDkVzAn5K3TBB6Gr9Ht1oQA1A/7p95v6Nq5Rqxa8R+KHmSw2MDKiJLldBGQCp0Gpc
	TMJawV1Mqc6oiZOVBP2Ydu2mrcjbyMXLrE06ongPPVQmmmXA8BPkIJUVDsAxmu6U4E/rSiO2g2qW3
	qfuOn8zjC5nu+lJhYdPk+GKNma9TurRrPFvO5YrcSBMW6080w17X4/jcVAuP+4nbipHyI/EXc57cX
	f3MpW4hHK2rJLoMK48tV11Hkq6x0kHwmAZ8DRf9l1PytsdlWuYD9IzyRCB8/YEgGabdcyIVOZrl4+
	iK2QCfTC7LbLURvinRHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nY5FF-004FLC-99; Sat, 26 Mar 2022 12:10:13 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nY5Et-004FH2-Bc; Sat, 26 Mar 2022 12:09:52 +0000
Received: by mail-ed1-x52b.google.com with SMTP id g22so807931edz.2;
 Sat, 26 Mar 2022 05:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M61AFRbLUdMV7oXCOaCCHm47RW/KqcD8CWFb8D1XXr8=;
 b=OjI0mWSkh8IF18F/TSsJ8MJss9uNPfHXlbT1L61y23JeWnLf2gAJCMA7VsFeGKVXx/
 kouG/ev3S77WOrCw2HAnmKAVgFOWnawYlFbbIsH4DOmTtb50+DfTgxCNs3po2rx+gWCL
 tZv8w6uJOSkH+iq7F2o9zwUU00c1Ghw8ASeERc6XfqqLBxfWBYHpUDHuexfxotmoR8Mo
 jyXGT1jtq+wanQ6Aw7wikR//M+kyJ3cN07GVbAtUqAnAFaO02hIVEP4tYq60W3+SiAfh
 s/xMKKNwntvuqRLMwMf2f1jiRMw+2vOoVtehrD/XERWsagWg3w0bZhmMaYfnMcgHSxFM
 36vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M61AFRbLUdMV7oXCOaCCHm47RW/KqcD8CWFb8D1XXr8=;
 b=zImkuzJbEpVeS9l6WtTItaybRYY4n9Gb20ptY3rYrvgc329OyRNDflKiCb+uoaM/mQ
 LayeqomntROMFFf3kdaOGzSFxKYT2Ubto5X1yxlwAikyxM1AZEHvWQX4aZaDj976LWtH
 f7OSGVyxLGxRhaP4CrRNMDMlcBNMJd2kgexCy5zdceAeqHTOdPdJYIR0HCozlqjoK6Nk
 2PHrT150URa5agPuEBWsNAcOVFRqV5sQZfj0GhfviqMnwO6Xs4BQm/we8nwhRIznzO93
 IYNb921zaQAuNy66oezO9EfcMRcUtyTF3ty/q8AVRI17M+G1FbiiPYDn/PRs9O+V5P5f
 CxIw==
X-Gm-Message-State: AOAM532Kw8STi0yHRXRWKZZ3Oho5IZV6qmzrVRHcGdG95Rz7zD/10P8+
 scJPJaSIuX4xLqClG36mCNU=
X-Google-Smtp-Source: ABdhPJxZ7fNDA9cRLndFfVEfAHwP3Hdtn2XRwJWm9oe/0TWDoVGrU/0hP95piDM/ll+gLVzl/M5M+w==
X-Received: by 2002:aa7:dbd6:0:b0:408:4a31:97a5 with SMTP id
 v22-20020aa7dbd6000000b004084a3197a5mr4159348edt.186.1648296589901; 
 Sat, 26 Mar 2022 05:09:49 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 cr19-20020a170906d55300b006df6b316e29sm3559920ejc.208.2022.03.26.05.09.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Mar 2022 05:09:49 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] ARM: dts: rockchip: add clocks property to cru node
 rk3288
Date: Sat, 26 Mar 2022 13:09:42 +0100
Message-Id: <20220326120942.24008-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220326120942.24008-1-jbx6244@gmail.com>
References: <20220326120942.24008-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_050951_415173_327C7931 
X-CRM114-Status: UNSURE (   9.53  )
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
