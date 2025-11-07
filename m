Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B48C6CEBF96
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYu05u6nPCO0FxwmxF6i4U/5m2b5bYv5+0bxlmKKFBs=; b=q7kZffpK1KdAr3
	jYatArr7UPEKnpjj90kDlmUOTYHx9kwqE5pITiEtcpgZCUK44j2jRLXgKv28dr9mzjAekBwT93zV5
	dCBuAc8D7a7MFDWh+h+RXpFi2FLry+yrGPhgEME0D8ljJiEyWO+5JEjesLHXWDhvcnORgcOdys95d
	3Z9EPPZZ9dKYfkbkVn1wQfixipc/emm7sv4gfBK3jBnnwYi8sD8Btf88T7ekm9/8iYvyi3FQWGTtw
	alyir3kyODX7OvAf12+qdVCCQr1WLDLqDGD10xQf4PlZ4hFJzI6woEKZxberoiEY/6IrzqkytYteg
	ptNvWiDDrlHJLi0l0pdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhX-0000000EC9f-1jv1;
	Sat, 15 Nov 2025 23:29:03 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHJji-0000000H5ML-1Pg9
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 10:30:31 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-429b9b6ce96so377236f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 02:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762511429; x=1763116229; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RYc8z4PcZ9T49QURApQLtXvrbC8JQdZPwHKl+MXpn3g=;
        b=NHfua5JkK8kesXDCCHOCDTNq3mGirviBl0aLdrawBQz7VJBSdL4YiJGJnDHmgnBumP
         ewgfeyWeUJBLj0JIaJatos4gz7O3xyfiFI85RrUnHIYPPS5p76Nu2guNpx+vvppnBm+2
         Vfb7hnt5iVD3o7qPH9h3LqR3rs5Rjr+SHOvNAAfIRcm7vl9CM/iUWkc+X3zQtwCFXDul
         na7Zj/e6YV9glhq9rQAeMGCPK4eWpr8YIHtF4O+h/wFbfQY1qb9TeqQpgGabDj2UCGnt
         amC4Hden6a1enMJEvXukPvtZ9f6nL51wDktcaUJDX7MwicWgqTrdnVEYbflh2zgisWR/
         pCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762511429; x=1763116229;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RYc8z4PcZ9T49QURApQLtXvrbC8JQdZPwHKl+MXpn3g=;
        b=hLo/yzkeYuch+9N9uisNywl/EDxlk0EO5jFrgnvjZAZSoGq8PtN8xDyxCpyoAwnMsn
         fmn3QFU57kDkWeKf7evl3MpQHJ4xSPnh/7gB0JhB9Sz/QC2bWCy4w5Ev801ZAo0LQoJP
         2zCBvfphKDii3LycOVFsxk8cnHWOobOCpXaYSaUhguun9Utim+Cfnayb2CIhl7+s38VI
         1XAKMFH6YflcFvMY1gS6BAH63Om3c6Grek4E+IlgJXAMNhzG7oTsLwQAefUDvDGqdcAY
         69FBWhFLuTEvqKR2exPCWPxcKASpuppSfm9ynY0KYOiOLLJ3tVHp6pyfLa1FPgMHueV+
         619w==
X-Forwarded-Encrypted: i=1; AJvYcCWMrn8ynMa5MqdmcTZzeTfO3qFvIbgV5NAGZKmhRoL2sdM1br99tFkgEstm62AV5wLpZ6pYMgzZD6pM98Rz0w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6w6a77mFBd9Sd40eSfwrDDeGEKMwfHc+YIYabVFzFz/SqT3ug
	J+cqhO27VBbSN+potdjRUC3jpvP7c7FGx/Px7bOibZNwyGRScVnnk81AFnrhXJXtxTk=
