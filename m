Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91322C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 11:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iy9YWThLwsy64W9KLG31m4SZVeXvWQ0vd7npCMgXjAs=; b=t2ZcDNC2YpNmdP
	pnk8CYvdjIQTCE+C8PdDD2ZtyNh+DUnouf9AaQiuvh5HevRS/uZB0BcSonfOzX5ap75P7M/1PmX9B
	LQRBynUBk5CAhNoYWYK2y7jgIM0W4W7TmwRUfBhCv6UyoMx9doEwLPailjoVI664cbSl8unTj+K8m
	qMawvspDH8xPqcewdrCdZyeSYJnTsYIh2V7PmTIRDDC2/7W0R+hHVbdWmn6HD/jB3zBpjktzk0plN
	RoWs27FmUxeuN1lj3iwVsWHM/lapzSxyury/QqP6znhePNs6R6T0RY+s+fHaJ90QxuTKPaz2B/uuU
	QOk57cJczIVyWdWKtk9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH03-003AFB-I0; Wed, 16 Nov 2022 11:54:39 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovGze-003A2r-Rd; Wed, 16 Nov 2022 11:54:16 +0000
Received: by mail-wm1-x330.google.com with SMTP id m7-20020a05600c090700b003cf8a105d9eso1273923wmp.5;
        Wed, 16 Nov 2022 03:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LF0LjuwpVD5bvELJ2ZgPUI3haSAQ4UjC1mWIKy2m4Y8=;
        b=XftHchxXAdJvPyzYZpTP/XYZOeYDMvA1r0Ol9Auq1iSOdj/fvlbzk1YFkKfgWrNjxV
         xAyIAoxyuFjWHhATL3yjLt5PKtgOSZxx8xgg8GmphdNp08sk5/lDxCvnwisr+XZF9bhv
         wUD025DdU6GR1Go+wG3Zbzml8IH5b+9JEbLXADukYnwdidVPu85cHtfiqtA0ogJzB1m7
         gO2H6R39H8JhEviXKSO3F60cCsja6XAMUz21Ls+Ov5oKrScWPEgibpd2DS4/89nwtjTj
         HBgvl+yfrlupmwC7/qYZ+eQrtxEU8u7MWRg4kwhlo+4TfK3MshWgJfvoIvsmQIAIVcxK
         LsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LF0LjuwpVD5bvELJ2ZgPUI3haSAQ4UjC1mWIKy2m4Y8=;
        b=USSDpIwSfQJwc3Vmg8CivhReXg3IKDwU5iQeCCetdBHV78YdKM0aeGkCDBNekIDXIt
         aVX28cGXuRwPdpRg0iGaNBjeWDQv4StOjtWO9xXu2zcJhEIXczADRg91CsskHHRsTY0H
         MhNm0twDzkVjGdXet4QWkD8CjhAER2OeflqhxxAU2H0OMLNVEDia+oLNM953d6HfScyR
         N2TnEmaLxF5sKzFUNnPc9B7CHzADkJbr7NNS50tA8CSssSwZvhuXALAjDF3IqlbuKDyx
         wBFlgBoe/fQhK7TbSBbVGCeE/+x42HsVUIV6LIsxnLijE8r6OGoni4p9TDTLsTx4aQQn
         ROAg==
X-Gm-Message-State: ANoB5pntKryF8kDjCz0+5Gjl6YiofwY0s+lRTa7JkoOIMw+u60rRHRAz
	DCgznswbPODJquhXSviqaJyxV5G3AuU=
X-Google-Smtp-Source: AA0mqf5ONZTEN2oLJRD8V3MZpSxDHVHSjCcPWyfLWgcxe0Q6mTew2HFN7qcklPrBY9BxRRETnYaYJw==
X-Received: by 2002:a05:600c:6890:b0:3cf:497c:c4c1 with SMTP id fn16-20020a05600c689000b003cf497cc4c1mr1899998wmb.117.1668599650821;
        Wed, 16 Nov 2022 03:54:10 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id bt14-20020a056000080e00b002417e7f0685sm14576047wrb.9.2022.11.16.03.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:54:10 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add SOQuartz Blade
Date: Wed, 16 Nov 2022 12:53:34 +0100
Message-Id: <20221116115337.541601-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_035414_917458_CFBAEF07 
X-CRM114-Status: GOOD (  10.25  )
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

This adds an enum for the SOQuartz Blade base board to the rockchip
platforms binding.

The SOQuartz Blade is a PoE-capable carrier board for the CM4 SoM
form factor, designed around the SOQuartz CM4 System-on-Module.

The board features the usual connectivity (GPIO, USB, HDMI,
Ethernet) and an M.2 slot for SSDs. It may also be powered from
a 5V barrel jack input, and has a 3.5mm jack for UART debug
output.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index e40a3da90000..19797aca1fa0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -578,6 +578,7 @@ properties:
       - description: Pine64 SoQuartz SoM
         items:
           - enum:
+              - pine64,soquartz-blade
               - pine64,soquartz-cm4io
           - const: pine64,soquartz
           - const: rockchip,rk3566
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
