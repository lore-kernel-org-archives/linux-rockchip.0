Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A005C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 15:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GEka5pH94QwN38bfrP5NTe3kWJn/Te5xnGi1j1bEenU=; b=iUFZxkGWAWrooi
	qvPExcbeYDDrh0VCt+DZu5MLqkTA0IL8a9Lni+z7vjGcNLiNmT2QpDg33ZvgPRSE70R5KWoQ2RkJm
	glxk5XkWhY8TlR5iuukrBPX0wOE02u+vKYLedqRwCDgbFXw4+edD8LSmWx5VTNtIenxW6a9iRjli1
	yYhbdun8KISLlRUP0MZ2vDOEctZmOo7SIV4APfK2JtpHX8zskRLRCiXbDOIMmCnvHvjaZzOtt1tHE
	XdlRnelkkZksLtiRIMUuvKihpgTHN539/D1OBCvqyi/p8vX95ZJW2P2QRlRXZkm01vaeIiO1TbxaM
	hiQsiy87P8d7Zx1j/MuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP4OY-00HJ8A-EJ; Tue, 01 Mar 2022 15:26:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4Mv-00HHoM-J7; Tue, 01 Mar 2022 15:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=EgKR4jh/nFy9Q8P9zxOcbItrMHn/g3ym5IeVT0hhCDk=; b=FR8OYX3vedJQe+ODQSc0sjuaua
 Bg/UwPUxa8Exol+dsRhGtaAKOMBlnbUGudH/NSKeYfeTpxbpKFWooZOIvY6q4YVKsuuXJhRaegUPW
 Q/LOe+LHepxFLBJJRwR3c0BHGj9Z33Gvv9JI/qLmNzm0yenfjbxUOgf1NuTYg2GjT1YtXgECIG/c7
 eb6snvAZxFhmzrFU+H4mDuSPeeDhDDkaV3pnDZBD7IBj4rph0hHWYiefCBuI6RHCRUkBWvBDVB4YE
 o8WF5Fq68JGBpk9cX8vQPU/sNT4w6hbqjoih0qRxyw+g2OZCOGNz7u+ypvnInV0nnV3QYGaFAOc6C
 hkUOPoFg==;
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP4Ms-00EIOQ-2v; Tue, 01 Mar 2022 15:24:52 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout2.routing.net (Postfix) with ESMTP id 4F9195FD74;
 Tue,  1 Mar 2022 15:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1646148284;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EgKR4jh/nFy9Q8P9zxOcbItrMHn/g3ym5IeVT0hhCDk=;
 b=KwlTPSe7/z2GJh18srISs5N8k+W2fGP9DM2Opuvtf3bK7Av4gXC+VQB88Q3dY7aI01IAQd
 ckT6Nqc4KI8b08iKRH7jfrV/z5uYs3Fs4G7OCqrKjChCAynQeWRQ20NjWEiXz8f5vobSCu
 PO5Bv3Bj6FlZab/+KlgygDzL85M6G6U=
Received: from localhost.localdomain (fttx-pool-80.245.77.190.bambit.de
 [80.245.77.190])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id C46001005DD;
 Tue,  1 Mar 2022 15:24:42 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v4 0/5] Add sata nodes to rk356x
Date: Tue,  1 Mar 2022 16:24:16 +0100
Message-Id: <20220301152421.57281-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 638c7878-d4fe-4eb7-bd79-5d758478ea67
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_152450_345811_B54971EC 
X-CRM114-Status: GOOD (  11.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

This Series converts the binding for ahci-platform to yaml and adds
sata nodes to rockchip rk356x device trees.

v4:
  YAML binding:
  - fix min vs. max
  - fix indention of examples
  - move up sata-common.yaml
  - reorder compatible
  - add descriptions/maxitems
  - fix compatible-structure
  - fix typo in example achi vs. ahci
  - add clock-names and reg-names
  DTS-Patches:
  - drop newline in dts
  - re-add clock-names
  - add soc specific compatible
  - fix sata nodename in arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
v3:
  - add conversion to sata-series
  - fix some errors in dt_binding_check and dtbs_check
  - move to unevaluated properties = false
  - add power-domain to yaml
  - move sata0 to rk3568.dtsi
  - drop clock-names and interrupt-names

Frank Wunderlich (5):
  dt-bindings: Convert ahci-platform DT bindings to yaml
  arm64: dts: broadcom: Fix sata nodename
  dt-bindings: Add power-domains property to ahci-platform
  dt-bindings: Add rk3568-dwc3-ahci compatible
  arm64: dts: rockchip: Add sata nodes to rk356x

 .../devicetree/bindings/ata/ahci-platform.txt |  79 --------
 .../bindings/ata/ahci-platform.yaml           | 169 ++++++++++++++++++
 .../boot/dts/broadcom/northstar2/ns2.dtsi     |   2 +-
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  14 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  28 +++
 5 files changed, 212 insertions(+), 80 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
 create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
