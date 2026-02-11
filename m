Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C34CE9E2E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 11:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k4+mWnov5kRd54yeeMhA+0PSc8+dboRd2SJVB8vQgI=; b=J2OXXXz7qjkOyH
	KQPrNeqnV/FK1kwl7OraRL8jZeBPu1IoY1RaAW8bRev+fwt/e2e/28PHGjzTqvFDOt9EWb8UYy0qP
	N8AfABIrp2CPazx02mfX9V/YcK2EY5VyAQCtDDb7hWMDrDbWalQk7jC/L5Zd6iOobFzWC7TWHY59H
	o/1/ij3bUOSfmsXEzCw4iM9XAILLB9UKaP0BuXToyqJwBxdsyDUg0f2xgp9BbfJa6xA4llQc+YYVh
	L9a0PTY1UIHF9qWS9jwaUASIHkb2id/1pmRIIZCPAQX0E9MGKx+hgdFYQaUF6c/E/icUUZ+9T0Vyk
	CCBgia6Aw1cNtjGVuODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq831-00000000YW6-2d0S;
	Wed, 11 Feb 2026 11:06:19 +0000
Received: from mail-yx1-xb133.google.com ([2607:f8b0:4864:20::b133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq82z-00000000YSq-30sw
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Feb 2026 11:06:18 +0000
Received: by mail-yx1-xb133.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso1932013d50.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Feb 2026 03:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807976; x=1771412776; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q+FnqDj3qu2ecfnplRKSOUvppFc1PPPDfNJmD9cSsF8=;
        b=fJwXFh7iAjz4ROv2odIlqWKYZ5ifYqDRDwT3PY6QCUDUzf8QyYTCJbMwaRTMGjJW0f
         TJbzmWT7n1v2dvKszVhAwpa+aKr9GPD8Rvqe0t8AH2B5VyFxjOmtfrZ5XFdCeflTcRdA
         PLD4NU2SiS5lls5kkxdEDNm824FaAE4eBBdxAOZa6sDXTzfAOZrVHHSuQjtgZJT7hmtd
         ysmHbtSb7GPRiD/FdFB3FVx9i6VPvmNQF3nuoeSSq02tooyk2Kp5/pfxqslvIstzh0Ak
         bcNdvcSbGIiCSljHotnjmyCpO71pYmgE0tI89/rGt0NoSuTOxe0bDBUNBFU2kkeTtjHa
         zzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807976; x=1771412776;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q+FnqDj3qu2ecfnplRKSOUvppFc1PPPDfNJmD9cSsF8=;
        b=nsRNdmClCWbTalwbLN3D8ZB8tmGB6mekZxoG7jOMBtVEA1LeTW3llDfXkHrtbrKsGD
         rVWM8UbHvM8P/3tJHZF/Hwj3ZIPag85UxXPCpw1C1TCtqg2upKzygrt338/NIiDryYxg
         b+89J+c7L6KMhnzSRZ7YJ5KOMyUDnuOS80pMRGddfmcNKGpLP35w+VjgRNrYbteXhZYB
         DLds1XM0xMqGp+7gGk0Fyzgz4+1RqwVzA5Lok3vIKtCSBOhBkxdkyWypXIMJyrVpa7cH
         vwcrboG8eRS3zRUPEL0PAKr+WNZOAKpluLK27YY8GiJkWCBCct9TY/N/c5OFGwRhRgWv
         hoDg==
X-Forwarded-Encrypted: i=1; AJvYcCVVoFHYJx8KRNLYIbXqm0Z9ArzTDUFTk3778ar806jVM9UJW0i667Ffj6qO5HfyLpuzYzk7DrjfHDB2JCLeig==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyvh5/MnlzDOqCtbTrhzFuR29HA46N/HuP3/damgA/TvadScmUc
	uATurJXCoOTHvshuPMYc9474xSJp0FvpM3wH0SSEoyDIQRW8jzOiN6Cz
X-Gm-Gg: AZuq6aJA4a4Cy/SM8E3xLi09TDO6GcwhVOY947iqMPUy+/uT1AGOwS4eHi/S8ajsAbv
	5q/zPdArzaTIfsze7eGQCBc2CW0nHElzk+K2ud1FkpNENJm4OhOl+KVHr86h6yEOAk0tW51d9G9
	utk6zN2NtcWecQk2m1ghnd4Pu34pHqnkPqF1teLrhmMPT744u0dSiB7Vkc52zopfyvmfUDtEiSu
	iGrVCrZeT051GCH+oPjzlQut1O2PvNj//ujvMQKxMs6SPM2rUhj6jk9DIzqD8f/9k9Lid1lFdQ7
	e2bK0bpc3+wQAuOXrPUcNkG4rTettllrYog5uf3bIL5ZdZaiM0xWirGVzCWFpqLpQXwlQSkFTOm
	s/yI9O/zPSzfupGJPhBdcMFGJJ2dpcx45XL71RMN/VBrNvkbrb2BAzxbl+87DveHSgUdreV2UK+
	EdAk1xAWX6QLJ1ZTtg6YBMB6g67BNo9KyOncY=
X-Received: by 2002:a05:690e:1517:b0:64a:f160:2354 with SMTP id 956f58d0204a3-64af1602cb8mr3992099d50.79.1770807976463;
        Wed, 11 Feb 2026 03:06:16 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:16 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v4 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation board
Date: Wed, 11 Feb 2026 08:05:49 -0300
Message-Id: <20260211110550.580474-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211110550.580474-1-festevam@gmail.com>
References: <20260211110550.580474-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_030617_762392_4C97B13C 
X-CRM114-Status: UNSURE (   7.83  )
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

The Onion Omega4 Evaluation Board is based on the Omega4 SoM.

Document its compatibles.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v3:
- Split into SoM and base board.

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..8e8f9ded2484 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -802,6 +802,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: Onion Omega4 Evaluation board
+        items:
+          - const: onion,rv1103b-omega4-evb
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
