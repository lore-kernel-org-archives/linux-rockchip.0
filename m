Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9D6D5B158
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 21:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+9IUUmydF76tZeLAVFBtsu+DSas07rdLU43pQ/3rwkg=; b=hoiiQXHYMxyct/
	19ZiBbvtldLd4lat7oK50H+am90IxQDmPzw9FuZRmn3Fque9vqJY/bHom1/zmFr/wVmmaiH1vtPY1
	jpBDs+a47JZbqWRN/L4ItnPYu3nt19MfvD49Zmvex1sHSN2D/vAjJoqLLyplEixtsB51sTO7nuYZK
	K+Etzx7gkvOp6jjvJC14zZB/yG4uCG5emNz/HwoGFRbbd7rAk79MfsmNn9QYhMgRBKBxvdKUT8Djx
	Mrx0jj4soKACk4BQwzyStpWdIuxYlUqYCNWjj2/v5+OnN6QKPY20EDEdSLWzUwWM8J4l0YkH39rgT
	04Co/UFCdhFbDtOUAWqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Xi6-0000000CQX0-1HLV;
	Mon, 28 Oct 2024 21:55:38 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5XMu-0000000CLdg-2JDA;
	Mon, 28 Oct 2024 21:33:46 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-53a007743e7so5497744e87.1;
        Mon, 28 Oct 2024 14:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730151222; x=1730756022; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P3jhy7g92HAelJpeRVsKB0qQVe3H+zDTlj5MJNUzblc=;
        b=U7CF0vJXBkznJCmftDMwsV1aP1PSKTXMNZPDXNHelVNzhSNEAHypWN3TU4CfIQ7bVc
         fj6HjRFBm+Zh/SWHAiHTaO5McqtVsVPMxYYZUnkUv+t5TW4xc/w5nLtJn+8ivkpwUepj
         LfYKH7RJSag8S/+QtBae7kS6NBMWpIG9qN4Y120jDyxs5fd6mAeYV5YZuI1mB78R4XMA
         +SlLpN9a9CtzvkxVKlNgA7enyjuhr6QJLx0dBU34tESjN5jNahiGCiGphdU1S5gBmL+c
         lWTY9OYIEJy5TqeqEsY/GxFDOunG92qYEk1qDdggKyfTZBmjM97qGLGKPQbt9Veg0oQB
         3Gpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730151222; x=1730756022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P3jhy7g92HAelJpeRVsKB0qQVe3H+zDTlj5MJNUzblc=;
        b=gDOSH90nrZ6u26+Xym2B7JOiGDVwy5jGKhVCg9DDIGiHY+cUotRJMPGr8Fh9cKW7iK
         HtnUvIc512Nz21vLGMmkHN8iC1VNFGc06dd2pqCjSBKsJvwRGAg5jQ6NeZpg6ljCKMDU
         mP5UmKk2tqlTfLAzPsylpOLuVAWJr+lEXPEwL1/U4ag0uaZsLMlFu3THUWBm/M2PULnl
         1B6utveZzs4R0shWJtPExDJZLF5eps+aQjymUNYrImaYVpOjmaPEOkPBVb2iYFdZgWAB
         TtNWpO4k4DizPEzPsWeBx5dZ2+jFKkI2v+f3RBJGSabq9WpOLot0r6d9hjR4R6klhMWL
         L8fg==
X-Forwarded-Encrypted: i=1; AJvYcCVf3Fem9SOW0pO/4wVD+BeI+52wnr61eTDppNtspJOlrbmbfLrsrwgqPpt3RpEKYXML3BuWHuosvrnu88/Xvqg=@lists.infradead.org, AJvYcCWBV2GnFDW62iAXXomvU4/B6iB0CsrrdA/lgugVYf8AKk4PyImpNb0prdPf3IVZaIIUYIFEPifj2pxqMloYq9HY@lists.infradead.org
X-Gm-Message-State: AOJu0YyWnVrZO3aIQmBdBmRLJT6LVPwrIxSD2jtHo3ILLuWU1ai1N7RC
	17k4qotPDYGofLGIEgQcQ4E7e0QEOHNsslVYJPgnEP7ryyh5auFx
X-Google-Smtp-Source: AGHT+IH8QWe0UkauZn2bm3eeSh3k+dWuXtsVQf4Au1Nx9JEZxSU0NN5Ic64IUzcAKVKuVoc6QI2zug==
X-Received: by 2002:a05:6512:3d22:b0:539:f6c4:c29d with SMTP id 2adb3069b0e04-53b34b39798mr4508983e87.54.1730151221818;
        Mon, 28 Oct 2024 14:33:41 -0700 (PDT)
Received: from localhost.localdomain ([91.90.219.38])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1c98b9sm1204625e87.224.2024.10.28.14.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 14:33:41 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 0/3] arm64: dts: rockchip: add Banana Pi BPI-P2 Pro board
Date: Tue, 29 Oct 2024 02:33:11 +0500
Message-ID: <20241028213314.476776-1-dmt.yashin@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_143344_625020_476705D4 
X-CRM114-Status: UNSURE (   8.99  )
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

This series add support for Banana Pi BPI-P2 Pro based on Rockchip RK3308
(RK3308B-S variant) made by Shenzhen SINOVOIP.

Patch 1 fixes rk3308-codec DTB warning.
Patch 2-3 adds binding and dts for the board.

Dmitry Yashin (3):
  ASoC: dt-bindings: rockchip,rk3308-codec: add port property
  dt-bindings: arm: rockchip: add Banana Pi BPI-P2 Pro board
  arm64: dts: rockchip: add Banana Pi BPI-P2 Pro board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/sound/rockchip,rk3308-codec.yaml |   4 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-bpi-p2-pro.dts   | 362 ++++++++++++++++++
 4 files changed, 372 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-bpi-p2-pro.dts


base-commit: 9220a541da2bc49ac79e0475843048ba29e4d076
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
