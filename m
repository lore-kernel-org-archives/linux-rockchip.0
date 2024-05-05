Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CEA4C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 20:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h05+zYFIAGKz7soOTopFtEwRcacf5jbsvwFA6qFQx/c=; b=vRe7yy4qlKkx6b
	1+sQSU4zFstCF5yGKIO3PSN+x6uq3C31ev7ZY4AzMBlchxBVDvkPBd4YyjunaEvluyspiraK9mUgZ
	xQWlvzX0rH4whUbJxIiFkeKOeAGMP2F3Z5QY87M7iGrwh9hT5VmmtzSMiCcADQVZG5ecv8Slqy2JF
	wRBH1GRVSJys54lhgeVUJQHLSAavMrYlYCuUSgMdDyCsjV6TtdlPap8uVoktsQFsueSZZAbTr+vyN
	qxuZmz5WYqxPKu+cmSnWRJRu4vb2UIw3OSJ0jkstKhbAlDx1TpSN6Wg/6Dgd0Uqq++IayEcnGULCC
	GYevyhXiNUWLsr7AM5Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3iQx-00000005EjM-1IAG;
	Sun, 05 May 2024 20:26:07 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3iQr-00000005EfW-1TQC
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 20:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1714940733;
 bh=yYQHFmGpW55zkbj8zsWMJat5Z4fq40uha7pgN/y0H0k=;
 b=AxeCn8mUsoqrUcxYmZrNm+2pecQHAy/NZIDtA7zLp7abZA/f4bE9RGrP4yQ9wllUAp3M8OcDo
 IoTh+ZvVtcajA0vAZB/laZpOcWCtY6mohdy7VzrbGq+PcA57Ig6/flSSymyQznwaObbUaQ2SjJ6
 rvsl6JvL9lscjUyAgrMRM8EzQYetjASKfjVEOFRjDcrTjmZcPEmzWIJ6oMfl/qszYqPKpYb1eZj
 I5rEJoYtdPuoEjJvBK22GF5gcxB8SKKWJ4NRwQwNa7VVIuHGMDlOJ4AHsK6kgI365dSbb8Pwrwx
 QRbMfXi3iaxDHTrwPPILF2z4uRlF7nHGBCuK1hcqGgfg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
Date: Sun,  5 May 2024 20:25:15 +0000
Message-ID: <20240505202522.2999503-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6637eb3b50d779b5c30d1117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_132601_736900_1F5C8F76 
X-CRM114-Status: UNSURE (   6.74  )
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

This series adds initial support for the Xunlong Orange Pi 3B board.

The Xunlong Orange Pi 3B is a single-board computer based on the
Rockchip RK3566 SoC.

Schematic for Orange Pi 3B can be downloaded from:
http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-3B.html

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
  arm64: dts: rockchip: Add Xunlong Orange Pi 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../boot/dts/rockchip/rk3566-orangepi-3b.dts  | 694 ++++++++++++++++++
 2 files changed, 699 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dts

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
