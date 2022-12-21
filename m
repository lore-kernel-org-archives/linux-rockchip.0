Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F003C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=2onBErueQF37cVV/Naq+0plcLlPNoM6iQWfbTKP+dmg=; b=i/+Kme5d1G9cMG
	gbS8F5bWJpIQdgfn8cj1SMklPETqx8apYfqJrXi1WFvKd+73PiHWtPfiWc/vqHkUApvYOBrZlQJoT
	lwz0zQAgx8Mj2LqvBiT5JIr7tk7Hp3ElEB96Bc9Eqhxp+UYiLgLH4GuYFd7Kc7iRfuFhV636at3CQ
	3yEjQL9wU85SUTBrCxMnvC7/IMyRcPIJ3iOOGDmM0CYhHMKbGHkDRYufPJ5oUTrsF3Zj/M4IauUeH
	od3ZR1dE5Jan1sMkiDEhBVwWXOP0o7wlJ/Ra3eu/kN4qmTaGd4QB4vCOAcSSLNpPPlrWqrhwv9ggw
	40TWtDZdyCHIJIxDdFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80vp-00GClM-HD; Wed, 21 Dec 2022 15:22:57 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80vP-00GCHC-PF; Wed, 21 Dec 2022 15:22:33 +0000
Received: by mail-pj1-x1033.google.com with SMTP id u5so16042283pjy.5;
        Wed, 21 Dec 2022 07:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rwvyNFcm0dI6zV7MUfVY3A713zgzqWHPPc2e25ZpgGw=;
        b=E0MbKWldQ0EFSy7QTA1GSAtiN4RAYci/lnJt/H3APj6U54J0wxzc69vApKxvS8jZRl
         BbsIjLuItGm9wMgQ2OGfg6lldXUInL85G12fXFHb11M+XR/fIDHOO/P9nMBqXSmywnQB
         DhwGXY1EKXEbHTnIKB+DDOGtaFReDefM4PQGHbsJf0zC8PsI2z1hec1kLUFutGc3vAA8
         NbnbnvypJUHiGXhrSHPJlo0J5O09NvzQRcUtznKSO8xX2jz4znAHe3igfBhNwq8JJvzJ
         ItKr5QdgxJ7sEgFnIUoe1sLFDXZinCxkhebtl8tIb94X/+Ds6PrKKiqYIYF7FjnwIxNJ
         5tDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rwvyNFcm0dI6zV7MUfVY3A713zgzqWHPPc2e25ZpgGw=;
        b=IWOrKOJEQamLf6a2cR50SJM3ghYJKRNykvkS+T8wpGMD0mW/Bv+iMOPnoh8vXAfBh/
         6pFwFNnXxHtL8byZ/sgGd9e+wnEtN3ZBY51w9+PlRQuh3IhJXCCaJJ7YsvsCJirQKWK3
         t3IsKiy5T2tJcNM0rJncHlIjKcIe9Vm/Euqb0pTybMBnq1L88O1rS1wvr9Jbw5jsTIlR
         YHq2qvnhwiNGFfX80BtJc9ECeob7hPFOQwL1La55DrNbN5qTBOlv2U1hePm4YzTGPDRs
         UXRw6FgZG67MoEP5IKKSqtVb9+yC9fR/mhk4zlqV7wAfEOpAi7M44uoYTA8+SVVLnMxm
         qZQQ==
X-Gm-Message-State: AFqh2krb2T6chJdIRBozUbPHrN6mfhWUuOwZC5pEvJLjpusoQQ6qPxKp
	HXyBvWVMT56yeIMkr1r+8oM=
X-Google-Smtp-Source: AMrXdXsCxgI7fsXuBw0msYMSYi44KDcI9/3VNVjscO4DO5/EWZrIajQwA+Xhhmbr2zkWy+t41He6Kw==
X-Received: by 2002:a17:903:130d:b0:192:490b:a207 with SMTP id iy13-20020a170903130d00b00192490ba207mr1621232plb.33.1671636148615;
        Wed, 21 Dec 2022 07:22:28 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.4])
        by smtp.gmail.com with ESMTPSA id h13-20020a170902680d00b00186b6a04636sm11586833plk.255.2022.12.21.07.22.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Dec 2022 07:22:28 -0800 (PST)
Date: Wed, 21 Dec 2022 23:22:24 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>, DHDAXCW <lasstp5011@gmail.com>
Subject: [PATCH v6 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6MksLH9POLt6UTI@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6MkcVIpEaWrTrsS@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_072231_873226_348EC43A 
X-CRM114-Status: UNSURE (   9.81  )
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

From: DHDAXCW <lasstp5011@gmail.com>

Add devicetree binding documentation for the EmbedFire LubanCat 1.

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..058ed707f3cd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: EmbedFire LubanCat 1
+        items:
+          - const: embedfire,lubancat-1
+          - const: rockchip,rk3566
+
       - description: Engicam PX30.Core C.TOUCH 2.0
         items:
           - const: engicam,px30-core-ctouch2
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
