Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 853F8CEBF91
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=li+UmORV5UYenFbJ0tx4xTKCt+i77CS57ajfU4oBUyM=; b=trNeFnQ3hANZYc
	rLVzuAfYJ4H/xhXV7Vf66utu9Jj+zp8izukVMRSzvRhB6p8lBlSRuvfR0VlD0/qQuksqIDgBmts9c
	0jQ1sfMZ04vpmEWzvUQBafKnYhfLsDMu5qP7Jrm/aBtNidkItENHY7E4aeqH+o/N/V4TdQ3jyJpNJ
	bhQaETrmKnxYPSm5N/yk8BUzec+f/7JchJaGP5BkHt6VHhHubIENDZchxX4FKtpE9oHHQmbNcY/Z+
	r5nb1elKabCZwFdS4rwT5A6DklzDar2Ac2+vRm8YKoKFU/XuKB5dErStH4q746cABgD8MkUXvHy7m
	8NZtY6Iy1nfgvsw+tsfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhY-0000000ECBT-2fUV;
	Sat, 15 Nov 2025 23:29:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHJkg-0000000H5wc-0sUl
	for linux-rockchip@bombadil.infradead.org;
	Fri, 07 Nov 2025 10:31:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=A7G2ramQk2hxdGs1tmlSj6o/OfknwFPaFfxdjJIosVo=; b=Jl+hoPdoT1tdgtb7QrwqL0fNR3
	v0+EbNjw4BUmf2vWcT0hSfrn/tiZeG2EldzqNqObok8mvYciXE+8eG5zmHTXY4Zu/BA1bFXLH8SHK
	Wq2N/YQZ5oZmNTc+n2yRmdp27epMKjO0Y8FRMhkKj6jW2IW6LFm5VxaE8KaefsYmJFvntGJ045sAc
	dArs2pWlfT1CnM/1dynun0r92XNx7+v0gRAHv9GZc2nCrDfvWDDTVnjySNySZirxlCFlXL+HNInxa
	vsNjZTsa+vx7Co131dSa3qH1ZophhHo8PNd3H0J8oEZ67RWEylUtHzEySDA3XA+uFwq9Yw4hhpYiG
	ssqq5JaQ==;
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIsw-00000006BY7-1Sgh
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 09:36:00 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-47117f92e32so4486965e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 02:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762511426; x=1763116226; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7G2ramQk2hxdGs1tmlSj6o/OfknwFPaFfxdjJIosVo=;
        b=hzdHJ2NT+y4NjWI61yZiRBb7268BOrudp2RcwFOQFpfZC3Gssp449eZdMhFVKUFdrU
         i8K+p7NMC+/qEtGCKgKzDWSXQ6dwZuBL8isOK0cIdyJwIMOVDDxotljKTSWcIhGKLvZe
         3kzRaISPXy8zXoKtWHWCgzvictQOUUbm7jfRaTI7itK1bySXTvKUCKwkNHPsVSSh7eLH
         gRzILFqiYM5vNm/Ixs1u3yGLHIb95vUSvaP8sh35un4nHDkF2SZS/KjrJt2GKDK/5r3C
         qKiN+DyPS2U+d+og4gx8C0mL50CJ2Ij45nEsZFlL4LwBGsH919xHjDZxQ1HKj/IxczIg
         N0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762511426; x=1763116226;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A7G2ramQk2hxdGs1tmlSj6o/OfknwFPaFfxdjJIosVo=;
        b=bf1lhxQA6azMvyYS7QRATrwAQiciX2rVQwKODPKcf1dnaXnk9ox1vc+CPD6cnTFkQ/
         lX6E/Nd+t2QuPOuXRvNBIeLGKb532sF2ANDgvVR5AckDjz5ZbCcLm+d0QCrb9l6rr2xJ
         IB3DV7sqSovC1T/G4XCfLLB9pfzg1L7W8b2bOZrezjaHP+8Y4fPqCBQUJMhBim/R4Xi4
         b+56WahJd4ganWQSQswyF71YcDlKnKfGf7XdQoyiCcIQPQyQG+RkEtAspeb2TiWBCGnP
         YEsVHH4BU3s016f3A4LBQR0JzDGnZhqR1buxjFE7ONvA03y79fMHD+GLnBdYapunHaG+
         rBpA==
