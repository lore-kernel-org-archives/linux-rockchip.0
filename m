Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E39AC5519F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF57A2078D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:59:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="wHKvBHwx";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ItuNwInc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF57A2078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WO24THazL4DpPri1ZxYYQgLhzO4+TS4DIan4OZLJF2g=; b=wHKvBHwx4fS+8ZguUwJ0v0Qqtn
	xcBB67gLp/ZoFi+motlY1qTqNCWX76pbGlK+gMwk27oZxdDV8gV/zXKlao4Je5S5W1kmX6NXrJbVb
	w8uChMSka8kGO45UcTjY26s9jD/Yjx4ljbILU4o5jPwnoRnaEXpPXSZPyqaZ50xgwuxhncUgyBl6g
	pq2+CFTo/VGi/wxY4RGgeHbEB/IivHQbzy6cEOzxUKz9I35wSbJFI7GH6Y/F4GC1+eHEHfTG+6P3d
	zXnlM/8/YjA1l2nNNF59bXxcBvSWW4vELTAf56GBogvgUreGprtgi9cg870kWm2C8CZVgbvA7S3Zp
	zdWPRhMA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfNzS-0001go-C0; Wed, 18 Nov 2020 13:59:18 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfNym-0001Ra-Rm; Wed, 18 Nov 2020 13:58:38 +0000
Received: by mail-ej1-x644.google.com with SMTP id k27so2847829ejs.10;
 Wed, 18 Nov 2020 05:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XzfD+8x/gl2vij+zxF0vgPJlMvOnmt8qPR/mutEO1AU=;
 b=ItuNwInc2MBwj4FPc/vi8+RT3PaxeSvrL0xAoc2Um/9NAI/K/r5esaAf8vYLZvfi2N
 Gn5FdFm8AcWSkuEj0mecew0gSpzUcKx2bY5Ys2T/SRcbCzEslZloWfRO9hpVGkfPdAUN
 e4812uni4BzgCCh4xGpbNRXbyq9JcguzIWoNBt+64GLcVPlTtcMixYIZyjl4x64n2LhW
 t5ygd/OxZWeGUFR8o+rwptKuSqP+1/EAkhuhHNw0Jz3yVtNr1I78EelRvf4MTthuMFaU
 Susaq2zd7AYwogwUmtCBT0TwDkRMqBHNpGjG58LoW+PDY4Nf9gt7ECy3xXxAXeb4KMEw
 DRkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XzfD+8x/gl2vij+zxF0vgPJlMvOnmt8qPR/mutEO1AU=;
 b=LpsECgKeEXtf9n5qmI6w9xDxDBBcrCvyR6VjaNgi5K/KQcsOmFreFdBRdHyh0fBXi/
 Sh62QGSeAxZ55OPfRzgj0XX+RHz2lWxAXyHOy9lrBgw5LDO7rprIAU3idyFjluzNJDTC
 ABrcdQ/KQt72UkfR6n4aogXL0ih3qQlcyk34D9F/vx3ZSFKhQ1ctC64QHZKeuCWUdHBq
 uVGJ8ngD0fOAxNvu8DRD6V3MMvJwfViTYhw965+B11ITwuLSyC5SsVBWWOHaz4YGy0CX
 245jLo//x67iTVfSZI15rUO7BG6UpsJj6p87dxSqDq8+juxDbJRnknbrd4/P4NjXKCiA
 5LaQ==
X-Gm-Message-State: AOAM5311k/GfS5XVAcOOq4dabo5IFA7J68eVh9/DU/pQ8qoQ8gDmN7I+
 xxOmOumxsWbwyqQZoC7S2K4=
X-Google-Smtp-Source: ABdhPJy6FxHe0EbiFMLb69ag6/AE/2uHZ1fKsTWtsbK6CS3f8YZgjTZfbNAGLYo8ILiVxlTQhXgfRQ==
X-Received: by 2002:a17:906:6b86:: with SMTP id
 l6mr24155838ejr.524.1605707915976; 
 Wed, 18 Nov 2020 05:58:35 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cx6sm13721384edb.61.2020.11.18.05.58.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 05:58:35 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 5/7] ARM: dts: rockchip: rk3066a: add #sound-dai-cells to
 hdmi node
Date: Wed, 18 Nov 2020 14:58:20 +0100
Message-Id: <20201118135822.9582-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201118135822.9582-1-jbx6244@gmail.com>
References: <20201118135822.9582-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_085836_958846_71177E29 
X-CRM114-Status: GOOD (  13.99  )
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
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to the 'hdmi' node for 'rk3066a.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 252750c97..67fcb0dc9 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -124,6 +124,7 @@
 		pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
 		power-domains = <&power RK3066_PD_VIO>;
 		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 
 		ports {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
