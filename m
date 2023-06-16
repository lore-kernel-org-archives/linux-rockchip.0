Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135FAEB64D9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 02:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GjOiFyH7HH4wpkacDnK9Xdj+QPx62leacK0r3q3l+uM=; b=45TNuPYc3KvKic
	i557QXRVw8ygXIQc6NEmWCsi151vZxpLbzBynYL+FlvwU0UDuWhBVdcPXZcR7G8Y8r1mf3mKkhJMe
	mEP2ogtThWM77NAcGnyQ/y5tEpL/3xKelTUHqBf+rC8lzBXLj8tGByjeLXGduLoqhO7yjS1Ahlipq
	Bq+IvNhBZdX/kuR1LAVc3N0yObXD9uuVc/SgBD/y2zmTBFnP8P7wF/DDOKNn2oo9nI2R+rZRUm6BT
	sTCQ3N3G+ilCrUDv3WAayWvhjuqTEqMkMQK7pn+9f3FrK88VLbJ2bKhJsboydYKZz0DU1F4x6dVCj
	gRGliqRBPqLbelbE46kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9z6F-00GcJj-1t;
	Fri, 16 Jun 2023 02:22:07 +0000
Received: from mail-m11876.qiye.163.com ([115.236.118.76])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9z6D-00GcJ0-1I
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 02:22:06 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11876.qiye.163.com (Hmail) with ESMTPA id EE24A3C02EE;
	Fri, 16 Jun 2023 10:21:58 +0800 (CST)
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
Subject: usb: typec: tcpm: add get max power support
Date: Fri, 16 Jun 2023 10:21:57 +0800
Message-Id: <20230616022157.25877-1-frank.wang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQktITVYfHkhPTEkdS00ZQkNVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a88c2026e6a2eb2kusnee24a3c02ee
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MDo6Czo4OD1REBBLFiEcEggI
	GDYwCwtVSlVKTUNNQ0NJSkpCTEhMVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ01PNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_192205_602028_2889F022 
X-CRM114-Status: UNSURE (   9.10  )
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

Traverse fixed pdos to calculate the maximum power that the charger
can provide, and it can be got by POWER_SUPPLY_PROP_INPUT_POWER_LIMIT
property.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 drivers/usb/typec/tcpm/tcpm.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 9f6aaa3e70ca8..829d75ebab422 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -6340,6 +6340,27 @@ static int tcpm_psy_get_current_now(struct tcpm_port *port,
 	return 0;
 }
 
+static int tcpm_psy_get_input_power_limit(struct tcpm_port *port,
+					  union power_supply_propval *val)
+{
+	unsigned int src_mv, src_ma, max_src_uw = 0;
+	unsigned int i, tmp;
+
+	for (i = 0; i < port->nr_source_caps; i++) {
+		u32 pdo = port->source_caps[i];
+
+		if (pdo_type(pdo) == PDO_TYPE_FIXED) {
+			src_mv = pdo_fixed_voltage(pdo);
+			src_ma = pdo_max_current(pdo);
+			tmp = src_mv * src_ma;
+			max_src_uw = tmp > max_src_uw ? tmp : max_src_uw;
+		}
+	}
+
+	val->intval = max_src_uw;
+	return 0;
+}
+
 static int tcpm_psy_get_prop(struct power_supply *psy,
 			     enum power_supply_property psp,
 			     union power_supply_propval *val)
@@ -6369,6 +6390,9 @@ static int tcpm_psy_get_prop(struct power_supply *psy,
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
