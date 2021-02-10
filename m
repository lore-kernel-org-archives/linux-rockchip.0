Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44EDC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 21:42:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51C5064EE5
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 21:42:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 51C5064EE5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=acwhw2C1CTqsvFg0EbTvBYGHnv1wZrQwl6lHsc510Co=; b=jz3RRop2qoU0Iv4ZjQJKDA26NG
	QpTXUIkITbOdTl/Knu6zzo1mQ2MRipA6LNX7v9UVclLK94yFL2VaxocU6HNhYqamFUWX6ju2sW8FB
	Im0gpMOlOFmJasuDd8Uf8UfnI9Yx7WvqUsrqTWRoEIYFw/jb3+QTQwTiE+2DkQUk6YapPk7oAT0gQ
	INugak9g1kk927ZPX2gFk0EeVwwt7tVKvu/rUUjsLEhf2eqdh9yAkMpDyolLS5COlh20gfWBUfhK7
	aTAxe768eE68tY5N70LSQCe4yh5dwxxul2/gCsogSOCF8gRSxXDnRQ77fcEFknpBuecPHzo6Ajf9E
	IlCjlR+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9xFj-00085v-6k; Wed, 10 Feb 2021 21:42:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9xFf-00083l-TR
 for linux-rockchip@lists.infradead.org; Wed, 10 Feb 2021 21:42:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9xFZ-0006dd-3K; Wed, 10 Feb 2021 22:42:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com,
	vkoul@kernel.org
Subject: [PATCH 0/2] phy: rockchip: add Innosilicon-based CSI DPHY
Date: Wed, 10 Feb 2021 22:42:03 +0100
Message-Id: <20210210214205.2496336-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_164224_018865_2F089BAC 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, cmuellner@linux.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Newer Rockchip SoCs use a different DPHY for camera operation
based on an IP block from Innosilicon.

This adds a driver for it for px30/rk3326/rk3368/rk1808.

Heiko Stuebner (2):
  dt-bindings: phy: add yaml binding for rockchip-inno-csi-dphy
  phy/rockchip: add Innosilicon-based CSI dphy

 .../bindings/phy/rockchip-inno-csi-dphy.yaml  |  79 +++
 drivers/phy/rockchip/Kconfig                  |   9 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-inno-csidphy.c  | 480 ++++++++++++++++++
 4 files changed, 569 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
