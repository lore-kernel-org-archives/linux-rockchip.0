Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17719606AD24
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dZXT0FRI;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=E8700Ufn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maBHzehjDWrRtaeMgUtuI08JjrTOHHEI7VGxWr8fQoY=; b=dZXT0FRIrA6JZo
	y51HDerfYpH3SwMrTaGJTH6l9XF17wE1MHI1lAe8AfZLcYK7X2GOoAjILiauhJGOgEsTfcUElnESo
	ptL+G52IxwtVMPmFYB3gTvnoei14zA3wr8zGUTO9JBEZG+//6+3S5ocElrSYyaDGpi9fBJq7DT3sD
	gZl+8mCJTK2wyDhdHOeoguNGhtAeTNQTRwAT4Ck6XErPAUEb+8YllZ2mOjdj1vDSIEvL8xGxZDshh
	rZWxGnFxbvidotHXTF0BNVFn/xdItkpWYm9Z7+fyIs470bHyRO+WNX1XUmYSIcAni2HCVSE5qUWj+
	ez7yLr3neEXGglfrYweA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYwC-0000000CNN6-3Wf8;
	Wed, 21 Oct 2026 16:13:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvm-0000000CMhU-34E9;
	Wed, 21 Oct 2026 16:12:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 58C43440A5;
	Wed, 21 Oct 2026 16:12:46 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599166;
	b=KFhBo3V+JEf3O1Urw/N08kS4XL2R9hgz0YoQWMILJOBhMKclxEhzj0a2FWzFSJ3v6KP2
	 /jeuHg3Oy+PSxykI1Yy9rGGd4+P7Uk91NVgPdR9dmgY12H84CzHnLCUP2sJ4rx7H/eXhD
	 ytxOlGUZxgcvt1veka3eZ/MykPVI/wVov+x1aZyBpiyAopXFes+2/tb9cNt5UGRYTqIiD
	 Gh1i1XjAY/KlFPL0AXVoYsxC/EiPWOTGWCh6lEo8kjdCK59oEQjwwmGXXVFoIT2qqZfqo
	 34d5iqTIW6JmeheY5DSQjk/QuvfiSuy6RVwTmIeHTnOlY02ULa6T8pOG+1wBwiQTA6w==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599166;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=zkfqLadcVW45KsD7pwMyAPMYqlzB4N5YtGEGlXjDb2w=;
	b=ap5qyH4hD8HDvi4XRTvZQpdeiNAX24mmufgZfEZGMGUJONlnGeLCmrv8c5iA4CLopbsU
	 ozgS2QmHsa4K1+N36KLqK41Td+Qn5PgjXn/DpSnTH6aRi1xDbpFppfN7oqoOIyXtClNiH
	 PZ3C0trcfQt54eYrgoxVaNRx/qVdIiCc6dDwXkdqgUFpL57sOywlgI0oQz1t9s28xyjTf
	 uik95H0F0fpXqqtUzPqX9YQZ7DoELf8lgtoRBv8dIkziarsUHv0G0SCUvnsDG5hPBXoB2
	 QRpsGQmTsvE8v9yVdxsl5mExnlMwzm7gRFGDTVBoMHRXMiLVgS/DUh5yPyn/cOC6fVw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 7C3321F0282A;
	Wed, 21 Oct 2026 16:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599166;
	bh=zkfqLadcVW45KsD7pwMyAPMYqlzB4N5YtGEGlXjDb2w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=E8700UfnXSl2NeHbEw8x+/59snVmK5jG4KY22+BvoTR7Faek8IDhj8fkRAggvSqbB
	 MGZ3CJyjhr09Km8cz4Nj7e8ScyKdfIzKXzRuP0zgEOL2NQHEkYivkzUzkG6m5e5HgX
	 rB8tgO+uSHp69ZvNp5hYF4RA4BcoDyqtKPd//m0Ir/wSvk3W3oVBaWEzRZ/PiRHOh7
	 aFjPH67pgWZIf34sKHX6k9fOCnX1dnMc10gPu1WfkxbKJRMtCbJ5bHyvQIj8AQk0/z
	 OrA9IAAse8F9IqvU58ztijb9zk41kDfkEmyPq0PYOLSTwHOWif44xgapD1s/bktMtM
	 afbOAVRKLRXgQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id C7A6B433FB;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:20 +0800
