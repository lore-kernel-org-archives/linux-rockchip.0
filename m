Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5099C71157
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jun 2025 06:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GiWdD2vmspuPGXWcd8zfAWMGM94VKYunXJ3VtxcRjcA=; b=ppTtQVdVLq1A/m
	Jr5U36jBsXhru4D53A7jhJGRxqiQirbMGmh9dMGcLs11ETlPi9gxE0pKS3fobzwztatH8K2OHB/8e
	GSAGidBosmG7UlnaDjj2eT4wWFIZcH6KIvCZ2abnvkmsf3y1htIYgNH3KANP84SJJDXmQc4MSYO49
	UNHynQ6fCwVMVyIs9pugHBe1WI9/kGXZsMzEjYd4mzaU6qoggA7P8Ylizbe//pFtASP8ylov8U/RZ
	Xye+PHuLPw+e2vAX49Ldm9xg3LlJNJ8lk4+6XsCU1bTmXBdfDeq6UQ745KiwQQpcCE9GUcVEcjjcY
	RogursMZyADnu8VaUZhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmSu-00000009CLw-0IWi;
	Wed, 18 Jun 2025 06:40:08 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmPV-00000009Bkt-0NXK;
	Wed, 18 Jun 2025 06:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=3o
	2xSY68L4BFEQO///ypgcnI/0VLZaCbM2XNC4HBpeY=; b=pAtMcJvPcQ2qTGZhjz
	mbAW9TZwMpF/4HwIa0cCVME1c4bSb1p7kltvnF7qnbtZhv/y7WIYWtIxXfomX8PX
	x717cIA+NlnUzsOvMA13DR3U8xCY9NQKKr87RCjzFosrYMXnHwwbwl8l408YRgIl
	PjamjEjpyuADmQY83GrwT4AXA=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wDn3xpaXlJo+K25AA--.26565S2;
	Wed, 18 Jun 2025 14:36:14 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: detlev.casanova@collabora.com,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Enable gpu on rk3576-evb1-v10
Date: Wed, 18 Jun 2025 14:36:01 +0800
Message-ID: <20250618063609.690332-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wDn3xpaXlJo+K25AA--.26565S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1kCF43uw4xXFyDuFy7GFg_yoWxuFg_t3
	Z2gw15XF4rGrn8t34ktayrG34jk34DCa4xWa1rXFWDGF9Ivay8JFW8tay3Kr9xKrW29r4f
	Jay5XasrAasxCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8uBTUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqA9wXmhSW+dvxQAAsl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233637_544291_85E19816 
X-CRM114-Status: UNSURE (   7.84  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Enable gpu for rk3576 evb.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 6dfccf44c7f65..21e47155fa690 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -323,6 +323,11 @@ &eth1m0_rgmii_bus
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &hdmi {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
