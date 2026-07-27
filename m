Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7C66C531C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 02:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbEPot89RYK125tir8nuvomKgVM8hHKfeHKjgXeAiRU=; b=idq+ufFKjTCI7O
	0gR1b5Yy9Kg5mRiWzCEk9Sg10UqE7N80NJCGfjPbEfEmF2pfXlwbjwIaxOdTL5cEq/zf8aOmkHAoj
	4XlM/cXhZKjygiuaa6TLnrQLKBU/nrcDLE8ITnCszx/iJehczZOF0nWnLaT+jXM2UzofmXyNv+xzz
	g/LA2HD2lF5KdsghJvKI39Ck1mXkGi5RXQpjAhqHncPUcBoOmM/rtyUrD0FbX21uQ3HSQu/Ix/IB4
	ScDSggXO5NSWsEn4qFy/5gHiraOrfqLEmBeVBeGnNOKF9tHMR744aLFFXzNOT5gAHN2zHI/YeQi6c
	8ISTCuTtYm11+CWiOLNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAoT-00000001nkf-0bHm;
	Mon, 27 Jul 2026 02:11:29 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAoI-00000001nhJ-0FQL
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 02:11:27 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-848643382fcso2211672b3a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 19:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785118277; x=1785723077; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JN7LEuMudq1mUi6BCPF5860crqnrJNZXCJN217lSS6A=;
        b=jDprc5FSj6wSSo3UsZ5b12MDOYiEolibkuTQks9tix/0s7HZLCbZifysyMhO9DdtRV
         +Q7UP2jDrVohdU7ou13yzxz5RaebPYrNyIBzO+eKVUWseoZig4v9l+UPhTvzxgANeDXH
         IHhW+DUuT+Ky0m8cyO3/1fpJmdTTfMppdjKl/0Fp/AU6s0nzmWcFwXyqCTZwk234NEVW
         yPkOP97+lLfu/ara7Vkld77YTUGHpUjVVYeVpzvxpt3yuKiFNB2xH24NGUI60hGlXNlq
         0Surapg+Qsdscw9oKG0KuMCsXPX7PStsuK+6ZljaVigBZjtWIMMmK7Kq53wkM5iu1LCe
         GfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785118277; x=1785723077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JN7LEuMudq1mUi6BCPF5860crqnrJNZXCJN217lSS6A=;
        b=Jw0QXxq03tEZB9BJlQh2aNdYOwfl6Nlwa+oXvfizvl/zECo7K5XAEs2UHTbDxn+1lY
         AL0K2KcbUGJb4sX19fhAlv3mtQ/vUBkxEXq8VyWhzG169PHKA7NCcFADd05Cux/6YW9T
         fk9Nya1I0sAlyKlijmtae2Y1P9sm3sScTboicfFfVGDG/EWVW3dTfDBDILJBguWWsThW
         c0VR4J2DiPW32MNnqeIny8Ou/xZPjVhoaplO/CTYvou7ETX/sj4fqT4TaOGWxtTQOdcH
         0QBD9ilUE+s56ZgE/kPKWVv9cw9M3JQB4RyAMe01hel1L2uS6mTJmaIVX+De5GmQMFK3
         eozw==
X-Forwarded-Encrypted: i=1; AHgh+RpIBoSFQj1FPyj3nkbEQBMzbyxV1mdPkyJxLGU7JaLqDBjpnZgrj7azQ+t26eUQEvJ5mjArvMGNRBpUAhWSFw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwyvV0QboUQv78GHm5BW/y6SGuN+JYpSfoddSCX9+eGlYB24D91
	HtqS/J449j9cygU8SjAig0JghyK0M53N7i44L1oj/hidd9JL4J6Wc2lK
