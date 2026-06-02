Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF85CD6E57
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 10:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IxviRlGeBDDUdiPlC1OoR1QpSgKgQSlmbZEfBAyS/o=; b=lK0cP+9dBqvEvr
	voGN61RkvWS54ouwvtLUlWYd/OqaM7aM9s2d3T7jbYEKbwk2yT9beqa+gWe+WFYw2a1ISrSwgUdy3
	RVOtyVNi5Elm+rUf3I6/ChtN+SXrYtB9SXDOdVNNXSL9QcvXWF2QKhIND7SXW0AtmU+zvK/uuQlda
	n7+L+FHFwbNO7pGZVtQuhXz1ABWNZEKhTXtgDEQJg0HA4q4YlroMHGWswxxiMvArwtnhcl5+813Zy
	AZLwT62HIibGe8A1e/Ae6BOCtGDqYz1ZidrAbmhfu4NkTvd5waXbFWxlaF/vkbdDiQlVyId3VvRw2
	ad/HXQjfL1GYX57gd7eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMAt-0000000CkPl-1F7B;
	Tue, 02 Jun 2026 10:16:43 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUMAq-0000000CkOq-45pd
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 10:16:42 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2bea7176c72so89539585ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 03:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780395400; x=1781000200; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=itZ+htTWHTauD3C5JTmFzIrqx+Hfh0DDPlT3jqkIXr8=;
        b=qcNRcidrxqqUoMWeMfdpxmKOezW7JfGm6cQL4+gry1379aWNrAMudzitTMtEqBom2f
         mylyXo7mrTbE7pv6KhZQHYD+sBXoWGItfj9T/dI3/yoi1aoSSYV//CL6zIwm6Jvs3okD
         zbNLxc7zlXwmpMoFT9dziaaZBnselBOBgN+FNuIzvzUe+d7ngIESvTfa7HO92NJBRZa0
         wXRDQaa7fuxuRPfgz4DYe9Y6YTHbFkNORVL+vfBz/hKxGtixm9DueEYWdN0wQdvaBdSe
         K0VcOtZw+s0aK+5WLIKcpI5tFb26WMDB7oM/F57QIHxvmLeqoYgqoxokiMDL7Sp5HDTY
         z/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780395400; x=1781000200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=itZ+htTWHTauD3C5JTmFzIrqx+Hfh0DDPlT3jqkIXr8=;
        b=nlGUVW/nRNNsr+/NuQfOXbPfombEGSAgkRV8dsgMnST31O3L1vuUbAYt2JkUMfD0Dp
         nqj2qU6Ynk6MnmfTNxtWJhD9U/a8ZT7oyLiokHoiiTPwJ0QjCVg1I/QXx6Ju3W43VJiv
         CoMYarGrZF0zsAz2z8ZYIl7KtfFEsmGHpIimqjdlqnIvKFLG2vtK2PHNU34M4Plr9Dne
         DO1ScBkR2GvDuEm/77GAP2ViFuFxkdn4NcGEJJBh95VsycgOOSY66B7NFwF45TnHZIOu
         vyFrjSf3A3XmXEE7orK8gH2TJ1UwGbm9PVb+lBrsb25d8blsfmDcpoHsjpJ9a6kbKFcB
         5bZw==
X-Forwarded-Encrypted: i=1; AFNElJ8g7VUby01APQ/eO0vmjz3SIBIe9y5SVIgZbp5JM4zMPm+PClZ6wJh+o6Vq/h/oJgahLCR7JhinvQPRKUcYBw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyo98Cev/UWAqmE7XNb9/qHPnEBGDJn8/6xpJmkihnqh6RYhg3J
	LWMeNFeHNiOZjMzaj6FTGX4ps7FJ9Urf3IOeYFvxWK/HKCbNDLiDJ20N
X-Gm-Gg: Acq92OFQMAq2MCW8TZJ+wsqyF+5HlRk1Ph2fDJX+vO8t3PMg1VcTmkHhxL8auXCfe7t
	RUEw35TI9hxWbXWsThurHUw7fP2D3EIHjwfraVrPgYfXTYDbAYpzY3SiQR3pZFxiirWgZ9l9WOt
	lPyMFNctzR/uXiz7cWPcBH2PkcxD09/CIhcBlfcMtYLB9U5XBOSBPgJEXn2imeDiprL4YpX+hNy
	uBGEWHxwiMgJl8232ObdKmlups4w1DX5+OhXqnqx8UAaXc0u3YsnkO7KqNhFRIgDHutyQS059rj
	CgZQr3Y29rX3LnDYohF11HTPR8VUB7h3QTesofWKSNJ3xfmX3mKCCEBGwS6vMZ3jviBhicJqah4
	wRDZWKB9MlY+dCcdr9DSKFCqBCKteAh/R20vT5cyMmlIe18mVzou7TaBsF+bNO8QjByGwsyHQ21
	UPM+DMBAKTz2Sx1nf+jbjB85Hul71QMN78RmuOoNhqqawoRrTnwzZqwKSBhJKBKFvmc4rD
X-Received: by 2002:a17:902:e88c:b0:2bf:30c8:bfa1 with SMTP id d9443c01a7336-2bf368bd8aamr168629675ad.41.1780395399946;
        Tue, 02 Jun 2026 03:16:39 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239fd84fsm132766305ad.23.2026.06.02.03.16.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 03:16:39 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 1/5] ASoC: dt-bindings: rockchip-spdif: Correct SPDIF clock descriptions
Date: Tue,  2 Jun 2026 17:16:04 +0700
Message-ID: <20260602101608.45137-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602101608.45137-1-phucduc.bui@gmail.com>
References: <20260602101608.45137-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_031641_018730_251F86F1 
X-CRM114-Status: GOOD (  11.11  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Update the binding descriptions to match the actual clock usage, where
'mclk' is the controller clock and 'hclk' is the bus clock.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Changes in v2:
  - Update commit message based on Krzysztof's review

 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index 502907dd28b3..b174d7498029 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -45,8 +45,8 @@ properties:
 
   clocks:
     items:
-      - description: clock for SPDIF bus
       - description: clock for SPDIF controller
+      - description: clock for SPDIF bus
 
   clock-names:
     items:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
