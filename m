Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9984EE77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 17:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxSJfVg2al08I1tn8SQ4egGjIVTKm9XC3WrtM5wJTAU=; b=xeIFL6s2R6jZ9K
	PaHwL38vHsbU//3CsiAn7RNDQj3WqD79YUmUVfEuhLAls+aUM1890Foi9Zf1lLwcEyBVdTflAgdZL
	Sm87aI5h+J0Q6kPaYc47SYl2xobXkEf7hn56LqZwanF65T1JpwrsdOE5S1Fz9InofTE/BmR2hFCU6
	L8NAEgkv306rEj/En8PHeoPkB9sGm0noyHii5+m6gs8UbT9DKPnyLQi/T1uCy+nBcyLb2xMWcqVEf
	1GfJs8xuY5INwGRvYj0ZZnDQJmldblJEgxQREL9ufnjbGxDdkG4DrO6rVnrcYAUzphExRsVauRlwR
	eaPNMURm1+gFlNTzFmvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL3lM-0000000CDKd-0deF;
	Tue, 10 Dec 2024 17:11:08 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL3kh-0000000CDAY-2ht1
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 17:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733850625;
	bh=O5swrGRgXY7L7+HtzQsEkzO+Z95c/1GCTlkAs6oxEew=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SW/wKDO0tnLpo1jojfF0BkUouqwgtHaKZb485qFSpXKZ1F7Hn1K462/uNWKjBcH5e
	 5XzF2pHOxeo++3An3Y/mA3uF1AoRX1LXuy6J4Ax5Q+EfRtPBAIAYVIsn8n+wJ/ZFl8
	 dAN/7kUlXmET66DCPNkxW4jk+wPMfgJ6R2MgU5z43IxfSgNofqKdweZt0o8JR2LrZ0
	 2CirWwNYdInMiHcsA+WB7mCrOSbbi8ZxSENZ35LnAX0UkCxB+d3ilBWrS6T471vXV5
	 inaDE0Rwaw/zQVIWMCjyT3dl9vXrrHohKh/v0eC8emIqEO2AfW/JLFY+bqI0ocDsCK
	 rBtb2fU+A68Zg==
Received: from jupiter.universe (dyndsl-091-248-190-127.ewe-ip-backbone.de [91.248.190.127])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 23FE717E37C2;
	Tue, 10 Dec 2024 18:10:25 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A51AA48CC3B; Tue, 10 Dec 2024 18:10:24 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 1/7] regulator: Add (devm_)of_regulator_get()
Date: Tue, 10 Dec 2024 18:06:41 +0100
Message-ID: <20241210171023.141162-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210171023.141162-1-sebastian.reichel@collabora.com>
References: <20241210171023.141162-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_091027_856585_D49E3961 
X-CRM114-Status: GOOD (  15.90  )
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

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/regulator/devres.c         | 17 +++++++++++++++++
 drivers/regulator/of_regulator.c   | 21 +++++++++++++++++++++
 include/linux/regulator/consumer.h |  6 ++++++
 3 files changed, 44 insertions(+)

diff --git a/drivers/regulator/devres.c b/drivers/regulator/devres.c
index 36164aec30e8..a3a3ccc711fc 100644
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
index 3d85762beda6..31a5bacd99b4 100644
--- a/drivers/regulator/of_regulator.c
+++ b/drivers/regulator/of_regulator.c
@@ -682,6 +682,27 @@ struct regulator *_of_regulator_get(struct device *dev, struct device_node *node
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
index 8c3c372ad735..5903ae7444ae 100644
--- a/include/linux/regulator/consumer.h
+++ b/include/linux/regulator/consumer.h
@@ -169,6 +169,12 @@ void regulator_put(struct regulator *regulator);
 void devm_regulator_put(struct regulator *regulator);
 
 #if IS_ENABLED(CONFIG_OF)
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
