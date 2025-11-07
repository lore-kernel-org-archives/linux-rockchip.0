Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE64BCEBF8A
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 23:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5G+dOzxat1zdkpaRLLZ2UZJl1Li0Ow06b/5nszgKl7g=; b=sA+sz9ZrOeyDhA
	h0lbqFz55WkTc+IIsWFqoj7ZNQfJfb+JhvumFfP14X89gFs2h6WUdUr1OtqDRVlfu2fnautcoIOVo
	CDI25t/PsPFKMMoG0I7zkC/k0JOx5gPSpUS/2Gca2gJyqhVGn4BxxGTD8Ua8s5hg7rkxYq2sNIXE+
	V0nj1D1yySO34cLVMIA2xhYSiDgThhv3p6aMknu4NYqOgmPpYYbFm9mCdbBh8K5bNHZxFCGqo+Gg0
	dsE8YUqCJYhOOgLSPvEfS7+hWMR9/HKndMQyCp3kOoDpfNWLKCc9uZmjonaIylz1o5sslwsg2rok0
	3PI9pJNE3TMsk1I7XMJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKPhX-0000000ECA4-3DvL;
	Sat, 15 Nov 2025 23:29:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHJkR-0000000H5mz-2lHs
	for linux-rockchip@bombadil.infradead.org;
	Fri, 07 Nov 2025 10:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=EeInQQFLiIKx9a2aZ0cucvmhXeQc/nRxrd1ryoO5rZk=; b=Y1KV1ZG2FHGMmMB9P/z288jHWa
	aEcl0EWe9UrIWW5xpTzsPxJ5l6qgiRRAA0SnRRfVCEXoVxuMNRs1SNFgZmTWposGyIDdpG9d/4jtw
	phWvGEh5j8xLTAPMY+rw4HRkYK4NFUUd17A+T8Uj+BSe6yc4sHMshQ/xYrtVqjtKcbiCKqvNDC+2/
	Pd+uxftnGEJHp3KGv9PjvC87N+uiz6Ishfejbf+rzlbPLXOypQEmDkkfwr/iisupYkGG5EMifTIyB
	RcQGNMxA3pP6jUtd+uBPLzVB1VtCHIjegvpJt2553TXJSEdSO2dA4YF2fG1LBdrjDwTikP7gmIzf8
	RnwCBohA==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHIsg-00000006BQr-30ir
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 09:35:45 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-429bccca1e8so311766f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 02:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762511409; x=1763116209; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EeInQQFLiIKx9a2aZ0cucvmhXeQc/nRxrd1ryoO5rZk=;
        b=xVPCHV15rl6Y4S4jmjgXXhoONYFVNfidGMYKhvPfGVNgL6Sji6NfuSWWmD/WLnRoKe
         diJDcIHZVx7Xyzd6Nl2eamKjDD0tA60kQrtblLSYyTpRDSvJKcMw7bFjMWC4IjaP+1UR
         H9V5ZiY7D6Z1aJbR3IYEsvXujAe//eAKI6S8pnUs5aQ9gBpW9O8Lu86PlOP3FYiFQg0K
         uneLgAUc5VwckjRCGGsBbD4blGtPB50VwYucd3VxFhwsJt5Py3fsnjv+2HXEPTZWvkEZ
         eWyTiwK1DbhHh0GPU3NdIUXyG/uit9dPjFAeCeC92G0JT5I/YQy+Qr3UZKDPS4U7giBY
         bpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762511409; x=1763116209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EeInQQFLiIKx9a2aZ0cucvmhXeQc/nRxrd1ryoO5rZk=;
        b=ZJC5ADnbRNW5J9i4bo4LBDyjUkJ1x63P70qei6n8S48VR1niLTCMfItv4qf6m6qp0E
         YbIAvydduOyjGe/M9gWprZ7vWnxvxjbGzaHS6HP6eGuNm75TKIZRQjyGfAysBU4QH2r4
         YvvxRqUrUkr8GMx1nG0SsTeAQcIkadEvxmIVB9PvMBOzVbKAHlbeiXfDLgHxylfp1F/z
         kJ3cHMqxKbd/aAr8PtScIJWrporOWRTDgcjjNQbX7r16dk683yxAOr2eaMwddBxcJC1G
         klIJU59tQhE2sg5HYDwjS2Ox/otaPIiiq9ys4PZe4KPXpL0aJhwmeA9Kymlwuwh6MdfY
         10Kw==
