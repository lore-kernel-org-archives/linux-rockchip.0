Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA279C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:34:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5832F610CE
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:34:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5832F610CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhY7CejqlnS7gxE9X07h7/NuyPzSPMefI6eIROeY7vs=; b=QTiZWEOAigZh77ItyONfoYVi1Q
	h02UrmtZPKitYRtgSRo1BVxPrxNfGRovVlIkk6B+fxYlR10wIKzKn20OjQZalQXzjJJG84msklXcv
	RwlKX7rMQEg/FxZhiSO3vTA5LC2hokzRk2GU0192uGjX+XXPa9sSN9AHiCmAUWbq+l5axgkgg/CuS
	pZdC/56juzaEuWrq7l2LkIfrq/dO7pGoiF1rzpipPCsJvXUpWHSbbxITXqjhQ7Z7npaicS5RiHpB4
	mEaj5b/CTs8CXYhl0tXz41/zaVA5A0YEPkLlrXv5F9SwqZjeXBDqDnFp24gcKIPJ2qaSRr9le/H9A
	v0XosoHA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJvH-001Mx0-Co; Fri, 16 Apr 2021 08:33:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTT-001HL0-VW; Fri, 16 Apr 2021 08:05:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Y/yDtkquDn7nc6DMSPBoDqWrLbKvy8/S6Kb4jP/mkzo=; b=rYvW7b7pyLvP2/c++tb56xDT/T
 SmkvVDkpVNWUbVHDzFlPr14BiWHJCPIPaIP/xxt2kzi8Xr6tbEi1rWJ1LLO+THkkb4r3iuQWbugWA
 xFgDbHZJVaH1jtC1UQkQJxpHokZGSlmH5lzkwBPIPflirxk0nyA9Woti4WRBKfcOEvEOibgfm514E
 ltvWJNkjGfvrK+ObrxnqNLuLwVOnwrxPuVuG61S2B0KmqZWQB8nP/bXE73+xt7PG8ojEGK5ysCrmG
 +WnZiESqWITkqmLROw0s2kUwC7DnPDLCYl6IJpeg9C+FpiI/7xtxunIMu7Q6r72TL9IjfbF73A04B
 7UdvtZQw==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTR-009AqH-2K; Fri, 16 Apr 2021 08:05:10 +0000
Received: by mail-ed1-x52d.google.com with SMTP id g17so30462705edm.6;
 Fri, 16 Apr 2021 01:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y/yDtkquDn7nc6DMSPBoDqWrLbKvy8/S6Kb4jP/mkzo=;
 b=WLNVQikfEAjP+ytzwFec2iN+CglPKZLz0bJ5xw52oYwrvRh+7gdDNPHI7flL7Gm5JW
 zsDkh6HEKm/hLFbBFkeLinX/mayi4Pic5bS7jx+VObFn564dIhSOHB1OdzPwWhl7+IoE
 wYSzzDFAnGAE9emv8gCKN++3EWbMbwcGu5CXQF09KhVkn+DIhVTSvP+9yof//Hial6gz
 bxVx8Uz1DrCqvNQLpBySF6XvBXmKaNq7ojn0g2EhMXbQyagCSA4o8TfJmh4cDB1nPC/9
 +MoghNvs8wqD2KbYFMezm89SkOIAcrosKckRIZE9P8E/QsQYMX3d2so6L+PMggAigeev
 IY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y/yDtkquDn7nc6DMSPBoDqWrLbKvy8/S6Kb4jP/mkzo=;
 b=IW5D/j2rSPzvAUlnyzVYpQ0zpy5lfchp8G7Wfmu/CeZE8LlsTqy3iFbahDKp0GfCX6
 ys8IQlAkGpefnVFuIdlc7TJA7CvqEfVlW4IahkyY29x0DK685BQurGm8XszYNe7tVtBi
 ciYI2taY3r3qSfb2yg4oXtkbCeBUzFfIXUPuBUaU6BVES2xE5DGVe3OXQeJFmwW8w3fn
 LmrzsZ8vcfak1iDbtO9ExF+nbfAsPQJGGoG0tkQMWWBBvCensrEYwsR7KW3Xwq/Qtdmr
 +tA8kZoKak0AssKZfewRah428gvXhsBkTaT5cKDzxm1D/djmbnZFn3L2oodAojzOlPMq
 ey8Q==
