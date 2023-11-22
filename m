Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B40CFC61D99
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4j24d5paUMn8j78r0T+2ZJ4RLFxiFWtoWGCzu8lSws4=; b=XUK1AMOVzEygbd
	OZjE2XVlCYnwxT+ycpaJuAcobcIPmSSkT6xIYlxm1cv6nFV8kwayVPl3CrKwKfyXptLyA4svGmppX
	RyTTirL7216wFrv7Sq/2QkqGkxkryDPtejaaXTMJPwjuDoHxAZs3DZdo4C7DWufdA4gBLWqAFlVyA
	X4c3aHVlu5T/sxM9JSmjwfIu8etNwxUtfe1WfsWWuFf6QB7uE8nkx50qxbidVAGD67xhkXH23C0dI
	O6hmA7uiGwWSaWjfC0TXC9NVvZ/5GX4JANcpv/JPpndXPRoQz14u0NMtH9qbW+FTmEqWZcG0d2YGW
	SsgBBEz+/LPmFRK1DvcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pUn-002LMI-1m;
	Wed, 22 Nov 2023 15:50:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pUj-002LKV-2u;
	Wed, 22 Nov 2023 15:50:31 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6167A276;
	Wed, 22 Nov 2023 16:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700668197;
	bh=uilUL/CQsGPrrLqlIQUCAs9mt6Z3Ge5A5dVOnCwLOH8=;
	h=From:Subject:Date:To:Cc:From;
	b=pKEFlqZ6tZyPJKdJPQ2vpW0utUX81Kc4bcsr5Q7jTyzuRrN5ENrYrZoYWg4RPNx7m
	 qk+N6xUD+YulmxPAPSqMJ0pwXluuvSc/KHK1evbW+B4mAZwMZiRPa+un+SpKCotjZ2
	 rGI5QAYRrDe3Ephui0Z3EhxkI1qA1BpaZaFsRWfE=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v2 0/2] media: rkisp1: Fix memory leaks
Date: Wed, 22 Nov 2023 17:50:06 +0200
Message-Id: <20231122-rkisp-fixes-v2-0-78bfb63cdcf8@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC8jXmUC/22MQQ7CIBBFr9LMWkwZQiquvIfpAmGwE2NpGNNoG
 u4udu3y/Z/3NhAqTALnboNCKwvnuQEeOgiTn++kODYG7NFojajKg2VRid8kKuDgbPApeovQjKX
 QfjThOjaeWF65fPb4qn/r/86qVa+0syefzKDJuAtH8pLnW/YlHkN+wlhr/QJrEkERrQAAAA==
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Jacob Chen <jacob2.chen@rock-chips.com>, 
 Yichong Zhong <zyc@rock-chips.com>, Shunqian Zheng <zhengsq@rock-chips.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Eddie Cai <eddie.cai.linux@gmail.com>, 
 Allon Huang <allon.huang@rock-chips.com>, 
 Jeffy Chen <jeffy.chen@rock-chips.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Tommaso Merciai <tomm.merciai@gmail.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=778;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=uilUL/CQsGPrrLqlIQUCAs9mt6Z3Ge5A5dVOnCwLOH8=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlXiM+yWSEQjnzVopQU/vU15HIG5yo5Ka7LV1xp
 NJTFvoLROyJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZV4jPgAKCRD6PaqMvJYe
 9f9OD/9KTCA0JW6Wlg2TCo5NrOiPtGYya55O0RsHyI7KES2PUlXXdCtR+J5tQxqD9ordIK1uC+d
 LcnCwl0P+lpLDXrRyLoSdF762OfRFtHbz1x4EcnORDkmKKATPxHfIcIFFtC9nLcdGnwRkacAVj5
 2AnoRI1i5FrfbT/6jRde4dnELZAxNnt5zid6ICLlmF7GKUN+tk6w602rpka8jtnif7dbPQGpRHb
 wbhzK9bJnHRbyDmOc9HFm9ELcVPxpP5+XFk+xWQ4gDBQ6e7mMA3LXOLLHBWJ3EqyJwHiRPY/wwX
 VyHnZQLvpE1Ibu1wKEPN2tDhbDRbRbEdpLu2Iu8Xp4fsSOTbRsUdo/s++CIZJ6Iy6Yf35AwUrvo
 J2T++IS8Gs8qFy7gt6WdkdoXShSrp25VkWHZ+z90jtO6bs8zNuRlbWcsmpSv3n4HhlS6BPxMBuH
 ntXPwxMInEo/nLR01cq+T8QzOeNsXss3s0oD5AN7wG7aJ2LsYuwtdKpEJnyqBB3TwL1ebn+SrUl
 +Gcc6q7H+tPc4Sen0FcoyiqGR2GsO2IVc6r0A8p4nO5fYXScGypVzzzT8PjdUeyxG37xlwrfMfu
 Djlemo0wFtnO0HgTeqfSodEDhmHNKR9uR3F8y51M+ZjsL2vPJK2LVYvzB/fYKhv7h+sZNEXr5k6
 ol+NnYTyQ8BB+5g==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_075030_086335_E3AA8733 
X-CRM114-Status: UNSURE (   8.32  )
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

Fix two memory leaks in rkisp1 driver.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes in v2:
- Fix error path code for rkisp1_probe()
- Add Rbs
- Link to v1: https://lore.kernel.org/r/20231122-rkisp-fixes-v1-0-1958af371e39@ideasonboard.com

---
Tomi Valkeinen (2):
      media: rkisp1: Fix media device memory leak
      media: rkisp1: Fix memory leaks in rkisp1_isp_unregister()

 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 6 +++++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 1 +
 2 files changed, 6 insertions(+), 1 deletion(-)
---
base-commit: 1865913dd590ca6d5e3207b15099a1210dd62f29
change-id: 20231122-rkisp-fixes-c2795cafda52

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
