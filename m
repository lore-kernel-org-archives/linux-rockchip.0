Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C738C04FF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AOYpbhaD8tkIkLrGIw6DHC8qAbxRfdVH4dA9WctL90=; b=ldeQ+wEadiP9ze
	4MrmCoesnRho06A+2uYBO+/dzGjCfPOQ2kX2MPUU3MLNr7qsBnH32iGX2rw+SZqrViO2ar4rpw0tj
	f0+uMvyjRFO4CvoFXAsJyCBXnPRl9rdU9mjBB2FMIJew8ZcXd7ofskVu9qHNgLBijXXHOhyzLKUpy
	M43WlJcDPvNjeIMfRQOq6RkIX1r5x4dDYva5HP36Twc7PCkb+N11M4JQau7U6+CZrHwQrGOzjTHWA
	c1jS6qdOx3f1mzSn51tP7GfCB3GtDzJZuNAt39UhJ/Jcsxg34YhCRaYJuNsiA72Yhcar4u1lVq51w
	3qu2LajMgGeR8PP+HriA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfRk-00000003SMZ-1agM;
	Sat, 13 Apr 2024 15:37:40 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfRX-00000003SCS-2cXY;
	Sat, 13 Apr 2024 15:37:29 +0000
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6ed267f2936so1471484b3a.3;
        Sat, 13 Apr 2024 08:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713022644; x=1713627444; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eX625iIBdt1za2l5qXZovB7IlyOsoBBOXctng8wWg/8=;
        b=OjdLmfA8SokHXyLaQfQ7bis92xEj/QTlRaSFhMd4uaaKQFrUsHoA+qSGazVSOlZUH4
         pfoKyiZsTD7A6LY/KtWa97hn9EJ7U/qp+tawiY/TJbcW65D+XX+z3unFVtT6XEMduAFo
         CQ7HD+cZqclTegxnbjbX7a28fUn4et2MXyVDCFl8pSUhZzqqrXAVAcRqrO+yMOlFJ1mg
         Hz9D0H7S7N35STXImt+DTUw3eBpLSAO6fCb/cs8VnNaj+CW/GE486k+8648uHOh5niyl
         MxnGQ6RBtEZnL2JdTvxwcDFP38YlP75BQ6PPUZN9d4hZYfRcwENMWrg0m5EqRgF/Mus9
         2ocQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713022644; x=1713627444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eX625iIBdt1za2l5qXZovB7IlyOsoBBOXctng8wWg/8=;
        b=g6ys3ZQC8IGsGOWp4U9Pn1w6+SOaBRS3SFqTHNLB4DkT28p0rpocJOq5g49TxJonZS
         LRSsqh5UVbHbwXCRQZbetWMFykMVcB3Ae2gI5hhbf82rpr6BNThNSpqbj7sa/lA1GqOs
         3viHfLVKHrJ92Z6/AHAy48bSMeU4sINxoWsaMcVee3CFjZfSy9Zkr0KBgM/Vfg/QCvkT
         EuNN+6kKIzvrgRgyuAaKQ0GpYpXWlRYsGSj7gdea7/derRAkmtUfPmzZzoUvpqogZz6E
         N+Qn3vREDokT0dyRdN7GshMjuhiBrKH1HcPIgj8alULy2Yr1h8gq8pnszwtCXRWxNfeu
         RXrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlBfhyKrqmrJJwmJ1D9Th6Qe4jgSEjIpMP1fxCk0gYJsiqJZ5Xu31O4m0oi7f5HTlpEJkS3G/DMdypJdTyEMAzOQKzrFeMK1G8EHvzlcwaV0yjkAWNsK+wzgCEzGFNVvrYlBb3boa7zlSXXJX7edCKSL8U2Lz0Zck=
X-Gm-Message-State: AOJu0YxOrAdFTOri1LbS6ZgxUZ0DS0tdb48KKi5Ugo+udPmjrbuWr4Zp
	2BDDU9pbRt41Ki/gLTtF5tVXFqPtRfo95fTGDMmoZVrF7iMJSyMd
X-Google-Smtp-Source: AGHT+IGTBTCdgnTFod0G9V/qQQKZ+dCU3OqsO43l2hrUFqqgxqpxl1payWY1fhzFsBEQ35jk7QSyzQ==
X-Received: by 2002:a05:6a20:1059:b0:1a9:5bb1:ba27 with SMTP id gt25-20020a056a20105900b001a95bb1ba27mr5298784pzc.9.1713022644413;
        Sat, 13 Apr 2024 08:37:24 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id d13-20020a17090ac24d00b002a706910b05sm2609606pjx.9.2024.04.13.08.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 08:37:24 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7
Date: Sat, 13 Apr 2024 23:36:32 +0800
Message-Id: <20240413153633.801759-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240413153633.801759-1-liujianfeng1994@gmail.com>
References: <20240413153633.801759-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_083727_739054_D477D813 
X-CRM114-Status: UNSURE (   8.36  )
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

Add devicetree binding for ArmSoM Sige7 board

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4bd033ade..fd644e32c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
+      - description: ArmSoM Sige7 board
+        items:
+          - const: armsom,sige7
+          - const: rockchip,rk3588
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
