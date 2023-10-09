Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B0B0CD6112
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 17:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTEFwixeN0C85jJ+E49wzVhb+9vyf3iKkp9gAahU4bI=; b=Ls+jb3Yqsy1ps1
	e5xZ5DhyKtTvOvlaYK6YfumL4RaKEhtb/tq0Ql96aXFaxwRWZTU/26D/0m0eCn+5TL0igk5YISrtZ
	YVjXw4xOkpbNshP7l2PlwUlbQ5NHAj8VEKRi65OH0xmU79XuZbnUrbm4NtblB0iMUmqAKhFr+OJ2M
	aJJu9SRgnW+8W5Jw8d3wenaLc0PL1BmPxUdxQKvbA8n+23IVM2G0lFxh2eJ4W73f5RPr2d9+gNlxJ
	bMXa9LY9PwOFUCxbZA4nfdflTctZEM6eFd3Zwfj9qqW73XpIvzVbCs6FMe2doUde4ufBMadmANoy8
	dM77Kd80hfjJt/liYgEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwx-00BHFZ-1X;
	Mon, 09 Oct 2023 17:21:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qptwo-00BH7i-1v;
	Mon, 09 Oct 2023 17:21:42 +0000
Received: from jupiter.universe (dyndsl-091-248-211-168.ewe-ip-backbone.de [91.248.211.168])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 64A3D6605957;
	Mon,  9 Oct 2023 18:21:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696872093;
	bh=s7FE/b1fcBNIH4A6hktCDg2vLgbpSRvBVa0VKAg76eM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EDVCim5fvMuwaOLLTG2Qd/qLN0+mZ6XWoBb52i4pzBAQYwe1usAtZv93PcLC3tI3Z
	 /4xk6mWxuvfezwp1T0nE/YSu0oH/fzMqvDHfxqezzDsriPusOsYxyI3sCExIkBIJ11
	 bfASep9RBk9rCQnIPDjK8xewAxLWGWTEKZO2AxTE5gTcufkeafGZ3kMOsPGwoM3NlV
	 +umN/CkcsQGte+9iMXapph8U7VAvFIg47kVItQInB3VORPjNq2nKEDkK8SPIb6aPE7
	 gsV/ja/0S1YKniUdNBeqOy+rE5U2Jf3wBv0ds8jMG7He8oBLs/2yDVe8Xtuz2kMiN0
	 dXfXUs1k2Rxqg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1E591480104; Mon,  9 Oct 2023 19:21:31 +0200 (CEST)
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
Subject: [PATCH v3 2/3] usb: dwc3: add optional PHY interface clocks
Date: Mon,  9 Oct 2023 19:20:10 +0200
Message-ID: <20231009172129.43568-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009172129.43568-1-sebastian.reichel@collabora.com>
References: <20231009172129.43568-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_102138_790045_D5F4B0D8 
X-CRM114-Status: GOOD (  14.44  )
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
index 9c6bf054f15d..fc60d5f564dd 100644
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
@@ -1748,6 +1762,18 @@ static int dwc3_get_clocks(struct dwc3 *dwc)
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
index a69ac67d89fe..f5e6ae6e394e 100644
--- a/drivers/usb/dwc3/core.h
+++ b/drivers/usb/dwc3/core.h
@@ -991,6 +991,8 @@ struct dwc3_scratchpad_array {
  * @bus_clk: clock for accessing the registers
  * @ref_clk: reference clock
  * @susp_clk: clock used when the SS phy is in low power (S3) state
+ * @utmi_clk: clock used for USB2 PHY communication
+ * @pipe_clk: clock used for USB3 PHY communication
  * @reset: reset control
  * @regs: base address for our registers
  * @regs_size: address space size
@@ -1156,6 +1158,8 @@ struct dwc3 {
 	struct clk		*bus_clk;
 	struct clk		*ref_clk;
 	struct clk		*susp_clk;
+	struct clk		*utmi_clk;
+	struct clk		*pipe_clk;
 
 	struct reset_control	*reset;
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
