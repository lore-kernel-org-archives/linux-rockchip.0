Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1497AC43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 09:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whkzVpMsAT1T8XdfZe8gh1/hEhPA2h1ymHPuMCWHGuY=; b=W+F48G5oFjEPxU
	nkkSh+PNcPk2Uh19JPBvPReOm9M5LzsmZ4tijSwm/JlilXLxuOGKj+GK5+yFrpBHzA/QULE/mACPu
	WS/W52A3zyJTgmy3Ct+VNhkeQW32D+ZmSD4EjocUCP9JJvQgVd7pfIU7Bi4FB17oDz/YXagJoMHmU
	eZCU4zyZW0XItTDJqmRJU7PI1P7E6uIdPjPQEH2zOaSawQ//2O1lR/yda5JY9G1bjvvFntk4Pmysz
	h4sxg/R7STQEu8wgE99Oz92aIw24QKWPsptHWdq5bwZWqM54jRVmu3I5OmgqQCWHk7rxTa5o5xHNR
	0OitSJadCc3vEVFeuyUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfQ3-0000000Byn6-3bKH;
	Mon, 06 Jul 2026 09:15:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgfQ0-0000000Byl5-43O3
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 09:15:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id d2e1a72fcca58-8478fe07f65so2854812b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 02:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783329312; x=1783934112; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nE3XF9TJ3rEGOneChwFEqNNIrveo5+lTJId+Q3nPPQA=;
        b=fY/NIK0zWOKrgsK/Bq6zECQeUb6vARUa9yDPocoTWUy8T8z78r8YG/cajUTJZ9SaU7
         R0Rf06SNFlbxW0qZa2hPKzxuAnEPHUQuMg/8FFJmGggC3XPagH8dKV37GDixf0H1lidE
         CJyOkJTiJfWlybMhTaC4rDgAJuY59QEpoodz/T0HMobWTUXd0mxZxGSrRg7WtEJq2HDL
         TwMJaD2yj/mP2bkcZMO94jK4T+2xKyjQnFJ1C0EEy7z20Ifuz3dYnD1LfNxXdeOwxFfG
         4ih8U4aSWsgcFTXNorOyggwv0fGtnjzmJRUBAlzcToN0qCqp10n8DBKkfipGyLHCu51r
         SIog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783329312; x=1783934112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nE3XF9TJ3rEGOneChwFEqNNIrveo5+lTJId+Q3nPPQA=;
        b=NCzjRIzcLbULn5jcqeZpNgNWUWtztYZ9M+CHq3G2D0Ijv5ODRHlPUQ8g5bhiVhgiQc
         dABeeUMjB9TpD+nRsQq67IdJdCInOOzNVZVhVGDLP4Yj7aFQ6xvxhJcG19AhX31h6qWD
         /FpxfR2IECKsUABqbdODipeZpf1hkurrF7yvA913z/8HE+DwvEPaYTgpsRnYAA1PEihP
         SepPSFpeY09Bz23ZjTZY7DZR7Gi8vo+ajsJwC+MJsqoNiHiF1PYcIsKoF1yAnIwdqDmC
         nu4Sb4vDrHf+be3KGD7PJqq0rTF87N5tSHWzB1RrrQt7likaQLozdaOGbzd8yyj6B4hU
         /yTA==
X-Forwarded-Encrypted: i=1; AHgh+RoL9T1KqKgicrPGF6B4Teqq06uLN3OvGubkaVRL1W9TEMGPe5FUG8498DytYXSUUkwamVXcx6HglWDyPdyP6g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0JJtZZyW3dxEV8DacbNM3FqC47iwPZEmeQH11XQ0QmA/3f8fx
	9b0t3eAGX5s7EajzHr/PossHPNIaYD3DS1MbLw3HBDbzdOsvUqz+yAc4
X-Gm-Gg: AfdE7cnvvRCZnGnDwtFKBWCKpq54HpvFyMVZ+HVl3Vh8glmWXuLEUGzyVQsCxQfTErA
	CDrsuxDorTXkxZoQhEkqP/SDdjT/rOPDzjF7WtDN7jyiWp9MCZ9VmNec3hSxKlXUNSzs1qFdfzW
	cEX6CWq4zZHaSHhhvWZS37gMBuv3vF9mZCoE3MfKCNsZktcZrgrkbV/rg5w24VI5VJbHK9yaH9l
	rnzf3KgWgVcFZNfPBzAe/bnijHGteE9CGor4xDMNuID6pd7uS4Spu4Of2lFXmZ/A3AV0DiEwg+0
	ha2TbIOAPAhtoiRzNZdkaqNC35lCrNBgRA5Azrzi/UDCXdoQnkfJzE01AkO5oYm7FR4LDvVr+9L
	xo4Vzzc0UAsx7rDE6V+Fi4tbXOwy90+e1+5zyHgc4UQE0CdYOKQ/d+o+EGPee0X7wkh20pIGKdb
	d7zM/QTLROvEqovTMT662vNxze
X-Received: by 2002:a05:6a00:744c:b0:848:19f4:3b52 with SMTP id d2e1a72fcca58-84819f45421mr1984897b3a.38.1783329312352;
        Mon, 06 Jul 2026 02:15:12 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6db29d1sm3445963b3a.53.2026.07.06.02.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 02:15:11 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Mon, 06 Jul 2026 17:14:42 +0800
Subject: [PATCH v2 2/5] dt-bindings: arm: rockchip: Add Alientek DLRV1126
MIME-Version: 1.0
Message-Id: <20260706-rv1126-alientek-dlrv1126-v2-2-ff3176ca362b@gmail.com>
References: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
In-Reply-To: <20260706-rv1126-alientek-dlrv1126-v2-0-ff3176ca362b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Frank <Frank.Sae@motor-comm.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783329286; l=1084;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=hEAydHqntdYMnlyAwKWZtU7FCzzrJfeB5kFdTHg3eh8=;
 b=oUIvb0p8xJrOQfktVGkGTJAbXV6vKYwxR7zox/cjJFvRifrU/XZQte3H1tZqxq8jemi+Qu5h5
 kI0XpBCrB7QBLc9+7DAvO63iyOniB4dnpGDfjDqMs9cydUzegylaX06
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_021513_070304_13E80B3C 
X-CRM114-Status: UNSURE (   8.69  )
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

The board consists of a DLRV1126 carrier board and a CLRV1126F core
module based on the Rockchip RV1126 SoC.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..9058f2a461d5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -162,6 +162,13 @@ properties:
           - const: coolpi,pi-4b
           - const: rockchip,rk3588s
 
+      - description: Alientek CLRV1126F SoM based boards
+        items:
+          - enum:
+              - alientek,dlrv1126
+          - const: alientek,clrv1126f
+          - const: rockchip,rv1126
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
