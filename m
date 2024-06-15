Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D25BC27C6E
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 01:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f4+7sE5G1eOMyxpXm/FSfyVebghWaJrmRYet8mvRHBo=; b=15q7Liid4XA29+
	+zmmC4Ds6vSWQLmZngdcSZzaEqxe5U39Rr1t9GcQCI6LBya/9Crl+oCVLCbyQz/qGZN2Jpc/9f2Ao
	rsL0wUsgy7SVEql8BRXTZg8I/OyGMnxtOBw7Z6wKfUJjFTpeyTrlZULRtZBh8gY7jci95SRc8aiqd
	gkzDNRAkTPCNkWBslGgBc0Jt9f4hZ9VIn6LWiWHkxpmvwF7flKmOJ1zYZlj6ckPwQ+/szQpteGBWs
	MhAXS8qdZUqKtBn8amv8RG18N11KyVS1o9yUJ78Y97XH4UW+kmmW84dXceFEpubd+Vxhjseu3FNGj
	2mBLw56qjV5IjEEWNg3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIIgT-00000004RVz-1jRj;
	Sat, 15 Jun 2024 01:58:25 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIIgP-00000004RUs-0Yz7;
	Sat, 15 Jun 2024 01:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718416697;
	bh=0UTcYjd/8qry8O1pLuXm3l+KAOWonlHQZvdyiqU7/JM=;
	h=From:To:Cc:Subject:Date:From;
	b=U671+UADHvs8gQ98je0MEVzUl8WLvHhfyn4jmSIgM5ChBC38OyxBDhtjhBVqMTqyj
	 9w2dFHRBTOGM6O/GCVtZ2TviKFUnainsR+DPX7Ul5HhoOtce0KrCTz2yvfxrbaRhMi
	 aHOtaQlFkLLN3cKVr/FYhRpQJkufmFPzsw0VFVNxbCj07vj6f8nsScKQLfgRw0M4Tr
	 Izc/u77ruz2XCFRXCRf47l0eowOb6yzXPE7G0gIr8RKwZJU8jTfuwD7DZTcpHclBxg
	 a2yoChE4gg2S21jQZvSKgbHvoVFnwMThR0Bg8tppTz89VkSzEaeOTYQuIfPWacpLlB
	 DfccvweTBHjuQ==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2CD263781104;
	Sat, 15 Jun 2024 01:58:14 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/3] media: rockchip: Add rkvdec2 driver
Date: Fri, 14 Jun 2024 21:56:26 -0400
Message-ID: <20240615015734.1612108-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_185821_343741_D09DA811 
X-CRM114-Status: UNSURE (   9.89  )
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

Add a rkvdec2 driver for newer video decoder found on rk3588 based SoC.

See the first commit message for implementation details.

Detlev Casanova (3):
  media: rockchip: Introduce the rkvdec2 driver
  media: dt-bindings: rockchip: Document RK3588 Video Decoder 2 bindings
  arm64: dts: rockchip: Add rkvdec2 Video Decoder on rk3588(s)

 .../bindings/media/rockchip,vdec2.yaml        |   80 ++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |    4 +
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |    4 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   19 +
 drivers/staging/media/Kconfig                 |    1 +
 drivers/staging/media/Makefile                |    1 +
 drivers/staging/media/rkvdec2/Kconfig         |   15 +
 drivers/staging/media/rkvdec2/Makefile        |    3 +
 drivers/staging/media/rkvdec2/TODO            |   13 +
 drivers/staging/media/rkvdec2/rkvdec2-h264.c  |  899 +++++++++++++
 drivers/staging/media/rkvdec2/rkvdec2-regs.h  |  372 ++++++
 drivers/staging/media/rkvdec2/rkvdec2.c       | 1160 +++++++++++++++++
 drivers/staging/media/rkvdec2/rkvdec2.h       |  123 ++
 13 files changed, 2694 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec2.yaml
 create mode 100644 drivers/staging/media/rkvdec2/Kconfig
 create mode 100644 drivers/staging/media/rkvdec2/Makefile
 create mode 100644 drivers/staging/media/rkvdec2/TODO
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-h264.c
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2-regs.h
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.c
 create mode 100644 drivers/staging/media/rkvdec2/rkvdec2.h

-- 
2.44.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
