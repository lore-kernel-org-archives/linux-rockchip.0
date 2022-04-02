Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47239C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 14:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMpMNLLUk600HidMpA/YrarZqvWbLU03b4TVVzonsrM=; b=BqAEv5wnXbdSwY
	tgPMnlAN2mxKaTm1vTKTyquNaWSvbuqPrlvqikbdq9QG1MhPnNp/iMz/QoKmJDB2jJthjUhY0Fn8C
	1RsvW26MbsXUw5ExSzuc33xlLwsoOnIWytZMw03gvz8w9ZMnqwBK42gdb8z+zNPUdDipOwtxIO4/B
	/RBl4lBc/G9myPAKlnex7wYcSvk/qNSzXUjyHDYJH8R3GFLJ6s+pLsQdRP+Q/AS77F16IITAQ/+kC
	MENN/oLAszontzmz1PF4E5BqpfUJSebzf5Wi+GwI0HPtazs0ZUEkjyyu3oKpT4dZtcsAYN4J9nKb2
	gHlQl3xENLssOl7MilUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naev9-009LDO-0k; Sat, 02 Apr 2022 14:40:07 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naes3-009JJG-Nd; Sat, 02 Apr 2022 14:36:56 +0000
Received: by mail-ej1-x632.google.com with SMTP id i27so4264260ejd.9;
 Sat, 02 Apr 2022 07:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X7nPX0FS+sUDMedLCWLeoyXqqsqm0c5Dk9c11Pv8XJw=;
 b=nWWshgpSZPDeAzvpV+ru6q4bftzMnLHLFQNa+fEOYpGRwFqEGaW+NGrw/9jJ0a3xmD
 rSkCm9gWGS+yrBDP33ky5c3RhuzOGfrrZYuBNZMHyA3szIvoJFPPhlg8s+XE4tXk95Sd
 NQ2w/HEbsxmknGWXT0Fsg1MdkmgTHJ4p8le/rrley7FBtuTuo3EDrUsXi2qZw2suj0AX
 gxpzHKLkFC51b5Su56nA9CD+SLsmKxNeKKdGomRS9snrX5mGryPiSqvzmBjSVrYhiZ0H
 r4jB6OM5st9pN5QbbM5tiMIQYpOdj4Wp62fk1H6O0Jtl2UaftvStKnJrjnixO4QSw0fJ
 IveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X7nPX0FS+sUDMedLCWLeoyXqqsqm0c5Dk9c11Pv8XJw=;
 b=e++lhVVvIfLNZZz9tN9y27TmTX6tB8VttMWtBJDYPRKDGvowEMOSkCrA5s05y68741
 CfZL/PkHPZb3FCZCA6MpVOClBehMMXuADpBsvqtiULJEf6/F2OES+1fmbZyZQwzXXsgf
 NmCe4PitQF2M9zpbcNyTOOb5UScZ6k18On1+/VxqoG2xVL70HAp/SEOKs8nohOubbWQV
 b6W6apiY+HgZpiIHy88/Vtiy6AhI1WG91mA88oUQ9Ml8kYrd3H9WtKnGU3OzylURGIfP
 10C4j4nSEcU7iOu+SGn3QkDLy1HVjDdsSC5w+cDIALJRj8xWLDzTZNoVKuHLYhbno+DR
 R7rw==
X-Gm-Message-State: AOAM5323xrODNOTflsM/St/GSoecHE4rusRT3bAhGNakNNe6WdVyDuSd
 n3mISPJfsNGEsyjL4gKtONR+TR0pSNI=
X-Google-Smtp-Source: ABdhPJxJn5VfKuILnQXKNWoz+AIUpzD+KxuWTuFhTY+txH1IG4cNyiawoGOucUv+UK708eGrEMPt9A==
X-Received: by 2002:a17:907:7b8d:b0:6df:fb75:3d41 with SMTP id
 ne13-20020a1709077b8d00b006dffb753d41mr3955984ejc.166.1648910214626; 
 Sat, 02 Apr 2022 07:36:54 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bp8-20020a170907918800b006e0daaa63ddsm2169557ejb.60.2022.04.02.07.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 07:36:54 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 12/16] arm64: dts: rockchip: rk3399: use generic node name
 for pmucru
Date: Sat,  2 Apr 2022 16:36:32 +0200
Message-Id: <20220402143636.15222-13-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220402143636.15222-1-jbx6244@gmail.com>
References: <20220402143636.15222-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_073655_807922_E6F2615D 
X-CRM114-Status: GOOD (  12.29  )
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

The node names should be generic, so fix this for the rk3399 pmucru node
and rename it to "clock-controller".

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index ce1cc42ff..56af1a1d6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1413,7 +1413,7 @@
 		clock-names = "apb_pclk";
 	};
 
-	pmucru: pmu-clock-controller@ff750000 {
+	pmucru: clock-controller@ff750000 {
 		compatible = "rockchip,rk3399-pmucru";
 		reg = <0x0 0xff750000 0x0 0x1000>;
 		clocks = <&xin24m>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
