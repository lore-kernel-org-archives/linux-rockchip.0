Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECE60C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 13:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i9XAmKgYyUCoJw7oqDi1IdBSGMXj2Dl2ndBTGyGzE/Q=; b=kIBlWCCEcunCQG
	HA8HCNLMOXc18BOHUGt7mNb027XkUhx9uwKJlHt/oEu3d04ddmVaNImBLVPcVAfX3cxogPhQTMBEn
	Heui50Ho4iZ7isuSxWYrFFj4kX2pOXzJwIQ0zNH1SNw6o+eLmckm52xTQz8IYmQ4KRIf4RYQfBEDb
	Hz5GjmoPE6BR4vFDOoEFxuqwcADy8AGeLsAeVgkpyOWJuYaOy5ulMFYYpSuMWlQ7IFYAp1rki0F6y
	hD9nwj73LrhFkOoorquQnUxrborHan0/+XT8q3RuRzdhqSFtGL/ShU8pufFfXeuxfOQulY0cPMCn6
	BW5UMfmkBs414vOy/x0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phsBl-003rYw-0e;
	Thu, 30 Mar 2023 13:19:37 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phsBh-003rXb-2w
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 13:19:35 +0000
Received: by mail-pj1-x102e.google.com with SMTP id p3-20020a17090a74c300b0023f69bc7a68so19533241pjl.4
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 06:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680182372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S6l/tdN4cMocc6YNsFbnVaBOI5uqYV8apPR4ELkkR1Q=;
        b=pPb+W1QgZUk+g/DFt0UfL4wvFYJaRRtQKymjwO8tr2syCrw2bxdSdsGsBmOTjBJJOU
         GRkmAqZZoHB6hOnkhqHnThpioBHtq3jivXAPFWke4uyOwhdORNZqKIRxvMGCS19DhfLI
         ggM0uxvrKrxdJXxG2mJiCNE9dRLCUBp2M7iFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680182372;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6l/tdN4cMocc6YNsFbnVaBOI5uqYV8apPR4ELkkR1Q=;
        b=R86KqqSHlvc77gx9fPR9xKMHjZ5b0YqwOX+AJ9+MAdaudJa8YcgsYMhVNYGBUs1vWr
         htmq4lJNN57KRFnLgAC248IvtVr1zRxO3M+hGMu6bfOG/6EBPbqaYLfDqf1gwT1XD6Xp
         1JdZDLYCIDG/ms7FYx+tD0rAd9VJ7/FiYlbghC1v2YeOHTkUTigduaAQ4NfaNYZp+aMd
         LSjt9rK94EKwgEBgCE8T71TODztFte1g51QeHUKf1Z3OIA/Z7/m/p6AwkOzwHOqDX8Eg
         lImBxvC07mYqPurg/MV/vcIUw0hSbgGbN55w+BHB5F5XDzckS53SXUpOEUAv7fvXWwmc
         NxCw==
X-Gm-Message-State: AO0yUKWFFWzwoh8m6cAr8J9cIKdjc7iuP31dUNBo/U81QkV8p5JeJ4cT
	7QaOgjIe0zIQ8U2dgPqk9olpuw==
X-Google-Smtp-Source: AK7set+nB3B4s6QuXUMw7fa8+aYurUZsFGiWJkTcqxFTLaUpIGoGauwzQvHyFwb4bsvlmviF5TolgQ==
X-Received: by 2002:a05:6a20:ce22:b0:d9:8b07:eb0a with SMTP id ic34-20020a056a20ce2200b000d98b07eb0amr22599282pzb.24.1680182372424;
        Thu, 30 Mar 2023 06:19:32 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:8bc3:c2fc:8dab:d912])
        by smtp.gmail.com with ESMTPSA id e15-20020a62aa0f000000b006259e883ee9sm22473622pff.189.2023.03.30.06.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 06:19:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-amarula <linux-amarula@amarulasolutions.com>,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/3] dt-bindings: iommu: rockchip: Add rockchip,disable-device-link-resume
Date: Thu, 30 Mar 2023 18:47:44 +0530
Message-Id: <20230330131746.1475514-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_061933_946491_0B3B7A30 
X-CRM114-Status: GOOD (  10.99  )
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

Rockchip iommu is trying to enable the associated device at runtime
resume however some devices might enable the iommu during their pm
runtime resume operation which indeed leads iommu to use the wrong
domain and this leads to device iommu page fault.

Add rockchip,disable-device-link-resume flag and give an option for
those devices to disable the device link during Rockchip iommu pm
runtime operation.

This makes the device enablement for that iommu domain ignored during
the rk_iommu_resume call as it assumes it handled iommu device
attachment in the associated device itself.

Document rockchip,disable-device-link-resume flag.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../devicetree/bindings/iommu/rockchip,iommu.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ba9124f721f1..ac8b03806cb3 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -58,6 +58,15 @@ properties:
       Some mmu instances may produce unexpected results
       when the reset operation is used.
 
+  rockchip,disable-device-link-resume:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      Do not link the device during runtime resume operation.
+      Some devices might enable the iommu during their pm runtime
+      resume operation, so disable the device link for those devices
+      otherwise iommu use the wrong domain and that leads to device
+      iommu page fault.
+
 required:
   - compatible
   - reg
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
