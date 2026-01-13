Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B168AD30CC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VeBjXV0HwuUT3yH+fbgPznjoSDivivPK6R1KKOcPfuQ=; b=ARGfr3nrDYtczb
	14dnQLWyeSPRCbBfsMSYIJYx0jk5w9kMTz9gsRXrV67AWS6spAmHkOxqFx8nDqL6kDfNu2wd6M7i0
	R6PpbjBcF4OZ/C/SSgXkIhzRCKmciIHJFkDBi1TKIMC9sMOS99fKHcYGXby76B5k7x3nraI61QR1M
	pqAPe52S9/lNFJq2ubtL0++mQOuHqcWYfXzYVxOVyqOU4aR+Gio1HHvRuLI3RukEOuQoX7rcseW+/
	EqqViMlJ+hqgqcrijDH+PGebbYfqjAiabPpayRknTjZZ6MDhor5qLwHQkEtCMylV4b8A/TGO2BFTh
	dDS6umSYCxGnaNnQczIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfle5-00000007j4D-0Xir;
	Tue, 13 Jan 2026 21:09:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfle1-00000007j2k-3UYz;
	Tue, 13 Jan 2026 21:09:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7C5FB401A1;
	Tue, 13 Jan 2026 21:09:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 44C15C116C6;
	Tue, 13 Jan 2026 21:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768338580;
	bh=WCnY/lj3fzjvIsFQZM824I87yHl/GftCvl+s4jhP2qM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=s++d/Z+bEk6fzJBnFcofzRHEws4wiB54gfrZfdYmDcMCQBJWHfV02dWrj7OWH4/Cs
	 RwPVFNMKeMjbAmXHBEmwkK3REplE4496kItVQJZdYAi5+XudabybpH/vV2APUdf8/B
	 hQBfHRNEIxI7QlnOglhrgBCfpv+IkuGZQ3SBKRlWUq2+itWr5hMaRsKauKdfhRzlev
	 F33nhlU3jfAVtFcQoFYnRcX3tiX7yWb7H3Zd69BK+6IBWHhsGRvpLXD7oxdqs0g1im
	 0nzURsN8Uhpy7UHqlZnM8TLgL0vkEtr/5F942w92c74yhVtYosEkLW3NZqip8DhYCp
	 xz1OCh0+QUDUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30CC8D30CC4;
	Tue, 13 Jan 2026 21:09:40 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Subject: [PATCH v3 0/3] media: rockchip: add driver for the rockchip mipi
 csi-2 receiver
Date: Tue, 13 Jan 2026 22:09:26 +0100
Message-Id: <20251114-rockchip-mipi-receiver-v3-0-16e83aa7f395@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIa0ZmkC/42NQQ7CIBBFr9KwFgMUtXXlPYwLmE7txArNoETT9
 O6iSze6fD/5780iIRMmsa9mwZgpUQwF6lUlYHDhjJK6wsIos9FaW8kRLjDQJK80kWQEpIwslXe
 9sRZaaFCUs3cJpWcXYCj3cB/HMk6MPT0+teOp8EDpFvn5iWf9Xn92spZKdrpWzRYbrbruAHEcn
 Y/s1hCv4q3N5j+VKSr0rbd1vdv1YL9Vy7K8AAsmfIQgAQAA
To: Michael Riesch <michael.riesch@collabora.com>, 
 Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768338578; l=2431;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=WCnY/lj3fzjvIsFQZM824I87yHl/GftCvl+s4jhP2qM=;
 b=9GXyZism98d3SmCPnycvQNmO2IPoOV7DU3RAw4adv0rP7MXMuxrgKEZXkw9elfePxd0vs7B0O
 4aMZme0FfhPBWnS6X+iRvRXmOkxlwt1Nn8ZIgxKMQau8ApvCRsNbLk5
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_130941_915094_7A986394 
X-CRM114-Status: GOOD (  13.75  )
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
Reply-To: michael.riesch@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Habidere,

This series adds support for the Rockchip MIPI CSI-2 Receiver that is
integrated into recent Rockchip SoCs, such as the RK3568 and the RK3588.

These changes have been discussed and reviewed thoroughly in roughly 10
iterations of the rkcif patch series (see [0] and predecessors). Thus,
they should be ready for inclusion in mainline.

However, as has been discussed in [0], it would be beneficial to add
support for the split mode (a feature of the Rockchip CSI-2 DPHY)
before integrating the MIPI CSI-2 Receiver into the respective SoC
device tree includes. We can readily add the DT binding and the driver
as I am positive they will not need to be changed when this feature is
introduced, but there are no patches in the series that introduce the
DT nodes.

This constitutes a small step towards mainline video capture and camera
support on the Rockchip RK3588.

Looking forward to your comments!

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>

[0] https://lore.kernel.org/r/20240220-rk3568-vicap-v14-0-b38b6da0fc80@collabora.com

---
Changes in v3:
- rebased onto v6.19/recent media-committers/next
- Link to v2: https://lore.kernel.org/r/20251114-rockchip-mipi-receiver-v2-0-eb9b43377fc4@collabora.com

Changes in v2:
- dropped one R-b by Bryan, as there were two of them on the same patch
  (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20251114-rockchip-mipi-receiver-v1-0-d13086e810dd@collabora.com

---
Michael Riesch (3):
      media: dt-bindings: add rockchip mipi csi-2 receiver
      media: rockchip: add driver for the rockchip mipi csi-2 receiver
      arm64: defconfig: enable rockchip mipi csi-2 receiver

 .../bindings/media/rockchip,rk3568-mipi-csi.yaml   | 146 ++++
 MAINTAINERS                                        |   7 +
 arch/arm64/configs/defconfig                       |   1 +
 drivers/media/platform/rockchip/Kconfig            |   1 +
 drivers/media/platform/rockchip/Makefile           |   1 +
 drivers/media/platform/rockchip/rkcsi/Kconfig      |  16 +
 drivers/media/platform/rockchip/rkcsi/Makefile     |   3 +
 drivers/media/platform/rockchip/rkcsi/rkcsi.c      | 742 +++++++++++++++++++++
 8 files changed, 917 insertions(+)
---
base-commit: 3aa9296a23ec41a8424e9a2346eea59fb6cb7d8c
change-id: 20251114-rockchip-mipi-receiver-0baf244c9c8e

Best regards,
-- 
Michael Riesch <michael.riesch@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
