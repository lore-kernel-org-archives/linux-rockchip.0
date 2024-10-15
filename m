Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C139D1F9C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 19:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DHf5BA6xmlJCUNOvd1dY4nCpRpVZH+PT7u/zOqeHU9w=; b=MZkWeq9NbJMu9r
	clSzJ3+7IbHP1FCpqfaYUVVBI2V3i+QCjmtDDFy1pZwaECBLJemiKgsdiAwCRxRMNLYZWi1pbagiD
	uiU+b+s9G8DSs2TAbxw3HuCHf4TW1/kJpv5cmXtWia2KMDeTpHK6lzA+VyFbkwTUHvc4JrF6XyV7f
	NXZrUplSAuNit96VYoDHbCTkhvtfDanmu97fAbnX3D/Yr47efYR68wz6nqacNNE4QJYgkdtGdotam
	08+Gh48AF8eekTXceKYHr7RgxmTNipEswejh67UpsuWIHeElqrEEz7pqzrOmgtB79Fw02hhM+YJ/z
	pzMF7pVbZUDoyhLwYOfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nM2-00000009Pub-33rA;
	Tue, 15 Oct 2024 19:37:14 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0nCI-00000009OFi-0x9o;
	Tue, 15 Oct 2024 19:27:11 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so6878295e87.0;
        Tue, 15 Oct 2024 12:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1729020427; x=1729625227; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ffK46DaQHiPwkYw7K81WBqFGG+/9qPysfgZJJ0kG6Pg=;
        b=HxOfz/bzezTweAbx+3qFh06Ubz0WV8ustvDOIN/VqBzy2dm6iudz/TVED4gfsU7rMx
         41v3lAgrOke3JQUzDNvnpBxUhRWDhQdwAcXOf43fq2JQePmz+Pj6wVBwFfcYhs6f2Ku3
         lbL0Zwjtx08EGIyK6CsrXmV1m0XbLUC/VbF9SnWp4b7ya2zkUvnPPQ4tnnzEnq8bhqEi
         JhSg+VlHrmToueq50USnGpL1qwvMgFyVBcNF4+RWlBD2a+5wR2G7MOmKQFERgXt5Mpfn
         QNfHt62Trij6Ltny2vYf9xyRNJHVqoMS5c4uyTJil9NepAaobNAxlYiPI9Sj3EATPa3O
         c5BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729020427; x=1729625227;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ffK46DaQHiPwkYw7K81WBqFGG+/9qPysfgZJJ0kG6Pg=;
        b=a3qsFEKtVtskBWmk50aPpXnPC2H7epnqclpx3CkUj6fLK0g9T+zRvxpFkcK8X8LXQ9
         NuLgFJlhT2TgwNTWNYiaYipOfvYXLdUBq9Fopl+Xw3I8jT6Pghm9HTzeelwOpYe51QvV
         6wfaw6Tab3eubs2Z5bvGXCPTP7SamEEqykdkxpU/jFYTPtGItWU0Xkt7C5RUMECeU/1Q
         xCOgNC2/wqt+ZT8Zni748OO9tST07Fikb9mkYwhGtvzUf7L2tvvd5psQfqZrIiXw1+pZ
         0D5k1FZRMPK3TJ9SDKKq1C0nvdguUflP84+/lwFDUKYKmOTKY5jrMEq8Qe8mvlkdZNye
         InrA==
X-Forwarded-Encrypted: i=1; AJvYcCUyAVvseFcqnhX6OXGujHWvqTaBftuzGCbRxjYctsmexPzIAwqsWnCyoJ/97ilrU0NcOFx2k2CXkuWEhm60uIjh@lists.infradead.org, AJvYcCWxXX8eMJHoygwYSY4uEOMKZObOkgMOqi0u7hJNAtrC92AiJoCa4mRAG8zK57zNzkcRJlZSWixIY+l3LD12eu4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu26dmw8vyoEaZIXOeNkWY5CvLXfyPP0BZI3o9DSrxt9P+gppQ
	K1sszVNZsHsp9wpaaFW2taZ6avTcMLFgLimjiARBHU2EUE4aS/C4
X-Google-Smtp-Source: AGHT+IHcQvdJj7AJdMNiZiGIzyqu6EpciJDknpyuQlSSGl44WJwZ9wJQ8kQZfKW/qnmmRdNVHjgemA==
X-Received: by 2002:a05:6512:1193:b0:539:ee0d:2bb4 with SMTP id 2adb3069b0e04-53a03f77dc1mr1169585e87.45.1729020426770;
        Tue, 15 Oct 2024 12:27:06 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:43a9:8917:3db1:25e8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a298443f3sm101324966b.165.2024.10.15.12.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 12:27:06 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to Orange Pi 5 entry
Date: Tue, 15 Oct 2024 21:26:19 +0200
Message-ID: <20241015192650.28648-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_122710_432651_B8006583 
X-CRM114-Status: GOOD (  12.60  )
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

This extends the Xunlong Orange Pi 5 device tree binding with an enum for
the Orange Pi 5b, which is implemented before the device tree.

How does this board differ from the original Orange Pi 5?
  - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
    slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
    for the WiFi.
  - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
    "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
    hooked to BT_WAKE_HOST.
  - builtin eMMC storage
  - no SPI NOR flash (u-boot, preboot etc. initiates
      from within the eMMC
      storage)
  - ap6275p Wifi module (like the Orange Pi 5 Plus)
  - builtin BlueTooth module

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..62bb6587da8f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1051,7 +1051,9 @@ properties:
 
       - description: Xunlong Orange Pi 5
         items:
-          - const: xunlong,orangepi-5
+          - enum:
+              - xunlong,orangepi-5
+              - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
       - description: Zkmagic A95X Z2
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
