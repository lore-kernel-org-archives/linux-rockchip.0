Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6E0C7EE21
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3e+CwHSG8Vc6jS6Xw5D8qWMoQYF79WwdecMV1G3bLBM=; b=H5N4k961fi96UX
	mEeMlR3rkQ/9jCUe2rHHYGPnRzj8h2muUkKz4SvOH81Bwcon8ALWVAfVp/5hx5H+eazHaGw7bOmL1
	sgfA5oUoNBy1kCUAbqmdnMovm9S+Dyvkrz/eF9NTiiEeYnrb0rLzeYrRsMd6ad2xqGIZlkU8Z0HX1
	JEVYDhUJFctRrlcEa4R8gxE+jAQm21+bdjjPEY+lx4gGETAm6dDiZUm5KxkBKXbEoRkjN75TSv0KV
	19PIQ/3ACnkxHci2BvvPbY+ctBmezHVrBPEWTBunxfYPG2JatfF4iaCO6QArSOlM+g6SyA9xezHSv
	ZaufXq0JQvd86djvYXPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pugnt-0097NP-2t;
	Thu, 04 May 2023 21:47:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pugnq-0097Li-29;
	Thu, 04 May 2023 21:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=F54t/2JtDwaXciZFd94ut7Pahseo2+6vThZO0cQunko=; b=YCpsbM5DoYHFa+/HbCIUY+ylhX
	9DDYX/hxVeLMN4Jhxnx//TKavwE62be5glIFCycHwGv8dDpyr3bwcQbn6b76eWs0OynkTksXCeK8F
	IpggHgv61MAMGmAzKtuXcl0zPuBa89lvrCqouxfZJg8gwmkJZ3ac1Gkt9ag8SZ6x+m8p5PLhlpM51
	SddY2+i9WrSlnr686Wabg2mGRFWRUpne4k4X7fNq8o0dFduvocTGi+6xPMiKug1C6GDuqm6T3tS/7
	NWf/N9+YbvPSeQm/JhqsYt/L5Ois6K8Adldilwcu0+62hLn3nNW73vkaHqIa9KJVWe1z4RCmDIzXW
	I6Ve1Zag==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufEM-001pk2-1e;
	Thu, 04 May 2023 20:07:17 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3779B6605701;
	Thu,  4 May 2023 21:07:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230828;
	bh=tj5wNFVQXlsB8/T7XkM5lV9GRsAs+861QXowj8ll4qg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=D5fUQzDh9jZEt4W5d0V5VZwBtc1VqHnMitIS+KkO9iiZxxrcKpyyR/dEow0nnuQmj
	 ISR0vIw7Lpk+hC0hNaUF+F+TfDHc3foG3jBzfdDdd1i8Fn2yGfKkJ0PhdBdKT+qvkw
	 Oufm+hnUZBbqTuWAuNosAZpMfaTQwjeH/ROcbcTKNyIPueZdoiPIBJjxPK4qo+t+bA
	 c6BOWprlQYeRoy9piCHGnilDSN56RoG4Gd3v4DrFxfSq7E8ZU8SoBwipsE4VPgh+HS
	 8hHd8rnHCLq9tA6IglAWi95kjzn/Xk5aEidcK1G95V/m1PYysQzNn5F2ovUp++aemm
	 Wm0SJVgQ/8BZg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 4/8] nvmem: rockchip-otp: Generalize rockchip_otp_wait_status()
Date: Thu,  4 May 2023 23:06:44 +0300
Message-Id: <20230504200648.1119866-5-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_210712_209224_A3922D79 
X-CRM114-Status: GOOD (  12.98  )
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
Tested-by: Vincent Legoll <vincent.legoll@gmail.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/rockchip-otp.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index b5a84b379da4..b62e001f9116 100644
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
