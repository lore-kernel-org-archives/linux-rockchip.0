Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E00E6E81A23
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 13:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3utze4Jdyzq7shSuehe0GoAX3xbtKaSqchtvUPQH/ik=; b=L6COWnW65QCmYo
	uvCyx5Ys+xAHaf8ly3ckiTCehNnazOAXmsTdX41OH6XimksSvoWfc7Y57fv3FRDP/Tg1EEg8esKzT
	CYYLnIHYufpYTToQmejJiRfikLmytd913iXJOCHujjRLGXp4ZZw2SKTllDkLrWsT/SY3JO2Fn8w+8
	im6NKXjYC+N4FMhJEj0G5iuyL2880vFg2uyvSusi+Zr6pxGWaF5ME7fNY01bOkclCzMFTNN7VloLX
	C8enBe99ZsKe1cbaUjNTNn3e1h/oyZe+MKT8lrF0lejGyGYYEg5UJZGJhEl03X3XcsHjyW4BkAH1r
	37EVNP8vVrdCKoMpIyAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vryzG-00000006imh-1XO4;
	Mon, 16 Feb 2026 13:50:06 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vryzD-00000006ilN-03US;
	Mon, 16 Feb 2026 13:50:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F771600B0;
	Mon, 16 Feb 2026 13:50:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD1FC116C6;
	Mon, 16 Feb 2026 13:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771249801;
	bh=msfTh03NG07ETuEWGU73Tj/AyEz3fvIWOKO1VC6wmzE=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=YWgcmzEPxuAOSiMBIghN5Q2kSbmw7OnF9MnW7aS9NexM9ZZb/sMvPuCphE2l8TwV9
	 j3kBvQuDCexDS5hdh9WkP+0Tx5yNkMc1qgn+K4gxu3HJWucRtbI2Lldec2aQ+Stw4r
	 lL+coehGOfCoCOzCrSbCDdjiClU4WBqJXzBiX9yNy2YAl09hUZC1Spq6jWUzsAkbN6
	 UhAXSYCJar4X1w+knbUvnsqal3i1Q/vhLfOWvPMfa6Vd32js8e27cTxsVnXonAEz3m
	 pGRfoIyP3DJE02Ypfe90YG64wwTPFyYmSC94B2LP9rdMWaV6FyfcrpQwAOZ0FqQT5u
	 iJPut3MnMi8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F8E81A22;
	Mon, 16 Feb 2026 13:50:01 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Subject: [PATCH 0/2] media: rockchip: rkcif: various fixes
Date: Mon, 16 Feb 2026 14:49:55 +0100
Message-Id: <20260216-rkcif-fixes-v1-0-b16db20b6d68@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIMgk2kC/x2LywqDQAwAf0VybmDdikV/RXrYR6xBWSVBEcR/b
 /A4w8wFSsKk0FcXCB2svBaD+lVBmkL5EXI2Bu9863zdosyJRxz5JMWYc5ff6UNNdGBHDEoYJZQ
 02VP2ZTG5CT21meF73388YpNjcgAAAA==
To: Dan Carpenter <dan.carpenter@linaro.org>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Collabora Kernel Team <kernel@collabora.com>, stable@kernel.org, 
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771249800; l=962;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=msfTh03NG07ETuEWGU73Tj/AyEz3fvIWOKO1VC6wmzE=;
 b=EzemGU4WwwrerpyJyqtpwSkZEMGm+gNFMXztnVatpUldXQTDeZsDGZ8MxfWnBm7/R1bLPh0hI
 h8+KZIwF77YAolHH+0o2kfeiOq61M+Yi/24IZffM9j2nE7HAw/rB8pd
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
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

This series contains

 1) a re-spin of Dan's patch that fixes some more stupid off-by-one issues.
    This patch has been around on the list for some time, but apparently
    has not been applied yet.
 2) a fix that makes the DMA abstraction respect the minimum number of
    buffers requirement

Best regards,
Michael

Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
Dan Carpenter (1):
      media: rockchip: rkcif: fix off by one bugs

Michael Riesch (1):
      media: rockchip: rkcif: comply with minimum number of buffers requirement

 .../platform/rockchip/rkcif/rkcif-capture-mipi.c   | 10 +++---
 .../media/platform/rockchip/rkcif/rkcif-stream.c   | 41 +++++++++++-----------
 2 files changed, 26 insertions(+), 25 deletions(-)
---
base-commit: c824345288d11e269ce41b36c105715bc2286050
change-id: 20260216-rkcif-fixes-bdd9d3c7e4b0

Best regards,
-- 
Michael Riesch <michael.riesch@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
