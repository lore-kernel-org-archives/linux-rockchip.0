Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05BEF55449
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 02:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ldidqBxHHvClvOB6dMSo33KS+6RdFsR7vFWKK1vd9iM=; b=Zl3zR+81A5q1mi
	orItTN4lihhIl8Uea17w9vI59d+02j6OBgtNmXUVd65L0NUqkrov7SQHGSCnlRLR9+kBVxCuTlbhq
	5FuzAOuR1k2Kpnl9rTLFnNh827Nk9TpSVtdrJUi5eq9TyvCISC8EP6G6B61zZlqvkHjnWJ3iCoD2Z
	ZjnpNQUvgC+thsyIlfGTk9ZMfeOMSvUDHZFZtDQcBxgJn3IAlAcJieMII2hmEt4HCAEVYGpTDFLbT
	RGoVrzsCcK8WNlWxEFAe/jjJl7hVjesoyqIhlu+KSs/Ud1UZyXTLRlRZebHWRTEt7Pr93k/WTxmsN
	Q5wyvxJnyzi4CD5QYcpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv53a-000000037Nj-0fq9;
	Wed, 25 Feb 2026 02:55:22 +0000
Received: from mail-m32111.qiye.163.com ([220.197.32.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv53W-000000037Mn-1ZF2
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 02:55:21 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 34dd64091;
	Wed, 25 Feb 2026 10:55:10 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Finley Xiao <finley.xiao@rock-chips.com>,
	Frank Zhang <rmxpzlb@gmail.com>,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3] pmdomain: rockchip: Fix PD_VCODEC for RK3588
Date: Wed, 25 Feb 2026 10:55:01 +0800
Message-Id: <1771988101-49877-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9c92b8cc6f09cckunmfc928bb9ab3f2f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgZTVZNGUsaGk1KGR9NTxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TKiSaPy3NhGAYO2355MbeFtq5S/6Ra41Ad4uQsAdiMqL4m7io/5+I0fKG4R1j1VxTNszAQAMQz1N7MeExgk2qWnFB67tAS8TuJHLqyg/keJTq86ri1ucgYOoVpSJUH++UlAKn8ga/TIc+VtUZbwMi0DKU40Na7iKDOD7gQBS9nQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=w0DCebXqm5N2UL9SR5NHgl6Sni59xFPG3ie+LKXKsvw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_185519_758493_9025DB6F 
X-CRM114-Status: GOOD (  11.58  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From the RK3588 TRM Table 7-1 RK3588 Voltage Domain and Power Domain Summary,
PD_RKVDEC0/1 and PD_VENC0/1 rely on VD_VCODEC which require extra voltages to
be applied, otherwise it breaks RK3588-evb1-v10 board after vdec support landed[1].
The panic looks like below:

  rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'rkvdec0' on, val=0
  rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'rkvdec1' on, val=0
  ...
  Hardware name: Rockchip RK3588S EVB1 V10 Board (DT)
  Workqueue: pm genpd_power_off_work_fn
  Call trace:
  show_stack+0x18/0x24 (C)
  dump_stack_lvl+0x40/0x84
  dump_stack+0x18/0x24
  vpanic+0x1ec/0x4fc
  vpanic+0x0/0x4fc
  check_panic_on_warn+0x0/0x94
  arm64_serror_panic+0x6c/0x78
  do_serror+0xc4/0xcc
  el1h_64_error_handler+0x3c/0x5c
  el1h_64_error+0x6c/0x70
  regmap_mmio_read32le+0x18/0x24 (P)
  regmap_bus_reg_read+0xfc/0x130
  regmap_read+0x188/0x1ac
  regmap_read+0x54/0x78
  rockchip_pd_power+0xcc/0x5f0
  rockchip_pd_power_off+0x1c/0x4c
  genpd_power_off+0x84/0x120
  genpd_power_off+0x1b4/0x260
  genpd_power_off_work_fn+0x38/0x58
  process_scheduled_works+0x194/0x2c4
  worker_thread+0x2ac/0x3d8
  kthread+0x104/0x124
  ret_from_fork+0x10/0x20
  SMP: stopping secondary CPUs
  Kernel Offset: disabled
  CPU features: 0x3000000,000e0005,40230521,0400720b
  Memory Limit: none
  ---[ end Kernel panic - not syncing: Asynchronous SError Interrupt ]---

Chaoyi pointed out the PD_VCODEC is the parent of PD_RKVDEC0/1 and PD_VENC0/1, so checking
the PD_VCODEC is enough.

[1] https://lore.kernel.org/linux-rockchip/20251020212009.8852-2-detlev.casanova@collabora.com/
Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")
Cc: stable@vger.kernel.org
Suggested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v3:
- drop tags
- rework it for just changing PD_VCODEC(chaoyi)

Changes in v2:
- collect tags
- correct TRM section(Sebastian)

 drivers/pmdomain/rockchip/pm-domains.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 997e93c..44d3484 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -1311,7 +1311,7 @@ static const struct rockchip_domain_info rk3576_pm_domains[] = {
 static const struct rockchip_domain_info rk3588_pm_domains[] = {
 	[RK3588_PD_GPU]		= DOMAIN_RK3588("gpu",     0x0, BIT(0),  0,       0x0, 0,       BIT(1),  0x0, BIT(0),  BIT(0),  false, true),
 	[RK3588_PD_NPU]		= DOMAIN_RK3588("npu",     0x0, BIT(1),  BIT(1),  0x0, 0,       0,       0x0, 0,       0,       false, true),
-	[RK3588_PD_VCODEC]	= DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  0x0, 0,       0,       0x0, 0,       0,       false, false),
+	[RK3588_PD_VCODEC]	= DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  0x0, 0,       0,       0x0, 0,       0,       false, true),
 	[RK3588_PD_NPUTOP]	= DOMAIN_RK3588("nputop",  0x0, BIT(3),  0,       0x0, BIT(11), BIT(2),  0x0, BIT(1),  BIT(1),  false, false),
 	[RK3588_PD_NPU1]	= DOMAIN_RK3588("npu1",    0x0, BIT(4),  0,       0x0, BIT(12), BIT(3),  0x0, BIT(2),  BIT(2),  false, false),
 	[RK3588_PD_NPU2]	= DOMAIN_RK3588("npu2",    0x0, BIT(5),  0,       0x0, BIT(13), BIT(4),  0x0, BIT(3),  BIT(3),  false, false),
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
