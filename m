Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E480FC6FD20
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuUzuSiPBADttBFQ9FwXztUbgLa/gEQTmrv3SVZEuqk=; b=r+kRJ7mquzagNC
	N1PJDN7k5ntPo3qmZKMtzyQe+ucnDQGEJtqVQQBxQfr/ogIhjZe8Y+au9VVUwTbBPmSlownU62d6A
	16m3QsPhNjQ3lucDRaRYyiaxOCMF8ACH2Llf/WWA5Y4iiUfUn7nkryJKp+u5UuGX5p9R46E0et5qw
	r2QaPqlUG5c35sDyK17TXpAtjUosHBMdHmTsM+GQKkO2CVKH9VlOSqEDSN9dXOP0NUUC+wQfa7INo
	j8SXzX1eiF81Zdj5y+FkIseIR60haNKWSmwows187m4CcdvJZ2FKhA3z66vnmMrOWMjbq3U2lfiPP
	Jb0+f/hpx5jzJHTUe3LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyW9-006NYN-21;
	Sat, 25 Mar 2023 07:40:49 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVr-006NR8-2N;
	Sat, 25 Mar 2023 07:40:32 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id n125so4839761ybg.7;
        Sat, 25 Mar 2023 00:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679730030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDcKlqWwiEbWvCmMV2E4cuAQ9yjvAR7tqhw3SRJQR8k=;
        b=crEbB+pY9dKKXfQv7fH96zxQmt61orUCbhj9tj/PwU8VAC0TPct9ZdHu6ln60ksrC/
         zAAw/C+DRnkA7+M+MRK0A5tb2G5h9WafLQN1pk+5camCgkgCBnTQ1evk4yJjA28+t0gz
         ylLcJI0kQwCU7FyK0RC5i69oH5MsY5x2+DE5gNWxTsSvoXwXOjtR7gLk1HhHyXfo3YHC
         DZu/lsItu36xKdGy6Sj4zDWrIjCeKsms97UcI5+G8wmrdCGRwxCFmXUkx5HqEedHMRKG
         3IwdPZJ0hs5IvhePR7ayDQ4AbLwgwzCqNBymjVmkGuCLyioEFvjyvYWvhOiFRJKCUtMb
         6ODA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679730030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDcKlqWwiEbWvCmMV2E4cuAQ9yjvAR7tqhw3SRJQR8k=;
        b=0FXD6vF1xQ9SnQhU3/b3ZjB5vxFM6edchS4FI5tLqTD3WHaM/jyraXUQgndgupVCt+
         gMSnx6E/5LeFZ02szPxJakLsWRm5OYtVyF7afeoQ8BJ0s/a4C+5AgA12AnpthUSnpVwM
         /XoKh/RxsOPKmGQET34CfwvpFJqhoneycMk8oSF+ki+i8lknFjuI0HY68ETO1D2nLV+D
         eGzZkZyYk05rvcwgOI0YMuVt5nOiAhN7vdWSB3oSr9qxPjjszJwtn0tlE26bbMkf5RPA
         PBEKRMwPoQRGbymosDdk6QQGxNegnc1mlqEzgEfE8sWW5uibwXobK/XDGiCAHAo5pBqM
         AjrA==
X-Gm-Message-State: AAQBX9fSOgj94EuT/dkZGTzVlyqMqFXjsRbaK/V1ebqLaq2hu/aW47bJ
	/sF1zY4JwflauUre6Z1zke/pCpqxNlay5YD0
X-Google-Smtp-Source: AKy350ZmNUnytb2HQL1zKl2feAM2o40Diq1Q6MnLckdbYwxnBFt8iAv59ZcXGif4KLF9G3juwoBVmg==
X-Received: by 2002:a25:54f:0:b0:b73:839:d8e8 with SMTP id 76-20020a25054f000000b00b730839d8e8mr4725883ybf.3.1679730030141;
        Sat, 25 Mar 2023 00:40:30 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id w20-20020a25c714000000b00b7767ca7498sm969629ybe.53.2023.03.25.00.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 00:40:29 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: Add doc for Xunlong OrangePi R1 Plus LTS
Date: Sat, 25 Mar 2023 15:40:21 +0800
Message-Id: <20230325074022.9818-4-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230325074022.9818-1-cnsztl@gmail.com>
References: <20230325074022.9818-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_004031_776551_560F5E53 
X-CRM114-Status: GOOD (  10.61  )
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

Add devicetree binding documentation for the
Xunlong OrangePi R1 Plus LTS.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 883c9d36e4e5..ec141c937b8b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -831,9 +831,11 @@ properties:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
 
-      - description: Xunlong Orange Pi R1 Plus
+      - description: Xunlong Orange Pi R1 Plus / LTS
         items:
-          - const: xunlong,orangepi-r1-plus
+          - enum:
+              - xunlong,orangepi-r1-plus
+              - xunlong,orangepi-r1-plus-lts
           - const: rockchip,rk3328
 
       - description: Zkmagic A95X Z2
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
