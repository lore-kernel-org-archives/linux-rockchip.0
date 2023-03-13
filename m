Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD83C6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 02:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXmGGlS1hxUNfUojWhB78DFAhMuJRI3Mpog+44NHaMA=; b=clOwstAc+xztLC
	pnpsI/6bNnmYdMRCAkWHFnursrcsiMcE7oyNd+MPtS6GhKEq25FacIBGS1MEnVdOLAJZkI4AgCGtc
	ZEI5hSKKWc8s1TIU64l+GkNFDhB8qPQbOmtIlWf5a7fwy17fN/G41qjvyTDYyLgMp8dqX2jdFJyzn
	ZODh0h9g6uQazagO3zdZygt98hz1sdoHjIzH4aufejrG66ySJviwW50X8KxX4dHqddeoC/MN5shF1
	B1QLIXJjZELRFj/ltnwcq83gH4w8uOZQfwzBFDH4mU06yvYL+EfllhxdtvSHEeIyTB5Zr3ZFPgBll
	fNQ0M+W/wmx4qxif4Dkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbYOt-0045Sp-6w; Mon, 13 Mar 2023 02:59:03 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbYOo-0045Q7-HZ
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 02:59:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 0A60B68051B;
	Mon, 13 Mar 2023 10:58:47 +0800 (CST)
From: Frank Wang <frank.wang@rock-chips.com>
To: linux@roeck-us.net,
	heikki.krogerus@linux.intel.com,
	gregkh@linuxfoundation.org,
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
Subject: [PATCH 3/4] usb: typec: tcpm: add get max power support
Date: Mon, 13 Mar 2023 10:58:42 +0800
Message-Id: <20230313025843.17162-4-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230313025843.17162-1-frank.wang@rock-chips.com>
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQklJHVZMHhoZHkpMSExOGB5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nwg6PSo4Fz0OEy8UEBEBTzcj
	PD5PCjlVSlVKTUxDTUxNSElMQkpIVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIS05NNwY+
X-HM-Tid: 0a86d8e7fb982eb5kusn0a60b68051b
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_195858_765865_6A2FBFE5 
X-CRM114-Status: GOOD (  10.11  )
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

Traverse fixed pdos to calculate the maximum power that the charger
can provide, and it can be get by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
property.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 2962f7c261976..9e583060e64fc 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -6319,6 +6319,27 @@ static int tcpm_psy_get_current_now(struct tcpm_port *port,
 	return 0;
 }
 
+static int tcpm_psy_get_input_power_limit(struct tcpm_port *port,
+					  union power_supply_propval *val)
+{
+	unsigned int src_mv, src_ma, max_src_mw = 0;
+	unsigned int i, tmp;
+
+	for (i = 0; i < port->nr_source_caps; i++) {
+		u32 pdo = port->source_caps[i];
+
+		if (pdo_type(pdo) == PDO_TYPE_FIXED) {
+			src_mv = pdo_fixed_voltage(pdo);
+			src_ma = pdo_max_current(pdo);
+			tmp = src_mv * src_ma / 1000;
+			max_src_mw = tmp > max_src_mw ? tmp : max_src_mw;
+		}
+	}
+
+	val->intval = max_src_mw;
+	return 0;
+}
+
 static int tcpm_psy_get_prop(struct power_supply *psy,
 			     enum power_supply_property psp,
 			     union power_supply_propval *val)
@@ -6348,6 +6369,9 @@ static int tcpm_psy_get_prop(struct power_supply *psy,
 	case POWER_SUPPLY_PROP_CURRENT_NOW:
 		ret = tcpm_psy_get_current_now(port, val);
 		break;
+	case POWER_SUPPLY_PROP_INPUT_POWER_LIMIT:
+		tcpm_psy_get_input_power_limit(port, val);
+		break;
 	default:
 		ret = -EINVAL;
 		break;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
