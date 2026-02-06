Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A73F9EE6B43
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6VsGclo4O9yaOPUbBO5bUbFgxd+WDfa0PSkbcyWDJs=; b=My4DXUp3j7rd7M
	08rnP//7Ilvc0Duj8c+buu3iukEjUbOH9qAte879UAFpOmdgi5UIZrbFv8lBIhbmtqWiDpBd45EwM
	OlvhjPNz90MEBTiGsTqgtIIea+qTHNm7CwMlii5Qh1NGQPmvSjppl7edZOGOca0gsptIIoUDYGp9g
	WEVZTYdeK+k4Q3ohgexTnoBkR3gKXDbgUmXMKQVy1EjJk4j2YzdkgRRgp0qToFHwhBstYsOE9Yyb1
	iUkZAD0T0McyQp/7Mw3JHhlWYXKzh4aBAXcvxIY6fKp7oI8/2+4DZvAEIr/u58Fs1nxAj50wQJYLC
	SpfLipilqThO0s3gUiGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQL3-0000000BfGE-11y7;
	Fri, 06 Feb 2026 18:13:53 +0000
Received: from mail-dy1-x132b.google.com ([2607:f8b0:4864:20::132b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKw-0000000Bf5B-0ibD
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:49 +0000
Received: by mail-dy1-x132b.google.com with SMTP id 5a478bee46e88-2b73112ab62so967520eec.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401625; x=1771006425; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y3hTTn8/BfH12xfKx3d1mYZAsZyDm33o8jMO2oagM94=;
        b=ifThmxw5ctDIimZfGSdLOLrnbHyRZyRNb0EYubw+oroAsXveFgO56Jcz8V6cXpEBx/
         llFCZnBV4aP4xI6dckt4X8xBGmayqcZ2as+Tbwd9PsbZybx4rWEsCVh52YeVj4rDJeNn
         1+Jp65rmHBGkObyL0vdGAXM+TB+grxkrelm48sFm0sXTkN4eWCy8nhV7vTvw01y9Ns6O
         fMDdfINvIErEeXeIHxMKL7t01EZCgwsamoiyNPVN1I7vz5IcheBo8P16CoJMMkqqXojQ
         NM38kP53UO65ijhEH1a4xI6Gtx7RcdYPVPez3JaldSLFapVq5YPGD1YsiWUPR2GMWJRl
         ykPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401625; x=1771006425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y3hTTn8/BfH12xfKx3d1mYZAsZyDm33o8jMO2oagM94=;
        b=N1BiO24E2H+2Psj7JI6WzIoMHOfvFJny+PiA64jvRbWyypZLTcT+qfxKOraVhwRaeT
         DoKt33DSzxJauid0hIAI8Kj1IOj0FmBNHpmVSWS4YPtpBo8mMhUvvnycxZqScqGWdKQu
         7nO9KGDuJVUb/0FG+osOn8TQBds3gcDtBKb1c5dJS5rTbgmUW+KtN7LP9xT0W3JMUllq
         DcNzqqEfyX7xXSgbkpGiDlyli3vBFmoo0bb4WoXaaxEzjUuwIGqCsJbDX1uF3sww4/j+
         8jLUlfU3ypAmastXzB93XZCnsvqyq85z8UbRemR3nRX5ky92fSes1c5ehzVnjAL/DERP
         p4Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWQ/hgRL/O6FBGFu3mvcF5yUZZ1wrVHqSfzVplgnZ6YwaZRLmOTD8qAfFquoBdC5Gm4T0oTDrjN19X/6M1GAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxc+lAQ1vZV4NcWGeJOCOabFHWbaNMI0rQlzxoPqpI2uFHdN3gT
	hFwsLjewpUpG7PpY0+vC5HDG5ML9/TA1NpYpYJ3TCypxJhrgh/QEu0D7
X-Gm-Gg: AZuq6aLRzL92T/hpzzD/CYn2TWIxGKF0S0vWhKIQ7pCgNk9U4Ru1/A4zviROacg7ebw
	rco2fs3nebTuvuiRgsUwxNMnvtKZgoIdPw6/FZCkOskuE+Gv75nvQQPfGURgK9qNTFyRmjJk2Sj
	zc3LNhysDABSjLdNTAnecnV15hs9+cbDqXI6AWw8MK/Sg3B+8i4VoZqLMSHyRm1MYCSvuURNBPJ
	zAhbSasuA1mjLYaNbIzIpe+UCwg+M22Y7+3yFwMuBR9SjEBE1qRR5v64au54UBtri8i98XhE3Oj
	3WU5qBEF3tni3UjBz5/Wg8bqLyrpiig0vYrreZJD7db3/yGvpD8MFwlChOaJZk+D2rWVlBcgRx1
	fUROCnbJK4pC5A80QnQV/LLRO51M2P2JYkRnpK3v0gv0g5fLlh9hMX2lSYGuJcEMkyCnGsshzvT
	sCBHPLlxowbUqXrJuh/simQmzt
X-Received: by 2002:a05:693c:3016:b0:2b7:3678:2d2f with SMTP id 5a478bee46e88-2b85683deabmr1506556eec.29.1770401625405;
        Fri, 06 Feb 2026 10:13:45 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:44 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 08/11] dt-bindings: soc: rockchip: Add RV1103B IOC and GRF entries
Date: Fri,  6 Feb 2026 15:13:06 -0300
Message-Id: <20260206181309.2696095-9-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101346_274540_BBB4B55E 
X-CRM114-Status: UNSURE (   9.07  )
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

From: Fabio Estevam <festevam@nabladev.com>

The "General Register Files" provide additional setting bits
outside the regular IP block register space and it is accessed via syscon.

Document the RV1103B IOC and GRF compatible strings.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..9ad7a60c659d 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
