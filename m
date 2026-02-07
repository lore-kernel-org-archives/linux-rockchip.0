Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9399BEE0AE4
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SwDMWNglF2IktfWMtpu1Eg1AdKBIx2EE90Dkx4YBCdA=; b=JRs8/26c4hfgMu
	ua/gjlRbBET284OAQx3NPWUxzYLIrbAea0vVhtRvDd7pgS7S2It4v061bTJq6RAp8eZFYVvfyLZ13
	n9OCzsJUOteFWaCweM30BfdR2xyQ8wqubv1GXrqqruegcHidJNYg0NoTnKAt8uZaUbvayildMezHQ
	O5dVhqxP1+ibzp/skU/YYS+jQGw5U0joTrmAhzggURj98fwxGfQlwGPW6A194CikjBwegSkktg5Fg
	KnZv9e3FIEmlKerqVB+HjqVEQM+ls7Yy/G90yKGhwMcVbsqSvx/M6sTR4/VcfA2USJaWgw7X8ekmp
	BlFRw86qncsegqp5W8hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voi5R-0000000CSek-1Fq9;
	Sat, 07 Feb 2026 13:10:59 +0000
Received: from mail-yx1-xb135.google.com ([2607:f8b0:4864:20::b135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voi5M-0000000CSe2-3G2W
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:10:53 +0000
Received: by mail-yx1-xb135.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso448117d50.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469852; x=1771074652; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QBpsIzCCQeoZZ/GNnpHx2ANdVkIKBFfRNNmEzWBceUc=;
        b=BgT1Irsh7WN4MUMM4r3nfjHEBd7j92fWLgupAdieBcHFPFal2E/yiYWCAQmQW73UYG
         MzD2q734r/VtUBO9sKF0Js8XwuOmgCYblJUA8RHvSJxI4/3IqFsoPABKlF9EPK4fJAsO
         /5at2rnjCBsjy4sCjauyxPlP/hNFuZXLQ+V/YeklO32G7kxivS6zvnfKFwKobeBvCGqx
         dX+hfuj7eryRCGv22DBX1evz6CONjWGH2GURdA9bzkB3qhpvSWdIYgw89hoHACPYm9l5
         VblrJSqmEzNcHDypyWqDL+Tuxk5IywRqLFdD95za0tCVNFh4pdTU76S38kREY8LdvfIL
         eZKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469852; x=1771074652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QBpsIzCCQeoZZ/GNnpHx2ANdVkIKBFfRNNmEzWBceUc=;
        b=PwFHKJigOjIPD/Qqvme6aAaNkrT2f6Kk3O/Eg9msfx3klPPj7K3n1ltZDPP39BNGpN
         ONsubPhmFzRVWIDJl3nDT0FkFToAngoIZGqJ8ucOj3OBA8lC8Om5M1uY9xBot7aGGBpv
         EqXwVc3q5Ag5i1iksPx2FsaCQOur/2QZfWvagk6sJoXoThXAsiVp4LGgjYsGGbBh7j1B
         GUljbWig98jLg/zsY5tLWYlri89F/2vcLG4MtL7hz3nfo/pVqnLr7yhIJen0LN6QSz8g
         JOlulCHvK+YjOQT0fT91pcGEhN1rXy4tdhVpXacYhIVQ6lnKa8VWenaf2UnBGvlaPt77
         esaw==
X-Forwarded-Encrypted: i=1; AJvYcCXygJCEXvIIfYPFK+vzfD+IZ1g13Fkn7HLWt3Yhq/38Rt+A1FrSIpZ2mu3UDamGlgEaWrDluyJVQhSb1zj27w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZZsSY0oEvbxif2oqscFhvu5IgMKYgFepT33DLIIPYbSXi5Vdy
	LS7nzNmwXSKNUKrAiu0Y1N8k9HFY67V+sXUmxGdoPxwOoqduOdQshuy+
X-Gm-Gg: AZuq6aKeMBAUTqjJaHjgOm9QRdZ8iMVChO8WmY6/4GYYQq2KHMlG2PgWU4Pe4z3MEh2
	zO9A8nPGbqFUT66EkhCYEyPRTOgp49+sZXutEPonNdNsUEC/iLJRJdPeJlSajP+hubqkCl2XS7o
	j92B1dG2FgS58ZedFGDhJZfx2lK6aH7SXxvlDSwUocgl4y8svyova5R+R98fidj1LO3iMKHmMGt
	z9DJY+cMv6YB1YDNaXp2U1TojrqbLmOM7mIC2YPAId46tYPMSoDA0VPf8Lr5IoQe9/1YPeT2qug
	0NiB9YbZ0M0mW/k2q1s71D8An8eqYZpeOsvLWOzp1gbEPhqsuBj6VZRtPb8TrkjLEspPKq9Cdop
	ST7nLY2ISbWWGq5UxpEJkjN31idPUKiYqCqdzARw/6Y50o/5v+jx+Le672rnXHCfWSsRI3SqOHA
	/pqi1NZ2zb+LF3EyeYTf/bpx3T
X-Received: by 2002:a05:690e:418b:b0:649:b851:4ad with SMTP id 956f58d0204a3-649f1ee4aa4mr5307230d50.42.1770469851708;
        Sat, 07 Feb 2026 05:10:51 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f255ea25sm4965466d50.17.2026.02.07.05.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:10:51 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible
Date: Sat,  7 Feb 2026 10:10:41 -0300
Message-Id: <20260207131041.2833840-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_051052_824444_7F82EF54 
X-CRM114-Status: UNSURE (   6.85  )
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

The RV1103B uses the DesignWare MSHC controller compatible with the
existing Rockchip RK3288 variant. Add the rockchip,rv1103b-dw-mshc
compatible string.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Make commit log more concise.

 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index acb9fb9a92cd..a75209bd2710 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,7 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
+              - rockchip,rv1103b-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
