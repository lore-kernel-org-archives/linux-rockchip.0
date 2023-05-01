Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0504C7EE29
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oP0dyMTvSJhDtVL3arBiGggcLsWBh3DAS5rhBHIL2bI=; b=BDspwZm8HkNI7p
	DzsGL5XZYHxbOZheUwW+pT4c/LLuduI3L52MGrhNUIHBZqcu53tEoAI6duemC6yQ0fhEWmw4H44r7
	oq/maH5JO0C8bapE8gjS3MEVzHOJgqJ9CHrr7DQmbIUgl9WiXhYVL12CiBYEJlhgO13YihyFPiRa1
	NuTLMmNSnr2xJNhwAa8AWetJYVKSXqnD+5tAYoa5JT1znRFNFpmNOjb9e5yOJVxCjNxEGhHkp4Dng
	Y+DFAq2Z4KAWc9enzOhUVnb+66rSx46weQ5BS1FgsdJs11MfSi0LD9Hr7KUiS3FOGQikxVZGiH6H/
	AbkX+z98Jj0eINK65pZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8v-00FT75-0h;
	Mon, 01 May 2023 08:44:21 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8r-00FT4Y-1k;
	Mon, 01 May 2023 08:44:18 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 415B16602F6A;
	Mon,  1 May 2023 09:44:16 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930656;
	bh=ZmCzaqB0Ylzg7HWMRjjmRxOmRNTg2+5slMJcMqm5f6E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d1YFnRqU2NXyvNPxFtU+B4cH0+o7q5oe9isAwzP7ExBDZR0Itb2A7oFB0Eyy5tFNL
	 YU1BihI9sYxK2yHEPU24oB3gfHcoXqynHmCirbreZzU9wRczVxs0z4YvokBGvAHnDd
	 GPgHGdmbIitnMCvs1s+zBJ+/CAYAFjvD0sOM4G2TPa+m0cWwHxQydOrmQ0YrA9qFjj
	 eLwmtoXdjlbRZTnnc1zYZqW4ojTxyDdMG/RlYyAsy5+3Io3RFggqtKYBwoBfAeM3bQ
	 +KaZo9etZNsf4UsqpPiuzrwXaFLNYN5u+g00qCMpeJCjHMpQhVohoEHGmkv+UldU3q
	 vUN1ZoJRr9Nsw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 4/8] nvmem: rockchip-otp: Generalize rockchip_otp_wait_status()
Date: Mon,  1 May 2023 11:43:56 +0300
Message-Id: <20230501084401.765169-5-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014417_710642_F5B791B0 
X-CRM114-Status: GOOD (  12.49  )
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

In preparation to support additional Rockchip OTP memory devices with
different register layout, generalize rockchip_otp_wait_status() to
accept a new parameter for specifying the offset of the status register.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/nvmem/rockchip-otp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index a5b234e60735..e308dd3b4eb1 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -90,18 +90,19 @@ static int rockchip_otp_reset(struct rockchip_otp *otp)
 	return 0;
 }
 
-static int rockchip_otp_wait_status(struct rockchip_otp *otp, u32 flag)
+static int rockchip_otp_wait_status(struct rockchip_otp *otp,
+				    unsigned int reg, u32 flag)
 {
 	u32 status = 0;
 	int ret;
 
-	ret = readl_poll_timeout_atomic(otp->base + OTPC_INT_STATUS, status,
+	ret = readl_poll_timeout_atomic(otp->base + reg, status,
 					(status & flag), 1, OTPC_TIMEOUT);
 	if (ret)
 		return ret;
 
 	/* clean int status */
-	writel(flag, otp->base + OTPC_INT_STATUS);
+	writel(flag, otp->base + reg);
 
 	return 0;
 }
@@ -123,7 +124,7 @@ static int rockchip_otp_ecc_enable(struct rockchip_otp *otp, bool enable)
 
 	writel(SBPI_ENABLE_MASK | SBPI_ENABLE, otp->base + OTPC_SBPI_CTRL);
 
-	ret = rockchip_otp_wait_status(otp, OTPC_SBPI_DONE);
+	ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_SBPI_DONE);
 	if (ret < 0)
 		dev_err(otp->dev, "timeout during ecc_enable\n");
 
@@ -156,7 +157,7 @@ static int px30_otp_read(void *context, unsigned int offset,
 		       otp->base + OTPC_USER_ADDR);
 		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
 		       otp->base + OTPC_USER_ENABLE);
-		ret = rockchip_otp_wait_status(otp, OTPC_USER_DONE);
+		ret = rockchip_otp_wait_status(otp, OTPC_INT_STATUS, OTPC_USER_DONE);
 		if (ret < 0) {
 			dev_err(otp->dev, "timeout during read setup\n");
 			goto read_end;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
