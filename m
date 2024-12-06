Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54DC3E77173
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 22:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsCSctEbDUUsCeTLMGCtRqiIqgBJbcTX8XAiZ6gPiBQ=; b=oI1SMXH3Sp65UJ
	oP5xabOfic2nRnAzIFuRqfvfZ26/nv++PXKkJE2BnN1S/qc4XuEtn/IpnFiW7f8mY74XxYSHB9L65
	uSIqbFIN83P6fuhufxtRWn05gxI/Fo17Xp+lLHL50zVUoOAqwEFOE6Kvm/madPVnAc/2coPE6evnS
	EPlxGO406q8q5RRZmJ2uMehEC+oQQBIzV+AJVb9KUN7121RZvo+hEWC/9PdKN3gR0+uJgdfmH/Hdw
	b3QbNw87tgVDb43McVARkPQ/yb0TjRnlhZ6PBOjzP53ihiZNb5OmC1yknZ8L1ND3+PyyzZrMx+qSK
	+zLY34VL/CmHh1Auk15w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJgTb-00000002rIg-2paR;
	Fri, 06 Dec 2024 22:07:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJgQZ-00000002qge-2T82;
	Fri, 06 Dec 2024 22:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733522638;
	bh=c+MpG+anKYTp08zkr7m18UAM/ICmNVHs0fwN4TQT7ug=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qtbiXuiRcHluHgvXACzF97zLJjyKeUFJnAgapyoHHXqs/tq3Fgm2PpdXm9TFH7Uq4
	 xLUgiAnlouRl1WhMGHLboXiLNYZ3tbIfS7I8veCOUJXOAwjFbjNvpO8aBbo7JamoOq
	 8phD4IKqkHU3HAXtqDAlGKphfsgzNWgRefvs2f+XyHGHtLwr7ys58CuOelpY2f16yl
	 6frBPeUiB1QFAZoFsj3w53ya7llEBDsuc+EW8A4tJ/w6bt+HsiimpYTd69fSJLsM9e
	 l4eg6U7ze7FsZ98gTu7vgpy6WSc5kF4mwg9ypjQ6h8TG9EvAsSd7pCuboU/Ym0IP83
	 wXagWU40IJhmw==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0C2ED17E3809;
	Fri,  6 Dec 2024 23:03:58 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 07 Dec 2024 00:03:42 +0200
Subject: [PATCH 2/4] phy: hdmi: Add color depth configuration
MIME-Version: 1.0
Message-Id: <20241207-phy-sam-hdptx-bpc-v1-2-03c2e4d6d797@collabora.com>
References: <20241207-phy-sam-hdptx-bpc-v1-0-03c2e4d6d797@collabora.com>
In-Reply-To: <20241207-phy-sam-hdptx-bpc-v1-0-03c2e4d6d797@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Sandor Yu <Sandor.yu@nxp.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_140359_872097_7CEDB18E 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Extend the HDMI configuration options to allow managing bits per color
channel.  This is required by some PHY drivers such as
rockchip-samsung-hdptx.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 include/linux/phy/phy-hdmi.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
index 6a696922bc7f29af63d88646701b2c0fcee5c885..f0ec963c6e84f1b7728acafc824dff191c6b873d 100644
--- a/include/linux/phy/phy-hdmi.h
+++ b/include/linux/phy/phy-hdmi.h
@@ -9,11 +9,13 @@
 /**
  * struct phy_configure_opts_hdmi - HDMI configuration set
  * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
+ * @bpc: Bits per color channel.
  *
  * This structure is used to represent the configuration state of a HDMI phy.
  */
 struct phy_configure_opts_hdmi {
 	unsigned long long tmds_char_rate;
+	unsigned int bpc;
 };
 
 #endif /* __PHY_HDMI_H_ */

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
