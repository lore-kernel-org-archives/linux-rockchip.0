Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC95C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 11:11:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0BFCA64E25
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 11:11:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0BFCA64E25
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6XMO7AC0OwojfXUV1uCMvYkbNP2+hTfTfuxalcuGrbU=; b=tj7adu+EnP9+8zZ7bN6GQ0TUtV
	5FJ9ph93+PWkkBDqRiPgJ7m8B/EhPWvJXGuGIzngnhDT+P/KnTvGK4Pfif8YN2EgUNzcghnNAjgOV
	8riX0fZLWItulEOJF7ImWwy61jxpjh6tjyi656G70NUWOU3UpNyg3BhuHmWE42iCjyJ7GyXHYyl3j
	7I0oUG1kX3w7xDuvnc8CNK0KEnSia91sFtO7JIXBZJsBW5FyqTc1fTflbMvQ65HsFgQjiZFfXV6Vg
	YabDRsMzgi2ACqBYV5OiJ7Cu4LenolqDsjqJAB0J4Sjkbh5XHM4WHckr/xtDqyZtKCuQ4yaMtthRK
	9F0rXUNA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9nOd-0001d6-Kg; Wed, 10 Feb 2021 11:10:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9nO6-0001ON-2M; Wed, 10 Feb 2021 11:10:27 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9nO2-0003eN-DW; Wed, 10 Feb 2021 12:10:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/6] Support second Image Signal Processor on rk3399
Date: Wed, 10 Feb 2021 12:10:14 +0100
Message-Id: <20210210111020.2476369-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_061026_297477_298026DC 
X-CRM114-Status: GOOD (  13.55  )
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 cmuellner@linux.com, hjc@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 robh+dt@kernel.org, sebastian.fricke@posteo.net, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rk3399 has two ISPs and right now only the first one is usable.
The second ISP is connected to the TXRX dphy on the soc.

The phy of ISP1 is only accessible through the DSI controller's
io-memory, so this series adds support for simply using the dsi
controller is a phy if needed.

That solution is needed at least on rk3399 and rk3288 but no-one
has looked at camera support on rk3288 at all, so right now
only implement the rk3399 specifics.

changes in v2:
- enable grf-clock also for init callback
  to not break if for example hdmi is connected on boot
  and disabled the grf clock during its probe
- add Sebastian's Tested-by
- add Rob's Ack for the phy-cells property

Heiko Stuebner (6):
  drm/rockchip: dsi: add own additional pclk handling
  dt-bindings: display: rockchip-dsi: add optional #phy-cells property
  drm/rockchip: dsi: add ability to work as a phy instead of full dsi
  arm64: dts: rockchip: add #phy-cells to mipi-dsi1
  arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
  arm64: dts: rockchip: add isp1 node on rk3399

 .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
 drivers/gpu/drm/rockchip/Kconfig              |   2 +
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 349 ++++++++++++++++++
 4 files changed, 391 insertions(+)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
