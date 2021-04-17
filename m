Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AADC433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24FA8611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 24FA8611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hhY7CejqlnS7gxE9X07h7/NuyPzSPMefI6eIROeY7vs=; b=EqK2uks5bmgtJhwQzmgC00yESj
	8wneuztRsUgn3rg9auleOrvGD6kcdCx3uiEWixGlg/7FIGyVccKxZftslxIbqw5+5fgXuy+FTgkMf
	g/jp7ZUxLcdvKBQ8qVQYMac6XtV6+W5uHHYUdXn8mvdTIVI4LJ9ms+Cz6FPB9SHdH+DdZvmSG3wIU
	i9uD+Jj4Yqns4SIVR0r/mYgIYJNjNJ2AHJ/r2rLVMGEr7nQlELMFJQ5bjzLo/kXpZxyTxEpxfPLz5
	+OYrIrtVzWUkz96fTNvzGzpbX+sRITq+2rCju6AvKz4yLO6NnQ6/xR/cBNkZ/i1dJuf8c0dBpzbk1
	VTmEyAHA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjAY-0058gr-Gq; Sat, 17 Apr 2021 11:31:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9R-0058NW-10; Sat, 17 Apr 2021 11:30:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Y/yDtkquDn7nc6DMSPBoDqWrLbKvy8/S6Kb4jP/mkzo=; b=ZVBnytWZrk5gOB3QiHV71wziIw
 qgT6DEBLABiKzwmOr85rxnhMsxLvADKICX64vezrPiNbXI2BpDImPHkKgsZiem3gERTislN/VFzrF
 ZmiB4NrqClUlxyEnEUzf1l/7qz4IROL3im+Hw4xxxSJMMN/XvVnH1WUvqcjdsxDAAykurADCPZbWq
 9DBzjuEOiyQSfJgp9iIW5WinMxSJNpt/ACFWB3pfCEF8Jjvr60eiLAnMoDqcBdY9fCSHY+i40lB09
 V2qvJCIPqqLNGHoxL34XsYokwf3U/efYC/0Uvi3CmdaW1Fgo41UABBDHJCtzKuq0oer5CQhgi7oEx
 Wnya04Xw==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9L-00A0Ba-Gv; Sat, 17 Apr 2021 11:30:11 +0000
Received: by mail-ej1-x62c.google.com with SMTP id x12so25070266ejc.1;
 Sat, 17 Apr 2021 04:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y/yDtkquDn7nc6DMSPBoDqWrLbKvy8/S6Kb4jP/mkzo=;
 b=JVtQdxliNHew9UJXRleuPTV0x6mKumUSIEstFU27tHYgGJCd54pBjmPZFwpbnMCc7c
 LvKcYBho5CIZDpGbgO/YZVWCnknmkf0vqkXDv2HTQUqCYPqPYI1H4X0CosVlEv/v0+J5
 eqKGOu4jn/XBM18C87EKm78a2EznJoYiJ3QRjunxnRcwW5j27BWeSw/T2fvSlUwx3NBT
 WHONKtW4NDUDyeys75BtyA9Zf6+PijhFL83rkvi03n30cEOvrxMcmUhWirlVpIMPEcd0
 tWwcANaxybUZC+nUtBOD3Q6yw0FnAyk1unNxkUQeC3X2z0PiBDghHj4UlJlf7D7xmmq/
 nnEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y/yDtkquDn7nc6DMSPBoDqWrLbKvy8/S6Kb4jP/mkzo=;
 b=d3UsjhsfI4ISX8KErg3La8gDFIh/Y+59UghlaX7yyKsqjTKNQgaGluhnKgjPuJDMkU
 19Alt3ykjecRSsJ7U+2BPDSISSagUEbUfrcjeyq3DgOJjx4CgLLBAUc6Kkkk5geN/GyD
 GvWaPK/VsUZ5fb5mMt0ukBqWEH7bBH9M293Pewz0qCW4u/MeaF/qEawaXuyRFzpX9yyc
 oe0JzpphC/7Q7dgRgILXtSz4HgKIji31XRzUUsH6db0c8F/b0dSnqdMuAhcFcPSkAzlP
 LfMex1mGtca0C77lvCa8sYQA2BnMolPPo/XJLX85Cv43K/mCRxsHkQIY4zmSY+DvLhxw
 FfRA==
X-Gm-Message-State: AOAM530+rwutFuX5wixuu+A1EiGLH9BdjL+5/KWdDzmjgUTkJFlbTVfe
 N8Ll1mkE6FkuSALb2CTwSQM=
X-Google-Smtp-Source: ABdhPJzDoBj6/xJ06tVkE38Ey38Kytq1uR9lpSE/MKmlQftfuVM0C19wV7cTuV52+Guqu3Q10Yjm8g==
X-Received: by 2002:a17:906:fca1:: with SMTP id
 qw1mr12500022ejb.478.1618659004920; 
 Sat, 17 Apr 2021 04:30:04 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:04 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 04/15] ARM: dts: rockchip: add #power-domain-cells to power
 domain nodes
Date: Sat, 17 Apr 2021 13:29:41 +0200
Message-Id: <20210417112952.8516-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043007_581333_479BA042 
X-CRM114-Status: GOOD (  11.16  )
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