X-Gm-Gg: ASbGncsUGO/xsTgrx3IFyZ+9RvDyCZ/yTrXd418HkjDT0/2+do/UB3x9Thy11S0+I22
	sTfylQzyUPoVKwJgEfuqUTl5DAgGWOIi/uhtspqbs/J7qqjKGJQfeHp5CqSBuFlwlMC+9dEfCMI
	vd99aZWRrjbqoWeLHn7VXbzPkHUvohceLuv7so5dtjj6EBE1h2rGjT3n+lfu79krRHCxYndl039
	dtnzbSB/JTXb60ZmxqLBGNkjzcdiZtwffQVuXtzk+E6juW1JYOBJbbm7RR/oNiIigtiyYLMtmi8
	ukM0imAd4oLH3daLeA/r5UtTBzDf7Xn+rLQI2s1Ms63dZakVpJDSjORQPRsc8lKLknCcTWKztMq
	xG2G8TAYKKvSuIxS9UiH1MRPCSiTwh7RQGvRU7iiRrZZSsSY1nGnlT6MMxjQD7YkmP2FLmXokvL
	nNHDw=
X-Google-Smtp-Source: AGHT+IGHCdQ9ajnapOScJWZI+KsV/LX03TDZWK0O4DLpH0QpQ4fGpY024AasxrZPhFPuAZR31n7vFQ==
X-Received: by 2002:a05:6000:4186:b0:429:ce0c:e661 with SMTP id ffacd0b85a97d-42aefb487b9mr1867191f8f.54.1762511428533;
        Fri, 07 Nov 2025 02:30:28 -0800 (PST)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:fb6d:2ee:af61:f551])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac67920fcsm4414864f8f.39.2025.11.07.02.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 02:30:27 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 07 Nov 2025 11:29:58 +0100
Subject: [PATCH v5 8/8] net: stmmac: qcom-ethqos: add support for sa8255p
MIME-Version: 1.0
Message-Id: <20251107-qcom-sa8255p-emac-v5-8-01d3e3aaf388@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=10753;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=kH82UvTkPA4Owu7n7V2nTB+oPAmR25mANNr93utn74g=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBpDcop7+3hvenxQNRjRvOmmTd+iqFzdV6nL4Oub
 NDvJyoOv76JAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaQ3KKQAKCRARpy6gFHHX
 ckwWD/0TXAVqi9cGf/WOk/BynMq44/rEgm1KTtiNNIRCwnrtS8SZuLgo0yTdkjaZw5ggF+3old4
 kqrCiTZbUzMqDKjaJohXVHo7GQr1RtJq94Oz41XCKDWpl8sGDHWHDyj1yia/PlG8k8x+2cwxX2i
 WHqX2YYlcoiau9cqXzsRCDODADlcP8rG0OgAwpzymdUUK43VIWsUjuJna3pYWnRUvDz/QS75ZwR
 Otw3IL/6ogvgoIHAQ3GhNOgtA2D9W7L4oTRBw6LhUb7FvH0ZWK18YETU9npttujGMAY/s5LGkxf
 JhoxusvgXg0E15V1AUOGDEqYEKWDtBvNWVNId9ZIdLI0E+gyDiPyg9LAiu2uBjL8pMF3yWUj7VQ
 sNYctNoqv2sMkYzPAnQzJwb34HZgQcQkuGIEgVGA0ZHoPJo+PuNl0lJXNPTMjn0xfjZl1pMjwOW
 s5tR2wpOIevc3AX6VWA9fx4lpqXNRqE1qXm2qtV3rQc8T214o9f3yRUV0LUwpCczn8KvoUSn+3z
 YZCVyOxQgRKt97wpfFeiR/KEdTx1OYrVtZomoqSLE1Abh+muMj6TocN6iejJgz1lT4ol9ZqYPpo
 mE7c/m5suZYi40YO+NhugpJSOixK5NuP+eSLVDgdv3nlKefNRxKX0jwEHmp+runydMD/40g0BE+
 sVd2POP+HK9E3uQ==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_023030_553703_47A19053 
X-CRM114-Status: GOOD (  23.45  )
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

Extend the driver to support a new model - sa8255p. Unlike the
previously supported variants, this one's power management is done in
the firmware using SCMI. This is modeled in linux using power domains so
add support for them.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c    | 230 ++++++++++++++++++---
 1 file changed, 201 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 446f06b591a0b70992c7a431b56cf88c1b6718fd..d2922b4fb4bad1bb8dd77f1feaa7a260b97f0ae8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -7,6 +7,8 @@
 #include <linux/platform_device.h>
 #include <linux/phy.h>
 #include <linux/phy/phy.h>
