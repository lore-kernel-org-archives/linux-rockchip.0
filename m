Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7ACFC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 12:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOHq1DzEqtmfbhdETHy8gMy/omNgXfyFMcDXB8Fq3WY=; b=eYKS46Wh8nKWi+
	Je+xgItz2+A01F+1IuJ8+oHtjxd/wmxemyiW6U+H6k0Jj/P9GbwYbFgQUeRd5oOLI4DefXWk1VyaM
	5DsNL4iNdt3YEf8szd17EdMCtERhFqkXj3DMREzTNQtP/m7pECzpE33Cz73xWW4wQdxiUrngT684z
	8ujtECIR/orfORkgLIzK7bxKry09QnO8tYn3ha3PD+AEXY3ohUc09eCb5yipEV70iKRAfkGy72WPa
	ViWMJj0aXmUkPwumhZlSYWshFcvLTqWAa7UNYf9dZbFKvOYY5EW1XKMBZASn8MO1Q3mgxnRskTVvN
	Ui6yT75q4trsc+8QD85g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpro4-004mP7-Gn; Wed, 24 Nov 2021 12:55:24 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpro1-004mNv-75
 for linux-rockchip@lists.infradead.org; Wed, 24 Nov 2021 12:55:22 +0000
Received: by mail-wr1-x430.google.com with SMTP id j3so4087503wrp.1
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Nov 2021 04:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LgR4zVRDulA8gC5R2s4r4rKvFBQIfT0WoQQE/x493d0=;
 b=abaCmqkSTPH8QAdBq+WrbTjKIfEKB5/Ya1O7jo8HXJCOs8K4WUY/Vwvr2ABPzWJe19
 cNZQYkXC3FeD/4EI98Qg/rPhXS7RijjJtvfFlQ91LJtcSHdIEYok4diCt1WUHih8HEJN
 x7vFHlSsdUFRD9n/P8qJ6AtKeME3FjX42EFYFz9m6rNchPyT1PgZXEcudlC7oEPcdA5c
 hJuUTevztMazDEebDjU5WWJtQBmCcYVG3woRGw+lLvVCfc/xjypheaalLuuPnYBOkn5d
 sWDpLvzo61i3TlnNL9z0lbmlXLYncIYtzcXVni/0X769jAuyPWYkLavPSXOXpBPTr39W
 yElg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LgR4zVRDulA8gC5R2s4r4rKvFBQIfT0WoQQE/x493d0=;
 b=CgDMxo4SJI5RZ6RoSk+qiJH1OzKcH9k6426NuxV6fwKADs7j/8+00bys3c4Yzo3QLw
 1e0QGGc+7oMhJKrpyGkSIGp2+t+3hW/ZRnjqc6ha7Zt5hML19oIpauZGMAdFICeU5WN7
 kCIgIH5hf0C2aZVWqciGN7xpzW0VEnf1yotIHLTqGn9WSzC3vyzoHl6lGs7CubROo8D4
 eMtSs5mzS7wbfgiXYHnb/jQpufFjRu79ccYK8tf8t3rmZnjE1a58bhTdPbAb3YxuZWdH
 D4czLc+L3o0uygi1MjaWNH30s0mjDVf6SFOxqMg8znZ90A7hgjLI2ZawkRymluZCpMep
 w5Ug==
X-Gm-Message-State: AOAM530iwDFQTI/A4b64+3f3eip3x3eSwMTrsPDZTfoHrF+lTAI1/MBj
 GDDid24SSYwDwjOlQRs+lGUbBQ==
X-Google-Smtp-Source: ABdhPJyBOq3r41KhKmh6W8BZ/YOE08tDP3rKNxXcT6p4RvY3Z+YbX48zxtemRlO+xIw6Dz5JeH8Scg==
X-Received: by 2002:a5d:648e:: with SMTP id o14mr19430256wri.69.1637758518792; 
 Wed, 24 Nov 2021 04:55:18 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:3395:9073:b941:501e])
 by smtp.gmail.com with ESMTPSA id v8sm14916443wrd.84.2021.11.24.04.55.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 04:55:18 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org
Cc: robh@kernel.org, arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 rjw@rjwysocki.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 lukasz.luba@arm.com, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
Date: Wed, 24 Nov 2021 13:55:01 +0100
Message-Id: <20211124125506.2971069-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
References: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_045521_324484_0AFC9D5F 
X-CRM114-Status: GOOD (  10.20  )
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

Add the powerzones description. This first step introduces the big,
the little and the gpu as a powerzone place.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../boot/dts/rockchip/rk3399-rock960.dts      | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 1a23e8f3cdf6..83540bdb64cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -61,6 +61,51 @@ bt_active_led: led-6 {
 		};
 	};
 
+	powerzones {
+
+		PKG_PZ: pkg {
+			#powerzone-cells = <0>;
+                        powerzone = <&SOC_PZ>;
+		};
+
+		SOC_PZ: soc {
+		};
+	};
+};
+
+&cpu_b0 {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
+};
+
+&cpu_b1 {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
+};
+
+&cpu_l0 {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
+};
+
+&cpu_l1 {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
+};
+
+&cpu_l2 {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
+};
+
+&cpu_l3 {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
+};
+
+&gpu {
+	#powerzone-cells = <0>;
+	powerzone = <&PKG_PZ>;
 };
 
 &cpu_alert0 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
