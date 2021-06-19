Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D4FCC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 12:13:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3EA996113C
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 12:13:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3EA996113C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZosyT6gjNSw2HJ0n9a92rM+ZsCFsSWdMeduQuJlqy2Q=; b=arPIdYdjOze/cl
	KYbzSMwXPlT3Ie9XicE2+qcSRRHV5Py11UyFmZkB9DKLY8c+cBJIdD6xnStpIRVReypux5psTEupp
	+ng1dRleEhsLBfnWmmLDmQr8I/m4IzpyQUxpv44dGA050U5JRJuFAYa4+GetnsXI9xjkmvGljKu9x
	AMMRCV20YOvzplLQ0bX1nNhUG/2z+rPdWKzWWdTCL4Adhu+khhCSyLQVfhErGDXz/NhqiYmlHfMMg
	T677TW3ogwNZQiwZy+hk3mLaZVNQe1h8H0NOM9AiMhP/u7s1TCqXpvkVhlbfp5COP3nAuHehet36W
	QjJEKONWTmQQk3np9DWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luZqw-00GvaS-O9; Sat, 19 Jun 2021 12:13:34 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luZqh-00GvYQ-I7; Sat, 19 Jun 2021 12:13:20 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 n35-20020a05600c3ba3b02901cdecb6bda8so10390536wms.5; 
 Sat, 19 Jun 2021 05:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UDlTNFHYwLk5xi0VvCLQr10w0k/br31yDZKxEdZ1FEE=;
 b=R9IlMqLcFXLYqDDDwIAE5rP72/gyJXe0EYlqzDh8cBsZZecewis6zMZWkHzJhk/fHQ
 QDQfx7TTH/c2YzY7K5heVV7C/LyMq9SXdAclnpTC3cBG5QHEla+ADeD8KcgF4Bwt5N+S
 Gj/DzePLCmNEktpKGuRzJU15w9xqvBrzuceg44LZj7g9hSY9KHronMNV7aPVlfXH880W
 RmolukQSFceIOPqMcU0TdI/Nzy16UWx1mHM1RmyEY/lUAVLMik+B7lXr6OOBmRjbDfV2
 LyJbnnGz/sC5FYnFtgYkXO/GRL+h10uSYIa6HUn3LAGVXX3stc1G5VM1/I8NOCQ9rRqv
 sNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UDlTNFHYwLk5xi0VvCLQr10w0k/br31yDZKxEdZ1FEE=;
 b=jrPLpqfI44LkBb8crGAP2DGFexzi1yNuQChBr2Ydc2UKxt2gsjAOu63Dw+rRHgIqQv
 w45qE02RZWnAVLeghNOi0KXvyob4nhnZAzE3sc1vnZqzG8CnWZ1OLpSM3bpKqN+skSsf
 JHnV+2YZ8y/dklYdIrE27wbxKLwNuJQcO7j3HveEhElj+cxI+P/j9axyszFXVQNC5S/7
 Me1SJ6JiyoNCGD6Z9NYDl3L3qahtZ4f/wWyeLzgjHW6nkJdW/X0PclX3S/cx/UKB2Jk7
 4zrarRWSppgLC7lib2qnS+V9vD9/FZkv8fnumlYlokFzC2S5eERU2UHUAHivOps+mCfA
 fAZg==
X-Gm-Message-State: AOAM531IDQ2Zdp4eXHyPjViK97B327+SZp842cvH0p27h8C0i2D275A2
 4+niDCVGD73V1RpokZUqkg==
X-Google-Smtp-Source: ABdhPJzRqG+YnB4JKSyiAwM1Ze7WstxBZ0H9jz5lFnVOAl3bCCAp4xOSZg2eEmiVD4ovacuU615osw==
X-Received: by 2002:a05:600c:4ecc:: with SMTP id
 g12mr16332068wmq.40.1624104797992; 
 Sat, 19 Jun 2021 05:13:17 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id h9sm10197869wmb.35.2021.06.19.05.13.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Jun 2021 05:13:17 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Re-add regulator-always-on for vcc_sdio
 for rk3399-roc-pc
Date: Sat, 19 Jun 2021 14:13:06 +0200
Message-Id: <20210619121306.7740-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_051319_660611_19BB580F 
X-CRM114-Status: GOOD (  11.31  )
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

Re-add the regulator-always-on property for vcc_sdio which supplies sdmmc,
since it gets disabled during reboot now and the bootrom expects it to be
enabled  when booting from SD card. This makes rebooting impossible in that
case and requires a hard reset to boot again.

Fixes: 04a0077fdb19 ("arm64: dts: rockchip: Remove always-on properties from regulator nodes on rk3399-roc-pc.")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index c172f5a803e7..da3021dc0ff3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -389,6 +389,7 @@ regulator-state-mem {
 
 			vcc_sdio: LDO_REG4 {
 				regulator-name = "vcc_sdio";
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3000000>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
