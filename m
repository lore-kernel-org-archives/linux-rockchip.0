Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2DB5C07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E6hpvVYOTSpXatqbbMWispvnxNtPJzHoepl2PQtAXmM=; b=YDl6bb1CdGn1Qj
	7f1RQ94KxxgetvBPJURYJKoNLXJB0+tcs+buoV8+C+YiGQcBrEBzzt1h4eovP8M6H2uYtcEOQ6D6c
	nY+Tmz+X25Q+KTiX3vMjG2j0FjqPgTKMiq20NQ0rFMZwQyuomJXbLSAAXfRdLbFwgfV2KA/jPMalP
	ZJvnaaI1GIDx08IYuWj3uOt1EOxf+7K98bRvUtfxTgVKRllLT6H6ZEcjpYPNHN80d8O/ssvH3jHrU
	2DNM9m+eblqPrsQ2m34Wl2fqSPcGxbdTMKPNJU3afGB1C9Nzb2TnH1Ni0M12S2aFUeIv33eQ3kKqR
	8Z1V7q2mOfaYzdeVOuwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct4e-006N9q-L3; Mon, 26 Sep 2022 18:43:24 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz7-006IJ3-Jy; Mon, 26 Sep 2022 18:37:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:From:Reply-To:Subject:Content-ID:
	Content-Description:In-Reply-To:References:X-Debbugs-Cc;
	bh=pOTtI3CgLRKXnWV3PLfmDj3rDB3dPXMnNTFNvS5R1M4=; b=io1bzKI2bzAgHPSr558LWj0zdn
	MTPE34E4bTgdsSUEEABuJEp8w/PFryyOatFrKRYnZpdTP3ujPMzuEBgPW0cE1Fv6NQ+suxuvx+RYD
	DmBtLzEJbKmqKB9EhkeDd7mTfuS/t1xjfo96gP2b16HucYeSMtLPoKNxYAYBF7eTgMu1SLTz65ckd
	nCSl+RvXd45fQIjA+0u9DdVKhgutqDDUG1N0Lkj1yo/hSTPV4QNSMBYWBb2WVaqcTim4m1qsxYm9u
	sTMXANKIVA8A+wxa8HCXqZj2i4g7WslPiQ85aK1d3YDfPE4sUqziAlK+FVgjQ9KIymRK9TJixdb/+
	d18aW38g==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz2-00B9PR-Io; Mon, 26 Sep 2022 20:37:36 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wbn-1C;
	Mon, 26 Sep 2022 20:37:35 +0200
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
Subject: [PATCH v2 00/13] Add support for the Hardkernel ODROID-M1 board
Date: Mon, 26 Sep 2022 20:37:14 +0200
Message-Id: <20220926183727.1893566-1-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113741_790425_B360F433 
X-CRM114-Status: GOOD (  15.24  )
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
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 727 ++++++++++++++++++
 3 files changed, 733 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
