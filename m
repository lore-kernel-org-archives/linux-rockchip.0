Return-Path: <SRS0=q/kP=GU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91081C433E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 18:17:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E42D207D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 18:17:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E42D207D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D0GmUq9g76NpsG4eH+NrAFuzmi0Bu6j3rOhnfZ8973s=; b=c6/dJFqXqkd9mHKOQLqnmhkAjK
	DASOwgWN947TUcYzMOrR2GhfeTHKOkKaZIim4Cs2LIAPhX3noDusTAiRMPy958IuFX8Z7xsRiy50W
	lTm6BU8q50K+79TwY90r1+8yVrgoB59C1swK+9MA1jfzObCdIeW8JAEiveoMuzQ8mWHIG7M15LIr9
	hdfzZ2zq4Fp6FVpSdBnoxmkQDL9scLdyb9ruOMev72sQJf2abiEObAIF1yuIaORLFpjWXHalgXRyW
	+ImAHqkcZOsMb60Q64f+Or8vt+gkfpan+G5feTPLqa7Clplf1/EVGYCVRXhC5d752Zuh5EEW7Kpwi
	VLHJcbTA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Cbs-0005HB-N3; Sun, 17 Jan 2021 18:17:09 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Cbp-0005G7-9K; Sun, 17 Jan 2021 18:17:06 +0000
Received: by mail-ed1-x535.google.com with SMTP id g24so15069821edw.9;
 Sun, 17 Jan 2021 10:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2JtWKNyDRARawQO+6zhdJOxEt3nWiQDJWt9SIw5zWcQ=;
 b=mZiNuxsvPbyMDex2+YoSTHol1Bmdo+HuPHVMRE5CDHe5TZz7s/mOgrQrk+bGP/ps92
 zWhLuSqPMBJzvffJc4XbvhA2mgPlkCIW9aTOLZ/R5E65NlSPvBfnCjodEQFhkm2kCrdy
 84Ni7K8MNlRtLhq8smnlRChz9HxrjPB0sQrhx80FA0eeN5Fy+BvD1HW3FXwScAtNWxsv
 oyFdrzZqAFMw9cjURH62N2sFATvBXVHWgfin2nkm7+Rk8RWFZ3pspMW8FOldSHUfeCem
 o6BE/rFnweRUxdX5RuT54YRgzHRwAi86YE+imCFru/VQQpDVP4hypMOTV6D+Un+8UP28
 Tqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2JtWKNyDRARawQO+6zhdJOxEt3nWiQDJWt9SIw5zWcQ=;
 b=eHAL6donX+QmpuKQKab4NXUKs3zf4eIQ4QrtZsYeFsOWDeTCKb+Beoyiwa8xsXas2R
 H2KMdh4nGkS29Sy1wdf2Wh19iknm+A7K7F3UBpdQvnMX3B4VN8SZbF8bDgz38WeT6q+/
 DwkR+Z6pA9u9zIqXOeMiYEg9NOMw6fou1DiQBzSS0X6hbcDD3xkC7VVMODT63koATRfg
 YBstllSKGFclNld1zsdtaJEQv1z+3+mMvkMlY1ph3nAH57A/gfD1VRMIrV4IcojDhshM
 0EvHhDYDhQ3ailTSTkp0xw7CncTlKlWtUzwx7UIyy0hYVbqqawQKREtoA6i41/zbzkBL
 iZyA==
X-Gm-Message-State: AOAM533twsQxK6qMrqijN+GsKtdsxe3G7eVF15rbEJCPHoxepTEfs+Vt
 pbTONbfavtjGDMOHTeot9oM=
X-Google-Smtp-Source: ABdhPJwRU8gsjM8P1npn0q7DNNkS2ZHeR/5FzHHPq/SUp3D4Xkz8+WaWK7oymmdAKqDt1b7QoVmzfg==
X-Received: by 2002:a50:d552:: with SMTP id f18mr16563922edj.168.1610907422276; 
 Sun, 17 Jan 2021 10:17:02 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id zn8sm8745158ejb.39.2021.01.17.10.17.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 17 Jan 2021 10:17:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: remove interrupt-names property from
 rk3399 vdec node
Date: Sun, 17 Jan 2021 19:16:53 +0100
Message-Id: <20210117181653.24886-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_131705_438895_27C3DE3F 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:
/arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: video-codec@ff660000:
'interrupt-names' does not match any of the regexes: 'pinctrl-[0-9]+'

The rkvdec driver gets it irq with help of the platform_get_irq()
function, so remove the interrupt-names property from the rk3399
vdec node.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
media/rockchip,vdec.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index b18d6cc26..08f163964 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1275,7 +1275,6 @@
 		compatible = "rockchip,rk3399-vdec";
 		reg = <0x0 0xff660000 0x0 0x400>;
 		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vdpu";
 		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
 			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
 		clock-names = "axi", "ahb", "cabac", "core";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
