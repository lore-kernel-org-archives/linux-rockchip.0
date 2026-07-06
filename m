Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0B57C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 09:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGKI79svbYMPrM0vhNpqaLBDJq16sx35NKdCvLSS1VE=; b=ikw4goZ0lqXef9
	0MdxvivMF+K/R57rGfwOVVcs+1JXhgIw9oPp3/9B3CO76GxbyI+lixXCGy4wczIOd70Q4rn7QRoJ0
	p2HZp0PFqY14w0ifac9H1cukmrlCzLCcXvTIagKsEW2Nz+AbpBOzU1XgiPghrLvUqOI5OgknskFaH
	UbrwqFJnCYFV9Siw2pTmL2/IA3dDP1nZZ9EB4tH/ds4IaOHQIVfyfIzgfDYvRiQwluyoff8st5Uzc
	yAMNLr058cZ9aIAgRv+XQwvVx5iYTizw1nX4eDY/i05Rfr71QNIqJU8MTNY0i/et7owgRX89XDAFs
	yaTWdrMBa1RHT99x8pAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfQM-0000000ByxR-3oqm;
	Mon, 06 Jul 2026 09:15:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfQD-0000000Byu2-3mfu
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 09:15:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id d2e1a72fcca58-847d1e9db22so3069732b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 02:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783329325; x=1783934125; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PO7sRlb4LngBB0NhQzK1DjshH0p/tRvHLng9mNY0Vj8=;
        b=KqAx/petoCv5GfNx4U2vWu+36KL5mHbmBPvWEtZub1JcN/nfstnSyZHGVRHznlQPPF
         HSWpVS8GNQVrv4sXGB5DBC5BmqNZduYcLzepgNJAkjrxUmS2r0ofNFCz7X1BIpHxwrr2
         B0WKtTPZfIH45uq/8+5mldk1eKw2LK8NTgVEsTzFJoDOCkMU40kL3HC4Wrg9dGtaugJs
         u34zUDTt4S6MTw3J7GH8FPjOpEXG7nR5k2OvisQq/rTqWSYKlO/SZiZJu2Q/EXCWyU/v
         3eMSAElTmsIuH1tOzI3dsC9+BTd9ersAg+GUq7jJVarFYu3YJLmwndJNdBWOPeHwauS1
         5HMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783329325; x=1783934125;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PO7sRlb4LngBB0NhQzK1DjshH0p/tRvHLng9mNY0Vj8=;
        b=LXYAQGC3mo6BsvxPeNzLb0lWG/8TbL3zZ97JWbeMUURHHbDP3/CeRxaDv/DYAHSu20
         naIO6ctjUmoBoj0JmsggWmO2IhyezhONwrCbVttwmTFaCKHR0LmY2DCS6slhyH3iHI5G
         doF4hMuMfqkYkgLthghxKllPVeOU7IOXlaV60EbeeM9IBjT2cedJopaJRGpIaBsyxrZH
         fFbPcwVMQaZM5UuI97yD3s2715+Gc5KwOwc9qcRWvuG4D+JnzZMaUH0D/b33quiCjj8Y
         YJlLf8S/N0iTIYdmeLyrYmxmTCk7scXN5uBngpZZoCqr8TzRGmpVOUi1Lvl2sF2oVjHk
         fwqA==
X-Forwarded-Encrypted: i=1; AHgh+RqVImFIINbYU0ETYjS+2CJtlIM3sV7nsPxZEhoQSjRi4autFeLwwLMelVdAxUELGGN/5x+KhiRlK+RRMXP/AA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQifLtSlxPT00tpi6TExvLwrCKHfqbIDIzSHILWagPZ0khZ4pG
	RL9dQ8TR+Qt1DAbrbuyJHlIP3TGzI8dg68pOTxzY9pa1U5TpQHsVWqQn
X-Gm-Gg: AfdE7cljecWOMe682oJn/BAqf2UdzYPWaOUymMnt4rT2WGalleMBuvOP4hUizKzOhkw
	QCOiVVxrrCjf+VwBzrS8dz1VKPOzqDTywTTVr5Tt6JCe34OpuInSlFQ3nAbnATZ8/2IIa4BFtNh
	ZITVyh1f55FzUKZpQ29HKlnWIF8elgcf5wjtjMS1IPDk7zGztZBPlE2GTmv2983QM6Fmyq302fR
	62MRxo+NtzXY5bN1O1R9811E+AEtvGY00ars2bPy0XoEM1sOOJqPJ67Yu+NLfA2rSFGFR5Jv6H2
	PzKhSSWmECkir3WRqFwUTB55bxW2PqjQeOhCN7kx9TnPOUms+yvFQAj17g7h3rcNaX9qZXslb0y
	TaZgk7G3gCRVe9wsnbAZ1Pu76ThSNIPGqsX1euBrOZBXQNUIG2JRA8p3aMIkQyc3nj+DqUmU+zQ
	tdq+C+7HQIRcmnGCVoKu8HTjSD
X-Received: by 2002:a05:6a00:bd0c:b0:847:77f0:72af with SMTP id d2e1a72fcca58-847f6ecb888mr7926803b3a.40.1783329320787;
        Mon, 06 Jul 2026 02:15:20 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm3445963b3a.53.2026.07.06.02.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:15:20 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Mon, 06 Jul 2026 17:14:43 +0800
Subject: [PATCH v2 3/5] net: phy: motorcomm: Enable optional clock for
 YT8531
MIME-Version: 1.0
Message-Id: <20260706-rv1126-alientek-dlrv1126-v2-3-ff3176ca362b@gmail.com>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Frank <Frank.Sae@motor-comm.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783329287; l=1439;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=SlNqGmETJ9Q8UAkQSzGcvlMdwkMGS8oYl0+UlW2dAag=;
 b=y6ylHRmWgT7jI86bC726VoaKX+LpK4637earqAkTGSrc4CX0YqwDp1WW/spDefa3DoiAUsZOh
 Vi4pQJYhQAiAYpVdofljX7KHjKSc3kOcTx5ju2ZdGCW3K/esm48DEaL
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_021525_934779_6D19CACE 
X-CRM114-Status: GOOD (  12.90  )
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

Some boards feed the YT8531 PHY from an SoC-provided external
reference clock described by the common ethernet-phy "clocks" property.

Enable the optional PHY clock during probe so boards can model this
clock as a PHY input instead of keeping the clock alive from the MAC
driver.

This is needed on the Alientek DLRV1126, where the PHY reference clock
is provided by CLK_GMAC_ETHERNET_OUT.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 drivers/net/phy/motorcomm.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
index 5071605a1a11..3396a38cfc0f 100644
--- a/drivers/net/phy/motorcomm.c
+++ b/drivers/net/phy/motorcomm.c
@@ -6,6 +6,7 @@
  * Author: Frank <Frank.Sae@motor-comm.com>
  */
 
+#include <linux/clk.h>
 #include <linux/etherdevice.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
@@ -1180,9 +1181,15 @@ static int yt8521_probe(struct phy_device *phydev)
 static int yt8531_probe(struct phy_device *phydev)
 {
 	struct device *dev = &phydev->mdio.dev;
+	struct clk *clk;
 	u16 mask, val;
 	u32 freq;
 
+	clk = devm_clk_get_optional_enabled(dev, NULL);
+	if (IS_ERR(clk))
+		return dev_err_probe(dev, PTR_ERR(clk),
+				     "failed to get and enable PHY clock\n");
+
 	if (device_property_read_u32(dev, "motorcomm,clk-out-frequency-hz", &freq))
 		freq = YTPHY_DTS_OUTPUT_CLK_DIS;
 

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
