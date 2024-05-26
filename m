Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0120CC25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 May 2024 23:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UYkTL7aJFuHLx3I47yQcBmBYI78WdRSl7zcKak1NE4o=; b=hMzLvI8C0YCLHH
	lb2pAtfiBqvarI1OY/LRka0fw9r36uUKZHA3Shg7xrnlx77hJ8lkfT8gsunApFckhlLCUXiIN9RJ/
	jG30fZYMuvEL/RBwmgi/5LEmyTf7Jb+TQBpR3cAy5e8xUAl0FPlca1MH681AjDfzvFGKFNpmLkZBU
	a7NgMDkiDj/r+gumJJvFGhZmh2ooIi1OeA/Ne7sErPS93IWllJ92seiI30KT60dJABM+yFdXwCTt5
	5DoTmv9Yr+lzdTd/WnKdYmN9MHpnxDNe+aBt/Bv/KXKPQoW9obmrCisnZlopGNNXidVEfbMdiSNCU
	8W2LLTHN0fEgqsR55i8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBNMy-0000000DPn1-1M4B;
	Sun, 26 May 2024 23:33:40 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBNMu-0000000DPmG-1MvX;
	Sun, 26 May 2024 23:33:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1716766402; x=1717371202; i=seb-dev@web.de;
	bh=Ck9yiP7ihI2T91SwUO4f1rkfndnqU2p6BXfIvig2gCk=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=QptUMr+arYl5MZp/xa6LZ8b3ptXqm/cOxcMvWNiuSf3Zi2G3eQ7cpcoUu2zvfIvJ
	 iOe7bf797xsyweXv1uN0b1rVd6eH+bLEmJWUPAaTXdJGlio3bycorF68EpPQV1olT
	 mqsF266MB6RE7EprOQPNJaVofBbwWfcG36I6zPpCL3Qv94GWyyz7C1hW5QWkYAap0
	 1u46QGzk1pij3Zi/WoWrPWgtlyl0qwMB6wQ8h3ZPbiL544YF7lloaeo0EKomAh2kn
	 zgip5aG62kIjfAs1Pywk3tqfH31v9BZdiOZlkiiVv1XrSn2vsbqYt5UJwf7AsOfM+
	 mQQ9mBcTevUmoFFE0w==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from localhost.localdomain ([84.155.184.248]) by smtp.web.de
 (mrweb006 [213.165.67.108]) with ESMTPSA (Nemesis) id
 1MUUAG-1s2Xf02wlc-00Qf6F; Mon, 27 May 2024 01:33:22 +0200
From: Sebastian Kropatsch <seb-dev@web.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sebastian Kropatsch <seb-dev@web.de>
Subject: [PATCH 0/2] RK3588: FriendlyElec CM3588 NAS board support
Date: Sun, 26 May 2024 23:42:15 +0200
Message-ID: <20240526214340.8459-1-seb-dev@web.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:UgF7Y/I2rFfSRmOfe5K9q7vLJJ0MHmaYtmPoJ40u8djNgfnfKlk
 +q5ycSPzDccYAp0qkQpvwxAJvxy4N3/Z8dld+M4F43q0zR2JV5QfisMxtOFNXqoRz0BPrQi
 nwkfA+8Qufr2ar+eRszvoaCFbJe6nMs0ZOQg6yFeud5Fem68IUyA6kP29co/AeRittvstoz
 +n2Ifsq9V1zmbsmZ/xxYg==
UI-OutboundReport: notjunk:1;M01:P0:mCzxCoR1YFo=;U39Y6KVr2BoiWscYlUxP30KLxFB
 d1aIuZq+RiHz+5DlSNZcjT4FEnz4mTrOEegtDs6z23CNcEXlP8XKxIRiPLHMG5tuQgYukDjTW
 NxhCpX5smb9jVAk8Fqd3hXLYjIiBCexwGNgl9jUdEtW7grUH6SjX223v1WpP9BerBLoM3Vq3I
 2IzI1PvX0tHmZTvNEStBRkhNd0KipV2XjfgyvnAzsXUCetsQyfGq+em7XwnerPVgRCQQhs4ie
 QkmMHslnqnlQnbPVbgLzuPRneI7L9XFGs0NKtYJrvjzlw2vq3kJZWxL5IIy0kapGY6st10oFT
 JjtvEJSs/O6vp78aw1If+yob+bCBNCv0uNz7rpN5Mp0g6War8rettZgbBw1yfgEtp2MLy15HU
 AQvxCK8YSymI0TD47eqE+HyluxI8H9ml3bdZDgc26NEzi3AIEl6j4i/A1axBe8AndkAkcrq6V
 vkIlaxLButWpWvhweiZNRjRZoOmRFpuyHlYiMmtli34VntIkznlD8tqzptiIAIcXV0Nba4GVm
 izgsBVaibPcA9uq4AS8QimJPeVwCgdUIsilqxiKbyjS8Mte1JUhPvIwsm2ynEchm2N8MdEI3g
 NbRcfmvhy9vdG7/4QFFu+QKyUQihIlbklv3k72laiINiX6GkmSSuJMVSOnSPlpEHZyNJ1F6Mb
 G1STDjwc8pb774XK5uXcsNVXOkTztqwxDL9BKQaYWY8+s4lj2voMN/OZcrZAqYTRxsedBZjpD
 IzxyvGrhXWh2iI36j5G/9kmSSfgxDdmiWSz6NJZaACvymPa0d2i5FRd+jBrajb58yCXwIwg5I
 +EVgGwCnR74YER28y0BlelmfpUWuAX1AoooPvzPVbYk68=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240526_163336_774897_FFF8F6B1 
X-CRM114-Status: GOOD (  16.44  )
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

Hello!

This adds support for the FriendlyElec CM3588 NAS board.
The board's device tree makes use of the latest upstream advances on the
RK3588 like USB3 DRD and GPU support as well as the latest Rockchip PCIe
driver bifurcation fixes, but some features such as thermal management
and HDMI will have to be added later when SoC support for these features
is merged.
Since the hardware has similarities with FriendlyElec's NanoPC T6, the
device tree for the CM3588 NAS also partially shares some sections with
the NanoPC T6 tree.

Minor issue:
The device enumeration of NVMe SSDs plugged into the four PCIe M.2 slots
does not follow the order of the slots on the board: The slots are
physically named from 1 to 4, top to bottom. However, they do not show
up in this same order in Linux when all slots are polulated:
   - SSD in physical slot 1 shows up as nvme0
   - SSD in physical slot 2 shows up as nvme2
   - SSD in physical slot 3 shows up as nvme1
   - SSD in physical slot 4 shows up as nvme3
This is the same order in which the data lanes are mapped for PCIe
bifurcation (dts property: data-lanes = <1 3 2 4>).
I could not solve this by using aliases for the PCIe nodes in the device
tree. Perhaps this is something that can only be solved at driver level?
I am not sure if this behaviour is even considered a bug or if this is
intended behaviour by design.

Devicetree validation:
`make CHECK_DTBS=y rockchip/rk3588-cm3588-nas.dtb` does not give any
warnings or errors, tested on Linux next-20240523.

Best regards,
Sebastian Kropatsch

---
Sebastian Kropatsch (2):
  dt-bindings: arm: rockchip: Add CM3588 NAS
  arm64: dts: rockchip: Add CM3588 NAS board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-cm3588-nas.dts   | 1269 +++++++++++++++++
 3 files changed, 1275 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-cm3588-nas.dts

--
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
