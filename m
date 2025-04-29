Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AEF9C369DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Apr 2025 23:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2R0TdQtrJmuD6XBdPXoVDtbKQPNqnMjGL8/uT+GPK0=; b=r+FACkgQLW6bun
	lV3VTTafMrC5sh781dhW4eRlhN0wS6aCCu7ZDJdYUGw8oqkyzaob79UAKGWLLw6XbhjyNQCL2qnxe
	Yj2taYo2jOzw4ADR6n4a/bHvby3XZWeFtm6O06mOzec11V1/JAKP7x9LBaMcwW5xM2SDXd1I4nQMY
	dWQawQ314QCkCvQvej6dCo3dlEFLPAdP6zszusLGWVpaTmNm4RkysmQfGzX7zxiu/DCB5or3y/rei
	k8mlIVeqvfBhrFK4moehkNmA6bne2YnjO/gXD+z0/lPxXAyV2e6k9rP/69RkFLQ5+9htuzjErdWVL
	gq6RAkNcGqUQ+3IOwOWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9uq4-0000000BBd7-41cY;
	Tue, 29 Apr 2025 23:58:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ujd-0000000BA4U-1Gts;
	Tue, 29 Apr 2025 23:51:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 92C795C402B;
	Tue, 29 Apr 2025 23:49:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4275AC4CEE3;
	Tue, 29 Apr 2025 23:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745970692;
	bh=0thmh35gHKznLtBJJ5aw6yD6qUAMVfJjzOHdFZiBDRg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MuUoF3v1lUlHdwKFk7VSN4B6fgFZBtc113i82oiHKErnXFvVYQWgpxv7XR32h7A0z
	 Apvh+eUbtTfMUMgWAwe5BP+Mw33hhKMUj+fyJF5Gstl2m5zGfZc12QJVj8DnKIP71S
	 zCymqo2ts3E4woYAFIJQrSH9O80fO/2LNRyIKi3ZSAxB6Z1A+hO5HfiI5mp6bX/TR9
	 zzPuZaBYwsZmB9uWJbHuYAGULTvxPlKkEY+rBNPFy4bXYKeRKwP71qed50YuydtZB1
	 KKk34Nou4NTbYuLM35AiugVIHfg15r4HLJC9wbu0nKVBf6DQtF0D3lO5Opv/WbEQKR
	 h0tb0fBKYNMhQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.12 04/37] nvmem: rockchip-otp: add rk3576 variant data
Date: Tue, 29 Apr 2025 19:50:49 -0400
Message-Id: <20250429235122.537321-4-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250429235122.537321-1-sashal@kernel.org>
References: <20250429235122.537321-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.25
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_165133_386172_9112BD8A 
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
Cc: Sasha Levin <sashal@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-rockchip@lists.infradead.org, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, srini@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko@sntech.de>

[ Upstream commit 50d75a13a9ce880a5ef07a4ccc63ba561cc2e69a ]

The variant works very similar to the rk3588, just with a different
read-offset and size.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Link: https://lore.kernel.org/r/20250411112251.68002-5-srinivas.kandagatla@linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvmem/rockchip-otp.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 3edfbfc2d7220..d88f12c532426 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -274,6 +274,14 @@ static const struct rockchip_data px30_data = {
 	.reg_read = px30_otp_read,
 };
 
+static const struct rockchip_data rk3576_data = {
+	.size = 0x100,
+	.read_offset = 0x700,
+	.clks = px30_otp_clocks,
+	.num_clks = ARRAY_SIZE(px30_otp_clocks),
+	.reg_read = rk3588_otp_read,
+};
+
 static const char * const rk3588_otp_clocks[] = {
 	"otp", "apb_pclk", "phy", "arb",
 };
@@ -295,6 +303,10 @@ static const struct of_device_id rockchip_otp_match[] = {
 		.compatible = "rockchip,rk3308-otp",
 		.data = &px30_data,
 	},
+	{
+		.compatible = "rockchip,rk3576-otp",
+		.data = &rk3576_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-otp",
 		.data = &rk3588_data,
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
