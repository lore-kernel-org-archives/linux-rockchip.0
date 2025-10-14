Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CB52CCD192
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 15:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gwpxuTF+cE/nWZ0d8cwTs7iiFF/YxjfOXKXrmZ/RFio=; b=Ugxz727MXTxPvs
	gm0bzLa9lHgzpHRjukEG8w9HgKqdi2ipYgQOafPkNRR3Nx3zXklyxDUGGKHCAhQNuj7RjZmj+PP9c
	aVgpzGcqC+MxPGhE5rPSoa6ZoAqHgHxO6pYHzuXYu4T/vflIMr8GDZ+j+TSdFHaGQAI5MzPQPx5Qp
	d4h6SEgZ7k2ILaYnOY08oPJ82/lsuw74Nbe26GIxPYDkbVnRVztE49YFAbI99IPyPQ9NpBsLZctL0
	rN/Xulei3MXJuz+jGz+RSdap9N9cSMaxc2T1EpktidgB2ciQsB+tbwA0xpXajh2NVyvm3rejiGqS2
	c19+l43wxf3mugixy6hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8h9c-0000000Gsr1-06M4;
	Tue, 14 Oct 2025 15:41:38 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8h9Y-0000000GsoF-47iW
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 15:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760456490;
	bh=yt07u+0NUCcqdY1LR4Mje/e/VBZvQgx13+AxxYZ7hkI=;
	h=From:Subject:Date:To:Cc:From;
	b=E6crkLSw8oYUZtPK36HPD7D5DKmHJDoweQRHfHlbcke2HeReIDqpQMpUtSMwfDyac
	 ANXhKM66b2NzhXBNJacAApyjHTjCxaui6gBQgofv/k/4rSJ6Z1xF1bYtGMl19LpFbJ
	 oONR4ci78ljqut5BvkQquwVP2DqZol4BJ2Mdx9qIDL1Ym5oKTthIeYx5fHTyo3Z+zN
	 J0RMVORI3W0kmNvfEEhFYrM6p8xF3qONghaIsqcsb6DeIgGzs/ZQ2FoEbVbKZE/Ezo
	 tBpr696b9OE/8vrioKaINGvV6iMlS6ZnZSSfOADzNj01wLCu306CHkgvlGvUuTMGRl
	 JUi43e+Esl11w==
Received: from jupiter.universe (dyndsl-091-248-212-042.ewe-ip-backbone.de [91.248.212.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6615317E136C;
	Tue, 14 Oct 2025 17:41:30 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0B271480044; Tue, 14 Oct 2025 17:41:30 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 0/2] mmc: sdhci-of-dwcmshc: Add command queue support for
 Rockchip SOCs
Date: Tue, 14 Oct 2025 17:41:17 +0200
Message-Id: <20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAB1v7mgC/x3MQQqEMAxA0atI1gbaqiN4FXGhMWoYtDXVYUC8u
 8XlW/x/QWQVjtBkFyj/JIrfEmyeAS39NjPKmAzOuMoaW6J6+tIiAXldCWlnjGcIXg8sajMO/eD
 sxxWQ+qA8yf99t919P2zKbXRrAAAA
X-Change-ID: 20251014-rockchip-emmc-cqe-support-370dbab21623
To: Adrian Hunter <adrian.hunter@intel.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1660;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=yt07u+0NUCcqdY1LR4Mje/e/VBZvQgx13+AxxYZ7hkI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGjubymL1rrccQnGTcYPFLn6+anTlCNGlsNK9
 i5R+5tX7k/TkYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJo7m8pAAoJENju1/PI
 O/qaxc8P/RKFdIYJpCOvbeUtPfFzJOb+4gKvudUx4kKlxkmPWTfrgjxHYLtW/VGE5IBRjxXiXVk
 VzIu0pr2XPKzCBYXpw/b7jtad6xcFwuX97hy+Qz56t8eFwBzFVZoENPQtYOCfSM4qMgIsOSpBmy
 vNUx8W+6TvOgzTVVP+EtvE0HgmygpX8PVBzLDCJh/r0bbvvpEwJ5sIsT1RAtPx/oB2O+cxlLaKh
 1HHkoZJlt8hSitA6lKn4LR1ZY1so/WoyDn/9Dv/TeIbKiH4HRSfUhU2n1GdLykvDYhbep4OtVKU
 OXs1AxF0EeMyhOSU4IUAaOf7q9FzVVas86p1UDiS+joFYs4o54n5TZ+YYcntyGqXBeE9b1jzRX1
 EZY5CgeMb9qFJuld57+AIcPz6EAyli8eJBFXcBgBMKBvlQng4C2WenOQmzsx2+Z0rygsmkJUAEK
 zhLFlRFJoUPvSlLI6NjRcb5I9LXqZR8PJrj2NEfyzq4h8fggradPr1lkgwZPqFA2juOd7fH3P81
 zJmW4oiu0RddQjirfU7rcS382KkkrO+cIyyd9TF8s/wUK/ifHUgl9ooJTXnleix4tGL8Ipt9eze
 XpFBcrx+skGSwOW7C5Pseoj9rafeSBKU/aSKMDlyKlwvDVFXayV+V1zxFIZ0yz9OReXDZd4r49m
 o1F7UM/HWGwUcOlQtyr42/g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_084133_183041_A2DA5E1F 
X-CRM114-Status: GOOD (  16.46  )
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

Right now at least the recent Rockchip SoCs do not support system
suspend with the mainline kernel. I'm currently looking into
improving support for the RK3576 platform.

On the Sige5 one of the issues is the eMMC controller, which fails
to suspend when trying to disable CQE support. While investigating
I found a missing Rockchip quirk in the Rockchip kernel, which is
needed for CQE. Since the RK3576 DT has been upstreamed with the
'supports-cqe' property (RK3588 does not yet have it), we run into
this problem for that platform.

A simple workaround would be to drop the 'supports-cqe' property,
but DT is supposed to describe hardware and the hardware does
support CQE. Thus let's add proper support instead, which also
allows adding the flag for RK3588. IMHO the patch seems a bit
intrusive for backporting, so it might be sensible to drop
'supports-cqe' there instead. Thus I have not added any stable
tags.

Note, that there are more suspend related problems on the platform,
this is just fixing some parts :)

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Sebastian Reichel (2):
      mmc: sdhci-of-dwcmshc: Add command queue support for rockchip SOCs
      arm64: dts: rockchip: add eMMC CQE support for rk3588

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c           | 85 ++++++++++++++++++++++++++-
 2 files changed, 83 insertions(+), 3 deletions(-)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251014-rockchip-emmc-cqe-support-370dbab21623

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
