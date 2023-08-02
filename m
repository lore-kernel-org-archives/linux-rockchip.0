Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16EC7C04E69
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Aug 2023 07:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=finWp88RMbKfA7Ajb4gclr9Tb5EzO4Di05IJZdQbcVg=; b=XrjttECC1g/nit
	bY0b9Txvuer2rKNLNsLNQwvMjYfGUolTw5J4RNVVEobwWqTT3VFqsQ4TD9nwmnqE7bkcbioNLrCTF
	NpylzYlK+jL5R9Z6V6oZM2nKW+uuimxPWHpQefa5/aTwqrty11FqebaPEJQlBsiCvAEkljxg6DqeF
	a8yGJKhIes0UEnSkiyFEe3bEugJpxNoIwZorYPGKkR3/aysWtuv+1o2oLD1dUCp8aSC9tp/8djQij
	mOdJS4DByOoPjdQqARKNNwmo7CSxELNVo/DbQcHoDTLFgwOEwM/AOvmLd2f8gZjzVBdNbb/in273z
	flSUkFI8Luxqi/ZeISvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qR6AO-004EGv-1R;
	Wed, 02 Aug 2023 07:21:08 +0000
Received: from mail-m12739.qiye.163.com ([115.236.127.39])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qR6AJ-004EEL-2D
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Aug 2023 07:21:07 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m12739.qiye.163.com (Hmail) with ESMTPA id 8C5404A01E1;
	Wed,  2 Aug 2023 15:20:43 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de
Cc: linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com
Subject: [PATCH v3 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk id
Date: Wed,  2 Aug 2023 15:20:37 +0800
Message-Id: <20230802072038.29996-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230802072038.29996-1-zhangqing@rock-chips.com>
References: <20230802072038.29996-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkkfTlZDQ0gaGkNPGhlPSk5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a89b51ed3ecb212kuuu8c5404a01e1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6Qzo4LT1OPCsqOT8qAywq
	Mh8aFBJVSlVKTUJLQk1LQ09PSElDVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpCSko3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_002104_230138_99AA4973 
X-CRM114-Status: UNSURE (   6.64  )
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

add PCLK_VO1GRF clk id.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
index b5616bca7b44..864a321ab362 100644
--- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
@@ -733,8 +733,9 @@
 #define ACLK_AV1_PRE			718
 #define PCLK_AV1_PRE			719
 #define HCLK_SDIO_PRE			720
+#define PCLK_VO1GRF			721
 
-#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
+#define CLK_NR_CLKS			(PCLK_VO1GRF + 1)
 
 /* scmi-clocks indices */
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
