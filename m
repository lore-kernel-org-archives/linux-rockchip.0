Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 619E8C021BF
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 11:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ua50Ux5k+YLNsddYaRUfHbFisyjH71IcnKEIq/NCZA0=; b=JM0lpEh/CwvnDs
	/69u9YeUwoChnKGFOke9GHIyz7aOYmE58w2nQrhJEo/didruMucZiYQRq1RfMKvzp6Yt0UjVQQI7A
	4T48wOxEOXftuxURHRWdLk6FrNw8Ae4AVmwdt8nw7GS1pxhUfAoGF6lHaONKcRZPrvooQUV6ddUGk
	KiItZn+DWMqBICNxOb+CYllA89tkWW1PZbeKVqczsIgDtIfG0S+eChs4OUVC9TquLUUcWW3UpLJHb
	gfvJhXmGSFx+GMUnrKHlAzQHpZfdWGxQxiwn+tppV3iBB4iiuSEKYAfvp6T/nCzxvgB0z29QZl1nH
	dV2ojp854a1qK+JAfrvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnF90-00000003OqM-2wHy;
	Wed, 26 Feb 2025 11:00:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnEo3-00000003KM5-3ptU;
	Wed, 26 Feb 2025 10:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+UGCoWBioAMtXtHm8CAvoMnBqRSxIPHa7kTP4Y78/Mo=; b=IrpValUloRiJKw2SB7N7epThrt
	NFi6BJUBdQ3Hz94ktQ/QHyU68jQGRFTdFYwxj+2PYDd/yk0OAqlAdi9LIZuXI8qxgCUlLnUv4CHWL
	MDxra/vNufGVI3auC0oWJL1B0s+XyEqkVtZAXW6araCSdRkI3OCmHg0ryH6a5Bpo45XIQpDmiXFOR
	60UTsCGPRb5lBUd3uDM9U4kas0T2a+00RZjpFxC7QeT5FGaGCH6nnl8OBWbwpU1n9Cotaw9oUHc5v
	h85IiB31Q4A/aKXm23WdlS8yanUqPg0dxJhf4Y//fNbdi46/WKWKVwhEZHs/PdZXetjhOLMyXo39/
	b51fq44g==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnEo2-0006aJ-GC; Wed, 26 Feb 2025 11:38:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: heiko@sntech.de,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	sebastian.reichel@collabora.com,
	christophe.jaillet@wanadoo.fr
Subject: [PATCH v2 0/2] phy: rockchip: usbdp: improve typec orientation handling
Date: Wed, 26 Feb 2025 11:38:08 +0100
Message-ID: <20250226103810.3746018-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_023824_032255_FE3311C5 
X-CRM114-Status: UNSURE (   9.43  )
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

Reinit the phy if it's already running when a type-orientation
event happens.

changes in v2:
- fix an error I made when splitting into code-move + re-init
  function should still return 0 after first patch
- use rk_udphy_init() instead of disable + setup combo
  We don't need to disable + reenable clocks

Heiko Stuebner (2):
  phy: rockchip: usbdp: move type-orientation-switch further down
  phy: rockchip: usbdp: re-init the phy on orientation-change

 drivers/phy/rockchip/phy-rockchip-usbdp.c | 171 +++++++++++-----------
 1 file changed, 88 insertions(+), 83 deletions(-)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
