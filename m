Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C600C624D8
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 19:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mF6P0wbl7ODWscOqMcWSbsEcQECTNFwz2qAhsthiJpE=; b=mBksUXSCEI59EM
	wpkXeln/vhUJbjS93kmZeabliCccoWBtnjC2ZNUJZRqjpF5VCjsjc/kvdqdMbSNoZCWd1UQYOLmbz
	R/32l6Drsteysem0elyQDEyxzAF69myrO4AnUvR4FT3+EY/ytHaAZfGn45Sj5Ncd3YzF4V/Na64c5
	nKf15Wc12rKhjuuMu42207t8ZyYjD1A/0M9ELNoBHedwRdWIrcPbAEcapEVC6PoMVVqc21LQ29ujN
	1pe8wgXfE1mZwgy+u4zOGj8M85HG6Nwq4QJWds7MA8klBj1pUudGUzzmHdJGPGqeEv+cRc0eLAHef
	TZ32y528PMmG6iqHGcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Ubs-0000000DGrl-1FVq;
	Tue, 01 Sep 2026 19:57:32 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Ubp-0000000DGmo-0cyC;
	Tue, 01 Sep 2026 19:57:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788292643;
	bh=c2iPczLtPVzAMlawjRT1iQ+YfNBlqk2yLxQ0fD8HXv8=;
	h=From:Subject:Date:To:Cc:From;
	b=JVLkvuIiBYqlD8jXgnDZxYeLJZVp44FOH97rQwVJezq4g3p3cq3Vskm3vfhuU7YRn
	 FpGKkdffe7inS1riASp3ckgbTOto2+saVAbB35sfF5ZdwE9NZebiPP0v5OzI+o/SBy
	 hshlsCSg/XzhlTttyUU2DvWRvVSVgGSYE0qKBj2ph0Ok3NjNcT0yuvukAAT0EGDboM
	 utu1QIlNiFZ7VUrA8WZjlzA4DbS92v6vHAb036VbrUuXQHn3yvkHCyTGdt5Q0sKsxv
	 Ht088ufTchxzS6dkl9FKCgopWGlHtfI0G6s1zErOspyp8LpxKnXq/2IfN2HhCgRZGL
	 rHEWCDaShwygg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0B23D17E0260;
	Tue, 01 Sep 2026 21:57:23 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/3] phy: hdmi: Add FRL TxFFE level control
Date: Tue, 01 Sep 2026 22:55:12 +0300
Message-Id: <20260901-hdptx-ffe-v2-0-3a5922c76fc5@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQ7CIBQFr9L8tRhKhbSuvIfpgsKvkNRSAUlNw
 93FunDjciYv8zYI6C0GOFcbeEw2WDcXYIcKlJHzDYnVhYFRJmjDWmL0Elcyjkhk2yleoxAdPUH
 ZLx5Hu+6ta/9lj49nScafNDZE51/7X6o/9l861YQS3uCguUbJqLwoN01ycF4elbtDn3N+Azwd5
 yq7AAAA
X-Change-ID: 20260328-hdptx-ffe-a89c51e66904
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_125729_343275_44B35CC4 
X-CRM114-Status: UNSURE (   9.59  )
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

During HDMI 2.1 Fixed Rate Link training, the source and sink may
negotiate a Transmitter Feed Forward Equalizer (TxFFE) level to
compensate for signal quality degradation on the physical channel.  The
source starts at level 0 and may increment it up to a maximum agreed
upon during LTS3 in response to persistent link failures reported by the
sink.  TxFFE adjustment is optional and entirely independent of the FRL
rate and lane count selection.

Patch 1 extends the HDMI PHY configuration API with two new fields in
the frl sub-struct: ffe_level to carry the requested level, and a
set_ffe_level flag that switches the semantics of a phy_configure() call
to a pure equalizer update, leaving all other fields ignored.

Patch 2 addresses an issue with the PHY/PLL configuration after
reloading the samsung-hdptx kernel module.

Patch 3 implements the new interface in the Rockchip Samsung HDPTX PHY
driver.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Added a new patch to fix samsung-hdptx PHY config after module reload
- Rebased series onto v7.3-rc1 and dropped the dependency on the "Clock
  fixes and API transition cleanups" PHY series which already landed
- Link to v1: https://lore.kernel.org/r/20260328-hdptx-ffe-v1-0-53ebd5dea20a@collabora.com

---
Cristian Ciocaltea (3):
      phy: hdmi: Add optional FRL TxFFE config options
      phy: rockchip: samsung-hdptx: Handle PHY config after module reload
      phy: rockchip: samsung-hdptx: Add support for FRL TxFFE level control

 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 80 +++++++++++++++++++++--
 include/linux/phy/phy-hdmi.h                      |  6 ++
 2 files changed, 79 insertions(+), 7 deletions(-)
---
base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
change-id: 20260328-hdptx-ffe-a89c51e66904


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
