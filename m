Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA2C2C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 08:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKzFib3klh42moGUWmp6ls9oTIlA2zQAflpQ+ZWqiSI=; b=MxLHjs84p5ihkK
	ulkqCotImcSo5CoYlpgBNl5Qzd8+pnu3h0+lcWRpxgzxJNBdHh37xTx0V6VnytvrQRQebko0wJziK
	iwQ5chEi5yY5bPPxZ0IPWjaoXiGSO8aMRsUATVJ6vRvUqNr6J+g3fEqQRjXvCJsF7F6jP6cZ98UHF
	1j1Q3RD+SGKSnCXWoxOaHya+MNgisWX5bbtQTg1pqZZaKOlyGmCQptP587Jmij4O6v4lk2wOXq7wi
	Syi4UK1tLOiGweB3StzAOxEAIwbNiDhF5igtjSVRUcWUrI+M2Q8RJqbhvNTjA3VwKvZw6quCk6xT3
	NVTpUUtLqZK9VfrX9ObA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp08I-00000007ICU-3qAj;
	Wed, 29 Jul 2026 08:59:22 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp08D-00000007I9j-3WBo
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 08:59:19 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2cc7e86e7aeso8138615ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 01:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785315557; x=1785920357; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=W0mAGXLrJyheCU14v4jnS6X+vXD7nWsPLwYJFNKEwyU=;
        b=tGmS4Erp2RMj0G2F9M1jRq+XdFVhh6sLpclbVqHSaoTE++0cd4+Vszv7dbf33Ti8oA
         VkepAKcOJEI0uhY2kz9qfTd9qofh7fjz1BzdpwTCladAnaHAMHLkuSG4eP2zMFRYG2AC
         YBa5XaI7YhGD1AUlXbASVlr+AVq2HUMkoTeSj8eo/HMnnuvJXvVUBXF220f/PizHWqX2
         /meJL5yFhfazAegDsoEv8S1CFHjMbfGQNei6dK6N/vEBQmLobDRC+9oMURHOQj0tHHJG
         /+GiHOmJwVYFVO7ntETfE62f3bztskduFgZhQxLt5/d3+XRLiARIPsagqLh6/H2yLFpe
         +63A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785315557; x=1785920357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=W0mAGXLrJyheCU14v4jnS6X+vXD7nWsPLwYJFNKEwyU=;
        b=lzhLY0anuBlQ08aYYBFuHjJBEQMFVvpSFwO/z63ZSahhZDPqnjM5Y4LGJChvIfPBrW
         zAP+bNCXSOmrZ5B0SSYZbClR/qgOZ6jgTmBAI8gzLbyLN+WS80gUZx4yF5+i75fzKOas
         VFoseHBFePgjNkXYep855f9uAexeP1O6Cgyp1nrI4VJC51MeohM8TTkdWGsmUXZECztp
         8l9nf1/rPB2STGCrNvoiw1uBXjhaEm2CHZoLTDwNY0jnMkRVoLtfswV3AxtNBXRuCR8w
         r3w40A02T2m4Ut4p8uhsPXa0lqTDYInW/SCE1QtBBSoRt7Z3baSNVtSacq0aIMwdnxec
         sfDA==
X-Forwarded-Encrypted: i=1; AHgh+RoQgVogfJeZdYB3gl/0GxPz/rbwbmrhwfrhIwGz+0iPUzvcEQhurGM+4DHGwBco3+/UfxJW+tUxdmu5cxngXA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyUvvcWMBoBRNCqpv0BaYDyiJKhjoTG3EppXqGNXRJaekvTFzhp
	ohryzIpPRGuj//rwE9k1+wVVJTP29wL02TY8qRxLhDiqpV/rLkFbp/uo
X-Gm-Gg: AR+sD10N7g6XgXzY34SH//WLzBc6xixgpPRJu4lBaynvq5YqkDZLSMGAySPYMloa9XM
	kC/GR1GQXg8kxeCpARLy4a1a4uo3Jo0249UXKd9yvd1FiJYZg79LKTOcYm0GBkZZY3xXOV9dFjj
	wIx4S4m6CUo2jEep0QekqHreiMm92YcV/YrTqG47NWg1yTHgAT7q43tSsoqC3NlIl22ZEYy3T8D
	oY4Pea3/PkAq1YJZsPK3nMyXqryJFwl75c+bGi7EToE/xdVonFyZqhrMy2hAvd2ru4OB4Q+A80F
	c6LUdizZYKlvxpYjK+o3woV8xqpD5F8/EhDvOABluzQByA9rAXqJGwdS76nhdyNNKFjbG3b/7mJ
	V0XjlqIQcfTTvp56v/oHGFaOzHm75Xl6A4Zdoh36buRulAb9vXjdhTY0wMeAMkdwB+/xLkG8/BQ
	OWr+ZJwGEG4xIpmcdDjkuk3BARSKlKqmwdP4mOgR0K1RLpql3S2e7qlQMqW0me3BnU9B0bLC8v7
	P11kw==
X-Received: by 2002:a17:903:3d07:b0:2cc:ed57:c7c with SMTP id d9443c01a7336-2d015cbb228mr64909415ad.32.1785315556870;
        Wed, 29 Jul 2026 01:59:16 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31504cc9dffsm8179352eec.14.2026.07.29.01.59.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 01:59:16 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: nvmem: rockchip-efuse: add optional vqps supply
Date: Wed, 29 Jul 2026 14:28:55 +0530
Message-ID: <20260729085856.226001-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260729085856.226001-1-hrushirajg23@gmail.com>
References: <20260729085856.226001-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_015917_892858_4FE390E7 
X-CRM114-Status: UNSURE (   9.42  )
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

Add an optional vqps-supply property for the eFuse programming supply
voltage (VQPS).

Per RK3399 TRM section 21.6.1, table 21-3, VQPS must be 0V during reads
and 1.8V to 1.98V during A_PGM mode writes. The presence of this supply
declares that the board hardware supports software-initiated eFuse
programming and provides the requisite programming supply.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
index b80fd8d1ae5b..25f209fd881e 100644
--- a/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-efuse.yaml
@@ -27,6 +27,11 @@ properties:
       # Deprecated: old compatible value for rk3066a, rk3188 and rk3288
       - rockchip,rockchip-efuse
 
+  vqps-supply:
+    description:
+      Supply for the eFuse programming voltage (VQPS), required only
+      on boards where software-initiated OTP programming is intended.
+
   reg:
     description:
       Registers location and eFuse size.
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
