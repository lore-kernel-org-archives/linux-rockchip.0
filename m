Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B23EC83F19
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIZJmn77lR9CCkrYfJol+mvt0zmIS/uRsaHUMKbr9ws=; b=KfAPlAla5T4HFZ
	hcxlAa2uNEY1ZUMuree2yqTs8ZE+QwYmzQCtbfIPoQ2r1irTaPkOLSdZYDhtfmlK+ilaFOlGxfiVN
	U+Rl8OzxetdCB6CP+GTPsYSdYmomTRm7iRCwFPy0QjOKBz3S4pkq4srqxPHhTDx0pBXEedih8kmBm
	8/RDyvXQO31ll6qc2jbAzmXDwCRGWLeIRGk/kr9KjdgEABfiWo3lBSFx4uHGsU3WHBUO0THDspyqH
	MXkNXT+wRj/o4Z1jNr4X2gAIK00/vGyMLN8nxf7o+PhLQwEq/SYPkUe5jQYejV0/Jpx8x7i+/0s7M
	zy/qrOSt0QjFgTNydq/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LZ-00BvVe-0Q;
	Tue, 29 Aug 2023 17:17:45 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LI-00BvGs-37;
	Tue, 29 Aug 2023 17:17:30 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9a2185bd83cso612956066b.0;
        Tue, 29 Aug 2023 10:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329447; x=1693934247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xwaGmtZUPA/dwS41wMl1NXhL27pNtpsYsBs+oXIwgzU=;
        b=HWwZSJR7G5j/UlzgJ/xk2k5cG0brSXt+VPqGoGnypzwtKwlkY10UxvRwUP+LqtPTLb
         /gSA3sT/uvZwI16Ta7YRBOgqw315u4p38rJzQ1ARmo41k3TgI5bh9Q+2NYWq20txZ46j
         mNrmVV6dQrvyn3tWzsy85kHN3SA9rjmJySwAlKu+cRXAnYBTfZTXyqHEjmUpfORjofM2
         bJvoWqHaoFrHmL+gIQClU6YikQJUwBQraSsVNwP9bLl8qVZCVa4J9tBF0LJedLPNFf6s
         3CAeOwU/qcU9eUyUvDzocAqVbWYEyQIbo35bgDFKUnm1gqcDXkeTQQdfzncZ+h/VFzdM
         S3EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329447; x=1693934247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xwaGmtZUPA/dwS41wMl1NXhL27pNtpsYsBs+oXIwgzU=;
        b=X6+0+ukmcWq641DQ7iZPloXe804o98DJu1g/Dw+y7fp89TNEI2vPoRd614sQ078ksU
         fMYhKPJJUmI6F8PeBK7G86mC4QzLMnkPTD+bBD+YJu9Khlaft4ZQvZkNHnKcPd6n4nJe
         r9iYj25oX4RCTsMktZ6vspLCVyqkUZrwWfZH+kKd4Z1msQYstc2bk90qZDRdoR/A1A7H
         tE9Ky8FjxxdwtFJsqjnpWz7uoSn3WYIaXdsyTYyVgCm49yN5EzrG8d/3ID31w1BknbLe
         Dz/OK4l1y43X5dI/3t0rgVpQUGgSnoRL6nQP3wcR+YA3vYYA8iVAcUDNIQ9gGEkWBAfb
         QskA==
X-Gm-Message-State: AOJu0Yx9jL0ob4OFuCG10OwzPqI2pmsMQZmBcxe2MTDMboAhC2wO9R1M
	l5FcskhC5gXJNXpFXCJR1Q==
X-Google-Smtp-Source: AGHT+IHgDpcosA9S74bQEeR2hEnEpLMTHmHxkazGsrlnCTREbmknY2DDkcIyWAd5FuMN90wtDYQDVw==
X-Received: by 2002:a17:906:3195:b0:9a5:d657:47e8 with SMTP id 21-20020a170906319500b009a5d65747e8mr1405316ejy.52.1693329447156;
        Tue, 29 Aug 2023 10:17:27 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:26 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 03/31] dt-bindings: ASoC: rockchip: Add compatible for RK3128 spdif
Date: Tue, 29 Aug 2023 19:16:19 +0200
Message-ID: <20230829171647.187787-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101729_010578_F35B42AD 
X-CRM114-Status: GOOD (  10.06  )
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

Add compatible for RK3128's S/PDIF.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 4f51b2fa82db..c3c989ef2a2c 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -26,6 +26,7 @@ properties:
       - const: rockchip,rk3568-spdif
       - items:
           - enum:
+              - rockchip,rk3128-spdif
               - rockchip,rk3188-spdif
               - rockchip,rk3288-spdif
               - rockchip,rk3308-spdif
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
