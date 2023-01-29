Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA10C636D0
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHu3yu17zwmeYzJbXzApBiHPYZSJWFqsPMRhXnkpXz0=; b=DUXOlJijML/xfl
	ORf0YfAIU/LgN19oY98NO1WnSUqYk5Upn629BqTiAXkairHXvm3xuCTZGfPxtXAKoMsjTm1mvB+DJ
	xQTEvt704kO3p2y9R1YCqDtrElC4FKKOv0zx/SNPxII7k7pHDNpjVcaEmOnr/fJ1kIMv4EqcukHW5
	rQlvpgxdAyWKaerbKUc9d8xAmr4U4rx8T6P0M7WAZ3Z7/+FnVZsJn+xBJ7jKW4Mx4rUP7+lL+4rL8
	Ied0O5YuymmwLIbXSRsHZQcIBoByxQ8HhcBjOCl0WWeCdl+xDXZUT+Cm3wSFxqb+Yt5ltJvcWBCdd
	UQuy1g4c7/Usk+hZQnZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8iv-001Zmq-U5; Sun, 29 Jan 2023 14:32:02 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8is-001Zkk-2p
	for linux-rockchip@lists.infradead.org; Sun, 29 Jan 2023 14:31:59 +0000
Received: by mail-ej1-x62a.google.com with SMTP id mc11so2755177ejb.10
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Jan 2023 06:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dqhRzedXTjAYBhupeTXHmy5HkP7oFM6wXur1/uCGklY=;
        b=bMAnX4NH2gBVWNMBfP5T8Ig0AvaeOIcfVbfjU9ga7Yfd7svUSS0vKBh8RC6QF70zWc
         pk8+ktReuJWrI1K8aSy2tHuXIujU0RCm6gYbpL6tO7UlmXKrMQ9ocgrGYtFjWC7rKXoK
         0n3MdHHfPH+TRwyO0RE3K4dOkI7At7MnSUZlt5QbTznbJ6HcjAr2rcYDcvuB3VB39DzF
         gApmu09u5PWt0XdEoKam87WxQdMlxLPDoJnZbyWapFMxEQxstqLK7e5z9sKxMwyGoYDd
         xXFdYIOXFK3wvxHqrACp5LKicZ0ye/amSkf2Pnzi7uyYgaitH+cECyZ9MGJByU/pvZnw
         /I9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dqhRzedXTjAYBhupeTXHmy5HkP7oFM6wXur1/uCGklY=;
        b=QUDZ9qiHL2dY4umJbAQOM0En3i7kIjyq/Zm1PLQVB3uUNxmt5FnwQC8YEeLrLHKhAl
         TltjJFeP7prR2PK4jX1wsMK5fMLKLJN6ZX9WUUBe/oJmonxyUx7EuvK3lJFCr1Ns2LPn
         pESFy/lpVWWc42OrcL8rfe946/ixo2fcqoTurLC9UyLATLygZYmjpR0mcmjq0/FHnBOo
         NAScNmH4UJBhX07Koy4uYkDtV8ndx3EGwrhpi9Jje7WQeMShbmKB9DUu3MvBpBrBS0B2
         Cdbu2RnhcsEzw9mKFwwZSwBcUpE8lDroKKUee9naJmbiAmdPnggDRHrNnBv2PW20mZUW
         eEIQ==
X-Gm-Message-State: AO0yUKXPY7absRTKrBkKyDK0Y/vaLm3tl8G7aryttR0pwpR2rMiq0qXl
	TwhR5p2U9kYw5oKBVC1cjlCtxwzQfJfMVA==
X-Google-Smtp-Source: AK7set9uBH1IEdS5caA0NsadN0JraxcoEyiaqZTtiJt25gcTfJD2f4f+/jMxjc2QNlzyRT4puPTrhg==
X-Received: by 2002:a17:906:eb8b:b0:878:7f6e:38a7 with SMTP id mh11-20020a170906eb8b00b008787f6e38a7mr12114060ejb.44.1675002715769;
        Sun, 29 Jan 2023 06:31:55 -0800 (PST)
Received: from localhost.localdomain (83.6.123.74.ipv4.supernova.orange.pl. [83.6.123.74])
        by smtp.gmail.com with ESMTPSA id jr23-20020a170906515700b0086f4b8f9e42sm5410128ejc.65.2023.01.29.06.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 06:31:55 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: display: panel: sitronix,st7701: Add another panel
Date: Sun, 29 Jan 2023 15:31:39 +0100
Message-Id: <20230129143141.173413-2-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230129143141.173413-1-maccraft123mc@gmail.com>
References: <20230129143141.173413-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_063158_209011_0C827C45 
X-CRM114-Status: UNSURE (   8.86  )
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

Add compatible for 854x480 Elida KD50T048A panel, found in Odroid Go Super and Odroid Go Ultra

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/display/panel/sitronix,st7701.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
index 34d5e20c6cb3..dbc92c4e26ed 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
@@ -29,6 +29,7 @@ properties:
       - enum:
           - densitron,dmt028vghmcmi-1a
           - techstar,ts8550b
+          - elida,kd50t048a
       - const: sitronix,st7701
 
   reg:
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
