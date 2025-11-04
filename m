Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527DBCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 02:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5kDCeKzvGe6HyIE1ZM7lGWKuqDewyyT+dknfNLYSFo4=; b=fX1guniInycexA
	96ZF0Er5ih5pO96WDDxiMZJ+dpd+9Hz/byhRNCjUFke/p08E1FZ5zOD+Ls49eos5tCY/Z5JKV5daG
	ZOhoPl8XwUiKAaQ/fHw+bktkgQU7KFDDG30hRoNwN/UyrDDB+YO4R8MkxAogJLOjajrmf2/TXtph6
	JbeDIIWgCBI3Ebffxp6FFE/s0og4PMio/Rnqo7QsBTpv3mrpG+bOpgsUMli3C1oMUPMlJQWFaJvaW
	3N1NUfYXtocZ1uU3AqiYjGm3wAhk38Sal7IHBEjd5NQJaqqYobE5s+jp3Vg8rs/SzF+atGVFBHhgL
	t8KVky3LrUps/i2PDNaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG6XH-0000000Ay55-0SHU;
	Tue, 04 Nov 2025 02:12:39 +0000
Received: from mail-m15579.qiye.163.com ([101.71.155.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG6XE-0000000Ay3I-0ILY;
	Tue, 04 Nov 2025 02:12:37 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2842e9821;
	Tue, 4 Nov 2025 10:12:28 +0800 (GMT+08:00)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tao.huang@rock-chips.com
Subject: [PATCH v1 0/3] pinctrl: rockchip: Add RK3506 pinctrl support
Date: Tue,  4 Nov 2025 10:12:20 +0800
Message-Id: <20251104021223.2375116-1-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Tid: 0a9a4ca31a7b09d8kunm1bdc99775fc3999
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkNDGlZIS0lDGhlDShpLHxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=g3RWBimOxSGtJkJcow8ACom5ucgsBsJupF+4oTD2tp+pP7DSfSiQyWb+0LpteF5B7grR0jNDFybIau0CyVlTOjZqDVOBwcaZgr+MQf6l1mDRVzjsHmyt9tFEXfWlCfGE8EXMrw4QApXxixNiUykpQ+NNeuZQQMtTS+OYGno/HFc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=M07VG5bhzSM5mDDbojZSmyDEd1eb4Stzc/AcK1LOVZk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_181236_519211_AF5BF7B8 
X-CRM114-Status: UNSURE (   7.69  )
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

This series adds pinctrl support for the Rockchip RK3506 SoC.

The series includes:
- RK3506 pinctrl driver implementation
- RMIO (Rockchip Matrix I/O) support for RK3506

Ye Zhang (3):
  dt-bindings: pinctrl: Add rk3506 pinctrl support
  pinctrl: rockchip: Add rk3506 pinctrl support
  pinctrl: rockchip: add rk3506 rmio support

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |   1 +
 drivers/pinctrl/pinctrl-rockchip.c            | 517 +++++++++++++++++-
 drivers/pinctrl/pinctrl-rockchip.h            |   5 +
 3 files changed, 515 insertions(+), 8 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
