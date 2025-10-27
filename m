Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59DF3CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 22:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CMSrxxstpNC4Mli3kLRaeqr/F4kHIoqaK5A4Yt9VbEs=; b=rXbKUxbSrxhpkL
	aIzz02Z6mt7BtU0NVvn965W+DxV0W0Zl3io5/fW33MJVGLC9oDTdlDqhRe+0WVA20kD4yxk97QhLV
	lSN8KXtazIo8rAnorCDGyhtYTa2XktfNMaxpxLQCIY7YF6FKFNYKfZD0/qxkaP007pJYrtUowBzaV
	dNvC3NTV2B5J1yocVE71ND7RYDpgsVwCc+y83Jr2dHwzseE6kr/LI9ZF79tkMXNABNBu3zHB5k0jG
	3LOwQOo0H70Vs/z9Yat78O5eFX4SAtor8Chx2oqSTbolxESVJOCP602NfkmmWQNZNoeqClxcO+eek
	38gpf6i0b5sl7zQhoapw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVg4-0000000Erru-3EDm;
	Mon, 27 Oct 2025 22:27:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVg1-0000000Erqo-2rAS;
	Mon, 27 Oct 2025 22:26:58 +0000
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 497B0E9B;
	Mon, 27 Oct 2025 23:25:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761603907;
	bh=JtCpqLjogAgnkkq5jEJlUF7nafrHhCAohKr6UYuwGKw=;
	h=From:To:Cc:Subject:Date:From;
	b=CRF4vxI36CsIYxjAJZ1og3kWsZnLsKbKMcxr4oc5Lfcu8tqRYNv2ncgl32mQv5u5D
	 0DHMXg6uF4J4ebQCIzAPpJ0SXAuWQCTmGgZBhM+G5L5EiJIShmM1LnG3+IyCfXg9U1
	 STKoTKjhTLI+fhZgaLmj65pY57Qw2UDJQg8eBQ9U=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/2] drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio
Date: Tue, 28 Oct 2025 00:26:39 +0200
Message-ID: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_152657_875289_C0A27C56 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

The dw_hdmi_qp driver supports a "enable-gpios" DT property that is not
documented in the corresponding DT bindings, and is not used in any
upstream device tree sources. This patch series renames the property to
"frl-enable-gpios" to express its purpose more clearly, and documents it
in the bindings.

In the previous these two patches were part of "[PATCH v2 0/5] arm64:
dts: rockchip: Add device tree for the Orange Pi CM5 Base board" ([1]).
I have split them from the Orange Pi CM5 Base DT and rebased them on top
of the drm-misc-next branch to ease integration.

The other main change compared to v2 is the rename of the property from
"tmds-enable-gpios" to "frl-enable-gpios".

[1] https://lore.kernel.org/all/20251005235542.1017-1-laurent.pinchart@ideasonboard.com/

Cristian Ciocaltea (2):
  dt-bindings: display: rk3588-dw-hdmi-qp: Add frl-enable-gpios property
  drm/rockchip: dw_hdmi_qp: Fixup usage of enable_gpio member in main
    struct

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 11 +++++++++++
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 14 +++++++-------
 2 files changed, 18 insertions(+), 7 deletions(-)


base-commit: 18ff1dc462ef6dacba76ea9cb9a4fadb385d6ec4
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
