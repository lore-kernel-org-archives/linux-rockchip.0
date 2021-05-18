Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D18BC43461
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:58:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1211B61184
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:58:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1211B61184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wTY0eIRtoMntePcD9/4t853TPBFt8SXrlAw7nMPP0Ek=; b=HfGicKkeIhlkgsU0Yna65yXadx
	n0caZ39xK3yanHQHx3ibe2TGciyto86HxBJ77Aqim6LM+0v2r8b3djpCnhDOqi8fklgKAilNDeT7s
	OBrNQqvlizeHOmB3/8DsI9fCj3UpVUdCZC56CyBaxVjBWkerMP/vjzbIGDeIeddpq3edbzTWW9QlS
	9wO84cOY8hO/EEo2aPr3NoKQRl+pHBNFfijCroqmoJa2WFgliyarz7hrpu9baSoMMh6xykNFhdxkB
	x5PCLDEhJ7I4kRqsooha6F9jpAlw4kZvcVoJISXqlmq+3tTae0+keHy2nMi4CgGfHY3QovPw/5QJD
	/4cpxW5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj32m-001PMh-Sx; Tue, 18 May 2021 16:58:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31v-001P3c-Np; Tue, 18 May 2021 16:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DHH8YHAlTPU5T8bDwFoNt/piYkwaeBsEh0BIqwvr1v8=; b=ON6P2fOMK+g5+kYUhPeh/Ky/xc
 w+G9+wELFTNNR81CfvmcoGkizrMoyNc7CMvL4YnYzgOzb4sSjTHTPL3AWEEvt/AMFlxzuYcvMcn85
 /nkmQPl9Hry3t9x5tYhNFAZ9DbiewVNJHqKw/In6lXwtPEn2xlVucPVFwc3SGsn+UmGuk7mhQMtGz
 JEacPfAaz8wdYNl39YXwg3ip+Ah4jhDlATzyh5jtPeFHBJxKBTIA0G9GbqOlT3vLas6aYSmfY0hcv
 l2WdoBo66zanxAf/wSmFeY54XP4S5NSTVdWAq4jo07web7wlX/PImGWgzL8zlKRKxQB2KV0sGG1Ab
 +woV2izQ==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31t-00Ep2F-61; Tue, 18 May 2021 16:57:14 +0000
Received: by mail-ej1-x629.google.com with SMTP id k14so12186157eji.2;
 Tue, 18 May 2021 09:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DHH8YHAlTPU5T8bDwFoNt/piYkwaeBsEh0BIqwvr1v8=;
 b=Pr9vJRvAGeRZq3F9LEs3Ot8+o+c5VHPHPU2rvqxAlJqLbyhmKZdXY577NAgttua00w
 sLwqNiuRl/ipGfTh2jE4DVXIKXZWsk1vhGHmz3NLj5OjCiEGP+p1BKJ3rURY1vsgqPZr
 pqZzJaS7Zz0X4FTIkLwSH5yk5N2RZqvKhDtsalejQT51T1CYi7cevbzybEy+G2aQfsKS
 11jN/tgEaC7v2zv+IuO9AzlGILN8RjTJrrtRNEskXtLd8adb8jEwM1ThqD0Yvs2fRjS8
 3PAmmymqEwLRPi6FZ7FHI/Dnc8iOhCY0w/Yw5h6nZzcRXKI+98QAA7RcF9iaJuRgFI+E
 g9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DHH8YHAlTPU5T8bDwFoNt/piYkwaeBsEh0BIqwvr1v8=;
 b=WGH1jQmbeb0CGR8pDxk3PfJ5QOu/Gqbu7FXDZT/yMKQy3tmlXWdlgZGwbC5yJvSn58
 zeVrv5Ydv0Td+d709GidEoq553XKrv2QdiEmhqBcD81KBjakuS5EzDBf9FfvjlmT5XLe
 9pn963y4OEki2k30oY/cFXjT1w+QkIuNtNT77SBTpgDvAsQaCJR7uoYSRxOkvjTdzCWG
 6qTMGFPk+nXf8yOiOTysoo+i2XolCKMPvGRvCPoAvgLdBkeW6BOE9EQG+FfYpAXtj+mZ
 9kCOjO61HK06srZ4cBSNdERQs7XJdnzwK6RmEoueKbOGObOI10lODvklEptFTQT8MjOP
 74kg==
X-Gm-Message-State: AOAM530Zxifi1kJu6o6VZ4kYelR2pTacGvppW/4UWLn/dOaV4FghGHQr
 RwdE9eDdugJ7G4t7FeYCBOY=
X-Google-Smtp-Source: ABdhPJxCoRdQlBvUqCnmlq7ggRW09bTbmA0gtEsyu7TsFhhhCSuIPzqLSP7/iEmVQZpJfCnZxMrNnQ==
X-Received: by 2002:a17:906:a0d3:: with SMTP id
 bh19mr6259825ejb.205.1621357031934; 
 Tue, 18 May 2021 09:57:11 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n2sm13525676edi.32.2021.05.18.09.57.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 May 2021 09:57:11 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 4/4] arm64: dts: rockchip: rename nodename for
 phy-rockchip-inno-usb2
Date: Tue, 18 May 2021 18:56:58 +0200
Message-Id: <20210518165658.12764-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210518165658.12764-1-jbx6244@gmail.com>
References: <20210518165658.12764-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_095713_240753_962E7C24 
X-CRM114-Status: GOOD (  12.31  )
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

The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
in phy-provider.yaml has required "#phy-cells" for phy nodes.
The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
notifications.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4e243d72e..248ebb61a 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -822,7 +822,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy: usb2-phy@100 {
+		u2phy: usb2phy@100 {
 			compatible = "rockchip,px30-usb2phy";
 			reg = <0x100 0x20>;
 			clocks = <&pmucru SCLK_USBPHY_REF>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bc0bdc3d8..8c821acb2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -819,7 +819,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy: usb2-phy@100 {
+		u2phy: usb2phy@100 {
 			compatible = "rockchip,rk3328-usb2phy";
 			reg = <0x100 0x10>;
 			clocks = <&xin24m>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a2eba5357..c1a253507 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1418,7 +1418,7 @@
 			status = "disabled";
 		};
 
-		u2phy0: usb2-phy@e450 {
+		u2phy0: usb2phy@e450 {
 			compatible = "rockchip,rk3399-usb2phy";
 			reg = <0xe450 0x10>;
 			clocks = <&cru SCLK_USB2PHY0_REF>;
@@ -1445,7 +1445,7 @@
 			};
 		};
 
-		u2phy1: usb2-phy@e460 {
+		u2phy1: usb2phy@e460 {
 			compatible = "rockchip,rk3399-usb2phy";
 			reg = <0xe460 0x10>;
 			clocks = <&cru SCLK_USB2PHY1_REF>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
