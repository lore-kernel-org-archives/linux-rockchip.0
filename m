Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 297D4EB64DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 17:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6/KVbBBdH8IvXZyFLbThzT+tg476Wb/S2W69334RrA=; b=SZGhCWIDWJUMyW
	xa1tfXtJEJVVsA/Xt7rZiSZUkwa9WYjYXIwTap1n2i4ajPxvcfrqyAOEppzT7vea61Ltw3aXRFxFx
	1kVAL4YtpZvzQEzJmjRPjx3mlQmu6qXsaDPrIrjk+nYTh+dlKPZehfSFlL4ukwSNR5KCDIP2dfCQE
	qgzBI4e7dKkuPBDy1M3lGhwMOCLhusan5UND41FoPD0lbrlO/eH8EZAMUfVclJ7iqxQkcZtkLeDYW
	rLZeTa1Su2hWln/K8E1kxBB79sktNQNPJ//QkDQB1oXlRYOqrlnpnMWaSM9+SIHj7EyyZhppN/c5d
	fmvPAxKuambkdVU4d8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMXaT-00Bo0r-19;
	Thu, 20 Jul 2023 17:37:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMXa7-00Bnra-00;
	Thu, 20 Jul 2023 17:36:53 +0000
Received: from jupiter.universe (dyndsl-091-248-215-153.ewe-ip-backbone.de [91.248.215.153])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DC7C2660708B;
	Thu, 20 Jul 2023 18:36:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689874607;
	bh=x+aSJIr60rE8FgDa2xnKptMGufUUikneuDiI3dxwTPA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n4AMs+zAwaq0pUK8X1771cErKK7Qn8Pa9yTCbLyI0ahf6aUsHLwUrPLhfOWk59Ypq
	 Q7jkTCqIBDbKloXHLAvwxoWWBuUB9JFhH7/zA6hArPArEYUrIRf6tizPUzIutUvts3
	 jSoKyDs5y47jDLb2BtEwGez4Hq6G4uzu/889EX1KJ2XUV63ngj/3XImThTd2Nn3k6J
	 G/FYbqL880cbWlUJzH100qujbo+vSVNRZfNI1HPgYu22ya3hb6hKYz6p7JurCGTVVw
	 CCER8yzSjeifkdKyMGqgFvQ0rUAYbyLH/azEyx3MNnTu6NH78JBmhEfj7zmx97KG3w
	 s+i3j0h6psbnA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id E76EA480E65; Thu, 20 Jul 2023 19:36:44 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 2/3] usb: dwc3: add optional PHY interface clocks
Date: Thu, 20 Jul 2023 19:36:42 +0200
Message-Id: <20230720173643.69553-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230720173643.69553-1-sebastian.reichel@collabora.com>
References: <20230720173643.69553-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_103651_168941_229A4D88 
X-CRM114-Status: GOOD (  14.49  )
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

On Rockchip RK3588 one of the DWC3 cores is integrated weirdly and
requires two extra clocks to be enabled. Without these extra clocks
hot-plugging USB devices is broken.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/usb/dwc3/core.c | 26 ++++++++++++++++++++++++++
 drivers/usb/dwc3/core.h |  4 ++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index f6689b731718..0618fcc4d0af 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -817,8 +817,20 @@ static int dwc3_clk_enable(struct dwc3 *dwc)
 	if (ret)
 		goto disable_ref_clk;
 
+	ret = clk_prepare_enable(dwc->utmi_clk);
+	if (ret)
+		goto disable_susp_clk;
+
+	ret = clk_prepare_enable(dwc->pipe_clk);
+	if (ret)
+		goto disable_utmi_clk;
+
 	return 0;
 
+disable_utmi_clk:
+	clk_disable_unprepare(dwc->utmi_clk);
+disable_susp_clk:
+	clk_disable_unprepare(dwc->susp_clk);
 disable_ref_clk:
 	clk_disable_unprepare(dwc->ref_clk);
 disable_bus_clk:
@@ -828,6 +840,8 @@ static int dwc3_clk_enable(struct dwc3 *dwc)
 
 static void dwc3_clk_disable(struct dwc3 *dwc)
 {
+	clk_disable_unprepare(dwc->pipe_clk);
+	clk_disable_unprepare(dwc->utmi_clk);
 	clk_disable_unprepare(dwc->susp_clk);
 	clk_disable_unprepare(dwc->ref_clk);
 	clk_disable_unprepare(dwc->bus_clk);
@@ -1764,6 +1778,18 @@ static int dwc3_get_clocks(struct dwc3 *dwc)
 		}
 	}
 
+	dwc->utmi_clk = devm_clk_get_optional(dev, "utmi");
+	if (IS_ERR(dwc->utmi_clk)) {
+		return dev_err_probe(dev, PTR_ERR(dwc->utmi_clk),
+				"could not get utmi clock\n");
+	}
+
+	dwc->pipe_clk = devm_clk_get_optional(dev, "pipe");
+	if (IS_ERR(dwc->pipe_clk)) {
+		return dev_err_probe(dev, PTR_ERR(dwc->pipe_clk),
+				"could not get pipe clock\n");
+	}
+
 	return 0;
 }
 
diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
index 8b1295e4dcdd..fa49a87025cf 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -994,6 +994,8 @@ struct dwc3_scratchpad_array {
  * @bus_clk: clock for accessing the registers
  * @ref_clk: reference clock
  * @susp_clk: clock used when the SS phy is in low power (S3) state
+ * @utmi_clk: clock used for USB2 PHY communication
+ * @pipe_clk: clock used for USB3 PHY communication
  * @reset: reset control
  * @regs: base address for our registers
  * @regs_size: address space size
@@ -1159,6 +1161,8 @@ struct dwc3 {
 	struct clk		*bus_clk;
 	struct clk		*ref_clk;
 	struct clk		*susp_clk;
+	struct clk		*utmi_clk;
+	struct clk		*pipe_clk;
 
 	struct reset_control	*reset;
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
