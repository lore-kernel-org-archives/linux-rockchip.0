Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9714FC6379F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 15:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgpGPQ66ZmUZDOBi1sPitBdc8Z2/1piDIkNDS9Bp0Vg=; b=Wl6u/ulgXTlmZr
	2s5Ga7S7KSivPFgewZ0BvQlGST2EM7U65Swi9B309TQMrn3rO4geSX/wmWK/q0ggPTNUf54uVM37n
	8YRhhgw1JRswKsFNKtFbzY0EzYwcQ1r1DThbWzwClOKSBnTF/Wv65NImpYMZ6GEKfM78h4ZiqOuTV
	AMcmJS12K+L/j9pptKoAF1xmD9suzHt+brnZwG0uKQCB966CemYRxuAiVXRQuk0YL/MeC15AvYmsq
	rGM/Se2CTUExH/WrhtEhRhDyp5TprI3ZGUWV/qyGnPWL6UamcE9MRCAQ6Oja3Ra3YBGSaSfwTVk1O
	YHsRu3lBQFEh1PybOYUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRauY-00FF0E-30; Mon, 13 Feb 2023 15:38:34 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRauV-00FExb-FL
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 15:38:32 +0000
Received: by mail-ej1-x62b.google.com with SMTP id dr8so32794402ejc.12
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 07:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q86xsnFvfvmah1G0eGQOi1KV205lT5RC6i71PTaiGzo=;
        b=YNfKzAtIz72gcYaG7XV4PSq2NEXvrAgcCMjnPsI91+HELi7EmCHFa3h4v/3A9zLFQn
         eiH1eheI31WtpJif3x+2OOK8Xz4DoEkCcRuLK59lss1ztdCoMu8sFoOHteG1OD6KSrbL
         Ev8MEuIShNtQosDwH5de/OQhc61gNDKH73GvL/OKOWXAORkRh/yTwQGIKVUjJhYeMUYn
         DqYHQ1dZewnMIWm3Kbr8D2rRW1OUeE8IEB2dQtF0EkHYPu+q10gnQBajelD4xPxvZA1p
         kAXt7QQv6YugLjFyGT9tpF7eClkhCylEdqWoohIOa1EZ3SG724LY168OA+5zHKy/KARI
         c4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q86xsnFvfvmah1G0eGQOi1KV205lT5RC6i71PTaiGzo=;
        b=lbIJZh9A4MTbJ88tEOIWyGM1bRiSd4n07auLsf6oLDf7cOC/zNXJE5AsYZUBuEiGFY
         cPgwxPTEBTEkSdAUxu/zfY1rbPEMoAe5nOJ7/opCJrNbTTwrn4Vk0cnys6t9pnVTcFRo
         5wELPLMHXLmfYf9GSLCvwreqYANvW22bi64FbznC2kqCSLXiwgRNELYlOvaSo/dMY+GH
         XKRrCW3BQ6wIRIYqDBkpLwg6PdUUFTD8nuPSEm34gXtemYkGf7mcT2YXq8uF4uW3Jz5w
         ipillprMCaYghwMJC78RvvwdFEDXo6ifOPcETWuXw6VTs7vSciNKw67nEdvJLZ8/Dnc+
         3Low==
X-Gm-Message-State: AO0yUKVSk34YEqpp+I8YHc8WXAQuU3Y0tLDUZP6ncmZn+zBE06B+ubrZ
	8gO8gVfcmOVQhkcLqQrgmxg=
X-Google-Smtp-Source: AK7set9rpu4uOTlLBDoMG+BkveHrcsEYP70PEWPeRWFby5VyriFa/6JKgxhk4Nenhc+awLxNZsP00A==
X-Received: by 2002:a17:906:6a1b:b0:8af:b63:b4bf with SMTP id qw27-20020a1709066a1b00b008af0b63b4bfmr23256890ejc.27.1676302707637;
        Mon, 13 Feb 2023 07:38:27 -0800 (PST)
Received: from localhost.localdomain (83.24.145.108.ipv4.supernova.orange.pl. [83.24.145.108])
        by smtp.gmail.com with ESMTPSA id gf17-20020a170906e21100b008b12614ee06sm115901ejb.161.2023.02.13.07.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 07:38:27 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: heiko@sntech.de,
	Jagan Teki <jagan@amarulasolutions.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: display: panel: sitronix,st7701: Add Elida KD50T048A Panel
Date: Mon, 13 Feb 2023 16:38:13 +0100
Message-Id: <20230213153816.213526-2-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213153816.213526-1-maccraft123mc@gmail.com>
References: <20230213153816.213526-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_073831_527301_7A80D3C6 
X-CRM114-Status: UNSURE (   8.28  )
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

Add compatible for 854x480 Elida KD50T048A panel, found in Odroid Go Super
and Odroid Go Ultra

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/display/panel/sitronix,st7701.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
index 34d5e20c6cb3..83d30eadf7d9 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
@@ -28,6 +28,7 @@ properties:
     items:
       - enum:
           - densitron,dmt028vghmcmi-1a
+          - elida,kd50t048a
           - techstar,ts8550b
       - const: sitronix,st7701
 
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
