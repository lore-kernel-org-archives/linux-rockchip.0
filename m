Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A236AC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACIGkkob+6HiSqXVa+Z5pjTkpWs7U2NsJ9u8u2fHEWQ=; b=t6iBChvYsCC1Aw
	197Sw9HtS103e9tg0CGWTPUq5T8Nj9ggqUXdbusTsvSLTOrRerBDPnuQPyjT+2rGuUEaevzHLSwRY
	zOntE7BknBNVF/+qXkU2XMcoAA7WGjrc00GxGNqI9uHSuONKP9HCm3+hgrckxpEO2USVsB/o0gpjj
	LJocybA5TBl7KG7u/y5PS+tt5ZSc8w63Hvnm5u2DwF8FZMcop8K6suC0EVCUYCltrv4FZTMPKZw/x
	wSbivI7JB+heZsyJa30mUHkNR/ex4FycJGbOxF+9mIZ5M5m97VFIfZ/Y8YFMUsJbdTZy29uad7Nxf
	WV5j4N71bYweZ9e837KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jql-0000000AtVK-3ZK0;
	Tue, 07 May 2024 12:23:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jqc-0000000AtMf-3QhW;
	Tue, 07 May 2024 12:23:08 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s4JqZ-0006h6-PV; Tue, 07 May 2024 14:23:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 2/3] nvmem: rockchip-otp: Set type to OTP
Date: Tue,  7 May 2024 14:22:55 +0200
Message-Id: <20240507122256.3765362-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240507122256.3765362-1-heiko@sntech.de>
References: <20240507122256.3765362-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_052306_989674_7867F175 
X-CRM114-Status: GOOD (  11.32  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The Rockchip OTP is obviously an OTP memory, so document this fact.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/nvmem/rockchip-otp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 7107d68a2f8c7..ebc3f0b24166b 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -256,6 +256,7 @@ static struct nvmem_config otp_config = {
 	.name = "rockchip-otp",
 	.owner = THIS_MODULE,
 	.add_legacy_fixed_of_cells = true,
+	.type = NVMEM_TYPE_OTP,
 	.read_only = true,
 	.stride = 1,
 	.word_size = 1,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
