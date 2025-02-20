Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7CABC021B6
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgoauVJ5LHiJKjCVArBIdXZOxkFG4H8DF+ltY6RAiB4=; b=jYTuMkAWwZu6pY
	TWZKrtUHc6Xk+TkHAZ44plMaxW9edzmYCpLrDVoLCz78UN/hNHDzqUupVXxbnd6XpCBKH9hMvSbBG
	f+ApAgaA9YYYu+emHnf4MGHHDCmmavv/MdBwgPNaoerul/rjGDme+KoKUir34aU2YfZUQHt3Ty2/I
	K6CBLzeSuDdTY30ZE4CTQATq4wSVEhKwyaaz6sJANjAB+pxbZHSgzm95oDBmYSul+od6AEJGnVUdt
	xbNqfApbhP8jOztVtsKEiZ/VNWdTDg/OFBbid+3lD5r1aTF1JJc0DOh2BZEEgKmmpEClGL+Eb1ZXV
	z24e47V18/6wf0noh1JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBlZ-00000002Umo-3pAA;
	Thu, 20 Feb 2025 18:59:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBkp-00000002UaI-1rOM
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 18:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740077913;
	bh=neX9pz8NrVBBWCs56r+OznbKqOU8T6BTjd5C9qsRfvw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Dzj1XtfVYuodlo0Wezq2DXkU36FIATWbXyGwFPK4GOR3zMjNiRvEJiTyEEZcv6DRz
	 mgPL7y14RsUietPYh3AT25MM2GRscyJeQHfAErXAfGVsiAGwauhgo2vzySBXniwc3Q
	 KQ271fttx0sJeFW3SV4re1UVXUWh66c1N1QYYIaFDaPyrnBkuKO3eHU4QwzZeUiBM5
	 2srPafeXRVI3/7erSHtLrRqYqgmUk+yNiRGZ2h/fo5MXhtKS5XraDvmzXgOjwWpnI9
	 Lc9Q2qC52IrzzfxyE0zUwsitSWeX8OwrZJGwlxl6yamVjcH5Lzfmau0mxVoULoBRxa
	 RE1i11hTSqStw==
