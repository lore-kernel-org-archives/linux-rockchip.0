Return-Path: <SRS0=QBjV=EN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBE3C388F7
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6992C20888
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1KGgU2YL";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="q+82+2gk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6992C20888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HvcIJp/YzhMVwuPhXHIabVnThcDYwifZXJFq3+HK55M=; b=1KGgU2YLXdY5mjT1pLtXRr9ow4
	2lrmNUZC6/pLykPoqSDMzb9sVDLQmYrrWfm/LHiS3Kpm1xxk9p7vH0mCwfshcSJo/qYn2GKyR3V5p
	EE5XHVZ9zA1gsykDTt60CpBVRq0BgUGSo1yoAcpOi6eAnzlywFyTOFX0C6xi0hywAo6sA/F1E2vWx
	XmtHpZcAaPYXPEsLN/3jOMUeHPv8hAM/hASyyTo/9o251H3dmog6pv3LZ9Wbu3Unk+LjLJpNwt97y
	hKS12nBbbXfD0H5Pc5f7yNky5k9cR6HNHMWpTUxjFeLChflmtGyKUlip0+M4mgrPlhlEB7x/rduCF
	plxGQPDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbRas-0007KH-Cq; Sat, 07 Nov 2020 17:01:38 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbRaY-0007D2-Bz; Sat, 07 Nov 2020 17:01:21 +0000
Received: by mail-ej1-x642.google.com with SMTP id w13so6305548eju.13;
 Sat, 07 Nov 2020 09:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u6WYOik1eFyWW6JqEZgzc6DFTvnTKfIu799c+q/dYFM=;
 b=q+82+2gk8fgkYlS2QZOF2NaxgnuobdnDkv+5oGgY0Hemy1U06GzPfkKi5lEEhS8Koi
 IDEoQ9qmuM/CMyL8JjAZb4ywVQe/wDNfe6VcSU77cTbp9ooP6qYkgLo/JHB+qxJm3enM
 6OtSxEGACqv1U+S8jxCbr7bK76tCiye6w/Z98DLE+7i1I4j1mlwxz+fVyU400MHyPLRA
 voNy4ISMofTwnIbUEfRbon42l6ph541aP5jCNxOMir++GsS//EbCb60CBDPN7C2yVvff
 jqaLehFlLy183NVEt8wy3RYDIy4lhsDEfKcgxUYbxCcvgRm/wdFp0Pj8K5KgHLLSphXs
 eUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=u6WYOik1eFyWW6JqEZgzc6DFTvnTKfIu799c+q/dYFM=;
 b=aKc1Fl5X+Vwcdem3md/XDa+kcw1v6WyhZU9MnMDg64ehUI6RO1Q2DdVJoNOX0LKCzj
 LoqOZfniP+5iHjrOYeveXuFGADL36WcPoOVuzTeifyH6PqKfKs6h4qw8Vtn+36OU4d26
 /U8Y3rrFKljF7b8r2LgYnMTnDzSpN9NSPeRXWuIVr3/0ud35j8RrfuRsW5pJ76xrLHCI
 4hyb1939qS89aN9E3ffi2Hmnpo28ey84oYAcdoP+S5snv45yN9ZzBbIknd0rj0K+FWV2
 cb+qmXD9BqZRraIh50IngRpFkgRxZXuwTJt1Zer8AJk03revVDUCqUnZHoEfvRa/VFru
 y9YQ==
X-Gm-Message-State: AOAM5323jzNtXiK7DbHkByJRexUDTsss7NV2mslzikXqwre8hBbQRMGf
 O7hZzSedn+dPm7BosAwOESc=
X-Google-Smtp-Source: ABdhPJxTEYdXvym049Q3hFtyHNLtuX5TdVJVleljfpGwRWjM/CEpq3LAo8d7e3RNXZX+TQe3O0kl+Q==
X-Received: by 2002:a17:906:5a8b:: with SMTP id
 l11mr2679338ejq.99.1604768477507; 
 Sat, 07 Nov 2020 09:01:17 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t22sm3729700edq.64.2020.11.07.09.01.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Nov 2020 09:01:17 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 4/5] arm64: dts: rockchip: add QoS register compatibles for
 rk3399
Date: Sat,  7 Nov 2020 18:01:02 +0100
Message-Id: <20201107170103.25608-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201107170103.25608-1-jbx6244@gmail.com>
References: <20201107170103.25608-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_120118_477021_D3EC419E 
X-CRM114-Status: GOOD (  13.24  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the conversion of syscon.yaml minItems for compatibles
was set to 2. Current Rockchip dtsi files only use "syscon" for
QoS registers. Add Rockchip QoS compatibles for rk3399
to reduce notifications produced with:

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 50 ++++++++++++++++----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index ada724b12..32e867179 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -855,127 +855,127 @@
 	};
 
 	qos_emmc: qos@ffa58000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa58000 0x0 0x20>;
 	};
 
 	qos_gmac: qos@ffa5c000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa5c000 0x0 0x20>;
 	};
 
 	qos_pcie: qos@ffa60080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa60080 0x0 0x20>;
 	};
 
 	qos_usb_host0: qos@ffa60100 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa60100 0x0 0x20>;
 	};
 
 	qos_usb_host1: qos@ffa60180 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa60180 0x0 0x20>;
 	};
 
 	qos_usb_otg0: qos@ffa70000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa70000 0x0 0x20>;
 	};
 
 	qos_usb_otg1: qos@ffa70080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa70080 0x0 0x20>;
 	};
 
 	qos_sd: qos@ffa74000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa74000 0x0 0x20>;
 	};
 
 	qos_sdioaudio: qos@ffa76000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa76000 0x0 0x20>;
 	};
 
 	qos_hdcp: qos@ffa90000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa90000 0x0 0x20>;
 	};
 
 	qos_iep: qos@ffa98000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffa98000 0x0 0x20>;
 	};
 
 	qos_isp0_m0: qos@ffaa0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffaa0000 0x0 0x20>;
 	};
 
 	qos_isp0_m1: qos@ffaa0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffaa0080 0x0 0x20>;
 	};
 
 	qos_isp1_m0: qos@ffaa8000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffaa8000 0x0 0x20>;
 	};
 
 	qos_isp1_m1: qos@ffaa8080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffaa8080 0x0 0x20>;
 	};
 
 	qos_rga_r: qos@ffab0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffab0000 0x0 0x20>;
 	};
 
 	qos_rga_w: qos@ffab0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffab0080 0x0 0x20>;
 	};
 
 	qos_video_m0: qos@ffab8000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffab8000 0x0 0x20>;
 	};
 
 	qos_video_m1_r: qos@ffac0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffac0000 0x0 0x20>;
 	};
 
 	qos_video_m1_w: qos@ffac0080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffac0080 0x0 0x20>;
 	};
 
 	qos_vop_big_r: qos@ffac8000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffac8000 0x0 0x20>;
 	};
 
 	qos_vop_big_w: qos@ffac8080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffac8080 0x0 0x20>;
 	};
 
 	qos_vop_little: qos@ffad0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffad0000 0x0 0x20>;
 	};
 
 	qos_perihp: qos@ffad8080 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffad8080 0x0 0x20>;
 	};
 
 	qos_gpu: qos@ffae0000 {
-		compatible = "syscon";
+		compatible = "rockchip,rk3399-qos","syscon";
 		reg = <0x0 0xffae0000 0x0 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