X-Forwarded-Encrypted: i=1; AJvYcCVr8QCbhrSdAqATfiChQfaVaQdnvUws6dktL53DwSi5sKLGTRmg2AYWk2HAauhw9ZRxUFk+Zk/HPLXaXProiw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUZeKgbF2M7lojK97i2WZiilsZw7TVwVDTpNDNy4vl278Tnm8W
	LqhZLeTd99dRl6/W9hLXFx4SSivVXOmTXDlPsgZIR8lQzQrhwg5Bz5sIYNdJd9G+zn4=
X-Gm-Gg: ASbGncsjvjv7NAy0br+oPT6e9CGMyCvpCxn0tyFDiVDGwu2Dj9yyRvj9XiUN0FHmf3i
	qDe6sOol0+qSSjY6F1SYKR8dyolB7bFrAndFS1I4vcmxtnPqZyTOJsM1yCAG0Ho13l8enF+kxc5
	rPkFs1+gIDSaXGWYqVWT7kpns9eUeGhcRYOrmb1YiouWzruOvbEELauJu9HfIg2HQYdjehZqQr3
	eRwPymxX2nNNEO6yc43S6SM6Fc/dNa/IijOwfYOu7n+/CwPs2sDbdtYjuhmij14X4Yj6KFy0XQH
	s/WSbVTZuMgjE/xd183XTdKBo/0R1dpIfoQccjh2VHaDHix5myHD3eCauSLu5ARrVzZGtQl3oYE
	TQyAOFcJQP9gCPC5m+IpWegwAe7heosBkdVzscTN9x2a+eo18+JHQlHx7nz0yFwP+YY2P5kYaFv
	KGO1w=
X-Google-Smtp-Source: AGHT+IHIBx2tJqRLVHmEw90vFp0rp7ojXL3UXgjP5mQ5luFxcEaSq2ZhQysTlSzW77Ym94NwaGSiSA==
X-Received: by 2002:a05:600c:4695:b0:476:d494:41d2 with SMTP id 5b1f17b1804b1-4776bd04cc9mr22964605e9.29.1762511425524;
        Fri, 07 Nov 2025 02:30:25 -0800 (PST)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:fb6d:2ee:af61:f551])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac67920fcsm4414864f8f.39.2025.11.07.02.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 02:30:24 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 07 Nov 2025 11:29:57 +0100
Subject: [PATCH v5 7/8] net: stmmac: qcom-ethqos: define a callback for
 setting the serdes speed
