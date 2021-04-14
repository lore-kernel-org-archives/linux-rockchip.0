Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D18EC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8885361166
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8885361166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BUyCUzJpZiB1j5Mk8d9zLHFUYf9gVCs7uJWREQMFtSE=; b=or19phylIcmXCrKYQfz2LakW8e
	rDkQbH6Vi10J4haCwRQDIacx2pfWT8o0e2FO4s56r9bD4xvvADK+WpCwFxyKfB0FTKiFCGx156myz
	suO5qvCSgdfYEUZvH8hH+A2vVCFPGAO1L6f1yNuVfYD8HwS0Ir1tIHaRh4wODCxPOhqgTWLo3zjAb
	Gu2UyXmxZzIkvpUT8HDbbA5qaCteuQkQGZ/O5oetahbiFzf+09Opfvkl96Z9k6beSPmhzl563nUEc
	ZOiBrq3ti5SirawXycTtt45k3VBWTKIWUNfmUM+gcFUAnEIEwGILpnR7yaVm7ny+ZLXh5iyUQJ4zT
	JzN7KJ/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmvQ-00DorO-Qg; Wed, 14 Apr 2021 21:19:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmul-00DomQ-69; Wed, 14 Apr 2021 21:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=; b=kJVHMNvnuy35H4r4L0p5KbSGBW
 dIrBtXmX96WageGQnyk8ptB2LfE1VEoxKyHWKXXihOuQd7UDyx0J4txSsAwKz7sCutr7wYj6z91ft
 U3jmStCLLTu4emZW+bNeZyg24ohOJbogGxIoWum819kOWKuHcuqKAkfafBIUBUaYbJO7CxWwZ/JbW
 7xIpDzY8PBg/Zk4JKVZ4HMysXshFdknndVtWXqaysPYPP1dPSvZwmq44tYsJZat1NCbBEKoMtaTTy
 QsVnVAkS0FIXhZXg82+VuYIcFnTaDIUjD9CdvySgCJkU+veIh5AirR95oDhEfu/f6FwtzfzXTYeo1
 Fry3IVCA==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmui-0086pr-Fx; Wed, 14 Apr 2021 21:19:09 +0000
Received: by mail-ed1-x529.google.com with SMTP id e7so25368637edu.10;
 Wed, 14 Apr 2021 14:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=;
 b=rsEvIs5MpwhcLt07fi9PBMTXXJxzbm3C6ZqTT4hDsr9PasOFPa9Jkbi7xy6K0a4geq
 ioUd1/lUr9Vla9cqBmOZgj/2o6kQv9HrVytBjYOnOugUKRz4bbI40eJbPFSuFNnVCR5z
 ubfmoCkb5Y6vcJ0t3j0UvhIb4RJBPxBKpReoRgxvqt+oK99cl4Xci8wusQ0vJU3sUH0F
 yS4WiNThYvjsw4/aggV+G1DiMYpyXqixO7ETdNO5T2Y5UAvvIonDGdtyLoKCeciAUczA
 WDPXP1/MtbkLhO58mVts/eUdr1b5u/i2zcxV7KoplvY3IMDmSpAbDuqaQGrKb2SofjoT
 9grw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hQOvTm7HW4RD6s7O1xMZhkEYd1hzrRk65QKfsGi+jms=;
 b=RmJr9by8fl0WruV2rqRjcAeZWl4TQCE6kJuEhCWys7lLptRBtx0MtlOKOkCL/yXyZr
 KtWqFEA7mwdDBvk2swRO+ewezJH4foMlc3+BnUmRUui1FzP+ef5+XWiBhXUAmhIgwMrM
 Ho0nngluXr0tcv7FDNYkRNV7Wmc3ycKRO0srom4D+iJx0aYW5srlhxwp3Ih+DwzXjPRR
 OkUWx2xx0pZAV64M+4kXVz0MD2JcE3m0A3LbxOzYLh/bINfcaKdHXHL876ywQ17oPZZA
 hxxLO0ooTOVusYCGPI7b7irp653OcIivQD1aDqL50LDbg3rh53SpeNtjxBbsTZUVbSw4
 g6Tw==
X-Gm-Message-State: AOAM533f9DuvQEGliNosoEav20LdnRN42Dxz9uvcJU66jRhYsfLXkhKB
 X1nnIekRCePkPjSsxGv5b8A=
X-Google-Smtp-Source: ABdhPJyFWbXJhvk4/cDkTJvMpCpvHp93/hwrmIrQOblAEJr3laTAngz9SsM9McyxftZIPxp1Vo3jFw==
X-Received: by 2002:aa7:c694:: with SMTP id n20mr229716edq.51.1618435147176;
 Wed, 14 Apr 2021 14:19:07 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 02/11] arm: dts: rockchip: Fix power-controller node names
 for rk3188
Date: Wed, 14 Apr 2021 23:18:47 +0200
Message-Id: <20210414211856.12104-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141908_552197_45C18D0E 
X-CRM114-Status: GOOD (  12.17  )
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

From: Elaine Zhang <zhangqing@rock-chips.com>

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2298a8d84..5db32fdbe 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -699,7 +699,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pd_vio@RK3188_PD_VIO {
+		power-domain@RK3188_PD_VIO {
 			reg = <RK3188_PD_VIO>;
 			clocks = <&cru ACLK_LCDC0>,
 				 <&cru ACLK_LCDC1>,
@@ -721,7 +721,7 @@
 				 <&qos_rga>;
 		};
 
-		pd_video@RK3188_PD_VIDEO {
+		power-domain@RK3188_PD_VIDEO {
 			reg = <RK3188_PD_VIDEO>;
 			clocks = <&cru ACLK_VDPU>,
 				 <&cru ACLK_VEPU>,
@@ -730,7 +730,7 @@
 			pm_qos = <&qos_vpu>;
 		};
 
-		pd_gpu@RK3188_PD_GPU {
+		power-domain@RK3188_PD_GPU {
 			reg = <RK3188_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
