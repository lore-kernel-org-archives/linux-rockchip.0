Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13164CDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 07:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIHzvE0vPfhvkWvegEvvwI0JBHhK7MsHN/G5eKf2490=; b=Q1A+C42XMI2mEJ
	y1LYRg5eUZyGJ9i9SZuXdXNaNINgOBWC9z8QEGr5E6UkmUqopQhVdSdVJK/9IbzN5pGUDNJzM3S2h
	IBOSg8AZZYfMLZyGN1vkzuESsmz7ThVVXfyEBVsxYDwSoKfHY9MxQy3weJfIVYXN0m1hqUP2ecPX8
	Jj7pI1n1utPbuKMXj1SQOhhbuDVi1PW5muZr8FDaB6cZmYrXYiqBJlHYAC8ja2UL8OZ8Xf/gDBDhK
	raT44tTw08dFA7GLcdzOsFzIHlgPUtzSglOx0T5rsUwJtDUnIfZvCyJdqDKtpLYYFEATlBtVZsszU
	NzihFRetNPFJUpIYhE5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt0hI-00E1MF-2u;
	Wed, 18 Oct 2023 07:10:28 +0000
Received: from mail-m118212.qiye.163.com ([115.236.118.212])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt0hC-00E1J0-2X;
	Wed, 18 Oct 2023 07:10:25 +0000
DKIM-Signature: a=rsa-sha256;
	b=N6+2Ol1k51E6JWP/gsM/nEjC/4dgFUyqaGcEs5R23VJbcRGC+quRYMjjuy1wTrNPbZpND7bbRTmPCaEL/GKrcU8azvzt+amHH7klqDJ15ObTp2yIBJX575o33hg0oWwQzpsYww6Q5jsHrZ2wH+wXmvRfponmKzWu3J/eLHavMdQ=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1XvCOfyGPEo/kOJS0FZNwvhpiSiL4ph7pVogJ4dlp7w=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id 7EFC0400308;
	Wed, 18 Oct 2023 15:01:53 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com
Subject: [PATCH v4 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk id
Date: Wed, 18 Oct 2023 15:01:43 +0800
Message-Id: <20231018070144.8512-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231018070144.8512-1-zhangqing@rock-chips.com>
References: <20231018070144.8512-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR9KSlZKHkJJGk0eHhhOQkxVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8b4197423d2eb3kusn7efc0400308
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzY6NDo4LTw*DEtKTS9JGkIR
	KgswFDZVSlVKTUJMTUpJTkpPSENDVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlJTEw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_001022_981256_11185C9F 
X-CRM114-Status: UNSURE (   8.61  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

MBIST_MCLK_PDM1 is not used,
Use PCLK_VO1GRF to replace it.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index 5790b1391201..5816cd71a4e3 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -36,7 +36,7 @@
 #define PCLK_DSU			21
 #define PCLK_S_DAPLITE			22
 #define PCLK_M_DAPLITE			23
-#define MBIST_MCLK_PDM1			24
+#define PCLK_VO1GRF			24
 #define MBIST_CLK_ACDCDIG		25
 #define HCLK_I2S2_2CH			26
 #define HCLK_I2S3_2CH			27
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
