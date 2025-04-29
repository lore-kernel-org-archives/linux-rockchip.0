Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC3A6C3ABA5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 00:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMxVH4wUImJ0rUoQg06tP2O4qPdIZEGzl7PGqxxpkw4=; b=1QUWyEoR/r79SY
	slAKDEt6By6VSNEBMOfrHjtfg438h6FB+UcMK1hSi8VCsRLIFlkgnZ3mOjKdlYAjoqkMzRTW0ICYp
	lCk2DQjJjsfrJP08bwLM7m7cFY0F8Fl3fi/bVgJZuFolz3Fh1gRzdl54UuLR2T3yd606/CNcQk0tD
	dlgysv9omKb6CesUmULKR36Xsr+C9gE4zwI7w1hksRMVYtdRIJC+BaIr7fxy1ke+cHMbuw2H/ZyD7
	hfNCoXbp2S/HYut8NNlGRwordjA9bT/Ad032f9sYL5XCGfGKpttzNMyo9sHBgY62sZcR9sgyAHLMT
	AWA7LMDPtfdFPbBKgNCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9utt-0000000BCVk-0QYt;
	Wed, 30 Apr 2025 00:02:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9uko-0000000BAOO-3WJS;
	Tue, 29 Apr 2025 23:52:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5Z3ubVhiDn+y8p9h/+2P2A7/yuw0WgycCQBKIkg0XOg=; b=K+OH6J47itLtqzvW7jW291L76o
	uWMgHxT2CynGngsScc7BHVLYsazKMxAJdARBQXrUPPRhdJW8B6Yew+rZss2XwW7rcLPlNoMlNiF5A
	eE1RtyI0ZuoJUv5N1Ab3FbLjATJ+bwR6lGm+p2WglR5LID+NQzvZZlI8NJGak5y37v/MpyLCf77/q
	srGDqGu2nGYSHhcdCikkMb2s6YJZj2Yrnq1HevpTbKa0iImLZK0bKA/V8AqCz8fNm516gsW24v65D
	wBI2erBASFYLiM7ZHKkXX9Vc1+MoGrYxRm7UytFVI1fJdhUL20n2by3MISve0rY5vIaLiSnv1DYL7
	b5ae2uwQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9ukl-0000000DXqk-3Bw0;
	Tue, 29 Apr 2025 23:52:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5BF215C0450;
	Tue, 29 Apr 2025 23:50:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06BCEC4CEE3;
	Tue, 29 Apr 2025 23:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745970762;
	bh=Owc37Zx6v1qjTmDYmVWBoUDC8Yizylw/CHfTZXgaH74=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LC1FD5npl8RzexVvLNBg33Wk6ei0A3Nyjn+9+vRlDd+0ApFExC5oKX1qzLAvcfcix
	 NmOuhD+4huEBKGbuuy1P4jagTyHXiIuEr20IKeKiOQkdJXVJlwi7tWpSCfs4KBMLV0
	 QidPvuYb/7Q+ed/x9feVyXoVLsWgYuCYBTCrUtn2dHYNshcI+GzljA3s0STbUnE+jO
	 ODlKBCkzJ2+jgRh6SozCQv38K4PXV8gd5bTI5s1GuGFPlnCTYpDQuHLT9xgXG37jTd
	 QeKvbm4XoaETm9gpdK66SVZ+c01yF/NSfqF7CJ7dYTU6mpEzTxsciXa71+XV0OMS0Z
	 kiDNHMwUhqdHA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.6 03/21] nvmem: rockchip-otp: add rk3576 variant data
Date: Tue, 29 Apr 2025 19:52:15 -0400
Message-Id: <20250429235233.537828-3-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250429235233.537828-1-sashal@kernel.org>
References: <20250429235233.537828-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.88
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_005244_012400_70E51EE4 
X-CRM114-Status: UNSURE (   9.85  )
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
index a0252ac867bf7..c6684ab14e742 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -273,6 +273,14 @@ static const struct rockchip_data px30_data = {
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
@@ -294,6 +302,10 @@ static const struct of_device_id rockchip_otp_match[] = {
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
