Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C75EC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhMB2d8Gzlflk2fOCAweZVEqTrLDzSC09DisoMFMKuA=; b=zWiflMLLNtAtsL
	FWjX6aUZXvmuqo1gk4DH/l4OCCCT+D0bF0pvsRLXMJmfq+utXH8P7Y6WALjab93cJXeV6P1jaQv/k
	mRrMOTYf3Wn5Qbbmwk759jMsQz8v8R+8l9IWsojxzpD3+DODm4EHm26aIUYiXEZv0rRLvc7qeWCuw
	h6rNEiBqfmtJWotGkaJn4N28pA1JncHL0ytSNxN2Tg1GUVWo+tl58RG5m0Ylh8cck7TZ4hnMaQl+4
	P6dmAOGxBMTerzp1exGvyNNfCZBVT5AlwZLFGox9pOUCmDP099vK8EKULR6DhKCo6Rot5JLvJMmBh
	LhTcOF+1YAnLVTISxZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LL-00BvJ9-02;
	Tue, 29 Aug 2023 17:17:31 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LH-00BvGQ-0m;
	Tue, 29 Aug 2023 17:17:28 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so598938466b.3;
        Tue, 29 Aug 2023 10:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329445; x=1693934245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21iVkiyaMhIOgRnviPspvm+tAmKdNHJ4HpDL49p+DgE=;
        b=NKjq2NpTIzwWtsb4WQ8JGYvGWyLJPvx0NmmkaWHXoHsK2bUZZOLSZlh09hYMZQjyNe
         YRJebTQvSlvRhwarjHsEhi0stN7D8UajKYGCZ3BbcZfLWAg1RK5gHyP0IqpmY0cDuAU4
         aRbXPvPTgdpOt7wC7BTaeD6lmV+1idIhZ3g3RGmvQYqFI+CrnXPcrkLweYOID+NGHEK0
         DRBRLt+Bdc5LLin7QH6zusukVIw5lnnj3z/4E/VDQxPCdazNNIdrT7quG/nRuF3Z/XWt
         gj9SKxmkGlyI3H22Mf9FhJKBQhVJqGWFmcuHK0PaZwCl5qNDJY2RuX5Mr/GDdzGX5RL4
         9TpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329445; x=1693934245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21iVkiyaMhIOgRnviPspvm+tAmKdNHJ4HpDL49p+DgE=;
        b=etC8vPoeZo4+yX0+p95SY0MXVonISlkscHbJ+FbZBWecbM94bQ2At2UwtJFpWMKerG
         5i8Q1oQqrfkqN0IEV4MPnKqoEXCftuPeW1nJHBuQ9j4odhclRdzMe8mJd4vVkYKsm6YO
         YCRgH1AqbtCQeGCgh43+s97f4PgM7DVZ1nEgQ/jQ6usLXZHnrBTljyDyiqkTaml5on28
         ABq1igPBYnuP9LjvAntbP4bBHu7/onOWli2CiLIBJRXNloPmc3hKBg5L41sEqVED3X7y
         01WDVNBho50EZfy9QZ4eJlEuYMiswAmEqucuGTOVH4cDrw1horNKPgMhki/9371kV9At
         FmJg==
X-Gm-Message-State: AOJu0Yybz7tKvXLTenyKKIi4bRrf7BU2hOTKbufmI3373SaQ55zByoc2
	UN6yT6jtr+C6vopxfkdAeg==
X-Google-Smtp-Source: AGHT+IE47kgzk515LSlCQdCMRZcljVGwTMt+S3yLZvAE50B+UB6aWy1SLTFd1oolF0G2c8xX/aHgtw==
X-Received: by 2002:a17:907:7788:b0:993:d617:bdc5 with SMTP id ky8-20020a170907778800b00993d617bdc5mr22834649ejc.37.1693329444970;
        Tue, 29 Aug 2023 10:17:24 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:24 -0700 (PDT)
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
Subject: [PATCH 01/31] dt-bindings: mfd: syscon: Add rockchip,rk3128-qos compatible
Date: Tue, 29 Aug 2023 19:16:17 +0200
Message-ID: <20230829171647.187787-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101727_514266_32526B7E 
X-CRM114-Status: UNSURE (   9.80  )
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

Document Rockchip RK3128 SoC compatible for qos registers.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 8103154bbb52..089ad6bf58c5 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -61,6 +61,7 @@ properties:
               - rockchip,px30-qos
               - rockchip,rk3036-qos
               - rockchip,rk3066-qos
+              - rockchip,rk3128-qos
               - rockchip,rk3228-qos
               - rockchip,rk3288-qos
               - rockchip,rk3368-qos
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
