Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52994CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 16:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DX6nSeu6UILrpU7CAPJ2Ps5Gv1JVQvxHkED9+WasRhQ=; b=SqzAYZFcbbq1rK
	CZTU+mGghR4iNoI1CRohmciGjgSU699m3vjLIXQHXNwP0VT0ws4jYziZiPwJWjkD4jNM2pGtauEKB
	eHz7GDGc99nwrTBRXD5KkZZKqSjhDFunJJbGLD0oz78KKDpA28UYnfER++PC7ik8E4BoDmjQLunHH
	R+pztTx+5muVe/dlBE5UMZ5bRmS5TPt5AX/WFnis1gq1qtKNtJnrb6psoGdR2AMAu9/pvXPqx5K1Y
	JxuDOnWoxyQTU3zi2dCfIqSP2+4ne1ZijNAZEQXHncwxOaDeIUuJBXuSOrP02DgMPLRcxE2E1Dpmf
	NAgReEbw5LSN8IYffrVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G9-00FAC7-3D;
	Wed, 18 Oct 2023 16:19:02 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G7-00FA9G-2d
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 16:19:01 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3b2ea7cca04so458830b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 09:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697645935; x=1698250735; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uw/QwKMXqJsA0ZfWa9ge2ddn0yKUbipF+wTdf3W2lOs=;
        b=dYSnbiMqaRTFYmR6ZA25EMMELNx+Xqzy0kfMwKheWBs8eZaW4y9dYub7L415rCUWt3
         WgKdv3xEG0+6A7JE9J5yDP/5eyyOrqk6KRAtivqoDHQsWPkTF/SyyTix7JvQnReyM7Zj
         rhWGcAwr/iGLDO3utFx1BpUKs6QuGjA6xZHY81+TqjzW2sDEENsc2TkJv5LqoAx0c+2q
         RyGasWk5F8duzKwKBpZT4uh29CoWqTVgnn9SA/rw5x+eL1wE1x3Q5i9brKV4EqwAaJgl
         LD5oELK/F7zgQTNjsn53ijxlIjL4zqMEAJSU0qz6r4o0DkaO5mLjtX+cG6z5vbx9suNh
         pKcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697645935; x=1698250735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uw/QwKMXqJsA0ZfWa9ge2ddn0yKUbipF+wTdf3W2lOs=;
        b=An60VU5sB7xWm4CTeRYGGcNS1GXGermGmtu4WLdVJroxDqJzNJaKcOglHpcn//IcK4
         13jLcolOHQgKg2fssX/Q05Vt0n7aOxH0YJB8CyFA0s8EKFFUdxEDua4FtYfEvSzORM+8
         kIGI7EmY+BbMBVq2Bi+4KFxYFV+fGyon7JVpcbJME1pYtPID17NBMGayo4atrmmNb5pp
         e+67hvZLP5Glob6y54p1INqdglkonKibcPPr9QKm65Ly1GHddC70lKK5AwBquN6sUbE8
         y5bkgHYw2KfrNw7xbGDqc0QRE5g9eyWp8zrda5bu6fI+QqlMfAID/4GXfFp+kIxxslZY
         2HQw==
X-Gm-Message-State: AOJu0YxkdSHyjwMjShvCmnpQVDP1Sj+FwEUdyrLFNlQ5B6TiFi9qZs9M
	+jxVaJiUiAqcaOHwfsXl7UqONU5SPFM=
X-Google-Smtp-Source: AGHT+IGVxblw+gFyde5QrjeYaigc+JDYVf1IHKc5ZSKgn/8HMCQzxvwUYh6/y+BU9OoipN7Tggfmsg==
X-Received: by 2002:a05:6808:2197:b0:3a8:6b4d:6b78 with SMTP id be23-20020a056808219700b003a86b4d6b78mr6659182oib.35.1697645935531;
        Wed, 18 Oct 2023 09:18:55 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id db14-20020a056808408e00b003afe584ed4fsm697390oib.42.2023.10.18.09.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 09:18:55 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] dt-bindings: display: panel: Update NewVision NV3051D compatibles
Date: Wed, 18 Oct 2023 11:18:44 -0500
Message-Id: <20231018161848.346947-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018161848.346947-1-macroalpha82@gmail.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_091859_853855_A9E11719 
X-CRM114-Status: GOOD (  11.37  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Update the NewVision NV3051D compatible strings by adding a new panel,
the powkiddy,rk2023-panel, and removing another entry, the
anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
rg353p-panel and is not currently in use by any existing device tree.
The rk2023-panel is similar to the rg353p-panel but has slightly
different timings.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index cce775a87f87..7a634fbc465e 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -21,7 +21,7 @@ properties:
       - enum:
           - anbernic,rg351v-panel
           - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
+          - powkiddy,rk2023-panel
       - const: newvision,nv3051d
 
   reg: true
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
