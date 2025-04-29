Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD008C3ABA9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 01:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Jg1TuBpM5dj+B91gqI8xYglUPI/eAGw2o+E3snzhFQ=; b=49kxYHlqzc/dn4
	FOePPfbdg0cltx4t9ngXGhDIYALr6tzKZcjgPZcGBQUTQK14aYaOrxZaxLiWSv8x2o03+01NJwsqu
	8XvdCCjBTmm8eSIqZ8zGOaj2dKx1xmuAAoqfMBpyjhMzUQzCDryyUwm0fo+anhMmFRuVEuVGNYNvh
	jPl1uKG4HdMeUqoApFw7nhKRluPjLKztxwHVLvLO7ImKif8TtMPfxNMOxmmWWhxBc1Od/X+Id9pCF
	PUNWs8BIEStnQBM+w3A8ego3wpJLkFtsAQWOv/F+CuWzdI5OZpnvLjEjQK7ho4c26qy3Mdz6H7z1a
	LoKmcldRh0okv0JIKlMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9vp9-0000000BOun-1G4O;
	Wed, 30 Apr 2025 01:01:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9uiO-0000000B9kF-2BIZ;
	Tue, 29 Apr 2025 23:50:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B01D4AAB1;
	Tue, 29 Apr 2025 23:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90B43C4CEEB;
	Tue, 29 Apr 2025 23:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745970614;
	bh=voo/0fCvIhLMHf88zqX/e7QC57lFb1Bp8RSTAegByJY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BzSHYDnrF2AAYlAYWydjFhivRnIVbJRoaUltFzIfZHf5dR/Rt0l5Pc6DjAHInc+q9
	 ymu6tPs7hWGiVzcmRyJ70cRr7odagX6WJoAldCqz9iVzbvMZX60nCLT2zCi1UuzdiC
	 QltXHC3nZ5Q+W/1+Dy+gq8bY80dBdWHeklX3aZ6GtVGqWofiIx9BpQrgExMEDsUHDK
	 NKvYm5alKdKs4KnrI0PXft+6AKMyjjejkEgeXDLugcawPb3I3qf9yghdxGpcP6w5F9
	 EogBBqhY1UZvCedxhwLsuYGdxQqqm5wtqLY2n/SiHNe3O3DdnHowhWAfQ9XkfFzqWL
	 iBqje6cQmIJJQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.14 03/39] nvmem: rockchip-otp: Move read-offset into variant-data
Date: Tue, 29 Apr 2025 19:49:30 -0400
Message-Id: <20250429235006.536648-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250429235006.536648-1-sashal@kernel.org>
References: <20250429235006.536648-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_165016_615719_ECB57275 
X-CRM114-Status: GOOD (  14.97  )
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
Cc: Sasha Levin <sashal@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-rockchip@lists.infradead.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, srini@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko@sntech.de>

[ Upstream commit 6907e8093b3070d877ee607e5ceede60cfd08bde ]

The RK3588 has an offset into the OTP area where the readable area begins
and automatically adds this to the start address.
Other variants are very much similar to rk3588, just with a different
offset, so move that value into variant-data.

To match the size in bytes, store this value also in bytes and not in
number of blocks.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Link: https://lore.kernel.org/r/20250411112251.68002-2-srinivas.kandagatla@linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvmem/rockchip-otp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index ebc3f0b24166b..3edfbfc2d7220 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -59,7 +59,6 @@
 #define RK3588_OTPC_AUTO_EN		0x08
 #define RK3588_OTPC_INT_ST		0x84
 #define RK3588_OTPC_DOUT0		0x20
-#define RK3588_NO_SECURE_OFFSET		0x300
 #define RK3588_NBYTES			4
 #define RK3588_BURST_NUM		1
 #define RK3588_BURST_SHIFT		8
@@ -69,6 +68,7 @@
 
 struct rockchip_data {
 	int size;
+	int read_offset;
 	const char * const *clks;
 	int num_clks;
 	nvmem_reg_read_t reg_read;
@@ -196,7 +196,7 @@ static int rk3588_otp_read(void *context, unsigned int offset,
 	addr_start = round_down(offset, RK3588_NBYTES) / RK3588_NBYTES;
 	addr_end = round_up(offset + bytes, RK3588_NBYTES) / RK3588_NBYTES;
 	addr_len = addr_end - addr_start;
-	addr_start += RK3588_NO_SECURE_OFFSET;
+	addr_start += otp->data->read_offset / RK3588_NBYTES;
 
 	buf = kzalloc(array_size(addr_len, RK3588_NBYTES), GFP_KERNEL);
 	if (!buf)
@@ -280,6 +280,7 @@ static const char * const rk3588_otp_clocks[] = {
 
 static const struct rockchip_data rk3588_data = {
 	.size = 0x400,
+	.read_offset = 0xc00,
 	.clks = rk3588_otp_clocks,
 	.num_clks = ARRAY_SIZE(rk3588_otp_clocks),
 	.reg_read = rk3588_otp_read,
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