+#include <linux/pm_opp.h>
+#include <linux/pm_domain.h>
 
 #include "stmmac.h"
 #include "stmmac_platform.h"
@@ -81,6 +83,13 @@
 
 #define SGMII_10M_RX_CLK_DVDR			0x31
 
+enum ethqos_pd_selector {
+	ETHQOS_PD_CORE = 0,
+	ETHQOS_PD_MDIO,
+	ETHQOS_PD_SERDES,
+	ETHQOS_NUM_PDS,
+};
+
 struct ethqos_emac_por {
 	unsigned int offset;
 	unsigned int value;
@@ -98,6 +107,9 @@ struct ethqos_emac_driver_data {
 
 struct ethqos_emac_pm_data {
 	const char *link_clk_name;
+	bool use_domains;
+	struct dev_pm_domain_attach_data pd;
+	unsigned int clk_ptp_rate;
 };
 
 struct ethqos_emac_match_data {
@@ -111,13 +123,20 @@ struct ethqos_emac_pm_ctx {
 	struct phy *serdes_phy;
 };
 
+struct ethqos_emac_pd_ctx {
+	struct dev_pm_domain_list *pd_list;
+};
+
 struct qcom_ethqos {
 	struct platform_device *pdev;
 	void __iomem *rgmii_base;
 	void __iomem *mac_base;
 	int (*configure_func)(struct qcom_ethqos *ethqos, int speed);
 
-	struct ethqos_emac_pm_ctx pm;
+	union {
+		struct ethqos_emac_pm_ctx pm;
+		struct ethqos_emac_pd_ctx pd;
+	};
 	phy_interface_t phy_mode;
 	int serdes_speed;
 	int (*set_serdes_speed)(struct qcom_ethqos *ethqos);
@@ -330,6 +349,25 @@ static const struct ethqos_emac_match_data emac_sa8775p_data = {
 	.pm_data = &emac_sa8775p_pm_data,
 };
 
+static const char * const emac_sa8255p_pd_names[] = {
+	"core", "mdio", "serdes"
+};
+
+static const struct ethqos_emac_pm_data emac_sa8255p_pm_data = {
+	.pd = {
+		.pd_flags = PD_FLAG_NO_DEV_LINK,
+		.pd_names = emac_sa8255p_pd_names,
+		.num_pd_names = ETHQOS_NUM_PDS,
+	},
+	.use_domains = true,
+	.clk_ptp_rate = 230400000,
+};
+
+static const struct ethqos_emac_match_data emac_sa8255p_data = {
+	.drv_data = &emac_v4_0_0_data,
+	.pm_data = &emac_sa8255p_pm_data,
+};
+
 static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -411,6 +449,28 @@ static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
 	return 0;
 }
 
+static int qcom_ethqos_domain_on(struct qcom_ethqos *ethqos,
+				 enum ethqos_pd_selector sel)
+{
+	struct device *dev = ethqos->pd.pd_list->pd_devs[sel];
+	int ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret < 0)
+		dev_err(&ethqos->pdev->dev,
+			"Failed to enable the power domain for %s\n",
+			dev_name(dev));
+	return ret;
+}
+
+static void qcom_ethqos_domain_off(struct qcom_ethqos *ethqos,
+				   enum ethqos_pd_selector sel)
+{
+	struct device *dev = ethqos->pd.pd_list->pd_devs[sel];
+
+	pm_runtime_put_sync(dev);
+}
+
 static int ethqos_rgmii_macro_init(struct qcom_ethqos *ethqos, int speed)
 {
 	struct device *dev = &ethqos->pdev->dev;
@@ -646,6 +706,13 @@ static int ethqos_set_serdes_speed_phy(struct qcom_ethqos *ethqos)
 	return phy_set_speed(ethqos->pm.serdes_phy, ethqos->serdes_speed);
 }
 
+static int ethqos_set_serdes_speed_pd(struct qcom_ethqos *ethqos)
+{
+	struct device *dev = ethqos->pd.pd_list->pd_devs[ETHQOS_PD_SERDES];
+
+	return dev_pm_opp_set_level(dev, ethqos->serdes_speed);
+}
+
 static void ethqos_set_serdes_speed(struct qcom_ethqos *ethqos, int speed)
 {
 	if (ethqos->serdes_speed != speed) {
@@ -737,6 +804,27 @@ static void qcom_ethqos_serdes_powerdown(struct net_device *ndev, void *priv)
 	phy_exit(ethqos->pm.serdes_phy);
 }
 
+static int qcom_ethqos_pd_serdes_powerup(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	struct device *dev = ethqos->pd.pd_list->pd_devs[ETHQOS_PD_SERDES];
+	int ret;
+
+	ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_SERDES);
+	if (ret < 0)
+		return ret;
+
+	return dev_pm_opp_set_level(dev, ethqos->serdes_speed);
+}
+
+static void qcom_ethqos_pd_serdes_powerdown(struct net_device *ndev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+
+	/* TODO set level */
+	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_SERDES);
+}
+
 static int ethqos_clks_config(void *priv, bool enabled)
 {
 	struct qcom_ethqos *ethqos = priv;
@@ -769,6 +857,61 @@ static void ethqos_clks_disable(void *data)
 	ethqos_clks_config(ethqos, false);
 }
 
+static int ethqos_pd_clks_config(void *priv, bool enabled)
+{
+	struct qcom_ethqos *ethqos = priv;
+	int ret = 0;
+
+	if (enabled) {
+		ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_MDIO);
+		if (ret < 0) {
+			dev_err(&ethqos->pdev->dev,
+				"Failed to enable the MDIO power domain\n");
+			return ret;
+		}
+
+		ethqos_set_func_clk_en(ethqos);
+	} else {
+		qcom_ethqos_domain_off(ethqos, ETHQOS_PD_MDIO);
+	}
+
+	return ret;
+}
+
+static int qcom_ethqos_pd_init(struct platform_device *pdev, void *priv)
+{
+	struct qcom_ethqos *ethqos = priv;
+	int ret;
+
+	/*
+	 * Enable functional clock to prevent DMA reset after timeout due
+	 * to no PHY clock being enabled after the hardware block has been
+	 * power cycled. The actual configuration will be adjusted once
+	 * ethqos_fix_mac_speed() is called.
+	 */
+	ethqos_set_func_clk_en(ethqos);
+
+	ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_CORE);
+	if (ret)
+		return ret;
+
+	ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_MDIO);
+	if (ret) {
+		qcom_ethqos_domain_off(ethqos, ETHQOS_PD_CORE);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void qcom_ethqos_pd_exit(struct platform_device *pdev, void *data)
+{
+	struct qcom_ethqos *ethqos = data;
+
+	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_MDIO);
+	qcom_ethqos_domain_off(ethqos, ETHQOS_PD_CORE);
+}
+
 static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 {
 	struct plat_stmmacenet_data *plat_dat = priv->plat;
@@ -809,8 +952,6 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 				     "dt configuration failed\n");
 	}
 
