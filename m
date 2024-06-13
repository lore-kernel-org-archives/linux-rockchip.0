Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF2FAC2BA16
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 13:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CGSrscBOAK/SK9F/p6q6E7jx2WRVB9v1+Y4fitopFcI=; b=F7wGjBQr8l1Zd2
	qpK3b2WOlRGYeuCNcIQJHO5ihAbXlm/TtjRy25R4/5zmKghE5h1wEQXgdlOwc7OTND84VQZPmK400
	M7Ia/ppYgORBN8v871Cv0TiRkalVE5FOC6WQly1oARGnQtLHBXXOgXlR1XKMgk6rzDnUdsatvjYet
	Bjir+uML46GZEZQEgq9S/VeqpqLSwnXraWxCy9AnS5+yi8mp0EH0nC8l7o1pqE33aqCDssDnNrUT+
	ZWv0jTdhUz+Zs6dYKqMu1JLvCujm83MmW1eEV9kK4L6FIYJDeFC+7PtipRBPLckAcczWJ43AkfAsM
	2xlq3zFmGN3dz7QLNn3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkqi-0000000GpAC-0QDL;
	Thu, 13 Jun 2024 13:50:44 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkqc-0000000Gp5r-2QnI
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 13:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718286636;
	bh=gahnmtXY+zlBl4ev0Wc+OJzKxQtX8DSNfxJrjle/iyw=;
	h=From:To:Cc:Subject:Date:From;
	b=1gl4hKxybprAASehCtu+n1xDMC4D7Wfz0F4y5sxU/RANRB3f+Q+lZAkb0ikLMa6ag
	 pQEuD5/EnU79DTq3StP7xQJGIaizx45KHUQ9Oarip3+uEr9DLjC4cRA7h3pPQd09yJ
	 CGJFsZLe0WbbXFMse4tK8QcgawNfmhQ8SYGsBQUwMrn5JBs3ll6fJ2RDqoYIwtrrT1
	 IwA6iFQgcYCCOwtAI9baXI9tunkfN5blwNocyw/aJOvLE+SolC7/Oute1FsnOGMh22
	 Zq3aE01U6D60dQ7XkyHVZgTLJ10FGsd6YOAHzWKiHCIV3O04rQsd7iIviGD89YDY06
	 WpVghbBADZOtA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8F3ED37821B2;
	Thu, 13 Jun 2024 13:50:36 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 31A134800C9; Thu, 13 Jun 2024 15:50:36 +0200 (CEST)
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
Subject: [PATCH v6 0/6] RK3588 VEPU121/VPU121 support
Date: Thu, 13 Jun 2024 15:48:41 +0200
Message-ID: <20240613135034.31684-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_065038_781743_329FAF73 
X-CRM114-Status: GOOD (  19.26  )
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

Changes since PATCHv5:
 * Fix binding for vepu121 (use enum)
 * split hantro driver patch (multicore / vepu121 compatible)
 * move video-codec@fdb50000 node to correct position
 * change "jpeg_enc*" alias to "vepu121_*"
 * change "vpu_*" alias to "vpu121_*" (to be consistent)

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

Sebastian Reichel (2):
  media: hantro: Disable multicore support
  media: hantro: Add RK3588 VEPU121

 .../bindings/media/rockchip,rk3568-vepu.yaml  |   1 +
 .../bindings/media/rockchip-vpu.yaml          |   3 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 101 ++++++++++++++++++
 .../media/platform/verisilicon/hantro_drv.c   |  38 +++++++
 4 files changed, 143 insertions(+)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
