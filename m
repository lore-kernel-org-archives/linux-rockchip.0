Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D8CC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 22:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBlI30JQuuILCIrGMLZHWnEfSdtaO2MaCwv/hu1bdyg=; b=RbNkba0C2udIUr
	hRm0Rt7JHRy/04BbeRjB17OkPq44DAwTTSfR7DRCqEDta3o3jkAK5rCXmOXawbbFq8plFotTyM5rw
	cMfY4D48Cts84E1QunYdSVqDm1j+JjMcydMu94f9muhsjQDKgzNeZay0V8t5Q6jP3bA08qGW1JFoN
	LdoD+sfsuCh6wRhixgqLeaM1/kpRXBdsEbVhaCBlJfXL0kGYPBD+bt7IIQMXl5TfsOyFQS33+zGsQ
	c7YAJAbpYruOKC2CQIBEW4Rf2L+u3wxTYSb/jmWB4caWpm3qCvDEZnOB1GzHRD7kY1Wzt3Nk+UrIV
	sbvq31oBpIE6xNZD4peQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpc84-0000000BTuC-2dqs;
	Wed, 27 Mar 2024 22:52:20 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpc7v-0000000BTo3-3aL2;
	Wed, 27 Mar 2024 22:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711579930;
	bh=mimGJEfki4mtm2qPfFyJ0LOrcCBSCnrWzU3LB53JbTw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=E+1FsCRfFV/qR7blPt1lojTNF4l9vPAkUvKMdTc/iTdDyvYFsDoZ4gPyYED187Aas
	 oDNkAt8ccyEdtDTzXecLWuZ8eTlm9nZT6m6IKVsc/EEJ8W+ovMt66eIkOSmzWBhOVY
	 PY991SytXX5R7wGCN0LGgZODKLvGdbXP5EQJeFS3IbHWCqGKKB6EgD7YitIMzQ8lae
	 sTf9NvHpCp6CzvLJGGk19QF7zSKvjOog+fGdtiaeK3rjqeveRbeIymf0cW2l/P39mu
	 YBKvj4mfHZ9Eg/oTP5LysAlu4sW5/20077z4uKpUGACDEaSh7qF0Eqe65B5qgfcaBk
	 59vCq49X44QBg==
Received: from shreeya.shreeya (ec2-34-240-57-77.eu-west-1.compute.amazonaws.com [34.240.57.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8DA943782111;
	Wed, 27 Mar 2024 22:52:00 +0000 (UTC)
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
Subject: [PATCH v3 2/6] clk: rockchip: rst-rk3588: Add reset line for HDMI Receiver
Date: Thu, 28 Mar 2024 04:20:53 +0530
Message-Id: <20240327225057.672304-3-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240327225057.672304-1-shreeya.patel@collabora.com>
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_155212_099490_A3B03A7B 
X-CRM114-Status: UNSURE (   8.62  )
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

Export hdmirx_biu reset line required by the Synopsys
DesignWare HDMIRX Controller.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
Changes in v3 :-
  - No change

Changes in v2 :-
  - Improve the subject line and commit message description.

 drivers/clk/rockchip/rst-rk3588.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
index e855bb8d5413..c4ebc01f1c9c 100644
--- a/drivers/clk/rockchip/rst-rk3588.c
+++ b/drivers/clk/rockchip/rst-rk3588.c
@@ -577,6 +577,7 @@ static const int rk3588_register_offset[] = {
 
 	/* SOFTRST_CON59 */
 	RK3588_CRU_RESET_OFFSET(SRST_A_HDCP1_BIU, 59, 6),
+	RK3588_CRU_RESET_OFFSET(SRST_A_HDMIRX_BIU, 59, 7),
 	RK3588_CRU_RESET_OFFSET(SRST_A_VO1_BIU, 59, 8),
 	RK3588_CRU_RESET_OFFSET(SRST_H_VOP1_BIU, 59, 9),
 	RK3588_CRU_RESET_OFFSET(SRST_H_VOP1_S_BIU, 59, 10),
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
