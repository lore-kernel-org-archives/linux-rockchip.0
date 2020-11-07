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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70E1DC388F9
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23A43206E3
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2020 17:01:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="d9ma0VAy";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gzm0iFj0"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 23A43206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3gS0O3fm4QrulKNyf6xuB6ntCVaLBkXHJmj5IG8duc=; b=d9ma0VAyZTd1HWv3laR3P0tncn
	6CMWwX7z5PKCS94M8Ntgz58XXVY2PN78FLfori3QX1Iu3gK26GPBCvYbb+0zmkEPkknQlj8N2wX9b
	4qucjJj0xWBo3pc5dA3VgfDsGXvk21aAb/i83cGE7v/lzhH7Zz2lknzp+MCygozQv5NNozGbSwdX6
	+NwissqHByvK/71x6D6IHUTckPEYIQHVRuGmoeBOZrsa1LrR5DBlwbupImu6/tPw3DqFzarXUBg30
	WjwYUiFtWKsKvNLtmlsIDWKCeMxUUOGeohyU8GwQN3mJSoYio4jdeyFWrAvj4Icp/uuqpW8IPbpDL
	N7g1je7w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbRat-0007Kg-12; Sat, 07 Nov 2020 17:01:39 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbRaZ-0007Dj-PO; Sat, 07 Nov 2020 17:01:22 +0000
Received: by mail-ej1-x644.google.com with SMTP id k3so6322433ejj.10;
 Sat, 07 Nov 2020 09:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Zq1Ou0jMvIjoZ2w0wOmMCC/GKFzl+UGGCZWv6JD39N4=;
 b=Gzm0iFj0EB4BO95L4Ks/rc61eoroyvAr7tN49rVECqj1v7qRRd+w2q3F1TtfcsE5+i
 XaLL+iD++Y5O7zBEdQTgnqK0ReL+7HI8gvbaQO7oRthD32lPNtAcJnJCljhHLHPinxKo
 l8WxxE66HE6aQyUDbbx5i3iKiEX6FhixjiBW0dk7eXDd1wKtHr9gS2tNTxHknWYfcY3T
 0UUJxMlxFc8hIYLFnXFNMTwgA7fSeaLu0JYOgNsZp1g6t8oTowCFYEJ+KYR2cogHN2Kt
 W6KW3ipftVulNSHs39UoiTx0zCmIHIydwsJoc1IgbWcP4OGzut8JAFJ3tdbZ8IGwGKYy
 6W1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Zq1Ou0jMvIjoZ2w0wOmMCC/GKFzl+UGGCZWv6JD39N4=;
 b=JelPTLWxuXFp4HxiAwFNjiZAcXgGFg9iMYUZbiR630TOMTbwj85gi8D3FpWDqwAxwr
 ef/aFkTSwooO6AjYtN5McOV0OOTYE1ZLzGIHnydAgo4IZM7+291SWQos6JnkxFL49dnw
 tpbIkZoWSicRM3jWwTFphq7ZykpSwKI+FfD/pR2zzEMXpjHHp5XA0eDRPVM8pJ6C2785
 FuBOd/ehXSshzn6OIPkK1GAMJNYrTCj6ZR/TXTpt9nBzfr97TWF7QDKL6g3w+0dftR7b
 E4n3Q1R5Lt3H3J2QSY/ZGaupcOoYQZuioIxd4E8Wmzk9QfSkl+lbVxJi4FM3W0pufwGT
 DLXQ==
X-Gm-Message-State: AOAM530SDICY+52jwUtJB/5arEjxU1HkI9a8cYA5GuDXTY30r5KE5BDR
 KS2/VgKp01GyUHfyxWXLi2Q=
X-Google-Smtp-Source: ABdhPJy4JdaWQPpM6V8tQo4sHCMhIpf87AT6eKdwGjbetI6Rw6KidtH7UeEFpuc0Fyv4/Nn7C4ZIxQ==
X-Received: by 2002:a17:906:840e:: with SMTP id
 n14mr7246795ejx.147.1604768478455; 
 Sat, 07 Nov 2020 09:01:18 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t22sm3729700edq.64.2020.11.07.09.01.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Nov 2020 09:01:18 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 5/5] arm64: dts: rockchip: add QoS register compatibles for
 px30
Date: Sat,  7 Nov 2020 18:01:03 +0100
Message-Id: <20201107170103.25608-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201107170103.25608-1-jbx6244@gmail.com>
References: <20201107170103.25608-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201107_120119_916114_6E20D5D7 
X-CRM114-Status: GOOD (  12.54  )
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
QoS registers. Add Rockchip QoS compatibles for px30
to reduce notifications produced with:

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mfd/syscon.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 40 +++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 2695ea8cd..7317bca2e 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -1107,102 +1107,102 @@
 	};
 
 	qos_gmac: qos@ff518000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff518000 0x0 0x20>;
 	};
 
 	qos_gpu: qos@ff520000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff520000 0x0 0x20>;
 	};
 
 	qos_sdmmc: qos@ff52c000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff52c000 0x0 0x20>;
 	};
 
 	qos_emmc: qos@ff538000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff538000 0x0 0x20>;
 	};
 
 	qos_nand: qos@ff538080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff538080 0x0 0x20>;
 	};
 
 	qos_sdio: qos@ff538100 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff538100 0x0 0x20>;
 	};
 
 	qos_sfc: qos@ff538180 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff538180 0x0 0x20>;
 	};
 
 	qos_usb_host: qos@ff540000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff540000 0x0 0x20>;
 	};
 
 	qos_usb_otg: qos@ff540080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff540080 0x0 0x20>;
 	};
 
 	qos_isp_128: qos@ff548000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff548000 0x0 0x20>;
 	};
 
 	qos_isp_rd: qos@ff548080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff548080 0x0 0x20>;
 	};
 
 	qos_isp_wr: qos@ff548100 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff548100 0x0 0x20>;
 	};
 
 	qos_isp_m1: qos@ff548180 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff548180 0x0 0x20>;
 	};
 
 	qos_vip: qos@ff548200 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff548200 0x0 0x20>;
 	};
 
 	qos_rga_rd: qos@ff550000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff550000 0x0 0x20>;
 	};
 
 	qos_rga_wr: qos@ff550080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff550080 0x0 0x20>;
 	};
 
 	qos_vop_m0: qos@ff550100 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff550100 0x0 0x20>;
 	};
 
 	qos_vop_m1: qos@ff550180 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff550180 0x0 0x20>;
 	};
 
 	qos_vpu: qos@ff558000 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff558000 0x0 0x20>;
 	};
 
 	qos_vpu_r128: qos@ff558080 {
-		compatible = "syscon";
+		compatible = "rockchip,px30-qos","syscon";
 		reg = <0x0 0xff558080 0x0 0x20>;
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
