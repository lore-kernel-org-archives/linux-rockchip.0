Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12CEFC369DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Apr 2025 23:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2R0TdQtrJmuD6XBdPXoVDtbKQPNqnMjGL8/uT+GPK0=; b=b2H5Y66Xuh6F7W
	ubkjAVXbJKXzfK8uXdOtqSwelcmOwl+eyTgf7BAKE3kVZPQbRD88NidPllaP1Kn5FAftlS4C+G5CJ
	BEoePGoGWxZEyuROUmYjy8Bt3ZbKz6lMnkQiiMc10/wb93Hi38T2ZD+fWjqD/3an27emd3S9OxeVZ
	alhY+twIfu5Gyc5WYbrb2K58CYCAtOBr2c52Va78hhHZpjOmFYAG8S/G6ns/98bO4fuvajRfNA2uD
	aZLaP8l1hsyVbSwqBHz8D70qOZpjDhhem0Q9LqWLS4U0Fw4atJdj6EloN/CVbTgj7MXh/TJhkAahx
	RruGLcaHULh2c1rNVnXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9umF-0000000BAgV-2pVn;
	Tue, 29 Apr 2025 23:54:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9uiP-0000000B9kj-3r1H;
	Tue, 29 Apr 2025 23:50:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DE6FCA4C354;
	Tue, 29 Apr 2025 23:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B846C4CEED;
	Tue, 29 Apr 2025 23:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745970616;
	bh=0thmh35gHKznLtBJJ5aw6yD6qUAMVfJjzOHdFZiBDRg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gncdQYjBoCOnhr3ihOauSMJ1KLR9F33cyxgD+v8ldSeFgscPiU2F0MTy0xJnlsbIL
	 Va4mzkdUSz/U6IG0UfMFdzMWZqsM7tusfmPM+qM8Cl6Gfyhill2MhwydDFlVmI9lKe
	 JFaAUqboe5IA2TIhZWvKeRDucUM3hU4Ta3cmI388nuMq2gKql02MP4BHurtTSy+32B
	 maOiXAyqQ1kXneESJQW4MClBzjHuuXcr6axnHbHVxaPrunxtxg7x4jYz5c9ugJQaAM
	 QbZ+idbxKmdfiBNLiJQR7QhL3uhLi9efyNDVnfzA178j3fVnzKm30Osjz3Utw6ox4W
	 qx+ESsRJ4VOJQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.14 04/39] nvmem: rockchip-otp: add rk3576 variant data
Date: Tue, 29 Apr 2025 19:49:31 -0400
Message-Id: <20250429235006.536648-4-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250429235006.536648-1-sashal@kernel.org>
References: <20250429235006.536648-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_165018_032163_C0B16F69 
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
