Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D567FC48BF8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EYTwPGqpGmcw2pGfz8y8sFBOzvqmgYbvsaWeOLKBOuk=; b=F3FqyRxNqwz4ia
	Ld2Q4+d6VzzG6h0Ord10SN9+Mgu5pdKV0zD+5nHK5ef4+GFLQuTNrVHJM03wskk9iOTgHVLkwoybA
	AiMKlvUuOaH5aPA9cA1A9QMyyudPW8xn+4LdHv3PDkEnAeYsBDxniFcWMIAbnsvuDrlUkQU5fbAGG
	iGaQJU9wuUVNe70rFi5GzcIebf/lKMa5OoldMALYxuBoOwMyRlm1M/SV6IJwcXyTGKEHgCdRc0tef
	XQEVerMbCr1y+CbGpcBkCCG9yCRwqQpX7DCyRMXhYxWyR8jxAJ8UxA7SvXUxjtMB3/2Pz3kbzGW6K
	/+61ZTxfbE1JDPZzJc7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0u-00000008PGk-0K9v;
	Sun, 18 Feb 2024 20:43:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbo0r-00000008PFh-1Zx8
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Feb 2024 20:43:50 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B3CD8480;
	Sun, 18 Feb 2024 21:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708289020;
	bh=PWkeVUUpTQ/DoFtZiJ9jtqyC24tDanuBmFzxU2p+Gg4=;
	h=From:To:Cc:Subject:Date:From;
	b=fAcYKFbZbVUZ1zJbCS6tX+6sUmO+jPLisKO/M42Zt0B7h1TUck1pfofa4QerYStWt
	 oLQ41Qs/iLU+uV+XguL7V9dMKU/H9EZ26Pq/o2uyr/Z/gy2Uys20Y36208SUqIBpjY
	 0+hZouQRybeWFeMWcH7ibcXgNSIa2sS9XMKEgmXw=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Adam Ford <aford173@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v13 00/12] media: rkisp1: Add support for i.MX8MP
Date: Sun, 18 Feb 2024 22:43:38 +0200
Message-ID: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_124349_576353_457C8337 
X-CRM114-Status: GOOD (  12.09  )
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

Hello,

This series extends the rkisp1 driver to support the ISP found in the
NXP i.MX8MP SoC.

The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
and in the NXP i.MX8MP have the same origin, and have slightly diverged
over time as they are now independently developed (afaik) by Rockchip
and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
and is close enough to the RK3399 ISP that it can easily be supported by
the same driver.

This version of the series specifically has been tested on a Polyhex
Debix model A with an IMX219 camera sensor (Raspberry Pi cam v2).

See individual patches for a detailed description of changes compared to
v12.

This should hopefully be the last version, I plan to send a pull request
in a few days, in time for v6.9.

Laurent Pinchart (2):
  media: rkisp1: Add and use rkisp1_has_feature() macro
  media: rkisp1: Configure gasket on i.MX8MP

Paul Elder (10):
  media: rkisp1: Support setting memory stride for main path
  media: rkisp1: Support devices lacking self path
  media: rkisp1: Support devices lacking dual crop
  dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
  media: rkisp1: Add version enum for i.MX8MP ISP
  media: rkisp1: Support i.MX8MP's 34-bit DMA
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format
  media: rkisp1: Fix endianness on raw streams on i.MX8MP
  media: rkisp1: Add match data for i.MX8MP ISP

 .../bindings/media/rockchip-isp1.yaml         |  37 +++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 180 ++++++++++++++----
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  35 +++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  71 ++++++-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 ++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  35 ++++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  19 +-
 include/uapi/linux/rkisp1-config.h            |  50 ++---
 8 files changed, 472 insertions(+), 86 deletions(-)


base-commit: e0b8eb0f6d652981bfd9ba7c619c9d81ed087ad0
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
