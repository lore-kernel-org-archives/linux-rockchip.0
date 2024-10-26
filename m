Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A49F5D10BE8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 08:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cbb8eM3F5whK7uXaXn/HXvgDJ878+15wN/51j9fCfPQ=; b=SFKhRH64AOsf+I
	L+k9vsQQk49dVKPfBfDpGw7cl8NmG4tQJtVVu++ELqK8ybjB+Lt32XU4Qq9GJgADzwx6vJFZLrHYo
	oyX4bQOyelHb8uW3VsA5f1HcssZ20xSVq9cmWBi2HE4v0roSg2RRQbox45ByShDE+BdWa4aYEqTrZ
	jerld7efnmTad1FjAaywtKCmeJDTWKyAhjGjQOLZ5/0Mcom2QyhBm0HySdSX1p2mEmkkdpbCmdBA4
	FKU7TEpCKLlkHy8qpVjHKzwCjETRm27Jgw7v+o5HypnJuuSBhB+ojTKU1s93thpgvN5gSmA4wcDnR
	ELkJeJeixVLefIF4r39w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4c3G-00000006D6z-2t3w;
	Sat, 26 Oct 2024 08:21:38 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4c1f-00000006Cs7-0EAR;
	Sat, 26 Oct 2024 08:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=PbnFu
	oI9Q3MVTHlFsPg0C991ZYtgsER8pJ/y4bB0BEw=; b=ZeOSmZy4yG9DeS4uqgJk5
	NvFF1Kr3dEVSMF2xBP9R2dRuCAZNsexjyoffVWYOrn2QzDtG4GPNia0cRvxaFWtU
	bJHXrir6cpGsGJuxu5Nr3tqTmjQY0FWugTWlYa3x8lSQ3lOMjg352t4con0/1/5T
	5PPsahzPoUaM6qSREiox8o=
Received: from ProDesk.. (unknown [103.29.142.67])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wD3v9wkphxnW2U0Dg--.30094S2;
	Sat, 26 Oct 2024 16:19:52 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 0/3] Enable hdmi for rk3588 based Cool Pi
Date: Sat, 26 Oct 2024 16:19:25 +0800
Message-ID: <20241026081942.348459-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3v9wkphxnW2U0Dg--.30094S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjTRnmiuUUUUU
X-Originating-IP: [103.29.142.67]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxuEXmccoZRKCAAAs+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_011959_644972_CB5427AB 
X-CRM114-Status: UNSURE (   5.26  )
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

As the hdmi-qp controller recently get merged, we can enable hdmi
display out on these boards now.


Andy Yan (3):
  arm64: dts: rockchip: Enable HDMI0 for rk3588 Cool Pi CM5 EVB
  arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi 4B
  arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi GenBook

 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 49 ++++++++++++++++++
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    | 51 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 49 ++++++++++++++++++
 3 files changed, 149 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
