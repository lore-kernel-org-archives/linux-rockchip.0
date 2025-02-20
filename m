Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43895C021B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20RClbNBKmxFgfLSIwLAXRIOB57lZbKXk3SYRuznGkI=; b=R2sXKAzFQBy8ab
	/YDKWlJWXwujS555nKbCQXzVGleHVkVn3S8CYijr1H8kcMpg9j5gKlpRgf7gtYQuxdjo9m7xksMAS
	n9QAJOjsngUzR8AxDpztOhfIcNQH2DURo/iy8C6xjEvJWlD6VDYgGDKmPvu37etietWe+ITcwk9za
	NWXB9dxdi+jCmM3hv517WA6rqZMQK1/SqxfxbxeW8jDCSrA+z8YlB6WUDQ5D6DMgEFIYlCdrf+W59
	gixpP6wOldDObQaKaqH+GgEWkRHktNiYwY4W/pE4pHIoEhW5OF6TnRK9NQ2G1QskcMNyJCyIsg7yI
	Bv7DEJ0dTJh9gYgumptg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBla-00000002Uo3-3nw6;
	Thu, 20 Feb 2025 18:59:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBks-00000002UcS-0BMb
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 18:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740077913;
	bh=gNnZPfQXVKbdkjA8KmghaCar55X1o4WqguMKY2lNPdA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FalHM5N7yj1ph+ic2Rt+KPGx9VMJcPPptj8SV/2nbRdMjq2qq4hxeCK123RBU5cAQ
	 N8yD2i+MQkIYKg+Z2CG2vWyOvybzmaMrzntH4V6ai5zPBRSAA3Chgqr9uM4t+5acWX
	 nMlK2wuElp5ThP0pzWPgnXfxeQsmZMwuxl/Az5VI/TXOU708MdZZkiLrP2kTVYFAGB
	 MWWR6PusEozyuaO7kSHnq/vdG5sPr+ZAB4WUG1wkVL5kduQuAofOiUGhBo2ZERvghf
	 RyywJrkbswOwpua08JMoAaBj8+EEq1/+kobdfQI9E5b7fYAJE3CSlXy7+EbCzaKqOt
	 8rg9iHPaP6dgg==
Received: from jupiter.universe (dyndsl-091-248-085-196.ewe-ip-backbone.de [91.248.85.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BB17017E1573;
	Thu, 20 Feb 2025 19:58:33 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 11E0D48003D; Thu, 20 Feb 2025 19:58:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 20 Feb 2025 19:58:09 +0100
Subject: [PATCH v6 6/8] dt-bindings: power: rockchip: add regulator support
MIME-Version: 1.0
Message-Id: <20250220-rk3588-gpu-pwr-domain-regulator-v6-6-a4f9c24e5b81@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1565; i=sre@kernel.org;
 h=from:subject:message-id; bh=gNnZPfQXVKbdkjA8KmghaCar55X1o4WqguMKY2lNPdA=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGe3e1jhrocIPKlDYN5gJd0DLM1HYnT+lpJjI
 B6f+HIyiXGbl4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJnt3tYAAoJENju1/PI
 O/qahK0QAJ+gRjWLsQBmQ8CDRKD/2gFPon5Mi78UX6H0qkbavrw5m5e9T4UGw4JYnke3jZrZk9w
 V1cv5zigz6nZ1Inc+dTMzNEGTW5MXr2su0Mf70vi2Hjc+Xju+ON3KK8F9iVBC1cpsMV/Qke9AMs
 OyUbg7/yjiXjs3TbpHIFQVK7k6nXt7bfvCZLKvQV0ujjLyVcdQlzGeA1kg3TrQXPXFrrPlAnnu2
 SH7u/8jtSIWczcWxf69MUDV/KwQIm7LmrCRnc1NLFEVJApYA//hPKaBumo2jxb7+7ipKAXv0FNr
 G6/VgzopETqgbKXNGsxALJ17X9el6Cvd0rzsuqRy1PrDzICQymdu0eWge73OLeoSy6xAu1Oc7b6
 3ZnwI7fy4hJuC+m8j3ObpE7qR4jn/HE16W0LqRjOZUrjmKyT+ZQ9BJkHOoRdzDEFJhnDa2EHZ+k
 ALw0b43wZr6pnL3w2SG2McoH7Hu+uoRRKT59qNIPmgjTuOgBfJhznNfJrw6a53vEzu8LuJxOPIK
 BWB3BqlGFMrYVh0e8tAZTxt9D4ej664MSPAjx84m+8B5qPE/PmGOzqE1qrVSMKrCrFd/QPo0J+h
 /wQAA56O3GPVOS0rCUClfpSmqf0zvTvHwKChKn1U4Xa6r7ogUdW43E1+b7cGFCCQ3CEN/xQH/gu
 Jo9/kvrHL6rxaFLGBlaQ3bg==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_105838_257733_FF8EB78A 
X-CRM114-Status: GOOD (  12.36  )
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

Add optional support for a voltage supply required to enable a
power domain. The binding follows the way it is handled by the
Mediatek binding to keep things consistent.

This will initially be used by the RK3588 GPU power domain, which
fails to be enabled when the GPU regulator is not enabled. It is
not limited to that platform, since older generations have similar
requirements. They worked around this by marking the regulators
as always-on instead of describing the dependency.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 650dc0aae6f518578f57e8ec4335bc8251b736a7..ebab98987e492d64fff9977848fd8942ed96c4b9 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -132,6 +132,9 @@ $defs:
           A number of phandles to clocks that need to be enabled
           while power domain switches state.
 
+      domain-supply:
+        description: domain regulator supply.
+
       pm_qos:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         items:

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
