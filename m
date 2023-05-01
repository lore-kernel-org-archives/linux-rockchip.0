Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75629C77B61
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ISqZ2/6M1323WUBXEu4tavnmju5zeesrcE+SdiG+TU=; b=uf24R2hJsuF8fi
	A7bwRaZzXSSDzGNrCu9huvpaB5LGCqVcE0RY6wJq+s8efJQReRGPi6zD6ei5FcfSrFoWoTCdk/xMT
	NrQO8Y+Z/UXGMvc9mbG3I3H5RazWV5OHpL2dYHhQ7/5AyZ69OhsiOvD2iSTY02qTdiKdAM4Fa+s6y
	FrinihpfQGgt1kL9iMrRLyVicX10chAexZHQMHQZPgjbKl2ZaqwvM/uHZLPUVrVRDLHaElwqsgwAS
	5spICwcsAlkS+lAqajnmqOGyhfaCFirTYPgkzs4qWOKCv/81nWnoLyOaH+tsWaExLmabxDwqhDuR9
	ZIBO8cK6zPJAPU2VaJmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8z-00FTA7-0X;
	Mon, 01 May 2023 08:44:25 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8v-00FT6f-0K;
	Mon, 01 May 2023 08:44:22 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C979E660316A;
	Mon,  1 May 2023 09:44:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930660;
	bh=x9XZQ3uvxTsAewM1Yl0ycP8UKF79G7B1mNgN7RoKnIU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VrbFGRRyDt+77pqbitqtY1sN76z1tYvVESWYrVbjH/7Jr48ltiHzsIPYxDXBHw4Za
	 Dj60ePX2+kI39jGyjvshxIG18+Rml62ysPMU+2iWLUvjLne7oLCHP8kKmd7DCTzFS+
	 MGcHkgjcqPHrtvI+oN39DO/dbHbUbnUNoYs4FrETcewBVab0pC5MM9sB3vb2/ZsRnZ
	 yCdqMPJTUhdMXoz3grpOe/zIGGrAHM8M/WsAkWkWzLiyJafZZuEQAhCyLA398MHZda
	 PQQrsEbTkxxvC3jbWm+Ov1VrrgFtF8XZ4rF7cRUlR4TqQBXdGvz5ofMgWHZT7Gpdr/
	 LxFb7sI1MAS7w==
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
Subject: [PATCH 5/8] nvmem: rockchip-otp: Use devm_reset_control_array_get_exclusive()
Date: Mon,  1 May 2023 11:43:57 +0300
Message-Id: <20230501084401.765169-6-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014421_270356_553CA4C2 
X-CRM114-Status: GOOD (  12.23  )
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

In preparation to support new Rockchip OTP memory devices having
specific reset configurations, switch devm_reset_control_get() to
devm_reset_control_array_get_exclusive().

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/nvmem/rockchip-otp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index e308dd3b4eb1..b74d98f82ae5 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -263,7 +263,7 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	otp->rst = devm_reset_control_get(dev, "phy");
+	otp->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(otp->rst))
 		return PTR_ERR(otp->rst);
 
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
