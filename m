Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51391C77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bzv7E4gOUU+Q23PprcfbJ1YdjtIHIqOHMqi/nxt2uB0=; b=4volNgqa278FKu
	akZ1ieQbmAOgFWmIFO7vusvKHEQCj/SBIr0LXjMc0tkwVES3Ne7uYxyM+t6SQDJ1VyOZh8gD77cNF
	+kybDI3RHYP3l09KmFBLWJmIiz+zGYfR8vVYi1QefJxZBClOFLZ1b0xfG42gibic7Aa472jaMsXx1
	PFVgq5FdzT4suUh7l6xwHF9xB/O9ishCvFMQ1N/RIUxh1TNp1GHXKjRFIR+c8wBj1ie5+Cx7axDPd
	NfMerkOnwq1zoS4gHHDo4Rty+nHCpSkrJ8+x3lJ8yMkz4ReR0b2kdU3IACJIJWWy5RyEWGK6yoE7j
	4khRixjOz+me7JmDe7yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puglE-0096UN-2h;
	Thu, 04 May 2023 21:45:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puglB-0096SR-2p;
	Thu, 04 May 2023 21:45:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=aNCL2SsFMtLF+woCjEjcgeWZ7S3strS2NHoSBj7cFSQ=; b=f7KyJqLHSlvjLBaMVo027/Lh/k
	/UPhmn7uJNW4jOVcY/GSzw+XbB2mzCmnS4OObJSrpzBbmC/4Cf2bs/ZUXgH9ZneTBK+12YPSXZhLh
	qmqNhnF3vPG7Jmz2ZYcHCEAvKoLHbtzJGRLlTUoJM9MWgCkrnwoJh9RCyxEXQPYFnzQONYIV+IsTl
	L5KKM4CZGITbXuqbHzPESCTINraQ4PBqz4/szWJWJPesjz36GLXy922F+vx7LPpjdE2yohefDfZXL
	tPg5fuANyby5WSJ8b4QggtvurjJovlcMFKVjakiKrh6+KeLgaGnlY2TAym456FFvVQP9/1XMeL8QA
	NuGO+Xeg==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufEO-001pk8-0g;
	Thu, 04 May 2023 20:07:18 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 276456605702;
	Thu,  4 May 2023 21:07:11 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230831;
	bh=QY6rnLRfHC9dXg+8BbD6mqIP1zCqEQmwLS6ENTx+qfY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RvDTFACjzeBm2rFU3uAOCw0rcmWMiAd63/IZOt7IK0hz6Le+EGcutL7FByoUkeHs0
	 6CWhe6rEu6J7uOFsM1i8tw1CtSr/Y9suiwYkbSU/aufYh9mgIU0ShLaG6y/mwY0sTp
	 Kk6Cddb4XkKWjnb7VCFU5HSAkZMlntS4niDuVptBabPCm1df1uswkR2zP7mywvidV6
	 a9TAl6Dx/jbxn4tlbRqJiZI8i1i1tFdTWfwnbGcoMFyCicJ8Dv1UjIfz+cTi+ti/b0
	 1DAuwK9hU2VN4rIgVmHhtL+IsAJXMTc7or2W3l3/KMVkkYN5lUUn4qHCtfZJYqkKnp
	 jhl/+eKKSEqYQ==
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
Subject: [PATCH v2 5/8] nvmem: rockchip-otp: Use devm_reset_control_array_get_exclusive()
Date: Thu,  4 May 2023 23:06:45 +0300
Message-Id: <20230504200648.1119866-6-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_210715_811421_0899217E 
X-CRM114-Status: GOOD (  12.34  )
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
Tested-by: Vincent Legoll <vincent.legoll@gmail.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/nvmem/rockchip-otp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index b62e001f9116..439aea1f8874 100644
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
