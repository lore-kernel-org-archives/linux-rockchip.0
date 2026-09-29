Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41840CA5FAD
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 10:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=017V4SL54PynHh6skCoyiXDk70vcBw4oDQK2WfMmdUU=; b=rX2GfYRfLVH/7H
	CXm1xanyVVEbIHk9Ni0PLWYIiJgWwdVD2J5Ji7Zrf7RgV0TOt45bx/yLiVN8SCLJ3Dnd+Cz1mXjRB
	jNGzevcST9Q22cgzVJS+vedIXEgezjwDoNsVCbAkIhaLrEEZqUM8s2zkwAiMCdvj93kYB7S0Chhva
	Aq53pESisDfR+YF7RxQ3otTLVXoCq46+FcQLCWqe+4KVeBoyEORxnXjHhul4MLhleGicXx+d/Mx75
	V4o3a1RqJBJqw5j83pfWYvbrIbjj8B5CY3KDSaFwK5F1myel2GkL0N0KN3bIijx6/5vAVpSEuX/3i
	Rw+lnbsdNe4w0zChKGKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4q-00000003A5S-3tXv;
	Tue, 29 Sep 2026 10:28:48 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV4k-00000003A0h-42iq
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 10:28:44 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-4a00d8bec5aso4462045e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 03:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790677721; x=1791282521; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rGvPl8En9vQFk7BFZDJEBDExAfjn0FzJiGJJ7lWPWO8=;
        b=FRyFvKfY1XuJZNKfIQ+R8Q6k8kSpNvWcQN1WtSkKZtXZmN8ARHGyhWF+7CwQ9/WVdZ
         05QU9bOssNj070yxJB13jfRwYaiA+iuX0vxUIOnJcDcknhU8zZF8QZWQVfFsRL/jQ/k7
         CeW1ov5NjSn5Vd3HYHjGfV+bByHoGLXPbJj4UJdNWsyY9pIVZplUlfTLa1o+80XISWto
         HqcnQvD3x86J9H2xkoeihsChW7+DcM/RyDAruuv5LXiwEzzC20FKMIiI+XJic3zWXitZ
         8wwp5fGvfzKCa8FpJBq36eo5XtqzrUppgRlYKgrV4pa8l6DHvGoaOddKcNudV2d706v+
         SgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790677721; x=1791282521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rGvPl8En9vQFk7BFZDJEBDExAfjn0FzJiGJJ7lWPWO8=;
        b=z0OkcEYDEKa8ruqmoTmdQnkA948Ar27WvSxzFbS5WB3afTqq7V8P0BVZBFHcvbd5wV
         gR6L9C4uYFERSQ4+bVtec6yniv5+bmrIZbi75qdl08PaGI3iIkvDGk80397+lsnG95Zo
         QR6adRayL4AUACXD3kilqBh9tBTuG8NyFk0s7Ng2I6a3OxLLB3VLjTpC+huFP+Lr+Pac
         E42u+ssisW+2OnZ13TfeIqr8wEaxygrwD2Si60ypZZ/LEIxEExXKgqH81qiTaB+HY9I5
         X65367plxpMQuIMqFfP9JI7Ic9AXIc56v1uXiYb+ddeEvGuEu5i1n1DxizKgrE9H+sI0
         BHrQ==
X-Forwarded-Encrypted: i=1; AKwUvBybj+IbUOr4GzUMjrQAGXnl9iFkzgGrfIkNpj+g88oCRpIQ0CxgTV9SUQLJCND/s13riSRsf+vup3MA7dtNxg==@lists.infradead.org
X-Gm-Message-State: AFuF++mKGu0L57RFKvGw5TvFJlmb81//EXNqX0HBsBNusHwUTssfd9ir
	kOTLthFfguwyg9tFei+ruZZweCCSvfJh4F9JR9Bcz//5/r6ja3KILJrh2rqU0pISA1k=
X-Gm-Gg: AYBFou2ZAKeYnQm4hEwlBwPuNXo9ksrct57Au33NftQG9EZAjXqbMHxI53cLP5DoevP
	uKK6Yex3MICc6ImZ66y+q9kCuYRAF5TPjr3ncKAbTw3pVpItDRXK2Co1gdEKDDN8fuyv0if+UBF
	M6dHHk+TyYsfOi5DcI1sLTwW6MAXt1UaKz0phXKLgwBUNcxKlAAoppuS1/Sdy8ryiEfuZy3mosH
	F6ZUNCXwDHX+1vhhVfgDbT8ohx/TJS+RMNpqwoaGnAsidhEnfUwPSOzqeSQUHAdiHIet7rV8o8G
	SYTgLgmWsyus3mzERh8YDogOXZydesVBiTEn5+KUPODp/0sWYU/lwgwl9BFHeZesa4Ole+Aeynj
	t9nuPMu7BqVh3AzsDZ0UFh16PdjOX0p2P0a6jmhmFa+Hhlr4THC8/rTuntmDOoii6GMTUzGni68
	jJkN7dYZX4TPD5m3X4URvojaKCtl/NtLnDgM8MOOQIFNDOfMN9YWA+uV2f8PUiQc9doUDsWfYcF
	AoN0X5+ovSWh5QMSw==
X-Received: by 2002:a05:600c:4fc9:b0:4a0:37d:9e21 with SMTP id 5b1f17b1804b1-4a0037da3c1mr96548565e9.29.1790677721312;
        Tue, 29 Sep 2026 03:28:41 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a00cfb479asm66579305e9.15.2026.09.29.03.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 03:28:41 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 29 Sep 2026 14:28:20 +0400
