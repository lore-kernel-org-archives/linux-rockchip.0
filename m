Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D46EC54798
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 12:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IlFcTwGPaSccPZ4QX455LSo3Q3TKBeoxl6V89gTW+o=; b=miCNZFs82HQyX1
	uarxBKwNanIuvmpp0a5cX1qJx0hE1KEqdRBVMxxs7uCcynoTs5+pqOPZCmaq9DymMduoi15GGJu/r
	gmVp3TpPTA3vlMOmGty3SB4JBi36zp3F+MNjy7/yHKR8l9G1KA8JA3SbzlfAFTU7RHxVsYJYUZC2o
	Dkg8gFmsazueIF5SfRXYpW0oD9Ua2XSBvmMS4GOAAGVHJ7g4BluTqCm7a7zVMAnSw+LyhGHtbtCfi
	wRXq5hL17PkN2it+URQBzn6G1X4I3K16HfY9foWv1/d4uN0Je+mpMeOUhx0DyFHwEhc0di2flVdCd
	VYacDL8crmpTUYqxjn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhU3U-0000000DbEQ-3DhU;
	Tue, 05 Mar 2024 12:38:00 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhU3Q-0000000DbCN-3VEn;
	Tue, 05 Mar 2024 12:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709642274;
	bh=86J1Y70nbFomIcZR+wldbHnAg/1d9IQlH/UukIiYDyk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IRdF9bzcM6ILlptiG/sYaf4wbKpaQ7+/bQnNc0+rXKYnMpD9vq/IPBd+7Cmv/i8rd
	 ZqSxxT8QIhJMvkgi64kqwdNgI20n23powjvHw1Isq32V/hW3suxe8NAXcwe5zi6wGA
	 mOHmXd34sdxNTh5erKzeY8nCuSgkoyTnkYp57cLUX8Ktopu0UqiuTH4WpK9mqXhe/Z
	 fj4wthmvMrqmRDZbwdmV/nMlDS/JOm9ivl6zf1OCT6LGbERjUmhv5l7Dc2LNhmtOI0
	 mo8+9Q1duBtBJUZd4rcQaZLVmLst5TtodnLmWqOkwyCKDpPrQ/840oz/+ji/hz4Lb4
	 ja17iNdq9t3ag==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9BF9E378020D;
	Tue,  5 Mar 2024 12:37:45 +0000 (UTC)
From: Shreeya Patel <shreeya.patel@collabora.com>
To: heiko@sntech.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	dmitry.osipenko@collabora.com,
	sebastian.reichel@collabora.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	hverkuil@xs4all.nl,
	hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-arm@lists.infradead.org,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH v2 1/6] dt-bindings: reset: Define reset id used for HDMI Receiver
Date: Tue,  5 Mar 2024 18:06:43 +0530
Message-Id: <20240305123648.8847-2-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240305123648.8847-1-shreeya.patel@collabora.com>
References: <20240305123648.8847-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_043757_020622_54180916 
X-CRM114-Status: UNSURE (   8.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add reset id used for HDMI Receiver in RK3588 SoCs

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
Changes in v2 :-
  - Move the dt-binding include file changes in a separate patch
  - Improve the subject and commit message description

 include/dt-bindings/reset/rockchip,rk3588-cru.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/include/dt-bindings/reset/rockchip,rk3588-cru.h
index d4264db2a07f..e2fe4bd5f7f0 100644
--- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
+++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
@@ -751,4 +751,6 @@
 #define SRST_P_TRNG_CHK			658
 #define SRST_TRNG_S			659
 
+#define SRST_A_HDMIRX_BIU		660
+
 #endif
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
