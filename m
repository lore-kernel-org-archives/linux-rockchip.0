Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC28EC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 22:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpvDCNTHRXIUIg62tqYkL/IzOetfqmuFzywPFmBAfmk=; b=n+uHn0qpxdFG/w
	ck5eXq7tnIKl3h24A2tnzSdbBemh9kARNG10fs+AuLrpqJzSM/y4ERDKicD709jsrnA1mmX7QBsTr
	flnymf0wOeaWglGpb/XLkpGkE38jzT/sOYwu5jTUzBAaAvFVmQmAHkOhSU2LbwjMClsXr0eT+imSQ
	5/ZXMxxb7SbL29X+iFDx7W9AnqKSC5jHU7VnWcmAEm2YZtciBgSdGjs5o4WvJ1C5wXgeQa/hvahfH
	jiMf/TXwOxqcnS8a+/6J/8/hMotTA4BgZ45alyZg4WO9/tVuHvhnlgWOnARP740vxReai26EhDkWJ
	RKuisidMhBCJK+PFV0/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv5m3-00ERXg-1t; Wed, 08 Dec 2021 22:50:55 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv5lp-00EROe-1n; Wed, 08 Dec 2021 22:50:42 +0000
Received: by mail-il1-x12d.google.com with SMTP id m5so3619171ilh.11;
 Wed, 08 Dec 2021 14:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=25U6Yhax0BXTLLFHy75HSeiByRDthooJoTH4u1dV5LA=;
 b=IoYpEX/ULICdxAUXcRO4zYu+4e6lAYdr09BYwsVnPD4m2n62fAvPHlC4El3MNgAy+e
 nWfBtwYKW/o6D0eclIrJECJ1nRUmoPWCYs+eESR/s4gbZ29GlWbHuxnFKSQuE7+w0IAr
 R753ClJyqt9hIi214ogONAWVz/TinGE1Auusbyr5W95IVRH/H7TqcSWV93CRrTb2Z4gp
 C5xHNWuGFIn9bcOWnqI4EjqYNzoOa0SeLYkprDPT9h4E82qjdq5taOtVcc8VNw9F8BYE
 Pc0LJ8+UpagLLPFXr9G43kxBjwYPigf7va8nNaulIJz2UkcwdHSTUAlVxOE736k8qW3w
 FVKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=25U6Yhax0BXTLLFHy75HSeiByRDthooJoTH4u1dV5LA=;
 b=b/qsiNPDM4sCRKW6lW0CUUUSDbBDSmtzwlsi+tRmld8jQzXv0sSOkDAXx2MvVZ0dSV
 2NXg5DjfifK2pz9HVDfd4rLV5kmy8JwyuJ1V/uZ7g55hLoK5c5uG7wI+tJALmwHMR3yy
 oERJiTXjOf0ZbKFUsY6MJ9UYQgh5wLOgwpnBN4MeG+byADeLyM+Gtsfgj+3yKx/3pBgF
 FSnQFCy6Du7Nmn5SAUpB8CcJa/FEZ7dqQdi58IdQwoKluX00T1267p6rS9qCP87IZusy
 nuqRXzwNKcSclDNvbncZV7I2bhJkRnTij43aR/u/k/95v4zS38uuVEWcXcmcF5D4gv7J
 sV/w==
X-Gm-Message-State: AOAM533xOzUytMthcUt4Di7WFGRc9Zvo8YunVBmst938hoXPj/XpbZAb
 tXaDEOQfrTagQn8SGZj0sbY=
X-Google-Smtp-Source: ABdhPJzYh5UPP8BPYPny3NBqelVcmvIDzON4ttwf3iKAX0NCfy6JGIDBcalxJHp5I8V2AFvLNA8f/A==
X-Received: by 2002:a05:6e02:10ce:: with SMTP id
 s14mr9697999ilj.320.1639003840061; 
 Wed, 08 Dec 2021 14:50:40 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:269a:1aa2:f1d9:8dbb])
 by smtp.gmail.com with ESMTPSA id t6sm2378751ioi.51.2021.12.08.14.50.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 14:50:39 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: benjamin.gaignard@collabora.com, cphealy@gmail.com,
 aford@beaconembedded.com, nicolas@ndufresne.ca,
 Lucas Stach <l.stach@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
Subject: [PATCH 01/10] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
Date: Wed,  8 Dec 2021 16:50:20 -0600
Message-Id: <20211208225030.2018923-2-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208225030.2018923-1-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_145041_118103_08E15331 
X-CRM114-Status: GOOD (  10.67  )
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

From: Lucas Stach <l.stach@pengutronix.de>

This adds the defines for the power domains provided by the VPU
blk-ctrl on the i.MX8MQ.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/dt-bindings/power/imx8mq-power.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8mq-power.h
index 8a513bd9166e..9f7d0f1e7c32 100644
--- a/include/dt-bindings/power/imx8mq-power.h
+++ b/include/dt-bindings/power/imx8mq-power.h
@@ -18,4 +18,7 @@
 #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
 #define IMX8M_POWER_DOMAIN_PCIE2	10
 
+#define IMX8MQ_VPUBLK_PD_G1		0
+#define IMX8MQ_VPUBLK_PD_G2		1
+
 #endif
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