-	plat_dat->clks_config = ethqos_clks_config;
-
 	ethqos = devm_kzalloc(dev, sizeof(*ethqos), GFP_KERNEL);
 	if (!ethqos)
 		return -ENOMEM;
@@ -852,28 +993,63 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	ethqos->rgmii_config_loopback_en = drv_data->rgmii_config_loopback_en;
 	ethqos->has_emac_ge_3 = drv_data->has_emac_ge_3;
 	ethqos->needs_sgmii_loopback = drv_data->needs_sgmii_loopback;
-
-	ethqos->pm.link_clk = devm_clk_get(dev, clk_name);
-	if (IS_ERR(ethqos->pm.link_clk))
-		return dev_err_probe(dev, PTR_ERR(ethqos->pm.link_clk),
-				     "Failed to get link_clk\n");
-
-	ret = ethqos_clks_config(ethqos, true);
-	if (ret)
-		return ret;
-
-	ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
-	if (ret)
-		return ret;
-
-	ethqos->pm.serdes_phy = devm_phy_optional_get(dev, "serdes");
-	if (IS_ERR(ethqos->pm.serdes_phy))
-		return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
-				     "Failed to get serdes phy\n");
-
-	ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
 	ethqos->serdes_speed = SPEED_1000;
-	ethqos_update_link_clk(ethqos, SPEED_1000);
+
+	if (pm_data && pm_data->use_domains) {
+		ethqos->set_serdes_speed = ethqos_set_serdes_speed_pd;
+
+		ret = devm_pm_domain_attach_list(dev, &pm_data->pd,
+						 &ethqos->pd.pd_list);
+		if (ret < 0)
+			return dev_err_probe(dev, ret, "Failed to attach power domains\n");
+
+		plat_dat->clks_config = ethqos_pd_clks_config;
+		plat_dat->serdes_powerup = qcom_ethqos_pd_serdes_powerup;
+		plat_dat->serdes_powerdown = qcom_ethqos_pd_serdes_powerdown;
+		plat_dat->exit = qcom_ethqos_pd_exit;
+		plat_dat->init = qcom_ethqos_pd_init;
+		plat_dat->clk_ptp_rate = pm_data->clk_ptp_rate;
+
+		ret = qcom_ethqos_pd_init(pdev, ethqos);
+		if (ret)
+			return ret;
+
+		ret = qcom_ethqos_domain_on(ethqos, ETHQOS_PD_SERDES);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "Failed to enable the serdes power domain\n");
+	} else {
+		ethqos->set_serdes_speed = ethqos_set_serdes_speed_phy;
+
+		ethqos->pm.link_clk = devm_clk_get(dev, clk_name);
+		if (IS_ERR(ethqos->pm.link_clk))
+			return dev_err_probe(dev, PTR_ERR(ethqos->pm.link_clk),
+					     "Failed to get link_clk\n");
+
+		ret = ethqos_clks_config(ethqos, true);
+		if (ret)
+			return ret;
+
+		ret = devm_add_action_or_reset(dev, ethqos_clks_disable, ethqos);
+		if (ret)
+			return ret;
+
+		ethqos->pm.serdes_phy = devm_phy_optional_get(dev, "serdes");
+		if (IS_ERR(ethqos->pm.serdes_phy))
+			return dev_err_probe(dev, PTR_ERR(ethqos->pm.serdes_phy),
+					     "Failed to get serdes phy\n");
+
+		ethqos_update_link_clk(ethqos, SPEED_1000);
+
+		plat_dat->clks_config = ethqos_clks_config;
+		plat_dat->ptp_clk_freq_config = ethqos_ptp_clk_freq_config;
+
+		if (ethqos->pm.serdes_phy) {
+			plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
+			plat_dat->serdes_powerdown  = qcom_ethqos_serdes_powerdown;
+		}
+	}
+
 	ethqos_set_func_clk_en(ethqos);
 
 	plat_dat->bsp_priv = ethqos;
@@ -891,11 +1067,6 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (drv_data->dma_addr_width)
 		plat_dat->host_dma_width = drv_data->dma_addr_width;
 
-	if (ethqos->pm.serdes_phy) {
-		plat_dat->serdes_powerup = qcom_ethqos_serdes_powerup;
-		plat_dat->serdes_powerdown  = qcom_ethqos_serdes_powerdown;
-	}
-
 	/* Enable TSO on queue0 and enable TBS on rest of the queues */
 	for (i = 1; i < plat_dat->tx_queues_to_use; i++)
 		plat_dat->tx_queues_cfg[i].tbs_en = 1;
@@ -905,6 +1076,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 static const struct of_device_id qcom_ethqos_match[] = {
 	{ .compatible = "qcom,qcs404-ethqos", .data = &emac_qcs404_data},
+	{ .compatible = "qcom,sa8255p-ethqos", .data = &emac_sa8255p_data},
 	{ .compatible = "qcom,sa8775p-ethqos", .data = &emac_sa8775p_data},
 	{ .compatible = "qcom,sc8280xp-ethqos", .data = &emac_sc8280xp_data},
 	{ .compatible = "qcom,sm8150-ethqos", .data = &emac_sm8150_data},

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
