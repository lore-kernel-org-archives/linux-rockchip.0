Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 446BFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 00:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZVqnHSfIjS4d4p1rsPnmUdSyfMcBaKnzvANV1GXR80=; b=Wqzx86hEjQVbD+
	5SHLZ5+xdPqBUlaDghiZYe6GvdfnZ9ErUrK7yAhEOR0QXRENzIZdLjRebsSXoF2dBEnY8AgKV7c9w
	B69jL30Uyojq2YZTWhUqHvoaHGuYKDxSc5f4Rc9ggij//tbZnVEAFvtoLTBYDrSX/zlPXfkVqDlaE
	K5B8fhwvqRAk81HKHzdtzWVXzoQCuOEdOmbyikA94yh4V8BmMkDy9SqXG8vfz3N1hkHW5xzgZyoZ5
	CM7761eKCJVSfB2Oy/Rb1zZODhtd02PmlwLKSn64E4hgVPs0jvOVTsbsJD1BrlDXhVtDyU5uhrvrs
	CmuDPutnX0ezw6ExQwXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYddF-006trk-B0; Mon, 28 Mar 2022 00:53:17 +0000
Received: from proxmox1.postmarketos.org ([213.239.216.189])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYdcZ-006tcQ-NR; Mon, 28 Mar 2022 00:52:37 +0000
Received: from localhost.localdomain
 (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net [81.96.50.79])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by proxmox1.postmarketos.org (Postfix) with ESMTPSA id E46AA140193;
 Mon, 28 Mar 2022 00:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
 s=donut; t=1648428629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CuEcPDB+AlpLfXTqAeWfzXqofQSTcIxpMeVQrjaG4Nk=;
 b=CeL2JT/7rrhCyZeiu6hxNT/c/FpFJCMWOh7V/0uP6zoUQRmcQ2p4+tjczMM49dpdvaRnjW
 2jrWHgYS/bhHVE09b/DHO6AYRO2+C0WYxvhFvAJBsqGhENrvThvD6TouD+oGLqadGDvG4A
 RjursQ4ABdzsZ/liMBNriWXQwHG6Aws=
From: Caleb Connolly <kc@postmarketos.org>
To: Caleb Connolly <kc@postmarketos.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, martijn@brixit.nl,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH 2/4] pinctrl/rockchip: support setting input-enable param
Date: Mon, 28 Mar 2022 01:50:03 +0100
Message-Id: <20220328005005.72492-3-kc@postmarketos.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328005005.72492-1-kc@postmarketos.org>
References: <20220328005005.72492-1-kc@postmarketos.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_175235_950500_50602F4D 
X-CRM114-Status: GOOD (  13.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Handle the PIN_CONFIG_INPUT_ENABLE param for configuring GPIOs as input.

Signed-off-by: Caleb Connolly <kc@postmarketos.org>
---
 drivers/pinctrl/pinctrl-rockchip.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d54fc1cdf609..9d50d9756bb9 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2129,7 +2129,7 @@ static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 		param = pinconf_to_config_param(configs[i]);
 		arg = pinconf_to_config_argument(configs[i]);
 
-		if (param == (PIN_CONFIG_OUTPUT | PIN_CONFIG_INPUT_ENABLE)) {
+		if (param == PIN_CONFIG_OUTPUT || param == PIN_CONFIG_INPUT_ENABLE) {
 			/*
 			 * Check for gpio driver not being probed yet.
 			 * The lock makes sure that either gpio-probe has completed
@@ -2181,6 +2181,16 @@ static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
 			if (rc)
 				return rc;
 			break;
+		case PIN_CONFIG_INPUT_ENABLE:
+			rc = rockchip_set_mux(bank, pin - bank->pin_base,
+					      RK_FUNC_GPIO);
+			if (rc != RK_FUNC_GPIO)
+				return -EINVAL;
+
+			rc = gpio->direction_input(gpio, pin - bank->pin_base);
+			if (rc)
+				return rc;
+			break;
 		case PIN_CONFIG_DRIVE_STRENGTH:
 			/* rk3288 is the first with per-pin drive-strength */
 			if (!info->ctrl->drv_calc_reg)
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
