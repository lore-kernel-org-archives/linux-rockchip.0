Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C29CD128E
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 10:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gdyNJ0qtMO9/0mqF+FRCTkmkNzxzJAKMSGgn0uKYFEI=; b=PmqiaDwJ2DgdNq
	cs//GBMhY7VDaSGUS8tayjAlAtGK5EwdnbeSxd0yMkQCLbcZvimvtPWR5kwEzJr6g28NQAFAIUPFq
	6UDojfBtMBuTPpR4+d6CoNkFr09aLevwQVIZzUWuT0yAzRCgRrNcQ5WZW4kZwLSbOlMqICI8fXbF8
	f9YVX+BbRTxTZcEaiLkYf52rjIeyMLG5QX2Qv8dfSq2A0c19/PTSqBbW4WEkzSRGtXs/EceuLLSq5
	6NZkioOVBwQzBZ6H0DUan1cgObSW2BqJbgWBQAdtFTZC3Jw8hf+hJp8fFqeDtalMmHkkYdZnRmwg+
	h8ZGQfG3WcLpGXpmS2KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqVXl-00000003Df3-1NT6;
	Sat, 30 Mar 2024 10:02:33 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqVXh-00000003DdI-056N;
	Sat, 30 Mar 2024 10:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=M7Tok
	/UBCV8rcegKEQ5Q2x/dUQ7SH8Wy3obY8/nLX2I=; b=jayC3L4HemKkYUi9rT638
	IxD++P3skxnLCiQMmM4aEuQCFLhjz42xVV2lgo1OS/YpG3H7iP3rfSOmTuuxCDOz
	zoxlkQsshbtQdjuDRnXl2uuatcjKWyT0eqDUAc5EFRIuQS8VA43C1Iy+jLXVlATx
	ydCyWb2uMbBWbmLJnNqitE=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-0 (Coremail) with SMTP id _____wD3_3H_4gdmq7XiCg--.34374S3;
	Sat, 30 Mar 2024 18:01:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable gpu on Cool Pi 4B
Date: Sat, 30 Mar 2024 18:01:34 +0800
Message-Id: <20240330100134.3588223-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240330100134.3588223-1-andyshrk@163.com>
References: <20240330100134.3588223-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_3H_4gdmq7XiCg--.34374S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFyDZry5Kw1DCryxArW5Wrg_yoW3JFb_tF
	yxWF1rJF4fCr1aq3s5ta4UGa4xK3y8KF4xtFWYvFZxJFnI9a18JayrJay293srGFWjkw4x
	Jw45AFyUArnI9jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRJKsUUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h2xXmWXw3f-GwACsA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_030229_535708_E7D4F487 
X-CRM114-Status: UNSURE (   8.50  )
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

Enable mali gpu node and add the board specific supply-regulator.

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index e037bf9db75a..25a2ae7d4827 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -203,6 +203,11 @@ &cpu_b2 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
