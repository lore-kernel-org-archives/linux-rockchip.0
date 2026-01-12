Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADCCD25038
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 03:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1rqRBuTVpgIJpOlMTTKqRRauJbHG/qnK2C+tVWEYzg=; b=S4y0a2jzcFWhf+
	n6fBcd+laf/bmdk7Jvnbf+Xl3scK3IjMJq4XKmJKByMlgsaH5jM5gCPu5ZWRFnkIYm11s4x7o0Oj/
	2K6BbbRJ96WBAHHcDQn2Jz1+hUJ70k/xYj06W0qW3nbzlU9kZQKK43gzm7DKcJBN8Ms+xATpSTKJh
	Fnkg1phU80d5r9EdplB0CwMHilw0VBSdugmq4TOa/xX+UfImDjq5ng4Lb7aYVwSxz4zwCD5MqGBiH
	0f/0aNwtGg0GadnTADZ1PXwkrcYK3tC8Ocnb4c9Rd+p0x21yHzxCHAR7pBtxijaySjAD939+9+UKG
	ujdJDQU5qUAV5TFd1mtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf8wJ-00000004jQu-2MVl;
	Mon, 12 Jan 2026 03:49:59 +0000
Received: from mail-m32101.qiye.163.com ([220.197.32.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf8wG-00000004jPv-0dQj
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 03:49:57 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30449dd21;
	Mon, 12 Jan 2026 11:49:50 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/3] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON definition
Date: Mon, 12 Jan 2026 11:49:26 +0800
Message-Id: <1768189768-96333-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb053089e09cckunm0fb8f84327b6cb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhNS1ZLH0lNGk9JT0xCQ0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XnTWvu2OZ2+emR97zAbbAcrRFZZ+XHcawLX/KrzCAWbLoixeO3p0JwLNXHmdyu+rL7SbI/YoLIjqMbCSHZJANXR7mkD0RXZsjEJ2dRuISWaYs/hYuLHpkXuSXOM71GYzuTErR41/yKJX/cxR2HVL0/CBaZQEIjJSp/1DEfjb+QY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=n7+klh8d751uJcTvhrJRMLJ4U3aNjLdcDAtlbNN4FnI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_194956_482946_4F1B4F56 
X-CRM114-Status: GOOD (  10.09  )
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

RK3576_IOCGRF_MISC_CON is IOC_GRF + 0x40F0, fix it.

Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/soc/rockchip/grf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 27bfa09..8974d1c 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -146,7 +146,7 @@ static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
 	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
 };
 
-#define RK3576_IOCGRF_MISC_CON		0x04F0
+#define RK3576_IOCGRF_MISC_CON		0x40F0
 
 static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
 	{ "jtag switching", RK3576_IOCGRF_MISC_CON, FIELD_PREP_WM16_CONST(BIT(1), 0) },
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