MIME-Version: 1.0
Message-Id: <20251107-qcom-sa8255p-emac-v5-7-01d3e3aaf388@linaro.org>
References: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
In-Reply-To: <20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Matthew Gerlach <matthew.gerlach@altera.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Keguang Zhang <keguang.zhang@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Jan Petrous <jan.petrous@oss.nxp.com>, 
 s32@nxp.com, Romain Gantois <romain.gantois@bootlin.com>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Heiko Stuebner <heiko@sntech.de>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Emil Renner Berthing <kernel@esmil.dk>, 
 Minda Chen <minda.chen@starfivetech.com>, Drew Fustini <fustini@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
 Shuang Liang <liangshuang@eswincomputing.com>, 
 Zhi Li <lizhi2@eswincomputing.com>, 
 Shangjuan Wei <weishangjuan@eswincomputing.com>, 
 "G. Jaya Kumaran" <vineetha.g.jaya.kumaran@intel.com>, 
 Clark Wang <xiaoning.wang@nxp.com>, Linux Team <linux-imx@nxp.com>, 
 Frank Li <Frank.Li@nxp.com>, David Wu <david.wu@rock-chips.com>, 
 Samin Guo <samin.guo@starfivetech.com>, 
 Christophe Roullier <christophe.roullier@foss.st.com>, 
 Swathi K S <swathi.ks@samsung.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, 
 Drew Fustini <dfustini@tenstorrent.com>, linux-sunxi@lists.linux.dev, 
 linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org, 
 imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev, 
 linux-riscv@lists.infradead.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1914;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=Yczz6nmRkpIoGqMAKNVvyF3zmCEkrzboH4PyVFVc9jM=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBpDcopMMZ8M5zQYmizMBW3totvKz7P+ctBnkiJX
 04NgM1FS42JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaQ3KKQAKCRARpy6gFHHX
 ckX/EAC9NUTeuFc1Qq8u9nvzBzxll6MRRMehTj3Mt9pnQD7hqBrWvtqc1jkjY1i2hL6D8DqCTNM
 ADwHBwy0x5IGuvWAJgJBtkLFqjNVBn4RkdBeT+fgNbc065JK/E5gq7+k/5CFt5J/F+vtYIMdUn2
 ACgjrXNcC1mGlubZtKqKfS7JYyF+ghRRLlL+Z6JFM77knoDS0e68XGH9wa9xSSur4rV1Z0dP0tL
 fugNnQ1QTejMfr7s8TEqIJUz4LUt9vj/mQK18PmZ/rCG5KRMU5elHEmQpzMMS5Hm4pJr/qghOW5
 hLfCpdzX8hXSeBe4J1Tqbmaepw1sZH76HsiPITTMz4FMAfz1fMDewaqq7RTgZCv2owuCs19v5SO
 ekn0rEpj7GFrQARyyOJ4+BFtm1IM6NXNFoEOec6ol+AoYS3CgMjxn8f2bvBVp7/yoY+kT8yFc/b
 QPgf/DeZGqa+fiZNjmUE5h7gv50ss4MqfK4zDAjPeaMF24qClKLWvvrH45j7PiNQFpa4BTG6D69
 r39IcYnucrELGDsODIPAKsBCAxWjQvw4XF7hlU7iYYvhCdUyyJPGAA5B+oKdpKV/zsULdmpSTQY
 gCuDCRrYfZkwiknvEqG20ltxDvZ66jVSUECOq7C2J0RA5MQwN1aNdvRTV4zOUcQkj0BojlaFihE
 yL6mFKj/t21Xc+w==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_093558_555797_44F4D9D5 
X-CRM114-Status: GOOD (  12.69  )
X-Mailman-Approved-At: Sat, 15 Nov 2025 15:29:00 -0800
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Ahead of adding support for firmware driven power management, let's
allow different ways of setting the PHY speed. To that end create a
callback with a single implementation for now, that will be extended
later.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 09f122062dec87aa11804af2769ddff4964e6596..446f06b591a0b70992c7a431b56cf88c1b6718fd 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -120,6 +120,7 @@ struct qcom_ethqos {
 	struct ethqos_emac_pm_ctx pm;
 	phy_interface_t phy_mode;
 	int serdes_speed;
+	int (*set_serdes_speed)(struct qcom_ethqos *ethqos);
 
 	const struct ethqos_emac_por *por;
 	unsigned int num_por;
@@ -640,11 +641,16 @@ static int ethqos_configure_rgmii(struct qcom_ethqos *ethqos, int speed)
 	return 0;
 }
 
+static int ethqos_set_serdes_speed_phy(struct qcom_ethqos *ethqos)
+{
+	return phy_set_speed(ethqos->pm.serdes_phy, ethqos->serdes_speed);
+}
+
 static void ethqos_set_serdes_speed(struct qcom_ethqos *ethqos, int speed)
 {
 	if (ethqos->serdes_speed != speed) {
-		phy_set_speed(ethqos->pm.serdes_phy, speed);
 		ethqos->serdes_speed = speed;
+		ethqos->set_serdes_speed(ethqos);
 	}
 }
 
@@ -865,6 +871,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
 				     "Failed to get serdes phy\n");
 
+	ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
 	ethqos->serdes_speed = SPEED_1000;
 	ethqos_update_link_clk(ethqos, SPEED_1000);
 	ethqos_set_func_clk_en(ethqos);

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
