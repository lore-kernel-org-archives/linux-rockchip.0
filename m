Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457A6606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 16:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UJ7xjIav;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256 header.s=mail20170921 header.b=QloqBOm9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Cc:To:MIME-Version:
	Message-Id:Date:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Unsubscribe-Post:List-Owner;
	bh=274atWHh7rIVkhlG4XI8EfzNB543yW1jVLo9hl9HkC8=; b=UJ7xjIav3UOjHjBJ/K+CSDR14Q
	3o2VE6neGSqGg5nlDFFIT87rSjVNU2CypN2OmL9BWBy9/Vbo2UWuOSqxlMvgPQVqD5bBKx5942Xx5
	+r3n0gEqqzKU07hunoWnm53DKFxYP3WzT8tnGbqSmu3/oyIzSEaM+nJSOReswSqxPyGKFRFjcRC8O
	0yEyIyeGjmxadvIh2VuIVtk5XrE80FRGf9EW9L/JG00oNS36mOOAdCw0tMMAq1IlVs+V2YnCc2Okt
	I8JbeaDf+AYl1T7JhhCBFZJtTd408cik/q1BEQWP2os0Z6PQ2+slurlvXecZWFJ0S9Fvx1SvXbSqA
	KHtSI6IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyfc-0000000H23x-1PYe;
	Fri, 27 Nov 2026 16:19:32 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyfI-0000000H1ud-24k2
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 16:19:23 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20261127161905euoutp01190540a699fd1923b6fbcfc294cf8ee3~r80MDRmAH2496324963euoutp01w
	for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 16:19:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20261127161905euoutp01190540a699fd1923b6fbcfc294cf8ee3~r80MDRmAH2496324963euoutp01w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1795796345;
	bh=+mS3OhBAT0MmLa4pJtM+GnResywpHJ0OX4QBbJjZfXA=;
	h=From:Subject:Date:To:Cc:References:From;
	b=QloqBOm9P7uB01dfZ4H3oOeUI9Ug+A0RZhVJR3R6ewNj+VS8q7qtnSTDYv2ELXyxa
	 0MmgDLvrPfa5x+vHidZcGLgnLt9oEukX1gMMad+CLURcQziLeufj+7bmyV5ZncSaUm
	 Ut62SsgYOG8Iqv4dRyrkGlySwznsJPdb/qYVKmJw=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20261127161904eucas1p1e35356631d4599bbf6b2d02373d3b5b7~r80LfNzmj2630926309eucas1p1i;
	Fri, 27 Nov 2026 16:19:04 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20261127161903eusmtip2351707b3cde8dece22823c2c0be40197~r80KlDCGg2969229692eusmtip25;
	Fri, 27 Nov 2026 16:19:03 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Subject: [PATCH 0/3] drm/bridge: inno-hdmi: Fix sync polarity, hotplug and
 DDC adapter
Date: Fri, 27 Nov 2026 17:18:58 +0100
Message-Id: <20261127-inno-hdmi-ddc-of-node-v1-0-465622e1b7ad@samsung.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHKtCWsC/x3MPQqAMAxA4atIZgO24O9VxKE2qWYwlRZEEO9uc
	fyG9x7InIQzTNUDiS/JErXA1BX43enGKFQMtrGdMbZHUY240yFI5DEG1EiMXe/86IYhcLtCac/
	EQe7/Oy/v+wFilVK0ZwAAAA==
X-Change-ID: 20261127-inno-hdmi-ddc-of-node-67ac9a88fe5b
To: Andy Yan <andyshrk@163.com>, Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,  Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,  Jernej Skrabec
	<jernej.skrabec@gmail.com>,  Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,  Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,  David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,  Yakir Yang
	<kuankuan.y@gmail.com>, Dmitry Baryshkov <lumag@kernel.org>,  Heiko Stuebner
	<heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,  Maud Spierings
	<maud_spierings@murena.io>,  Byron Stanoszek <gandalf@winds.org>, Dominique
	Belhachemi <db@domibel.de>,  Owen O'Hehir <oo.hehir@gmail.com>,  Michal
	Wilczynski <m.wilczynski@samsung.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1856;
	i=m.wilczynski@samsung.com; h=from:subject:message-id;
	bh=eiDFzxOVwdZeVSC+PuwyPjEfgixdlKun5pUbOuX8rII=;
	b=owGbwMvMwCGWumv6zndzRCIZT6slMWRzri3fduqRyUfT7e8/7V/Kkyu/hl1nghf3+7z591XFf
	ryoEXnv0VHKwiDGwSArpshydmO0keQ/hqflxx//gpnDygQyhIGLUwAmsoCZkeG5byxjv3v1a8Xi
	7kKvcL0tFldbygyyr1jm9PVIns9NncHwz1j85SUl/WfJQZNeyNoXH28/WHQpop/7+gt19tpZ5vM
	NWAA=
X-Developer-Key: i=m.wilczynski@samsung.com; a=openpgp;
	fpr=CDB15B3219FE00E577C7E3FA65BA97B9EE9C1459
X-CMS-MailID: 20261127161904eucas1p1e35356631d4599bbf6b2d02373d3b5b7
X-Msg-Generator: CA
X-RootMTR: 20261127161904eucas1p1e35356631d4599bbf6b2d02373d3b5b7
X-EPHeader: CA
X-CMS-RootMailID: 20261127161904eucas1p1e35356631d4599bbf6b2d02373d3b5b7
References: <CGME20261127161904eucas1p1e35356631d4599bbf6b2d02373d3b5b7@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_081913_878282_6F2766D8 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Three fixes for the Innosilicon HDMI bridge, which the Rockchip RK3036
and RK3128 use and, with the series in [1], the StarFive JH7110.

Patch 1 fixes the HSYNC and VSYNC polarity bits, which are swapped.

Patch 2 fixes a NULL pointer dereference when a hotplug interrupt
arrives before the bridge is attached, by reporting hotplug through
drm_bridge_hpd_notify(). That also keeps it safe against
drm_bridge_detach() once the interrupt is requested in probe, as the
JH7110 series does.

Patch 3 stops the I2C core from trying to create an I2C client for the
OF graph 'ports' node on every boot.

Patches 1 and 2 were part of the JH7110 display series up to v8 [1],
and are split out so they can land on their own.

Patch 2 changed approach in v8 of that series, after a Sashiko finding
on v7 patch 8, "Split probe out of bind" [2], showed that once the
interrupt is requested in probe, checking bridge.dev races with
drm_bridge_detach(). Heiko's Reviewed-by was dropped because of that.
Testing on an RK3036 or RK3128 would be welcome; all three were tested
on a StarFive VisionFive 2 with the JH7110 display series applied.

[1] https://lore.kernel.org/all/20261124-jh7110-clean-send-v8-0-de92635dd857@samsung.com/
[2] https://lore.kernel.org/all/sashiko-outbox-201623@kernel.org/

---
Michal Wilczynski (3):
      drm/bridge: inno-hdmi: fix swapped HSYNC and VSYNC polarity
      drm/bridge: inno-hdmi: Report hotplug through drm_bridge_hpd_notify()
      drm/bridge: inno-hdmi: Don't give the DDC adapter an OF node

 drivers/gpu/drm/bridge/inno-hdmi.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)
---
base-commit: b6a9fa34ce4187cb69d3c588a4bbffc31ce5db8f
change-id: 20261127-inno-hdmi-ddc-of-node-67ac9a88fe5b

Best regards,
-- 
Michal Wilczynski <m.wilczynski@samsung.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
