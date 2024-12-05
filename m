Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 800B9E7716E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UJanR+CYLSeTEIogpXSODVmntElaflcaw7phaMEmqBo=; b=ynLT1jxa0X42Uq
	pk6n1Nw8K3sJ0jeT65w7GwSMRmi0BBizCpO0/AF4FypmaDJ64Sm/mVMYMnGMxUsZbTzXxt7FPc1Z0
	Ab93ysF7r/HW+1LAS4nzBvsR85sAnk+Vn125iULHhBCJt48wDljVcgUTnWXccYjC2KjEuOCqgcMSk
	X3WnnPH0Fq+viQXZEr8zIqzgGxqHJ/EXb+tKi1EkhFYhZdp2gfyydsFo0Vqz24Jy3oyKLaOjdp3wC
	bxjRkkVfYr1sn6l5hmcods/+hdxziiMnpRqCZh9V4D7Ocq61U4CXpgXSFQofFxwKIDIMgBDMkw3wb
	O3iBWcvxJ+U2HIUdD+Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJGdy-0000000H7gb-3lR2;
	Thu, 05 Dec 2024 18:32:06 +0000
Received: from out-186.mta0.migadu.com ([2001:41d0:1004:224b::ba])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJGcP-0000000H7OO-1YGH
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Dec 2024 18:30:30 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1733423425;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TkFcQWL7xs7GRrweqW2QeL14ugcBYgGFOAcV+eRKS1o=;
	b=AUey5L7yyC5O5EmErxvxqKQAIN6CbvGyk2w5kVwJeC7t2tWMHbAr3lE4XgHzWBRLqBaNDK
	RvbF0I6c69aNMkXECJ+gTu93x9duEeog1AdxrgbKabazA+XmG5R+snMPrmY6ZtwW9G3b5j
	3n/AVqLM3RCex7PP7zNFaKjJeXFobhDCE+NaUuCev5v5S0NM6ngv9qax+r7vs0LZgQm46Q
	p4q4OgzVFhBCDzSuzc5s7M+zRIXbunAoFUJ2POBa5wbEcx0Z5vk/8oBJprKTlPkRk25DcV
	g54vr7nvD3jdCkG78ZXQQjLogMil3goZZBAS5V8cPsrh/rAV4f/xqq4P61uLoA==
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: rk3188-common: add PCLK_CIF0/PCLK_CIF1
Date: Thu,  5 Dec 2024 15:29:35 -0300
Message-ID: <20241205182954.5346-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_103029_784693_285A501C 
X-CRM114-Status: UNSURE (   6.69  )
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

Add missing clock IDs for the CIF (Camera InterFace) blocks
on the RK3188/RK3066.

Signed-off-by: Val Packett <val@packett.cool>
---

v2: split dt-bindings into separate patch
    (oops, thought that only applies to actual yaml and not headers)

 include/dt-bindings/clock/rk3188-cru-common.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/rk3188-cru-common.h b/include/dt-bindings/clock/rk3188-cru-common.h
index 01e14ab252a7..dd988cc9d582 100644
--- a/include/dt-bindings/clock/rk3188-cru-common.h
+++ b/include/dt-bindings/clock/rk3188-cru-common.h
@@ -103,6 +103,8 @@
 #define PCLK_PERI		351
 #define PCLK_DDRUPCTL		352
 #define PCLK_PUBL		353
+#define PCLK_CIF0		354
+#define PCLK_CIF1		355
 
 /* hclk gates */
 #define HCLK_SDMMC		448
-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
