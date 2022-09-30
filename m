Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7880C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 05:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UC94WXShz0LDxmh7RPl6CkEWEmCb2HZ2Q0HPIXztMSc=; b=BrtZa+lXGg5Lio
	UyYIBCaEJa/OmZoktvQtJHqOyJLyZOsD1NwKgY7hQw5rJvJTLC8XacBfH3z1QYS9b4SPOaHegBgTZ
	XF54c4tYRm+ctHdlXWFLkY7gRTYdi8s1xUWI8O7RXJycHCkOOZCbbJHacbnaT0bTQw7pjrh8ou5Ka
	+qLzSZ5YfN6+TExl9JTIZHGGuZy7BotoW67sXU0uQESoEinp5jE7P2X7C/yApkMmKwI1mMGYS2rGE
	9RTFdT2Jlu/ulhLJXemQKV9K6Up2CZgohVBjWEhZIlslB6XlISwVznInbsWEJgYjs1POcBaMyCQne
	XtCRt7hIJJI3zlmbPNcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8MZ-007E0F-QK; Fri, 30 Sep 2022 05:15:03 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oe8Kh-007Cws-KU; Fri, 30 Sep 2022 05:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:From:Reply-To:Subject:Content-ID:
	Content-Description:In-Reply-To:References:X-Debbugs-Cc;
	bh=n+CAzKhijUMiUbAxRPeYjENYTWUoQz/5++2HQzml4QQ=; b=yDT6ZUylaDhJhDZXAJhIGBWiLh
	nBWtRdbx549cGBuROjRctgRH/nzgvC10f4Op4Xcew/fHg88YaCCEVL3EZhhj2xFBfD5Vgt7xJJ2ul
	Mh5xUMXhyqMxc9T8KU3n2QQx1XNjVl2SjACji43OQekOml1mIfhWDuiN+b4A3Ki03ahztQILuwICJ
	RTBjEw5FvfrzlJSM3oBbC8kMZPecgr14hviEue9MDA0sISyYZuCyBeU8T3QTkDYsDEWz6vXJwjHtg
	1LYhU31BmJceWa0C1Gz9Vabdii2kP69m5Lx3bddvNM6+yAJPsWrtQlOC6psTy7VNXvLJj8MZ7YuXp
	ADuqIEug==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kb-00Dje3-Py; Fri, 30 Sep 2022 07:13:01 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1oe8Kb-001duB-0j;
	Fri, 30 Sep 2022 07:13:01 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v3 00/13] Add support for the Hardkernel ODROID-M1 board
Date: Fri, 30 Sep 2022 07:12:33 +0200
Message-Id: <20220930051246.391614-1-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_221308_913921_B86C90A6 
X-CRM114-Status: GOOD (  17.44  )
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

On the ODROID forum, Dongjin Kim said he is not planning to submit a new
version of the patchset adding support for the Hardkernel ODROID-M1
board. I therefore decided to address the issues reported during the
initial review, and I also did some small fixes either because some
things changed in the meantime on the kernel side or because I noticed
some warning or issues when using the hardware.

I continued writing some additional patches to complete the ODROID M1
DTS to almost fully support the hardware, the drivers being already
present in the kernel.

This new version includes feedback from the linux-rockchip mailing list
and from the Odroid forum.

Changes since v2:
* Renamed "Rockchip RK3568 Hardkernel ODROID-M1" into "Hardkernel Odroid
  M1" and fix the sorting.
* Fix sorting of arch/arm64/boot/dts/rockchip/Makefile
* Collected Acked-by and Tested-by
* Switched the NOR flash to dual I/O from quad I/O to solve a pin
  conflicts with the EMMC.
* Added a comment about the pull-up on the IR receiver GPIO

Changes since v1 (patches 1 & 2):
* Added Acked-by to the first patch
* Fixed indentation
* Removed unneeded labels
* Renamed labels to not use underscore
* Renamed regulator nodes
* Added -pin to pinctrl bindings
* Changed GPU related regulators to always on (see 2cda380102ff)
* Added phy-supply to gmac0
* Added supplies to sdhci
* Changed SD card speed to SDR50 from SDR104 (see 1ea90b2d293f)
* Fixed power LED polarity and set the default-state to "keep"

Aurelien Jarno (11):
  arm64: dts: rockchip: add thermal support to ODROID-M1
  arm64: dts: rockchip: Add NOR flash to ODROID-M1
  arm64: dts: rockchip: Add analog audio on ODROID-M1
  arm64: dts: rockchip: Enable vop2 and hdmi tx on ODROID-M1
  arm64: dts: rockchip: Enable HDMI audio on ODROID-M1.
  arm64: dts: rockchip: Enable the GPU on ODROID-M1
  arm64: dts: rockchip: Enable the USB 2.0 ports on ODROID-M1
  arm64: dts: rockchip: Enable the USB 3.0 ports on ODROID-M1
  arm64: dts: rockchip: Add SATA support to ODROID-M1
  arm64: dts: rockchip: Add PCIEe v3 nodes to ODROID-M1
  arm64: dts: rockchip: Add IR receiver node to ODROID-M1

Dongjin Kim (2):
  dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
  arm64: dts: rockchip: Add Hardkernel ODROID-M1 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 744 ++++++++++++++++++
 3 files changed, 750 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
