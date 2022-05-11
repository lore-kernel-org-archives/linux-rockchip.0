Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A457BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4z7RTbINZio8lFRJuEhebUnyWQdqO6KO9qdk+rMjeY=; b=Lb9c0uy3EYpjfQ
	lMOiXeVju/3vjnHwrQPJrwjeiBrgVdv2lYzA5sG+pU4AQ7rcms/aXC3AQSMKSwFrYHAIePAiM8QmT
	OUvNQ5+TLCKY2pf0Ctq3DNUC0FsoOmwwNScJLhqAeOX5/upOEkwA1axLVS3cs2YevgdrWc17F2rf/
	PW49tn/Hq6qtdiG5Mc9PyCApUo8cqWaGtdvAmbJRjwxVZfpG5xzwoQwYQ0bCL8FW4oBfSCNysPBIu
	7yhqzwdE3T1atTpQ4XOjpjlAeoaEFAMQOPQ8pvO/u7+IMOwuGDObPudxzdX3paVKgJkJ+4yHoD/Yj
	ZWkSBYK3zOteZEYRae/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nonzV-007Rog-2j; Wed, 11 May 2022 15:11:05 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonqA-007Nj1-OC; Wed, 11 May 2022 15:01:28 +0000
Received: by mail-qt1-x835.google.com with SMTP id hh4so2152313qtb.10;
 Wed, 11 May 2022 08:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/p0jhonpzsgi74YqARQEXL9lrrKHBla95qJazaJgr3s=;
 b=BJmy2dB+d2RHnTR/+SRqn1ptD74kwKMdN6sSgOFZsfJjuf5/PVYosyUm3LlOCPlMFR
 xBDCyeIY99K1xAddubsk741JQCN3hourJw6iG275BFJrerTRQdQVUxLS69HhY/SI9NAz
 FLVstBCzDJThwbkKWybmR/RdX3ppIX2OxD7tLy87+uSpvovuMjL87t9S1zyCBlzmMCJv
 gviYJnwsedSZQE0tgwYEXxlQVtXloqUBua6QfLj+0dAuKe+Qf+mVmKC8hYk4uRRuZufu
 O+HGfMwPMaYPnuo2fJerulgU/Ah46NryDCdYkWs4/B6EChNLZnnFTNWBijbEUrcGOKEw
 X/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/p0jhonpzsgi74YqARQEXL9lrrKHBla95qJazaJgr3s=;
 b=zxSZQCOFea/sVThJkA8TVqtsJXBHv3NWTLF1I+hWygCZOc1RN+rbIADWBmzOtArTqQ
 CGOkDDCbGyKONXWSOX5wafTMatJosVG3gc/rVt7j+heE29jxSJjTJ1CwfQ1+Kj12Eped
 bNVDZTQsN2CNDqsPsrPtFGk/IEgd59Yv7Knn6jnaaEhRymI6ZU+DZvbkukQKKQKTKAg9
 jU7hJxR80MQ+kUz8oUMkwSKwnCeslr0NCNk4IBocyH7u3KOR4lKoSsP0CgWkzmL1H1sk
 2Ic+8pgflPemJ8fqzZsQ/+shki9lrcK9FCuDgm0sNw23OH/GK2y7VJt5YzQJUtYZcJN7
 P3CA==
X-Gm-Message-State: AOAM530WAdYyJyKumg66fdUa6bA/Md7yj9cCErQ1hBHvSfsEOQkLi4xv
 l/T4HgHSXVr+W6B22KUoTq8=
X-Google-Smtp-Source: ABdhPJx7y9paqwB+ewp1H9nKH7hMjdilX7MzvMntMscQO9+8ooGtPXzRO592Y2gkVK+bnXkFE5M7tQ==
X-Received: by 2002:a05:622a:1793:b0:2e1:ba41:ed2 with SMTP id
 s19-20020a05622a179300b002e1ba410ed2mr24321265qtk.238.1652281284233; 
 Wed, 11 May 2022 08:01:24 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:24 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 4/6] arm64: dts: rockchip: add Quartz64-A fan pinctrl
Date: Wed, 11 May 2022 11:01:15 -0400
Message-Id: <20220511150117.113070-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080126_867736_62988102 
X-CRM114-Status: GOOD (  10.82  )
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

The Quartz64 Model A fan is bound to a single gpio. Prevent pinctrl
issues in the future by binding the pinctrl assignment for the gpio.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index ca0b92795d95..991b7b1b8443 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -32,6 +32,8 @@ fan: gpio_fan {
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
 		gpio-fan,speed-map = <0    0
 				      4500 1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&fan_en_h>;
 		#cooling-cells = <2>;
 	};
 
@@ -510,6 +512,12 @@ bt_wake_l: bt-wake-l {
 		};
 	};
 
+	fan {
+		fan_en_h: fan-en-h {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		work_led_enable_h: work-led-enable-h {
 			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
