Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C72E8C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 16:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtAsw1WYAw69XgXrJFpPDpb0yjtuis1mSJ3ZAFTVE1k=; b=vw9hS9Dw+mNEJa
	9/SSnKPPqTCcHRT0eh8bF2tKisK4wS5Nie5ND3M0DCMcig5i33M/mG60zid9dEMiLs+gU01K5tWr0
	bPbIr/RgekiQNkQhHyEREFfghaZFt/qD5THCQjwH7gWHyfLO2re9PfO5aPqq9At+0FooFxPI99Bu9
	DiGGBcElhckQKuaaMMpbzlf723vrqOypA8oeU6qUQ50x6OA3TKQpPVyg8YET+N+hXY2pxncbLM6Xi
	XH4K6QBaBtfoNVL8e105SSseLXI8L3Jhs/0o36tVaLvaHgkXD3hfEeY8zOflPJr/CBPbRmdgdGAhj
	D6TjsvW8fAfcAHRpl9HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7W-004uq4-Ps; Fri, 23 Sep 2022 16:01:42 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7T-004uoX-Lv
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 16:01:40 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a8so937533lff.13
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 09:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=WJiaPWI4ho+8FHxOqPv+dFRnzfm9c15mn+xBya3bRCk=;
        b=ZkvSFOCEJjel1SVESVlofwx+2agKdmr6Nn94YUchAQqns4ului8l0fQl+WOmMvNi1O
         c1iY80ypK6KxKSP+YlXAfJwAJgOCpzx6l2ePqdz8gtl8RGKGSxhHDdat1q58+RkvdZFl
         1gCY0NMlXkO8qVJ3PniLMJq3jos3wJ+6GOaKvSbis9FPJ/e8S/XXy09DPtutGMSylt8+
         DR+Sr6CSejkshVZrC3jOs8BeuMji8PIaFPjp8uVAqDPzis760WHU+DrgfK/gqVz4Rk+n
         EtOnoaZWoSKpxcM9HZJ47RhJWpb/PAo/O16UdFbGiLDrZ9xneARevyHmhzo6vs4HCyEM
         Jv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WJiaPWI4ho+8FHxOqPv+dFRnzfm9c15mn+xBya3bRCk=;
        b=QK0FUkc/X2cBl2r9rxRJOy0lQqPcRyoMx3E8GpjahlHjdieBUp1PwLN+XqNVzyF9hh
         pOXs/x0iaQEkelg2L8IFCTYjgFe8ziR3GNHNOHFe2XTNVlso3o2cJ+MIknmnzUQbiZFC
         RqtdxeC+lWKHNqlE7J86rJqxTIUEfRwQKnipAG9UkG2Jhdr2ifMYD92fraU/GUeanYLd
         VLgFUYJMaRH16IG27Xr2/YON0rFwyVhHTmJKbvAZZRQumW2OL9fC/3LQUSHVuyYG51Oh
         U4aTG7A4Cj4pjc/tLC4GVkymz5KuDPCaiSUQEEu5KVwEaN3QoA/XDy7D2lPqsFt7tht7
         29aA==
X-Gm-Message-State: ACrzQf2iPjqwDKolPcVKDcrZQgF4viQOvB6pig3vGT5Pae2U17hlXjhw
	9BydzcAR05KtX/dh9NzChhN5U0RT4Iu/iQ==
X-Google-Smtp-Source: AMsMyM5fVsrY506yzT4DdZXtreCRU/dICSyxd3dcMI3W09dSPpWlwYxtEFWmZFJYoKuqbD28AsyRhA==
X-Received: by 2002:a05:6512:39cb:b0:49a:d1e1:16df with SMTP id k11-20020a05651239cb00b0049ad1e116dfmr3580399lfu.438.1663948896230;
        Fri, 23 Sep 2022 09:01:36 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b00494792ea34esm1498611lfq.273.2022.09.23.09.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:01:35 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Alibek Omarov <a1ba.omarov@gmail.com>
Subject: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
Date: Fri, 23 Sep 2022 19:01:14 +0300
Message-Id: <20220923160115.2946615-3-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_090139_732010_8D4E8B35 
X-CRM114-Status: UNSURE (   8.22  )
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

Exposes ports for VOP2 and for panel

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 0473d7ee2668..fea3319a6a4e 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -787,6 +787,31 @@ hdmi_out: port@1 {
 		};
 	};
 
+	lvds: lvds {
+		compatible = "rockchip,rk3568-lvds";
+		clocks = <&cru PCLK_DSITX_0>;
+		clock-names = "pclk_lvds";
+		phys = <&dsi_dphy0>;
+		phy-names = "dphy";
+		power-domains = <&power RK3568_PD_VO>;
+		rockchip,grf = <&grf>;
+		rockchip,output = "lvds";
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			lvds_in: port@0 {
+				reg = <0>;
+			};
+
+			lvds_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
