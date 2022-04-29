Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBABCC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 11:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3MlKhkOFXalV6HTQf9KqRDB9TywRlDaIB1n1Cjvijk=; b=jn0oExgUiDInEW
	Y/dPuTtRbANlz9S5HtE09iN3DC/WmRMThxUDbg0bS9Or7RRc64RI3wn1Dowy4c9kJMYpa/RIW4oqQ
	dOmhLGrRLWJT1kR09SLKy9NuxELbQsDfebdsrX/ZrntZbRtuBNnegMq+ksePSC3X3tlRsO0fqwLE+
	K8HZysJdwMUpZvLjMPANl8NC++tMhZ8JZrwQbZNJ3tEhdJgzA/4Ko2SPTzeVd8yLOReb24nnZv/X9
	U54Pa5hSwDt6avrXK7XqO/mPFBzINIlFYueQx40leY78kjO3PQ4du7eA4aTrmWBI4x1ZgDtSoka+1
	k9/Uhc5Kp5yAhlco3WoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPBb-00B1BY-P7; Fri, 29 Apr 2022 11:53:23 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPBP-00B156-EP; Fri, 29 Apr 2022 11:53:12 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id q13so5154376qvk.3;
 Fri, 29 Apr 2022 04:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/0BzL8B3OkyLX9kPF01T/3su20f1yiIHSqjn4IIxTHE=;
 b=EWQyr3BtXtid12435zlUXMdpotNXe7nlWXj21MJoKVVQ0kdevcfwpx9/gTwuT+d4n3
 ZlmSRcLRaOVwcQHYDZmpsqyhyWCyAKpy5CXg0CLKxF/TsK3iTPrZUZCAIWYtFbJdF8Oy
 2L/7EWvQMVU3UHIRS6ApD0VCHvQGcoWTpJxi2IF8b8hQL9DKh39G5OO0prIEcyu0LhVF
 p1vGUTpZDQllC+jW0+1pNKvD20+P4wf13knEF1aBjVhqLIMZQ8BdRAxLtjaAn7vmY8Vk
 O/s1KiUdbmD/BS8r5haUjw6uX/QfU/a9Ekw08kKtk6fHc1eMfd/43RhTn87fiuo1VbGW
 +IfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/0BzL8B3OkyLX9kPF01T/3su20f1yiIHSqjn4IIxTHE=;
 b=PghrXHGoKiiUgVMtlu4rjGr7J8+4r0oo6hW3q6rI3L2+p19gKKp8uAenE3u6NEP1rO
 wWMUva2IOiZ1JK/aLKIA0I+kOTXtN/X+W5xBxJtGHglwB9sf1KcaVWM27D2v7lL9m0sE
 9enN+S/018Z9cJ7QnllTGvbIJS9us3+NbdI/xCGs/VjEY/z3SZGttX+rjwVorx3ylrM/
 X4ZEyx7R2gHvsBBE/M8MGAiONVvRVFCT9vVoxCsLo7ifXKnunO0Cn6NIcBmWdj9B5CD2
 h6Nx1zj2IfzTuxDW4J6hDrSQGecp7YQ9oUOCRRzby9a+18X57enk2rjD4chZZhgRFNwq
 gSXw==
X-Gm-Message-State: AOAM533jKilc3eILwlNP0UoCCwJ0haKSx3TxBp+YG3jSFgf+Z1zBDIgj
 Ew93WfIlzDfX62jv9JL71ik7Ji21DawfFQ==
X-Google-Smtp-Source: ABdhPJw1Q6hPXonGtQBvISs/6ZWPt5hrKsKtiTrqr280rT/+R3hNuoup9aJuXugDkKrDlFCrNeUAWw==
X-Received: by 2002:a05:6214:4104:b0:42c:1db0:da28 with SMTP id
 kc4-20020a056214410400b0042c1db0da28mr27420668qvb.67.1651233189032; 
 Fri, 29 Apr 2022 04:53:09 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 123-20020a370c81000000b0069fa408fdb7sm1382505qkm.24.2022.04.29.04.53.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 04:53:08 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/7] dt-bindings: arm: rockchip: Add Pine64 Quartz64 Model B
Date: Fri, 29 Apr 2022 07:52:46 -0400
Message-Id: <20220429115252.2360496-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429115252.2360496-1-pgwipeout@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_045311_517610_1356545B 
X-CRM114-Status: GOOD (  10.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The Quartz64 Model B is a compact single board computer from Pine64
based on the rk3566 SoC. It outputs on uart2 for the debug console.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eece92f83a2d..beb5b0ac1a2a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -502,9 +502,11 @@ properties:
           - const: pine64,rockpro64
           - const: rockchip,rk3399
 
-      - description: Pine64 Quartz64 Model A
+      - description: Pine64 Quartz64 Model A/B
         items:
-          - const: pine64,quartz64-a
+          - enum:
+              - pine64,quartz64-a
+              - pine64,quartz64-b
           - const: rockchip,rk3566
 
       - description: Radxa Rock
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
