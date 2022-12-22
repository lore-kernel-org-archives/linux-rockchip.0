Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16D7CC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o7bysaw4/4Tsb6iNw9ITcOfC3UZdt2aO3zd3Mt2jtQ=; b=JTfQtd2uw6Ee5N
	iaKmaAZ4wIaCNBaF2rktPLN8Vj/Fr7nqMhezaW2dNfdTcCwZet/4ob+AXobE1T5u97+sFE8aPI+T9
	f1cIZdLTHnD98Ud/A8UTUgLoVg72ze/lSbJGFHTq1MdmE+B4z5iyzN5GS3Om11qYfZkhKVvG3Uzz/
	bZakI5dB4YVyxV2nuE1UUA0Z0owd4mrL6/nbL+C106VP/6ivaB2Dwil3x3UXlrBhWwG4aAXqSue5s
	x9TdPLM6W/4hf2xaYL6Ltzzu7B9E3Qh2J9bFLv7G+KgIBWTFZ6Vf5s+qhxspo5gRohiqMPuVfkLIk
	mqW7pm1hgDVe7XGatebQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8N8H-00DIyf-Ok; Thu, 22 Dec 2022 15:05:17 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MbV-00CzOJ-S2; Thu, 22 Dec 2022 14:31:27 +0000
Received: by mail-ed1-x532.google.com with SMTP id r26so3135288edc.10;
        Thu, 22 Dec 2022 06:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bW6Hd9ovFsWCrzyECcvTbdEVVhvmMqsQBtWMpTHrRQw=;
        b=UmrBHX+ITAjCTD/jraE2nPoYqi2kuyYlYfiftb7UsxEAzRved4jYSoN7MtzbLKlQ7q
         3r53gXkAk2BWdao1WBouYq2dGLCwiPVivXB2b2w5mYlcCbVF/h1p2/VuCPmwbYNDTQP+
         h21Tk3n1RBmFMl3w/jJO6robuO6aJPcmb1Fzzov8vVF34+DfxTTMm7XPZWJBpQNtqvzO
         M/sUL9BdGiOAJFiHoWfrMZ5Gz/632NoFvw4gTUEhJCYiwVMnoAJjbPrjxaW1022PXZJv
         +H8HUyTXy660waa7WqWynKpwzT2G4bqMvmg8jeGlBLqt32JkkUgjFK70+h6Dfxqqe4jD
         a0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bW6Hd9ovFsWCrzyECcvTbdEVVhvmMqsQBtWMpTHrRQw=;
        b=xR4Os2EbWmLMQl7xf39hFZ0rHrSKAb2FsY7W2nUwCT61C6c54GeDqx1UwGZENv8GIC
         /qD4whYIOoQo6mZeSbPHISjLE5i13drCNKkZWIKFXUFAWV39crxVUMf1bRpAz3K9/qyU
         98qLd85Ag8/ZrQEw7dN1yv8GrRCoiJ4M694kQoyNz05JWFPqbmzfJOFM4QqTAZ/XuHy5
         5/9UkXQPMIJw2b3aIIHSAsrZ9sfQa7VqmL46vQedkwQwBrh8p8mclOHvatFKnTT9ddmv
         KBFWwnVA50zpzpOW1vne1QH9fCloHtgMaeaJY7/d5veEzTxxQLfddJvDqKNT36e0eGFC
         gjgg==
X-Gm-Message-State: AFqh2ko0WmgDjz3AdNhjU/k8dVsmwgbPtpJtO6extMpjiXtOBPqHUAGY
	ooJsPbyRg5M0OKstDnx+V40=
X-Google-Smtp-Source: AMrXdXtxHQQvzCNkSik7yX/z0ueyYewn5n5Af67lZrnJ1cWnklfdFv33LN/MI7hUA3CP1NUEgPRCSg==
X-Received: by 2002:a05:6402:2a04:b0:461:de81:d194 with SMTP id ey4-20020a0564022a0400b00461de81d194mr9671100edb.31.1671719484507;
        Thu, 22 Dec 2022 06:31:24 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i5-20020a05640200c500b00463c5c32c6esm417648edu.89.2022.12.22.06.31.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:31:24 -0800 (PST)
Message-ID: <99895a4b-25c4-4b64-42ac-6f70940ab56e@gmail.com>
Date: Thu, 22 Dec 2022 15:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 12/17] arm64: dts: rockchip: px30: fix lvds node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_063126_172925_50568D35 
X-CRM114-Status: UNSURE (   9.55  )
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

With the conversion of rockchip,lvds.yaml a port@1 node
is required, so add a node with label lvds_out.
Also add label lvds_in to port@0.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V5:
  rename title
  add label lvds_in
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bfa358042..e34d81f29 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -453,7 +453,7 @@
 				#address-cells = <1>;
 				#size-cells = <0>;

-				port@0 {
+				lvds_in: port@0 {
 					reg = <0>;
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -468,6 +468,10 @@
 						remote-endpoint = <&vopl_out_lvds>;
 					};
 				};
+
+				lvds_out: port@1 {
+					reg = <1>;
+				};
 			};
 		};
 	};
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
