Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D38C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 16:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=izB6CYhQTnPBLaqvscgfTdXNpiPuJ3meiOFknt0XA5w=; b=j7JhmSCgwqZhMD
	G9IN334xph9ZRPhwkRdEU8T1nrDduThwRq6d90HvarpRz7+k5Lw8D87twsWsURTebLtQ/p+8+y04c
	hFfCef/V2bl2YnYf7WO+C6vNUGYJsyIeIhcyXVtCsGNeJCL8hAtaWWI/rqlY4hu0g3AyOUTwFNAKb
	dbWF/NZEay1qZEyNaaXgK4V0n4i/q7UIxLhcNgNgvBUTucKrjA/f+LTrvMF7o3+Am+z2lNb3+dzqB
	N3+7ezf93ZE8eXcsclUQE9UsfQekSJE16Lorc6IeDp6P6cnFK1NNLAEIXqBbGbupypch9Rjz0u9Iu
	KF8lR06o7NWcc4K42nsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxea-006UQw-21;
	Tue, 16 May 2023 16:36:00 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxeX-006UOS-0c
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 16:35:58 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6439b410679so9566538b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 May 2023 09:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254955; x=1686846955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MtjTsM1mEuCx1mqdMrVR2DcjL7gurSFESB57j4R5kX8=;
        b=rcgpt9POa2STf+Dn/QCe97IruTS7MNOkeO0RKWk0bqI80eCeU+e4YMmerDnE+6SGQR
         Ijueii/irgmFTJjef5fObBPDuBd3TyRNu3pUGaq4v9DTlH15qECJFEt73NDudR6jpdad
         gAg53LG4/SVOXc70Clec/K1lUhRZenoCO0GGmPnqezdhFG3n1THR/FhcRD0/u6KBobSv
         XPk8HtF4WgAWykUzUaltyiT90gM9gplLSpV/vognvnSD/OjkxiRhmSXzh5ds5nq9Mrmv
         9vKDyJKnddiMYhY1AjWcjMxSFJmXZm3lNsbEl1cYgWTf3IJNLb5wCwT6cSEOMCRwd9sf
         isfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254955; x=1686846955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtjTsM1mEuCx1mqdMrVR2DcjL7gurSFESB57j4R5kX8=;
        b=ICMmU2NLtKJ8anmUkIdeEGjaPg6yknLb6UeOz+XMcWyg2EIgQMF2FR4x7swkRS8CRW
         nV99YRuyes1rLsvlraSCGS1t50pUUaX4WB2dVgRt4P2/p83mRo5cNJqiEUKcT6BdcYhx
         JajO2g5YcYIRxdk0RNoQFCSzz1+1g0j5X5GAWrlZDQwbG94ZUKHpAdi3EAyf4rvc1CrM
         KqSgINEHB6LyopFjGr1iI8qNX8F3MJ/w4d2LMkX7SGIjcrkzQftlckqdvA1oNuS/MNQQ
         w9dM1dc1QD7OvdznJUNHy286Ul4QLNoWO9fE6PQId93aIOLrN/0P/30LYhOkrYmpyFA4
         V2gw==
X-Gm-Message-State: AC+VfDzB6pBc3QvMMBSPOEaJ/JdNicE+nL7XMLq9Fdx/JIIJcjLdSCyc
	3b0BYBs0CGQkpa34eK2y78Hccg==
X-Google-Smtp-Source: ACHHUZ7TRgRmCwRk/OxbjWskDkXi/JZIDxgcWdtaggzPh9w/3ugpcpcbsaDgvzJ3wViiEFtVGr5HJQ==
X-Received: by 2002:a05:6a00:248c:b0:647:e6d9:88c2 with SMTP id c12-20020a056a00248c00b00647e6d988c2mr35018625pfv.0.1684254955163;
        Tue, 16 May 2023 09:35:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:35:54 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6B
Date: Tue, 16 May 2023 22:04:51 +0530
Message-Id: <20230516163454.997736-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_093557_455861_C67E6844 
X-CRM114-Status: GOOD (  10.16  )
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

Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
based on Rockchip RK3588J from Edgeble AI.

Edgeble Neural Compute Module 6B(Neu6B) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu6B needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 6B(Neu6B) IO platform.

This patch add dt-bindings for Edgeble Neu6 Model B SoM based IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..8a7fbcac87e6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -102,6 +102,12 @@ properties:
           - const: edgeble,neural-compute-module-6a     # Edgeble Neural Compute Module 6A SoM
           - const: rockchip,rk3588
 
+      - description: Edgeble Neural Compute Module 6(Neu6) Model B SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-6b-io  # Edgeble Neural Compute Module 6B IO Board
+          - const: edgeble,neural-compute-module-6b     # Edgeble Neural Compute Module 6B SoM
+          - const: rockchip,rk3588
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
