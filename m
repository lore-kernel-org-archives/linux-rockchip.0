Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 488CEC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 12:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rD1/2tmfMkw66st1B42tTte65rlvz3h6zJBgD6OrpcM=; b=0sneIQnx3eghBZ
	gyQ8jIlHPVLZWor+dWJOqRl+AKrOvn+FPlLnzI2yY65MgKcIj9GYruQSvY/mWqAy5wUCAZoPdbQsx
	zpodPXBlhPC4PgB/yevi/raHf9u5bAPiuYfS/71KQlUOkstRcQHQK40c4LiesFUP0b1k7GIYKhFKk
	jznM57DHibxcOynoDRwSS+VgW62geVflIbR/TciGfHd8jo7Z4IcLZflYfLGtLQ6kljNvROZc3ZUur
	vSCAMLX+gvAcvFOmKFbbX5PUYDkT7b0P1Nvoj6OG0QcTEV0z7vravhez+VK7Rr1ZdS5HVmXSapZiH
	WHCHXINqhCa6sCFd4rNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKDA-001wOW-31;
	Thu, 23 Mar 2023 12:38:32 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKD0-001wGV-2S;
	Thu, 23 Mar 2023 12:38:23 +0000
Received: by mail-il1-x132.google.com with SMTP id s1so5548727ild.6;
        Thu, 23 Mar 2023 05:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679575096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1NrJl98Wq/VFN/yn07I9btG+z5z9nbLGL2qm/kQRv2Q=;
        b=RBeBfX/9tL/CbzDuswXSHMrbVF2l+xUgqV9oijBAWbZNUSN30SAa4BGumOO57ZJjNR
         mjnc+cVEimwRFJNfcJ/9llQlEz0cIVieiWX2LNhGY+syfwlpOY/My16y9LTMVHq3PTOE
         StM4rehYNGlSebhI1B9v2mnRQW9sf++ldUdMSVVOTKK77VLdC3Y+FwsgqHUTiTwCM9dz
         tIxFbQ76ZiNdn+mpw+6B4rjW12CugnZG7l5//IW1tux7iJozneu+FCZZyijSIz2yU2zC
         DdSueEezvmY/OIKd/ZTVpaaEYI468KLnqtHpbK3nv9RnKwjHQXbag50iwzVOkjQz8f7/
         MrMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1NrJl98Wq/VFN/yn07I9btG+z5z9nbLGL2qm/kQRv2Q=;
        b=fygxobhhwHYMMXzo+5MB8LLK9F5QecPhTg5hC++LYHBg+eMF4DCF9i6Z5NFRYaIga1
         TO5UMsT02xcqwElMZBebEo9xoi+WfsprnB1hFADJrM4Fcw9333tGajyT/31cSgt16fB8
         j3Aqnk+89YXe/1em0G/C9O5OHzI5EQjgWksnWRZ1otrjVvQCQ0hvXYzjxgOLMWZp7fkt
         npld7qVzRyFGL3fbaURfCUjtTgVB0xROWZvOPwx2ZWOvUMlscbH5uSlbonHyzxAF9HyX
         aL5C/Z4tkHLpV55sWwlAnpSWnc2wKJxKuGgfpKWseM37WQ/djxroEXEiHGijYb0GIzWs
         qizg==
X-Gm-Message-State: AO0yUKWdLNZZIrJ6gwGFPxNZkOiEhbcWV4IFViBUvzuP8QFohnKoN4Cb
	Ktk9flFh2j7XnDejEkyMt5g=
X-Google-Smtp-Source: AK7set9Pab8qklvfXaksZLPOMTdj06BRiNdxIgLWC1L6TCmhaG4H2ugKGm2v62LuWYgE0u0AQcTIuA==
X-Received: by 2002:a92:dc07:0:b0:322:f878:abcc with SMTP id t7-20020a92dc07000000b00322f878abccmr6168611iln.24.1679575096360;
        Thu, 23 Mar 2023 05:38:16 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id n11-20020a6bed0b000000b00758993500f3sm1307608iog.7.2023.03.23.05.38.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 05:38:16 -0700 (PDT)
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
	Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: Add doc for Xunlong OrangePi R1 Plus LTS
Date: Thu, 23 Mar 2023 20:38:06 +0800
Message-Id: <20230323123807.11882-4-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230323123807.11882-1-cnsztl@gmail.com>
References: <20230323123807.11882-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_053822_809681_B9324019 
X-CRM114-Status: GOOD (  10.52  )
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
index 01df9a5a0cf5..210213a1eaa9 100644
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