Subject: [PATCH v2 3/5] power: reset: syscon-reboot-mode: enable supplies
 for the next stage
MIME-Version: 1.0
Message-Id: <20260929-b4-rk3576-reboot-mode-v2-3-5a34ca72065a@flipper.net>
References: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
In-Reply-To: <20260929-b4-rk3576-reboot-mode-v2-0-5a34ca72065a@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sre@kernel.org>
Cc: Alexey Charkov <alchark@flipper.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4101; i=alchark@flipper.net;
 h=from:subject:message-id; bh=5ADyit8Ijsc5TQdkw96Oigh6pxYDNfJpvW/Ssz5MCwE=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtnnRR7eaco/P+HJ1ifNh4tcP6XSrCzSVz2xfYiq+2U
 l2f4PR7QcdEFgYxLgZLMUWWud+W2E414pu1y8PjK8wcViaQIdIiDQxAwMLAl5uYV2qkY6Rnqm2o
 Z2ikY6xjxMDFKQBTvTGRkeGoj11uZuRb4QuXDK9NCzNw8bj+45Sxrf3X7VeNbjMsWfmM4b+3ztk
 vQSceHTN9e2i2duqkxByDpXMqCv/JGJrtmf74iA47AA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_032843_051533_EC1AB29E 
X-CRM114-Status: GOOD (  22.38  )
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

Requesting a boot mode on some SoCs such as the Rockchip RK3576 hands the
request to the boot ROM in a register that a full reset would clear, so
any reset that carries it has to leave the PMIC untouched. This means that
the regulators stay in whichever power state the running OS left them,
which may be unsuitable for the early boot code. E.g. on RK3576 the DDR
initialization blob runs on the way back and accesses registers which
Linux normally leaves powered down, resulting in an unrecoverable abort.

Get every supply named in the reboot mode node and enable it when a mode
is written, which is when a mode is being requested. The supplies are
deliberately left enabled afterwards: the system is on its way down, and
what runs next cannot turn them on.

Signed-off-by: Alexey Charkov <alchark@flipper.net>

------

Current implementation of of_regulator_bulk_get_all() never writes the
supply names, instead leaving them uninitialized, while the regulator
core uses the field in error paths to provide meaningful error messages
to the user. This has been highlighted by Sashiko on v1, and is addressed
separately in [1]

[1] https://lore.kernel.org/all/20260929-regulator-get-all-v1-1-e887c66a47f1@flipper.net/
---
 drivers/power/reset/syscon-reboot-mode.c | 41 ++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index e0772c9f70f7..5ef882d81816 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -10,6 +10,8 @@
 #include <linux/platform_device.h>
 #include <linux/reboot.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/slab.h>
 #include <linux/mfd/syscon.h>
 #include <linux/reboot-mode.h>
 
@@ -18,6 +20,8 @@ struct syscon_reboot_mode {
 	struct reboot_mode_driver reboot;
 	u32 offset;
 	u32 mask;
+	struct regulator_bulk_data *supplies;
+	int num_supplies;
 };
 
 static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
@@ -28,6 +32,20 @@ static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
 
 	syscon_rbm = container_of(reboot, struct syscon_reboot_mode, reboot);
 
+	/*
+	 * Whatever acts on the mode (e.g. boot ROM) runs before the operating
+	 * system, and may need supplies that the running system had powered
+	 * down. Enable them here, and deliberately leave them enabled: the
+	 * system is on its way down, and what runs next may not know how to
+	 * turn them on.
+	 */
+	if (syscon_rbm->num_supplies) {
+		ret = regulator_bulk_enable(syscon_rbm->num_supplies,
+					    syscon_rbm->supplies);
+		if (ret < 0)
+			dev_err(reboot->dev, "enabling reboot mode supplies failed\n");
+	}
+
 	ret = regmap_update_bits(syscon_rbm->map, syscon_rbm->offset,
 				 syscon_rbm->mask, magic);
 	if (ret < 0)
@@ -36,6 +54,14 @@ static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
 	return ret;
 }
 
+static void syscon_reboot_mode_put_supplies(void *data)
+{
+	struct syscon_reboot_mode *syscon_rbm = data;
+
+	regulator_bulk_free(syscon_rbm->num_supplies, syscon_rbm->supplies);
+	kfree(syscon_rbm->supplies);
+}
+
 static int syscon_reboot_mode_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -59,6 +85,21 @@ static int syscon_reboot_mode_probe(struct platform_device *pdev)
 
 	of_property_read_u32(pdev->dev.of_node, "mask", &syscon_rbm->mask);
 
+	ret = of_regulator_bulk_get_all(&pdev->dev, pdev->dev.of_node,
+					&syscon_rbm->supplies);
+	if (ret < 0)
+		return dev_err_probe(&pdev->dev, ret,
+				     "can't get reboot mode supplies\n");
+
+	syscon_rbm->num_supplies = ret;
+	if (syscon_rbm->num_supplies) {
+		ret = devm_add_action_or_reset(&pdev->dev,
+					       syscon_reboot_mode_put_supplies,
+					       syscon_rbm);
+		if (ret)
+			return ret;
+	}
+
 	ret = devm_reboot_mode_register(&pdev->dev, &syscon_rbm->reboot);
 	if (ret)
 		dev_err(&pdev->dev, "can't register reboot mode\n");

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