X-Gm-Message-State: AOAM530jAbW/Pi4QtOVTo6Eu0IKMAy4NaZ3O08vzCyLGCudiRLUjmOrV
 oTh60RiUsHCy03fUJlxivGI=
X-Google-Smtp-Source: ABdhPJwCw1fwteiFoZL3ZAnGDvpzhYZf5NOhP8aWBK+RM303/TLyQ2fDRR/IZEaVB9sdEdqloDn7wg==
X-Received: by 2002:a50:ec8c:: with SMTP id e12mr8602166edr.249.1618560307476; 
 Fri, 16 Apr 2021 01:05:07 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.05.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:05:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 04/15] ARM: dts: rockchip: add #power-domain-cells to power
 domain nodes
Date: Fri, 16 Apr 2021 10:03:31 +0200
Message-Id: <20210416080342.18614-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010509_126874_58BFE59D 
X-CRM114-Status: GOOD (  11.46  )
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

Add #power-domain-cells to power domain nodes, because they
are required by power-domain.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 3 +++
 arch/arm/boot/dts/rk3188.dtsi  | 3 +++
 arch/arm/boot/dts/rk3288.dtsi  | 4 ++++
 3 files changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index bbc3bff50..8e087c34b 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -780,6 +780,7 @@
 				 <&qos_cif1>,
 				 <&qos_ipp>,
 				 <&qos_rga>;
+			#power-domain-cells = <0>;
 		};
 
 		power-domain@RK3066_PD_VIDEO {
@@ -789,12 +790,14 @@
 				 <&cru HCLK_VDPU>,
 				 <&cru HCLK_VEPU>;
 			pm_qos = <&qos_vpu>;
+			#power-domain-cells = <0>;
 		};
 
 		power-domain@RK3066_PD_GPU {
 			reg = <RK3066_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
+			#power-domain-cells = <0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 5db32fdbe..f438170b4 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -719,6 +719,7 @@
 				 <&qos_cif0>,
 				 <&qos_ipp>,
 				 <&qos_rga>;
+			#power-domain-cells = <0>;
 		};
 
 		power-domain@RK3188_PD_VIDEO {
@@ -728,12 +729,14 @@
 				 <&cru HCLK_VDPU>,
 				 <&cru HCLK_VEPU>;
 			pm_qos = <&qos_vpu>;
+			#power-domain-cells = <0>;
 		};
 
 		power-domain@RK3188_PD_GPU {
 			reg = <RK3188_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
+			#power-domain-cells = <0>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 6f4d7929e..bf2d8ab61 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -805,6 +805,7 @@
 					 <&qos_vio2_rga_r>,
 					 <&qos_vio2_rga_w>,
 					 <&qos_vio1_isp_r>;
+				#power-domain-cells = <0>;
 			};
 
 			/*
@@ -818,6 +819,7 @@
 					 <&cru SCLK_HEVC_CORE>;
 				pm_qos = <&qos_hevc_r>,
 					 <&qos_hevc_w>;
+				#power-domain-cells = <0>;
 			};
 
 			/*
@@ -830,6 +832,7 @@
 				clocks = <&cru ACLK_VCODEC>,
 					 <&cru HCLK_VCODEC>;
 				pm_qos = <&qos_video>;
+				#power-domain-cells = <0>;
 			};
 
 			/*
@@ -841,6 +844,7 @@
 				clocks = <&cru ACLK_GPU>;
 				pm_qos = <&qos_gpu_r>,
 					 <&qos_gpu_w>;
+				#power-domain-cells = <0>;
 			};
 		};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
