Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDD8C10DCE
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 07:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rUwz6npQbWyf7Etr4Mm3SSuuo+TycWwhkJgFbDm/AbI=; b=S4tdPMWpCV+/EK
	f8LBMmwMSdCxVyE4JM9RTluZSs6tVu8J/qQJ7nFl+gpHy6unMjlTFQAhq+d8qZD46uKllJmrEp0eZ
	p+byTqMOKFVpRENeU54DF35Ld0Yq9F7xEldXhQWdRV6/RuDm2Yq1Dgs8D95/PHRhPrb5NczY6OoTC
	bCb4NrAZLS29/qjHkEwGoKfYKS5JwlFnX6A9bWLJ/IjbkOZvHVmYLxZkLYzFkUoYt9yk4UCTGT9Kz
	BJhsbr+kuWKfqqnSy4ATpMidlxJXLxfuy+Qid555O+W0YqO8dByJsawKZ8zBS6W0aS/ZblkvJTThl
	RqjObpciaszl/2xktBBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9Gz-00C82w-0N;
	Thu, 07 Dec 2023 07:58:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9Gu-00C7zk-0E;
	Thu, 07 Dec 2023 07:58:13 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 834742E7;
	Thu,  7 Dec 2023 08:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701935847;
	bh=Gz+d4XTPa6WxDzttGkhP1M41s02i069EomKAGKmGwe4=;
	h=From:Subject:Date:To:Cc:From;
	b=vfStgC4eK8Gm/J2obad28XiBPPFRClHPuJEeCUj9MNVNI/XUUXHj+8LYvq3SnOHSx
	 xcaOfP3PXeAF55t0RIMm6EJwxf0azFXFwTWrFBsTTIUv8yH/9GGDWtUM8Kigjs74Oy
	 ps9SYkwCS6Ov74wE8xU2Y9+9Np+IsuxDTN2u8mgI=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v3 0/4] media: rkisp1: Fix IRQ related issues
Date: Thu, 07 Dec 2023 09:57:44 +0200
Message-Id: <20231207-rkisp-irq-fix-v3-0-358a2c871a3c@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPl6cWUC/3XMSwrCMBSF4a2UjI3k2RZH7kMcpOmNvYhNTSQop
 Xv3tiMRHf4HzjezDAkhs0M1swQFM8aRQu8q5gc3XoBjT82UUFoqYXm6Yp44pjsP+OQglXatqxu
 tAqPPlIDmzTudqQfMj5heG1/kuv6TiuSCByOM9Y3pnLFH7MHlOHbRpX7v442tYFGfSP2NKEJqe
 svWAnQy/ECWZXkDch7T1PYAAAA=
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, 
 kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com, 
 aford173@gmail.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1787;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=Gz+d4XTPa6WxDzttGkhP1M41s02i069EomKAGKmGwe4=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlcXsKsVt/tvMkaFuFsuncMAQpquAtRHte5O1mO
 ixMa4XM2E6JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZXF7CgAKCRD6PaqMvJYe
 9XF9D/9Tt8+wsi8FEADuVy85DDxhuIvFp9tbfxE3PN1Dl8NpmiR1YVCeWaKuG3t1V3/Aao2ZQi8
 1MSDRL0240/kxelyG5BFG7Jyldqa3pg0CBFH85SCehE2rbabL/mY9g9lxHn4LRTOKR7jEpGkW76
 iT9DokvMU7Hoc7Zm5KglAIbE9kIocoYhAMkYFX7NQHS9CRIME/tkpwFyKMqqHAAl1oGX4lXYDlA
 IHlgQYEfrjSvAaBAoI49839uezGFfbt9eA9TH7bOAthTFTTGExaSauTab+FIylry07IMVmpT+9p
 TRTzwgqnUbWep202LMnwvZbWPciR7/GV4kCHDC2djFXvkVSDrv9SPqQ4VYZGFa8dR2LqR2W88iU
 iat68gsB0+NXVPThRIhcGC2dPBwdDg3ORdVVMgwo3m2Jtzt4GV2i/IWq4AkyKbYR6LdsO+KctGq
 qKhNUCgZ6aXxmDZUPdCULb05jax418q13ml415tx4sn48J2KQZJ09BbVUh8ul/8GFwFgi3WqXRd
 sYruHPrun81djESAtTwgM6/5pYrCwm8Kd/M+yArW3e5yjzKf+uE2WSwfg3EcWUJrvsvWGsZso13
 DyclUhGPJgUxivOfduNaslKrH9ovSPZ89UGuJLwOWzvYYoP9+Y3qomYNkUco+iuhB69KWw79Kg5
 e6Uqque49BymQkA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_235812_296579_F68BD211 
X-CRM114-Status: UNSURE (   8.54  )
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

These fix a few IRQ related issues I noticed when testing i.MX8MP. This
series, as of v3, is based on linux-media-stage, and does not include
i.MX8MP support, as that is not in upstream yet.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes in v3:
- Rebase on linux-media-stage
- Drop i.MX8MP support (which is a one line change) so that this can be
  based on upstream. I have still kept Adam's tested-by for
  imx8mp-beacon, as dropping the i.MX8MP support doesn't really affect the
  changes.
- Use ARRAY_SIZE() in patch 3
- Link to v2: https://lore.kernel.org/r/20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com

Changes in v2:
- New patch: "media: rkisp1: Drop IRQF_SHARED"
- Update "media: rkisp1: Fix IRQ handler return values" according to
  Laurent's comment.
- Drop "media: rkisp1: Fix IRQ handling due to shared interrupts"
- Update description for "media: rkisp1: Fix IRQ disable race issue"
- Link to v1: https://lore.kernel.org/r/20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com

---
Tomi Valkeinen (4):
      media: rkisp1: Drop IRQF_SHARED
      media: rkisp1: Fix IRQ handler return values
      media: rkisp1: Store IRQ lines
      media: rkisp1: Fix IRQ disable race issue

 .../media/platform/rockchip/rkisp1/rkisp1-common.h | 11 ++++++-
 .../media/platform/rockchip/rkisp1/rkisp1-csi.c    | 14 ++++++++-
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c    | 35 ++++++++++++++++------
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c    | 20 +++++++++++--
 4 files changed, 66 insertions(+), 14 deletions(-)
---
base-commit: 8016943b5947cd485078e23899945c51e818aa63
change-id: 20231205-rkisp-irq-fix-e123a8a6732f

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