X-Forwarded-Encrypted: i=1; AJvYcCWCxRPJv4506rhsXKvN2yVwGaoXf20/9/0XeG3Vnnev+5EaqBT5wt6uOS2RXubJWZm6TWAYtIGyTJaKZs4xvA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzqEQcPY6KxdYjOVXlovpmaRSYstE1xs0iMZH7UWdii00zwaStH
	BsZYSIPDK4KjtKYiIpA7lIQUzbOtzmXKjlP5BAs2axavZbCBJaWOdermyH01Cr9gr04=
X-Gm-Gg: ASbGncvST6U1vquTwWmwqdURIJWQHeFhNLRwO7u4krbVJ6wIqdPZh1MeN4V2dvCOnvy
	y8YdY8zfJ2y9l+rOONoXHLYSMpghmUEYOfGigT94q2qODRhtdcTAsuSGn2PkEK6Pe5f2UzhE0ST
	2ldTqIn0EzC9Yvd4JiZH3iAhQUEoTDburkUq9LtjNpKIvhUnfegPzjKlQvZbRzeNtevGamPVEmd
	nyZTK6lPXBSnzy/R7K8p5pCknTVc5rVtKjqjDEUTUs4kRkt7N/sbVLCGTZWR6F6GiSfaJq0eYND
	PwyrljSe+tdtOzSYHsRxUL/0J9jXLXlVxPj5v7RceNuUh5WdF5eLWnrpFqUeVCXQHd8ZgF1/vfE
	8EbuRzup06+j0kbL9o0jkLOCLydw9PDgyU4i++24vac5wyz5S0PZQXL9uhzF/AywWwEcTavZOKy
	es94s=
X-Google-Smtp-Source: AGHT+IFWpZ4poiZ9SDXbV8ON2MHdizseFiZAt8VOLHhvPsXxDGeYll4+fwCN9jkQCS4Zle5ZwgVqIg==
X-Received: by 2002:a05:6000:4285:b0:429:c774:dc08 with SMTP id ffacd0b85a97d-42ae5aebaf5mr2437383f8f.53.1762511409391;
        Fri, 07 Nov 2025 02:30:09 -0800 (PST)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:fb6d:2ee:af61:f551])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac67920fcsm4414864f8f.39.2025.11.07.02.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 02:30:08 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 07 Nov 2025 11:29:52 +0100
Subject: [PATCH v5 2/8] net: stmmac: qcom-ethqos: use generic device
 properties
