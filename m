Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD168CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 16:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXSWC+9mpF4ImKhetCWXgxLT96exIJQE2P+ZG+qwyWw=; b=nG9O/NryeXUasF
	HL5k1phsFsxTxNVfa96y/WIBteMPPZIxkUdhIqVsM65HbP/RpgOG2bWziimDfdQdGgjt1AWpJ53zu
	Fmg9tBf/Vu8noyX4KzFUPpK8fRa2vO1GzgbaenOJXTqgYKt9HWDGYZsO2lz86TKGvH36YHOW4CwWx
	S4/uLuNTU9klQ9olEkmL9rdWgv5+m3a+Bst6m6+WPjbYoDpShz/fuCAyNXyz5k90rQ3y6XZF4Xsjq
	+IQDNcpOnC+4tjnJnzlzyi7lW18WTUCts8RHl3vJIkTQO8WqdFX+qAOvfgbr32dU+eKMIKwTLrpEr
	s1E7OgvI8IEb54T5qMXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWLO-000Mwh-2b;
	Thu, 19 Oct 2023 16:57:58 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWL7-000Mkg-0X;
	Thu, 19 Oct 2023 16:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697734656; bh=dULVbDj/GEZVo4kyTOnn5meTP4EtkE4Vt4bfDheFTd4=;
	h=From:To:Cc:Subject:Date:References:From;
	b=ADncXZsEaHZz3EY+QYv7iW6WzGUERPLtjKvyMT31bvA1ntrCrRdm9aVfgwZJ1CIXz
	 J8SN3AjM2utj+y/lvmJSM4+243PZ/tRX20vxCWOuqr8KWaUUQNhQq/bP7UH5dJEo7h
	 6ohN0aJOq/paq10vB0FL+ajydzNLg6CkZzzBVPh0=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v3 3/4] mfd: rk8xx: Add support for standard system-power-controller property
Date: Thu, 19 Oct 2023 18:57:25 +0200
Message-ID: <20231019165732.3818789-4-megi@xff.cz>
In-Reply-To: <20231019165732.3818789-1-megi@xff.cz>
References: <20231019165732.3818789-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_095741_987150_6B99F151 
X-CRM114-Status: UNSURE (   9.01  )
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

From: Ondrej Jirman <megi@xff.cz>

DT property rockchip,system-power-controller is now deprecated.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/mfd/rk8xx-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk8xx-core.c b/drivers/mfd/rk8xx-core.c
index 11a831e92da8..a50a181b18e9 100644
--- a/drivers/mfd/rk8xx-core.c
+++ b/drivers/mfd/rk8xx-core.c
@@ -685,7 +685,8 @@ int rk8xx_probe(struct device *dev, int variant, unsigned int irq, struct regmap
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to add MFD devices\n");
 
-	if (device_property_read_bool(dev, "rockchip,system-power-controller")) {
+	if (device_property_read_bool(dev, "rockchip,system-power-controller") ||
+	    device_property_read_bool(dev, "system-power-controller")) {
 		ret = devm_register_sys_off_handler(dev,
 				    SYS_OFF_MODE_POWER_OFF_PREPARE, SYS_OFF_PRIO_HIGH,
 				    &rk808_power_off, rk808);
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
