Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2816BC001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 10:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jtNm1KnD0H3VihrcJQPdIFJy4xo0nhXzCyO/ifc95O0=; b=hriUr9zukElO8e
	AEx4kaL6739PKnqX0H6xdiWhsDscC20eXeQC46O5sA7AaePGW8Y8fnCTLD6dUlTnYUPqNVEAdU5hb
	MinCSsJDZBSTOMSIovmq/jeKZlXviyzhkg5PSDCLZhIjjaQl/omyBf7VkLYj9oLgvENohuxEMWaL3
	V73GC4CZF/hHq12mJ6OoRzf3/+c6MYkrzDbZatLOpGtGwWB61n3sT+IdL/+aKUymn6GQs3ehI5Eph
	w4qnEL/8C4fi610pGXpiWBzH8m3XdhVlp4i9tX6ok3DfmHvlggmKD6wWWZBEvGAXgA3Hc5ACfgOvp
	4DdtTIkBCFpf+f0JmfpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNsyS-003qgp-1G;
	Mon, 24 Jul 2023 10:39:32 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNsyG-003qZ8-2r;
	Mon, 24 Jul 2023 10:39:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690195160; x=1721731160;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/kATrrWVYVgcfj/srzQQkHMxx2dvHMHic6hEFaMECqg=;
  b=HstfJg4oUlipcEkeDtXaLsmZPEFfYQBmOthGIB/1i1tKtlbUtrOOIjU1
   LNyUBRm3d5jlS88VlGKkKmu0kZJ0GGcsjQCW28hrOKDMr4s7NT5haWMi0
   KaMdjOPq8W6jAOtG9Xe+oCiF6b+Dmg8e6mNwYxIPKL2wVlz6rx/QkjEqo
   y09YNbQf+94D2nQ94VitWCXFay1c1lJH4ENJOWHTDgYDiIjiuevJg/JrV
   g3FuhHTAjE9GhCFwU1R16VFNgCdIRIYfFd0NXeIlN3PX1smZraL4E9u86
   jhbqE796URStJo0X1cD5OG2+jI5nJBeEcEFpVIdMGiQhTOTppf9PsLZgf
   g==;
X-IronPort-AV: E=Sophos;i="6.01,228,1684792800"; 
   d="scan'208";a="32078481"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 Jul 2023 12:39:17 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DAEBC280078;
	Mon, 24 Jul 2023 12:39:16 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	=?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/6] extcon-usb-gpio YAML conversion
Date: Mon, 24 Jul 2023 12:39:07 +0200
Message-Id: <20230724103914.1779027-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_033921_308246_04BCF676 
X-CRM114-Status: GOOD (  12.76  )
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

Hi,

after some misunderstanding on my side, sorry for that and the noise, v4
series now includes now all the changes for the bindings and DT in
individual patches.
I've transferred the R-b and A-b tags to the individual patches in the
arch/arm64 patches. Only to specific patches, e.g. mediatek, if sent with
#mediatek inidicator, to all patches otherwise. arch/arm has still yet to
receive feedback.

Changes in v4:
* Put bindings and DT changes back into a single series
* Split patches per SoC family

Best regards,
Alexander

Alexander Stein (6):
  dt-bindings: extcon-usb-gpio: convert to DT schema format
  ARM: dts: ti/omap: Replace deprecated extcon-usb-gpio
    id-gpio/vbus-gpio properties
  ARM: dts: nxp/imx: Replace deprecated extcon-usb-gpio
    id-gpio/vbus-gpio properties
  arm64: dts: freescale: Replace deprecated extcon-usb-gpio
    id-gpio/vbus-gpio properties
  arm64: dts: mediatek: Replace deprecated extcon-usb-gpio
    id-gpio/vbus-gpio properties
  arm64: dts: qcom: Replace deprecated extcon-usb-gpio id-gpio/vbus-gpio
    properties

 .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
 .../bindings/extcon/extcon-usb-gpio.yaml      | 51 +++++++++++++++++++
 .../arm/boot/dts/nxp/imx/imx6qdl-colibri.dtsi |  2 +-
 arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi   |  2 +-
 arch/arm/boot/dts/ti/omap/am571x-idk.dts      |  4 +-
 .../boot/dts/ti/omap/am5729-beagleboneai.dts  |  2 +-
 .../boot/dts/ti/omap/am572x-idk-common.dtsi   |  4 +-
 .../arm/boot/dts/ti/omap/dra7-evm-common.dtsi |  4 +-
 arch/arm/boot/dts/ti/omap/dra71-evm.dts       |  4 +-
 .../boot/dts/ti/omap/dra72-evm-common.dtsi    |  4 +-
 arch/arm/boot/dts/ti/omap/dra76-evm.dts       |  4 +-
 .../boot/dts/freescale/imx8mp-msc-sm2s.dtsi   |  2 +-
 .../dts/freescale/imx8mq-tqma8mq-mba8mx.dts   |  2 +-
 arch/arm64/boot/dts/mediatek/mt2712-evb.dts   |  4 +-
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts   |  2 +-
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts      |  2 +-
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts   |  4 +-
 .../boot/dts/qcom/msm8916-acer-a1-724.dts     |  2 +-
 .../boot/dts/qcom/msm8916-alcatel-idol347.dts |  2 +-
 .../boot/dts/qcom/msm8916-gplus-fl8005a.dts   |  2 +-
 .../arm64/boot/dts/qcom/msm8916-huawei-g7.dts |  2 +-
 .../boot/dts/qcom/msm8916-longcheer-l8910.dts |  2 +-
 .../dts/qcom/msm8916-wingtech-wt88047.dts     |  2 +-
 .../qcom/msm8939-sony-xperia-kanuti-tulip.dts |  2 +-
 .../qcom/msm8996-sony-xperia-tone-dora.dts    |  2 +-
 .../dts/qcom/msm8996-sony-xperia-tone.dtsi    |  2 +-
 .../boot/dts/qcom/msm8998-fxtec-pro1.dts      |  2 +-
 .../dts/qcom/msm8998-sony-xperia-yoshino.dtsi |  4 +-
 .../boot/dts/qcom/sda660-inforce-ifc6560.dts  |  2 +-
 .../dts/qcom/sdm630-sony-xperia-nile.dtsi     |  2 +-
 .../boot/dts/qcom/sdm660-xiaomi-lavender.dts  |  2 +-
 .../qcom/sm6125-sony-xperia-seine-pdx201.dts  |  2 +-
 .../dts/qcom/sm6125-xiaomi-laurel-sprout.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |  2 +-
 34 files changed, 92 insertions(+), 62 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