MIME-Version: 1.0
Message-Id: <20251107-qcom-sa8255p-emac-v5-2-01d3e3aaf388@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2896;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=POv+vDF2xSPchjLMqtdcREByAr5wVSRC/4xfmqCj4bM=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBpDcon0J86/ZOn2V7ZnaixLSQbUE+OOX0GyGHbN
 J0IncBZa6SJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaQ3KJwAKCRARpy6gFHHX
 ciIrEADVzOpNMnNgNcWPwGlAIVMHEpqCfHtBeXPJvQn07MHtxYl3U9LGnzv620nVLy60nQXmdAj
 pl3ZH62GP+XUvTaa+j/Z2gCKkYsYElWtU+zFXoq3HYslfFES+CnYlKKCUmQophJ5kf0OtQCt7fO
 5abxCLdbNTLSvsEW8oVYqioJeULR4+HfOiPNUiahqO/7PrqApBkNAhtmqdbVH+Y/EeNbiYnOCf2
 ZE6sCBDEzpxLPiYAwB0GUT6G6dzFKvCnBMKGLQ8w7g0Y2Ir6rZD+Un4BWa0CNrGKvNHwo5xO8bo
 nGfuSWFYUqibed/x5q6cbRcrqIv4AmIJq3gc7On4l7G7nPtxCppRhvhSChUmt0Gwl3nU7ag+EdT
 9+tJ2dVjWe5HNxZ6uYIO5iCQkTDt3zHGuEI7sIwGGyMuQUb7feOaRdvBOk3Uzk12VujF7tf0KFh
 b+OPkxYIl6dR2V2vM6Iltg5uvz1odCEojGxY4X1ssONLOPT4Io72HgrU4Ic0feuQA8hwoch6sR/
 FRi9jKn6EJVxMvcjNsmigzOuuZ657/JCBDLfzmcsTY+k/jtVm8lTErQTHQN+xZDKdPke/55kcro
 7TpPf1P6vZKDWhTuWJQrIlPA/9Y2Tcn9d3fifuHIRnt/DqPTlrMScJeQkcUIZjtMw0xYQmGCR4I
 ViImRD8T6UC/KGg==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_093543_155165_9FB2ED4C 
X-CRM114-Status: GOOD (  14.42  )
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

In order to drop the dependency on CONFIG_OF, convert all device property
getters from OF-specific to generic device properties and stop pulling
in any linux/of.h symbols.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/net/ethernet/stmicro/stmmac/Kconfig             | 2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/Kconfig b/drivers/net/ethernet/stmicro/stmmac/Kconfig
index 87c5bea6c2a243f3be998b2c3935bc1dc23bfe22..22d0eaab35eaffac0bca58f8625ecc5c955b6631 100644
--- a/drivers/net/ethernet/stmicro/stmmac/Kconfig
+++ b/drivers/net/ethernet/stmicro/stmmac/Kconfig
@@ -135,7 +135,7 @@ config DWMAC_MESON
 config DWMAC_QCOM_ETHQOS
 	tristate "Qualcomm ETHQOS support"
 	default ARCH_QCOM
-	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on ARCH_QCOM || COMPILE_TEST
 	help
 	  Support for the Qualcomm ETHQOS core.
 
diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 1a616a71c36ace29a74a0aa23fc8173443aa49a5..8578a2df8cf0d1d8808bcf7e7b57c93eb14c87db 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -1,8 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-19, Linaro Limited
 
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of.h>
 #include <linux/of_net.h>
 #include <linux/platform_device.h>
 #include <linux/phy.h>
@@ -748,7 +748,6 @@ static void ethqos_ptp_clk_freq_config(struct stmmac_priv *priv)
 
 static int qcom_ethqos_probe(struct platform_device *pdev)
 {
-	struct device_node *np = pdev->dev.of_node;
 	const struct ethqos_emac_driver_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
@@ -799,7 +798,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 
 	ethqos->mac_base = stmmac_res.addr;
 
-	data = of_device_get_match_data(dev);
+	data = device_get_match_data(dev);
 	ethqos->por = data->por;
 	ethqos->num_por = data->num_por;
 	ethqos->rgmii_config_loopback_en = data->rgmii_config_loopback_en;
@@ -836,9 +835,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 	if (ethqos->has_emac_ge_3)
 		plat_dat->dwmac4_addrs = &data->dwmac4_addrs;
 	plat_dat->pmt = 1;
-	if (of_property_read_bool(np, "snps,tso"))
+	if (device_property_present(dev, "snps,tso"))
 		plat_dat->flags |= STMMAC_FLAG_TSO_EN;
-	if (of_device_is_compatible(np, "qcom,qcs404-ethqos"))
+	if (device_is_compatible(dev, "qcom,qcs404-ethqos"))
 		plat_dat->flags |= STMMAC_FLAG_RX_CLK_RUNS_IN_LPI;
 	if (data->dma_addr_width)
 		plat_dat->host_dma_width = data->dma_addr_width;

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
