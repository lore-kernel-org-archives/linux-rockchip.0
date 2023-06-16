Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8878EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 07:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2+lhM/mwaSEWTeOtSy8NP/k5jtcil6wWj4hCxxYCYSM=; b=sPMvHSy2Lbq3zM
	ImNH55HJ5S2pnY84QHEAgozj7hZV6360+KZxqbhCdzd/fMf5ICWTwJJ3shCczdgAkmi6kriikcJUy
	9iZ9Tb9XumKUMXhJJFzmIUkyCLpWn4G7Moq0sMJ/Aql4sBylwQY3Rj8OlzodUWN04CgBZj6SmmRDE
	O8v3FaZbV4OKyuhzVwlMA0Gh6+CQh1eL5fiBrIvl1fo4NMOEmPPBSr+Z6p2trOp3Ml1vrk2BSZdfM
	Hd1KKZUHDmENDvLwy8jHX5RrGPppZovoZemo19L9tfviwk8Aaa0YF+OJv8kESMUn2DbueUhTjltfz
	QorP5VKqXv+TMxh4jyhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA4GU-00HCaY-1f;
	Fri, 16 Jun 2023 07:53:02 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA4GQ-00HCY4-12
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 07:53:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 8AB9768093F;
	Fri, 16 Jun 2023 15:52:43 +0800 (CST)
From: Frank Wang <frank.wang@rock-chips.com>
To: linux@roeck-us.net,
	heikki.krogerus@linux.intel.com,
	gregkh@linuxfoundation.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de
Cc: linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	huangtao@rock-chips.com,
	william.wu@rock-chips.com,
	jianwei.zheng@rock-chips.com,
	yubing.zhang@rock-chips.com,
	wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [v4,1/2] usb: typec: tcpm: fix cc role at port reset
Date: Fri, 16 Jun 2023 15:52:40 +0800
Message-Id: <20230616075241.27690-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh1OGFYYTRhMQktJT01PSU1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSklLQ05NVUpLS1VLWQ
	Y+
X-HM-Tid: 0a88c3313cb42eb5kusn8ab9768093f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nhg6GBw4Lz1COhc9LC1MC0sI
	PT0aCjNVSlVKTUNNQktKQk1PT0xCVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT09DNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_005258_536633_F7565FF8 
X-CRM114-Status: UNSURE (   7.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In the current implementation, the tcpm set CC1/CC2 role to open when
it do port reset would cause the VBUS removed by the Type-C partner.

This sets CC1/CC2 according to the default state of port to fix it.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
(no changes since v3)

v2:
 - Make some tweaking based on the default state of port, commented by Guenter Roeck.

v1:
 - https://patchwork.kernel.org/project/linux-usb/patch/20230313025843.17162-2-frank.wang@rock-chips.com/

 drivers/usb/typec/tcpm/tcpm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 3c6b0c8e2d3ae..9f6aaa3e70ca8 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -4885,7 +4885,8 @@ static void run_state_machine(struct tcpm_port *port)
 		break;
 	case PORT_RESET:
 		tcpm_reset_port(port);
-		tcpm_set_cc(port, TYPEC_CC_OPEN);
+		tcpm_set_cc(port, tcpm_default_state(port) == SNK_UNATTACHED ?
+			    TYPEC_CC_RD : tcpm_rp_cc(port));
 		tcpm_set_state(port, PORT_RESET_WAIT_OFF,
 			       PD_T_ERROR_RECOVERY);
 		break;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
