Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99081C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XCbBpzz58dx1ZM+SgMVY230bLOko16wRBcLbT3+hVgc=; b=KiazD/rQdGPBK7
	DxThEsmtc9zmJ1RCrL9m7VjX1PL0m98CrqvlC3WDb/WVfjeP0jlr41H641GLZ67K2vCBE1HajMhQh
	wxSHuIYsj0T+pyyS4hLTlgeiK+Mx/7oNa264fRPgoSJvnMA/JrzdFd2WCW1TgzlmwhDRHKyg3AHAX
	GhFh2TMpKPQV+DO9lbdBRdyjCgxPT+Vp86y9tH4KMdjNO5Q8iptNx+G0gUG1iQQwotlZMlXRWpTvo
	3FF7U7CjGC0ZvDMU6dJOfquhxAYndHc9ahOcbTgFMQMPnoOqMrOPR3GG3pkfzoWJfhCy6gOJYbKE9
	zBBJVooUm7pmEY6aP+2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRpm-0000000DaPo-1jxK;
	Wed, 12 Jun 2024 17:32:30 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRph-0000000DaLc-1bo3
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 17:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718213541;
	bh=H+1Gh32TLe9//W5DEjtFjRYrLhHpR4ykiLSiVsQC96s=;
	h=From:To:Cc:Subject:Date:From;
	b=rLiCeW0iJDT+jJlR3bYdUqudRoD6iXy2Z5kB2zdmWqiPWgu2smHSHKdln9Y7OUUDC
	 F4/TYcdQ29dmUBoYPgbCNxbTI+gJpTpsel0GjhdLCV7P+NV+bv7RYG3Ir24KJz9opu
	 PKAxif+1wQMOKokJ4iWkgPLex2dfZDzNot/+gktQKHeovfImt8MX0t1bk7UhT+Ylji
	 MED8xsU2AKugrDLgfTJ09SAIWdHV4y7OLRHhAICKDhwGvG5hEuwKxDoTXZVsRsiPyS
	 Ty7J0xcTQWfEGQISIQqjgZ9SDzMg8nT1O3iTklXwE+1bW4dcRrT30ClicWA8t64poL
	 /1HJcfS3le7DQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A8DE03782191;
	Wed, 12 Jun 2024 17:32:21 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5958C4800C9; Wed, 12 Jun 2024 19:32:21 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v5 0/5] RK3588 VEPU121/VPU121 support
Date: Wed, 12 Jun 2024 19:15:40 +0200
Message-ID: <20240612173213.42827-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_103225_628761_D90875FE 
X-CRM114-Status: GOOD (  18.95  )
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

Hi,

This series enables Hantro support for RK3588. It is based on these two
previous series from Emmanuel Gil Peyrot and Jianfeng Liu, which looked
stall to me. Considering the full driver is already upstream, I think
this low hanging fruit should be enabled in 6.11:

 * https://lore.kernel.org/all/20240316071100.2419369-1-liujianfeng1994@gmail.com/
 * https://lore.kernel.org/linux-rockchip/20240412151515.837824-1-linkmauve@linkmauve.fr/

Their series got some feedback from Nicolas Dufresne, that there should be a
plan how multi-core processing will be handled once it is supported in the
kernel. I had a look (and internal discussion with Nicolas) and came up with a
patch, which allows describing all the Hantro IP in DT. The driver will only
probe for the first instance. This involves dropping the RK3568 compatible
for the VEPU121, so that only kernels with the driver change will try to
handle these IP. Once the kernel is capable of multi-core support, the same
technique to disable cores 1-3 can be used to combine them all into one
cluster.

We also discussed, if they should be described as a cluster (e.g. by creating
some kind of virtual bus for the 4 encoders in DT). Apparently the VSI doc
describes the grouping of up to 4 instances. But there is no obvious reason
why only these groups can be used as a cluster. It seems that even the 5th
encoder from the combo VPU121 could be used together with the other clustered
cores in theory. In practice this is probably a bad idea because of the shared
cache of that encoder. Since that is handled with a different compatible, this
can be thought about at a later point of time and handled in the kernel. Thus
no special cluster description is needed in DT.

The series is based on Heiko's for-next branch.

Changes since PATCHv3 (VEPU121) / PATCHv4 (VPU121)
 * combine both patchsets, since there is some overleap
 * add patch to disable multi-core handling in the hantro driver
 * drop the RK3568 fallback compatible for VEPU (see above for the reason)
 * describe all RK3588 VEPU cores (possible because of driver change)

Greetings,

-- Sebastian

Emmanuel Gil Peyrot (2):
  media: dt-bindings: rk3568-vepu: Add RK3588 VEPU121
  arm64: dts: rockchip: Add VEPU121 to RK3588

Jianfeng Liu (2):
  media: dt-bindings: rockchip-vpu: Add RK3588 VPU121
  arm64: dts: rockchip: Add VPU121 support for RK3588

Sebastian Reichel (1):
  media: hantro: Add RK3588 VEPU121 support

 .../bindings/media/rockchip,rk3568-vepu.yaml  |   5 +-
 .../bindings/media/rockchip-vpu.yaml          |   3 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 101 ++++++++++++++++++
 .../media/platform/verisilicon/hantro_drv.c   |  38 +++++++
 4 files changed, 145 insertions(+), 2 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