Subject: [PATCH 23/27] usb: dwc3: Configure RK3572 PIPE port before
 discovery
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-23-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=2530;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=h5W+2vCeTnJq9csdidWq+DAD3u6T94cfAIF4kAYsWso=;
 b=JgKhkQkYYvj1vSafR0hKio8ahXnc0hk8CyRtyjQdwxIIZQYev4aN+8zACYBJOUlMgSQpvu3SB
 SOO/YLIkEiWDyGdl3tkSvR9xQJXkTc4rP1GaSxaHL42QX07bWlQbOdt
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

Firmware may leave the USB3 PIPE port disabled, causing DWC3 to discover
only USB2. Configure the port before reading controller capabilities.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 drivers/usb/dwc3/dwc3-generic-plat.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-generic-plat.c b/drivers/usb/dwc3/dwc3-generic-plat.c
index ca69ac0eb07ce..11e71fc76be1a 100644
--- a/drivers/usb/dwc3/dwc3-generic-plat.c
+++ b/drivers/usb/dwc3/dwc3-generic-plat.c
@@ -22,6 +22,10 @@
 #define EIC7700_HSP_AXI_LP_XM_CSYSREQ	BIT(0)
 #define EIC7700_HSP_AXI_LP_XS_CSYSREQ	BIT(16)
 
+#define RK3572_PIPE_USB3		0x1100
+#define RK3572_PIPE_USB2_ONLY		0x0189
+#define RK3572_PIPE_WRITE_MASK		GENMASK(31, 16)
+
 struct dwc3_generic {
 	struct device		*dev;
 	struct dwc3		dwc;
@@ -85,6 +89,27 @@ static int dwc3_spacemit_k1_init(struct dwc3_generic *dwc3g)
 	return 0;
 }
 
+static int dwc3_rk3572_init(struct dwc3_generic *dwc3g)
+{
+	struct device *dev = dwc3g->dev;
+	enum usb_device_speed speed = usb_get_maximum_speed(dev);
+	struct regmap *grf;
+	u32 offset, value = RK3572_PIPE_USB2_ONLY;
+
+	grf = syscon_regmap_lookup_by_phandle_args(dev->of_node, "rockchip,grf",
+						   1, &offset);
+	if (IS_ERR(grf))
+		return dev_err_probe(dev, PTR_ERR(grf), "failed to get PHP GRF\n");
+
+	if (device_property_match_string(dev, "phy-names", "usb3-phy") >= 0 &&
+	    speed != USB_SPEED_LOW && speed != USB_SPEED_FULL &&
+	    speed != USB_SPEED_HIGH)
+		value = RK3572_PIPE_USB3;
+
+	/* Configure the PIPE port before the core reads its port count. */
+	return regmap_write(grf, offset, RK3572_PIPE_WRITE_MASK | value);
+}
+
 static int dwc3_generic_probe(struct platform_device *pdev)
 {
 	const struct dwc3_generic_config *plat_config;
@@ -231,11 +256,17 @@ static const struct dwc3_generic_config eic7700_dwc3 =  {
 	.properties = DWC3_DEFAULT_PROPERTIES,
 };
 
+static const struct dwc3_generic_config rk3572_dwc3 = {
+	.init = dwc3_rk3572_init,
+	.properties = DWC3_DEFAULT_PROPERTIES,
+};
+
 static const struct of_device_id dwc3_generic_of_match[] = {
 	{ .compatible = "spacemit,k1-dwc3", &spacemit_k1_dwc3},
 	{ .compatible = "spacemit,k3-dwc3", },
 	{ .compatible = "fsl,ls1028a-dwc3", &fsl_ls1028_dwc3},
 	{ .compatible = "eswin,eic7700-dwc3", &eic7700_dwc3},
+	{ .compatible = "rockchip,rk3572-dwc3", &rk3572_dwc3 },
 	{ .compatible = "starfive,jhb100-dwc3", },
 	{ /* sentinel */ }
 };

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