X-Gm-Gg: AR+sD12OTpAHy0EvDeFIhaEdb/wjxwiUDxOOyHVdnd99jkbwDFUOVoeQ+y4BNFSwmSO
	HYwxVz9CKWfMcKKiAaeSs4jlg5aqCvgHAd1M+mlvRTysU9YZgKahdAGa62IKKudPw5Ugd0EPHX3
	9eFgV4LX2UNc5ddjwWljk2Wrjw24p0O8uXZGSeqEFb4JH0cr9LXkLm60iRiBWYXnQR6LF6pDpw3
	CHqDPOOF57RcNWBYGwWkVtubGsvuNGjIQ2HlrDQfK6XwF1qCS1qxoIcSnUlpsAK8qzoXNwliEz/
	IqNqGD5CYRu/y71kUnvJtBUf3wDxlyqR6yuWTUEQJOawdXd22deNKKvxZVJOtHJZhxSIKwXOJCb
	fxcySS6jruJIbxi51Q/OzDoljr3GP2dk3xlDdhRqUs1/FDT9fvZ4ZPjlw2iQtOZhg1IfJ4VeTWc
	eBweB5TCnLIda53hJf8p6ACDM=
X-Received: by 2002:a05:6a21:8282:b0:3c0:9c1a:8936 with SMTP id adf61e73a8af0-3c67e131180mr5856351637.62.1785118276966;
        Sun, 26 Jul 2026 19:11:16 -0700 (PDT)
Received: from attina.synaptics-inc.local ([199.33.119.15])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e53094d65sm19162200c88.13.2026.07.26.19.11.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 19:11:16 -0700 (PDT)
From: Gavin Gao <attinagaoxu@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	richardcochran@gmail.com,
	nicolas.frattaroli@collabora.com,
	sebastian.reichel@collabora.com,
	sashal@kernel.org,
	alchark@gmail.com,
	chaoyi.chen@rock-chips.com,
	attinagaoxu@gmail.com,
	amadeus@jmu.edu.cn,
	rmk+kernel@armlinux.org.uk,
	horms@kernel.org,
	alok.a.tiwari@oracle.com,
	david.wu@rock-chips.com,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next 2/3] arm64: dts: rockchip: Add RK3576 GMAC 25M refout clocks
Date: Mon, 27 Jul 2026 10:10:46 +0800
Message-ID: <20260727021048.3375444-3-attinagaoxu@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260727021048.3375444-1-attinagaoxu@gmail.com>
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_191126_363100_BC9A3729 
X-CRM114-Status: UNSURE (   9.52  )
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

RK3576 provides REFCLKO25M_GMAC0_OUT and REFCLKO25M_GMAC1_OUT clocks
for the two GMAC instances.

Describe these clocks with the clk_mac_25m_refout clock name so boards
using RGMII output clock mode can let the MAC driver manage the 25 MHz
reference output.

Signed-off-by: Gavin Gao <attinagaoxu@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 70e67d4dccb8..f1125c2f88ab 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1692,10 +1692,10 @@ gmac0: ethernet@2a220000 {
 			reg = <0x0 0x2a220000 0x0 0x10000>;
 			clocks = <&cru CLK_GMAC0_125M_SRC>, <&cru CLK_GMAC0_RMII_CRU>,
 				 <&cru PCLK_GMAC0>, <&cru ACLK_GMAC0>,
-				 <&cru CLK_GMAC0_PTP_REF>;
+				 <&cru CLK_GMAC0_PTP_REF>, <&cru REFCLKO25M_GMAC0_OUT>;
 			clock-names = "stmmaceth", "clk_mac_ref",
 				      "pclk_mac", "aclk_mac",
-				      "ptp_ref";
+				      "ptp_ref", "clk_mac_25m_refout";
 			interrupts = <GIC_SPI 293 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 298 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
@@ -1739,10 +1739,10 @@ gmac1: ethernet@2a230000 {
 			reg = <0x0 0x2a230000 0x0 0x10000>;
 			clocks = <&cru CLK_GMAC1_125M_SRC>, <&cru CLK_GMAC1_RMII_CRU>,
 				 <&cru PCLK_GMAC1>, <&cru ACLK_GMAC1>,
-				 <&cru CLK_GMAC1_PTP_REF>;
+				 <&cru CLK_GMAC1_PTP_REF>, <&cru REFCLKO25M_GMAC1_OUT>;
 			clock-names = "stmmaceth", "clk_mac_ref",
 				      "pclk_mac", "aclk_mac",
-				      "ptp_ref";
+				      "ptp_ref", "clk_mac_25m_refout";
 			interrupts = <GIC_SPI 301 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq", "eth_wake_irq";
-- 
2.55.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
