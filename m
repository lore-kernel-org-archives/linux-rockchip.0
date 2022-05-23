Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5856BC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 May 2022 17:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kfk/cTPzR70bEvr/PhFWjOdtyM2ZzOtUDzEECc3m6S4=; b=aOQBH60oSnYA4J
	ADIzbq50PktFdxqIMd5nIGqlVr4JiPEm0bfB4sLZOlyJvTkDLcU2nba5k0haiETx+/9mrL8uofF6m
	8Gzrt1WOvcfn3iqMQsm6bdzK5LlpcwpHs1PJqqNn/BnUbsSId+CChJ7o/HkMRy+X70lX2Zoj0o3qB
	2Dkp3Cu+pm9FhI91DqzV9b93h1PW7zgTZtGDHBAkinEWivPQDbXQmR1OvgAGjYUxrIIlt1rr4SHaa
	6/4yrfz+cGqmMe6qF0IUVTprhlBt1OyS0XonDlE8ubYGvHGwJyGuf1R6UuzhtyTPr/lJFHOKiK0De
	arsTsKYGe1OGMcv7veVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntBgJ-005LQ1-H9; Mon, 23 May 2022 17:17:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntBg8-005LIU-I8; Mon, 23 May 2022 17:17:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A3E61FB;
 Mon, 23 May 2022 10:17:07 -0700 (PDT)
Received: from pluto.guestnet.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BC6B3F73D;
 Mon, 23 May 2022 10:17:05 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH] firmware: arm_scmi: Relax BASE protocol sanity checks on
 protocol list
Date: Mon, 23 May 2022 18:15:59 +0100
Message-Id: <20220523171559.472112-1-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_101712_684191_F542A6D6 
X-CRM114-Status: GOOD (  10.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Even though malformed replies from firmware must be treated carefully to
avoid memory corruption Kernel side, some out-of-spec SCMI replies can
be tolerated to avoid breaking existing deployed system, as long as they
won't cause memory issues.

Reported-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Etienne Carriere <etienne.carriere@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
 drivers/firmware/arm_scmi/base.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/base.c b/drivers/firmware/arm_scmi/base.c
index 20fba7370f4e..d0ac96da1ddf 100644
--- a/drivers/firmware/arm_scmi/base.c
+++ b/drivers/firmware/arm_scmi/base.c
@@ -221,11 +221,17 @@ scmi_base_implementation_list_get(const struct scmi_protocol_handle *ph,
 		calc_list_sz = (1 + (loop_num_ret - 1) / sizeof(u32)) *
 				sizeof(u32);
 		if (calc_list_sz != real_list_sz) {
-			dev_err(dev,
-				"Malformed reply - real_sz:%zd  calc_sz:%u\n",
-				real_list_sz, calc_list_sz);
-			ret = -EPROTO;
-			break;
+			dev_warn(dev,
+				 "Malformed reply - real_sz:%zd  calc_sz:%u  (loop_num_ret:%d)\n",
+				 real_list_sz, calc_list_sz, loop_num_ret);
+			/*
+			 * Bail out if the expected list size is bigger than the
+			 * total payload size of the received reply.
+			 */
+			if (calc_list_sz > real_list_sz) {
+				ret = -EPROTO;
+				break;
+			}
 		}
 
 		for (loop = 0; loop < loop_num_ret; loop++)
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
