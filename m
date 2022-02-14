Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BB83C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 08:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMn+ZQQf2gGpDvWHzWvc0sqLmT5o9iGYlH3yI7hR4rU=; b=QnDj+5ODeFNHsR
	PXPVOTzE9qMJKSjWCj7h2CcQlpnpeVfKNa9nCEhsOOyBf9fnpr+87AiqYn7HtOaE9MvDumURtUPFG
	LgqGoYDNEAdauQgIffr5YzOEpnYmV+QMPU69IsDn062dW4DPv5/ywzIc8vh5Tqq8tB+i29w8VLcRz
	x/AU/uHIL3SAyiQB5yvSf44wIu/vQUC/avjEsnE/s8HPqKs72RTMDSqPn0SPcvU6j4luD4u7wzZpJ
	Lzpe8hyxVz7lrDLZQXDK15I7CHpqkLvmIy7IaNDvtNr4yseocai3icIQVU1gjvAa31gp6pAwBsryi
	Ml9gvXujKs1c066R7BcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJWiw-00Dumx-AC; Mon, 14 Feb 2022 08:28:42 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJWXp-00Dpbr-M3
 for linux-rockchip@lists.infradead.org; Mon, 14 Feb 2022 08:17:15 +0000
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7EE5240340
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 08:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644826632;
 bh=bOhlBRyYjdc4olCsTRd9yvmwLAfAPm/hGaoOpjTnzVA=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=nvR8HYrs67ggslT4ASUAdGJzrcw55S0M2iScduJi80VfzUsnIjEYaDzMv4vi0Vyet
 /v7VASQD9X/eoOznXCxcSApyinWIxfqfFe/a0ndkYw7b4lHXkz0runXbo005n/k/Gy
 C9zuEvwowi1vw4HbO/Zlo/SRzgY1wBoOWGJeAeZ556BS9VHY3a8FZHnimwxUvXTd3c
 h4ngR5/0O5nTmQBrwvMbTUqUdbNwiZZEyNtABdBXnCcm6fKXikj9SbFaSUQ6fM5AXu
 gPWjpADrjzNUh5l6+oLO6F1eJXy9nMdJTG0MoSd4Eww+UWMYUgea3R+JYPdJR/S06l
 ziq7J3xQRCNPw==
Received: by mail-lj1-f198.google.com with SMTP id
 a6-20020a05651c210600b00244bd884dbfso794341ljq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 14 Feb 2022 00:17:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bOhlBRyYjdc4olCsTRd9yvmwLAfAPm/hGaoOpjTnzVA=;
 b=2BG8Ln6IntXpN947rycze+7feki8anpRoxsV8MvXVzak0XQ90yNHyot/YtId4UQrmt
 3g8eNIYj98VEnaLQBTxDgmhWWdmMSlNl732gRRpExao1Ie8RdKX1BwyXHXRaovVvR0Fr
 tMwaPRyrQbkpcaOTpqJ9spwP92uS69MACp7lDowXxHiiu9F5ZV7gaCb3i2RfYS935Xk6
 3MdTGc4WkU6ELHBaDR7Kkh22CO60C40hGbh6eqlW9CO3vY2DTQcwHSXwxSzZSfFlybdB
 P2xSw22sZ96rGq2RbtVwRM1xYule4kHt+6S/Hj7yOlLYTQZeoE/8gknVIFzpAQdKSOD8
 GMIw==
X-Gm-Message-State: AOAM533BaqdSh6134i9NzJEbcGV9wfcey4lRmhuAtI5offVFQgvwDOcF
 fcxTm1sLBgV332Y6JKI0ccglCqAgFW24xr9g5Rtgv9ZY87UQOGmiSWGcvhbfLeTCxTuiwNp3tp8
 zs3n2w7Grz5Vu7WJsWqCv4aOsadMc31RHAOa3W2knmyS+Px0yaQ==
X-Received: by 2002:a17:907:f9c:: with SMTP id
 kb28mr10076912ejc.213.1644826621272; 
 Mon, 14 Feb 2022 00:17:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxxVq42SC5ZUR0wG1GQiAhOdCRluJBdfCYPvNoUVrfESuZAlthB1iFEyURnQo2Crc/39Bc5gA==
X-Received: by 2002:a17:907:f9c:: with SMTP id
 kb28mr10076870ejc.213.1644826621102; 
 Mon, 14 Feb 2022 00:17:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Feb 2022 00:17:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, Anson Huang <anson.huang@nxp.com>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, Jeff LaBundy <jeff@labundy.com>,
 Yash Shah <yash.shah@sifive.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 13/15] dt-bindings: pwm: tiecap: do not require pwm-cells
Date: Mon, 14 Feb 2022 09:16:03 +0100
Message-Id: <20220214081605.161394-13-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_001713_866923_7C6349EF 
X-CRM114-Status: GOOD (  11.37  )
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

pwm-cells are already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml b/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
index ed35b6cc48d5..3840ae709bc6 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
@@ -47,7 +47,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - clocks
   - clock-names
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
