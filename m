Return-Path: <SRS0=8ktI=LE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15CF3C48BD1
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 21:29:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 946E661059
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jun 2021 21:29:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 946E661059
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ip+ejx6w6i2GInuFra5mN/t9E1qgoEXlwRJmaGayPCU=; b=VBUjJGcl0gK868
	o84s9VIQfkhaGoUmcmxLZMYBE1i9J0NNwkDL3OaaWUb9uWzHgeP4XgHMfT29XqHJ2Wbr7fQXgHzLe
	nUpCfCd9KFwLCHjOhMsTADJIkJ0hAnRmF9/0PE1Qd4Cq9ChRAWVjkU69qeMKTxXlUF6No0sHqB5Bj
	HNlJzW42Is6cMYyU3xC7SDkYCSWLxK9RotBd6PswIsEKOlbN8qKaDMfVH6vPgOClzCoFiYCcTAW5n
	FYrGI08fKqmuRZ3bERhzX7IUKRNrWVmokJKb5XS3SeGEceVAuRU4zLkWcwhB1lh06w20vIHXKyvJO
	BMAbXOLWObifv3F+u3mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrSFH-002Ysx-7p; Thu, 10 Jun 2021 21:29:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrSFF-002Ys7-DK
 for linux-rockchip@lists.infradead.org; Thu, 10 Jun 2021 21:29:46 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lrSFA-0006er-S5; Thu, 10 Jun 2021 23:29:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: robh+dt@kernel.org, heiko@sntech.de, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/2] phy: rockchip: add Innosilicon-based CSI DPHY
Date: Thu, 10 Jun 2021 23:29:33 +0200
Message-Id: <20210610212935.3520341-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_142945_464540_AEA4E061 
X-CRM114-Status: GOOD (  10.97  )
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

Newer Rockchip SoCs use a different DPHY for camera operation
based on an IP block from Innosilicon.

This adds a driver for it for px30/rk3326/rk3368/rk1808.

changes in v2:
- add Robs review to the binding
- adjust to Vinod's review comments from v1
  including shift -> bitfield, helpers and
  also making checkpatch --strict happy

Heiko Stuebner (2):
  dt-bindings: phy: add yaml binding for rockchip-inno-csi-dphy
  phy/rockchip: add Innosilicon-based CSI dphy

 .../bindings/phy/rockchip-inno-csi-dphy.yaml  |  79 +++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-inno-csidphy.c  | 459 ++++++++++++++++++
 4 files changed, 548 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
