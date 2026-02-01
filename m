Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D5B4D172A2
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Feb 2026 19:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ToWMy2CtB4W3RwtEtAY+XxoJ6w5jZO0BeYg/vA6E1wo=; b=FXHHGBoW/q4NLS
	/SBNIrtfGTt3hs8GD90mjdwFrN5liG95m1pJqICMeKDA7pAtcx/DYovxpbiOu1ROiHj2FCjlWkfeK
	eTd3chg58IFzhBJ/N80DIErKmk36nlNpaquVfXR+jN0SPUqbrA5+0EI6+STTzSR8gIF2VSkFf2lf1
	CTXTE2hhEDSh0svlmPZaJaoBgIuhEUSxPGmrnKZqeduoNiMeJixv9yLfMLY/EbkUkL0sDzlz1/Wph
	amOw1bk9rBu4mVQxPrKf17ykj7ndo/ex7OPtfD6egnwqnmRzS63vVwS1K0t7pigiLiNSJPZWn2vIy
	S+Iy2ij5fyeRvS4pAXog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmcxc-000000046gD-1BXn;
	Sun, 01 Feb 2026 19:18:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmcxY-000000046dK-1i3P;
	Sun, 01 Feb 2026 19:18:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=NKKaUSKuxZXlAdrwXm1kJArmP+joao9NbsImNdxlE54=; b=qzyGtfnFIkOmdczKlague0UR+q
	nlvuhtKFwk1FCAc+W18u+dcnbcJMJglZ/90kiEudPKszn19X7K3ueTuJIEu+eUvCM9pRuvHSnnqhw
	uU9ylNwum0xBJM/h0kbp8wYY8cp50hr7jIahIXClYt1ANQxxgP90WP/JJPxk+IsaSeEgkbe8RPjdC
	5kd8akrPGyPhuSc2SsKs4SicEbDy0s0E53ezmonkvODhO13S7k9lfM7qxlKDWfIg1mNKDnCFVVfKg
	4qpkJqsFZ5/tV9oguXdm3bVd0x8Vbmwuhk9i+ReF49G+ydOgm3YVKHXAWQmvQQJPH3AVhQNWSZU+M
	EbnlfjQg==;
Received: from [88.128.88.21] (helo=phil.t-mobile.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vmcxS-005wWz-Ss; Sun, 01 Feb 2026 20:18:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Revision overlays for QNAP TSx33 devices
Date: Sun,  1 Feb 2026 20:18:00 +0100
Message-ID: <20260201191804.41421-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_111812_447010_785E48B5 
X-CRM114-Status: GOOD (  13.36  )
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

The QNAP NAS devices actually got device revisions at some point,
so there are different board variants in the wild.

Above certain PCB revisions, the devices gained additional GPIOs
for controlling individual power to the sata ports and also could
detect the presence via GPIOs.

They are not really necessary for normal functionality, as the PINs
start in a sane setting, but still it's nice to document things.

The overlays should be applied by the bootloader, where I have a
series pending to do this by reading the PCB ids from the EEPROMs.


Heiko Stuebner (4):
  arm64: dts: rockchip: Add port subnodes to RK356x SATA controllers
  arm64: dts: rockchip: add overlay for qnap-ts433 device revision
  arm64: dts: rockchip: add overlay for qnap-ts233 device revision
  arm64: dts: rockchip: add overlay for qnap-ts133 device revision

 arch/arm64/boot/dts/rockchip/Makefile         |  15 ++
 .../rockchip/rk3566-qnap-ts133-pcb-13.dtso    |  64 ++++++++
 .../rockchip/rk3568-qnap-ts233-pcb-12-11.dtso |  93 +++++++++++
 .../rockchip/rk3568-qnap-ts433-pcb-12-10.dtso | 151 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  27 +++-
 5 files changed, 346 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133-pcb-13.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233-pcb-12-11.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433-pcb-12-10.dtso

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