Received: from jupiter.universe (dyndsl-091-248-085-196.ewe-ip-backbone.de [91.248.85.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5BF6517E0657;
	Thu, 20 Feb 2025 19:58:33 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0BFF1480034; Thu, 20 Feb 2025 19:58:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 20 Feb 2025 19:58:04 +0100
Subject: [PATCH v6 1/8] regulator: Add (devm_)of_regulator_get()
MIME-Version: 1.0
Message-Id: <20250220-rk3588-gpu-pwr-domain-regulator-v6-1-a4f9c24e5b81@kernel.org>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
To: Mark Brown <broonie@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 =?utf-8?q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Peter Geis <pgwipeout@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Vignesh Raman <vignesh.raman@collabora.com>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4175; i=sre@kernel.org;
 h=from:subject:message-id; bh=neX9pz8NrVBBWCs56r+OznbKqOU8T6BTjd5C9qsRfvw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGe3e1jS6Lid/ajrXntWNihR+jRqKGjSk6LVY
 cPxMhO2c9oyxIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJnt3tYAAoJENju1/PI
 O/qaqJ0QAIOmAqHg1+Fv5WSR0HlvoKuZpMfQ2ZXReoXLLN544EZfNY9ZF2e0vuWCimY+SBc7VHz
 WT8iafOElGkMplCwSAWra6SPlDgG9hY1L4g4flvnIShF89XKa9ppJkeXZh+ZTUfqfW6gYYUmBlA
 0c8H1ZMpiPyfnbiFr1xwSlFIB1YM3jV38bYxKxXaCloaWykLqCWP7YReH1r+DBA5rPH3CfMb9W0
 qwzbnlZ2Pioo1xSQ2zLngMwXJEY8wNX9hPTWAXPMVPlNHA255Ha+sinASLPmKQA3Iuxv0CbrHrQ
 5oMdnO/RdJ0Sz8rgxpsbzPCupABoW5L2GawksPX3SKHLG/fUut3n0cGUc0UHrUjOFP3Jc0CEVJY
 KBhXuO8uyUfKcMqOcd+OtNcvnlN2s/MUaOE/BYKtXdnLoW4m3yqSrK8bpN8a5b2gjUew+YPJ4d/
 Cme0kaUHIFIsayexVXF27kI8zdo4TwEuy0FfpVZJbMP8qt4fiRB3itQ4bKT7et3wNxQtYirRX/5
 6ztD16YPCMeZjfBjUaDpP+JHi5uwf4shboGOzDLBJdj7D5Fq9x/wyW1bU5k25ZqcMAGI9JV0gAd
 dYoj412QkS/xIr1EYUqSnUSeuON4IhNuta51uCNwBH8hFAEUWOBLz7QL4zrPt01CqAfU2gCdTZQ
 g2CAU5ETPoNbkO2Bt6EM43Q==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_105835_807648_88321788 
X-CRM114-Status: GOOD (  16.41  )
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

The Rockchip power-domain controller also plans to make use of
per-domain regulators similar to the MediaTek power-domain controller.
Since existing DTs are missing the regulator information, the kernel
should fallback to the automatically created dummy regulator if
necessary. Thus the version without the _optional suffix is needed.

The Rockchip driver plans to use the managed version, but to be
consistent with existing code the unmanaged version is added at the
same time.

Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/regulator/devres.c         | 17 +++++++++++++++++
 drivers/regulator/of_regulator.c   | 21 +++++++++++++++++++++
 include/linux/regulator/consumer.h |  6 ++++++
 3 files changed, 44 insertions(+)

diff --git a/drivers/regulator/devres.c b/drivers/regulator/devres.c
index 36164aec30e83de70d07d59b57678b89336bc4c7..a3a3ccc711fc695aa7d3da576bacee42f7f6bc45 100644
--- a/drivers/regulator/devres.c
+++ b/drivers/regulator/devres.c
@@ -771,6 +771,23 @@ static struct regulator *_devm_of_regulator_get(struct device *dev, struct devic
 	return regulator;
 }
 
+/**
+ * devm_of_regulator_get - Resource managed of_regulator_get()
+ * @dev: device used for dev_printk() messages and resource lifetime management
+ * @node: device node for regulator "consumer"
+ * @id:  supply name or regulator ID.
+ *
+ * Managed of_regulator_get(). Regulators returned from this
+ * function are automatically regulator_put() on driver detach. See
+ * of_regulator_get() for more information.
+ */
+struct regulator *devm_of_regulator_get(struct device *dev, struct device_node *node,
+						 const char *id)
+{
+	return _devm_of_regulator_get(dev, node, id, NORMAL_GET);
+}
+EXPORT_SYMBOL_GPL(devm_of_regulator_get);
+
 /**
  * devm_of_regulator_get_optional - Resource managed of_regulator_get_optional()
  * @dev: device used for dev_printk() messages and resource lifetime management
diff --git a/drivers/regulator/of_regulator.c b/drivers/regulator/of_regulator.c
index 011088c57891b517d01daf9a5cca6497b11899be..32e88cada47a254c3b184f3d1d6d8c1dccdfcc28 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -697,6 +697,27 @@ struct regulator *_of_regulator_get(struct device *dev, struct device_node *node
 	return _regulator_get_common(r, dev, id, get_type);
 }
 
+/**
+ * of_regulator_get - get regulator via device tree lookup
+ * @dev: device used for dev_printk() messages
+ * @node: device node for regulator "consumer"
+ * @id: Supply name
+ *
+ * Return: pointer to struct regulator corresponding to the regulator producer,
+ *	   or PTR_ERR() encoded error number.
+ *
+ * This is intended for use by consumers that want to get a regulator
+ * supply directly from a device node. This will _not_ consider supply
+ * aliases. See regulator_dev_lookup().
+ */
+struct regulator *of_regulator_get(struct device *dev,
+					    struct device_node *node,
+					    const char *id)
+{
+	return _of_regulator_get(dev, node, id, NORMAL_GET);
+}
+EXPORT_SYMBOL_GPL(of_regulator_get);
+
 /**
  * of_regulator_get_optional - get optional regulator via device tree lookup
  * @dev: device used for dev_printk() messages
diff --git a/include/linux/regulator/consumer.h b/include/linux/regulator/consumer.h
index ffe912f345aea1fca7aeb2e34310c15a5739ca18..56fe2693d9b2284d04ebae50165f9aa7b1b3fee4 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -677,6 +677,12 @@ regulator_is_equal(struct regulator *reg1, struct regulator *reg2)
 #endif
 
 #if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_REGULATOR)
+struct regulator *__must_check of_regulator_get(struct device *dev,
+						struct device_node *node,
+						const char *id);
+struct regulator *__must_check devm_of_regulator_get(struct device *dev,
+						     struct device_node *node,
+						     const char *id);
 struct regulator *__must_check of_regulator_get_optional(struct device *dev,
 							 struct device_node *node,
 							 const char *id);

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
