Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F4FCD3445
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qP2W6pEaa88U41tHJ/aJJsBTasHY/1OENC4dONMMDDk=; b=TFMlZ+a7xF+LWx
	7Yz+f6GP4hkqlnPmGI1w8ZVoMyeUlCuYyysbOJDY+PhSQfS8e0//vABi5Nxm9+d2eB3oFVqyy3V5y
	+wBk5hnPpccxbVvFWXC0rJ66oY/hfvtrt8O2ek0ZfltfteHk/4DCMaalmuzomZz6s5OovgfTnm4xz
	xAyzV8lbZOauQSAI3QpsxvlMn4gyh2yZLtiNgcw76n4iexXdxdcP3FXmfOTCdkT3Tk+/ebUiJNFpe
	NceHjOkO8XbbQj+o60TMObjAkyK/wFyu13rLO/O95trolyMerYFmw7CdUX77cFj1jCLFZS+UUm+Qk
	GX7w8cOae2ywp29Uo3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJJv-0000000H11v-0UOz;
	Tue, 05 May 2026 17:12:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJJr-0000000H0v0-1Ial;
	Tue, 05 May 2026 17:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=5RFjcKGymVRRwjpeRMIjqqFXUaYlskpsob4xR/vtkac=; b=VYZT1QMeOOEeWYT813oOhOEc4l
	4QyF5VWsg9BkPALpYJJHezDMGAUEEIbdgc0MbJArVFZM8Mq1JXoxYwONlUMYAWKZxkoM7d2Tr0aL7
	0URwQdrOQUc8d+qToQDZ4Mkc4dR53itkKBSAqamwRKHxpznvLAXfCo5SM3NZHytTg8VMHrQY6PMrO
	nlOBIF6mGiCsmP0n8n9NpgEiEDO07y2Mr39GViTfSaxZkUqmOs63Ie5UxxhpUfV8/mG4QHPUqUtFj
	zuMf36kxNPdcE9hZG/vX6Fkjtz+QMjR80iiXDFSpd5O8jsQfRk1xXRfTRLMjW2Nqp88PxZyxNk6B4
	mmBDugQg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJJm-0000000E83Y-2vgp;
	Tue, 05 May 2026 17:12:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=5RFjcKGymVRRwjpeRMIjqqFXUaYlskpsob4xR/vtkac=; b=fMEviG25nEoAfrXnTwyoO78Pp8
	kUWMWvK0ZL2gsL6NaqCDxi6q4Dond6B4MvPD8oL4KIr0MI46jUB/jV6uP+ezacF+scT2XBczj31Em
	S14NtgI0l9cEDNSUCny60QbzIwyrKUMyJkTJyv2BXvB+WZ78Z9aZBoXHlv0YvVa8wgCKiFVXe3RYt
	x3LK2pEyuIXzHESymxN79olHKFjnYlAlAUCaeSeuX+ts0YljNiUFPoYGwkR5BnFqLmzHr26biLeS5
	A4OdcOZWCGlkWsFCdfxrONh7n5kyIY895tsKN9PLr+6FK/YqBxp93HKemD8ktANhnLvnojAAH3g/b
	JEfQSOHQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/5] rockchip: add USB nodes for RK3528
Date: Tue,  5 May 2026 19:12:03 +0200
Message-ID: <20260505171208.3267387-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_181223_000109_EE6E26C4 
X-CRM114-Status: UNSURE (   8.98  )
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

This adds the USB nodes to RK3528 and therefore needs both the dwc3
compatible [0], as well as the phy support [1] to be merged first.

changes in v2:
- split off from original series [2], that added all 3 parts

[0] https://lore.kernel.org/all/20260505164509.3254707-1-heiko@sntech.de
[1] https://lore.kernel.org/all/20260505170410.3265305-1-heiko@sntech.de
[2] https://lore.kernel.org/all/20250723122323.2344916-1-jonas@kwiboo.se/

Jonas Karlman (5):
  arm64: dts: rockchip: Add USB nodes for RK3528
  arm64: dts: rockchip: Enable USB 2.0 ports on Radxa E20C
  arm64: dts: rockchip: Enable USB ports on Radxa ROCK 2A/2F
  arm64: dts: rockchip: Enable USB 2.0 ports on ArmSoM Sige1
  arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2

 .../boot/dts/rockchip/rk3528-armsom-sige1.dts | 24 ++++++
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 30 ++++++++
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   | 48 ++++++++++++
 .../boot/dts/rockchip/rk3528-rock-2.dtsi      | 17 ++++
 .../boot/dts/rockchip/rk3528-rock-2a.dts      | 13 ++++
 .../boot/dts/rockchip/rk3528-rock-2f.dts      | 13 ++++
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 77 +++++++++++++++++++
 7 files changed, 222 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
