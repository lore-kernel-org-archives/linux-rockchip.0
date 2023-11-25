Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71D2C46CA3
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 14:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iQ/cWjboPIM9mJhqQZ0Rhq5fFNngeut3pQ/veG1p1zI=; b=2As9kRk/W5wFAB
	r4k6joC/Sdwmxb8VP4Eq/95LLRrlmcO8M5L2K8xCuqPl0YR3ZGzsjdujvcLjmjhoVEGW2CF0M7EqX
	sNIm5Y1MakkJiVxyy2ccbosyXQ2oS6EdLIt79EzlqobZo4T6/9QqCwsDxH1pzYjWy5/Y4CPLjR6zI
	w2lXo16Xf8rBbpZtBwoO0hNgPZ7d0er10gukEjdZed4ddeLGH49usgASLR9OFMg0icmNRmph7IB9R
	e9WzpGaV5r+NPh1AYOLe0dhohzMNuQYVysvxOxAV+IqXVWXi4Z4MME/s8LKxJIhr2MejhcYoRqUaj
	mWMAe3QCFqkOul4bTeNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tfU-009Ljj-1X;
	Sat, 25 Nov 2023 14:30:00 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6tfP-009Lhb-2N
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 14:29:58 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1cfc1512df1so292375ad.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 06:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700922590; x=1701527390; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=soP+RRaN3MUQWLVu63uoZr/A2jxljbkXd36iggWLWsk=;
        b=sRfKe1n0rEt7tC/4Swk/Af+W4QuoPIcX9TIZ08D9gA6vbJqSB6+AYkMODesmuclDqV
         aHc7TGy40DvqE7+o6uR3FxgSZTQpZjWvgvwZBbY7TiuKbkkf95nRmGfSrgz1Wx9yThn4
         wIkydl0q+H+ab8YkX3Wl5r9H6m3ZACBen7xnWfDiLBx97QKQpcx+axzg3oT3/A3DJ45s
         BCSRQbI2XhPDQKnevT3se4vObEZV0ScJbvbxXQR5F3NC3BjAtCHDmb27YCJFx8TG/uwv
         hqjMdS3uAZ4K/28gVOF98RNJ+e91i+f/mW0wLThR+M+ZEPer+IyM8/CdZuEzar2yW2RR
         PzmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700922590; x=1701527390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=soP+RRaN3MUQWLVu63uoZr/A2jxljbkXd36iggWLWsk=;
        b=qF41i1bpa+67BnCycSvlBtCnCLmpnGUdUwr+h4KXLjFfy8N/5hM4tnCAhBRJ7qnzWB
         n8X5JBUFEs7MHm+O9U1HgLxOvY3DPqMmJy9kUZnu5QGG5Hp3QEtemCovpB6nudvLKf/Q
         Yy14hOOvozYyJCLlif+X1QQSG661x7GSW7tLbWXes3CFEKiDADC+Cbi/d/Xy5Ud+VGE5
         c6F2O5Wwfz6e8owlTs87MkmlHKVjBUSWYmeZ9V8NqMw58knsgAujFAU0xIPXXKk0NM2v
         3hLE0FdfukRdZZIELw/OkvwZoW3uPKTXmDMa8eubTPxt9tmmRsMECtxCm0n+zJoSmZpd
         XoEw==
X-Gm-Message-State: AOJu0YywcUkGZyhYeS2rONqMYDxtKcH0qhGudkPU/hut+wWgqgmT/IMH
	zu0vpR8ajOZEG3u9OZwBREw/QQ==
X-Google-Smtp-Source: AGHT+IGdRIJrwm6empRgqvj7NO2/h+LJkSkBwYKFMy7QT2+FKypIqAWRXGUD+CFth6DY4lrBsLOk6A==
X-Received: by 2002:a17:902:82c3:b0:1cf:a512:34c6 with SMTP id u3-20020a17090282c300b001cfa51234c6mr4764387plz.13.1700922590492;
        Sat, 25 Nov 2023 06:29:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709027fcf00b001cc6afede3csm5106311plb.7.2023.11.25.06.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:29:50 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Update edgeble-neu6 bindings
Date: Sat, 25 Nov 2023 19:59:13 +0530
Message-Id: <20231125142914.57459-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_062956_005856_AA8CA02B 
X-CRM114-Status: UNSURE (   9.98  )
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

Current binding has following compatible combination for SoM, IO board
- NCM6A: edgeble,neural-compute-module-6a,
	 edgeble,neural-compute-module-6a-io
- NCM6B: edgeble,neural-compute-module-6b,
	 edgeble,neural-compute-module-6b-io

This board topology now changes in final revisions, so a common
compatible IO board, NCM6A-IO, is made available for both variants
of SoM: NCM6A and NCM6B, produced by Edgeble AI.

With this change, 6b-io is not as available and 6a; 6b SoM's have the
same compatible IO board as 6a-io. This change is due to the common
optimised design of the IO board made available now in final revisions,
which was not the case in initial revisions.

Update the dt-bindings with this new change.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 9f6155e4deed..75f23d1d42ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -101,16 +101,12 @@ properties:
           - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
           - const: rockchip,rv1126
 
-      - description: Edgeble Neural Compute Module 6(Neu6) Model A SoM based boards
+      - description: Edgeble Neural Compute Module 6(Neu6) SoM based boards
         items:
-          - const: edgeble,neural-compute-module-6a-io  # Edgeble Neural Compute Module 6A IO Board
-          - const: edgeble,neural-compute-module-6a     # Edgeble Neural Compute Module 6A SoM
-          - const: rockchip,rk3588
-
-      - description: Edgeble Neural Compute Module 6(Neu6) Model B SoM based boards
-        items:
-          - const: edgeble,neural-compute-module-6b-io  # Edgeble Neural Compute Module 6B IO Board
-          - const: edgeble,neural-compute-module-6b     # Edgeble Neural Compute Module 6B SoM
+          - const: edgeble,neural-compute-module-6a-io  # Edgeble NCM6A-IO Board
+          - enum:
+              - edgeble,neural-compute-module-6a        # Edgeble Neural Compute Module 6A SoM
+              - edgeble,neural-compute-module-6b        # Edgeble Neural Compute Module 6B SoM
           - const: rockchip,rk3588
 
       - description: Elgin RV1108 R1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
