Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF4B2C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BrVXbBLJrNyoj7RNNqs+r2W0zSWwx5GiYmTfYzrZnrc=; b=H8ZnDmHS1buC/GVHXbiz7WxKcN
	AiaUy6TK5eLqZAZFaFdL+OwbB4biEpLuzS4QFnf9mt1IgiWFRjbk6ScjYTyrgwerflWXSFimfNPfW
	X8baR+NLBuhIA6vk3d9gGF9QiJvSbDBVEN3gNWaaC2H2sn0Xdrq9sfHjKXFOCdOcaszkkcnvGiHZO
	mTnXHCH8wHXVtegicr6yA8lCzptJVPDYxBgARuq2ShPrOJwa6k0VSfPsEEgHMqm9OyQHi1X7Iic+u
	wNQ8pEI/DQsTIqjsZoWDPHH1OnycTJspIVt272XQ4K/Gr4ig9xIwHNKrt8iQPSdWBfqt+dSq9DwnN
	6i0k1VDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZMdm-00000003bCl-0yQY;
	Thu, 01 Aug 2024 03:38:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZMdC-00000003auf-3BDn;
	Thu, 01 Aug 2024 03:37:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D96766276F;
	Thu,  1 Aug 2024 03:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5258FC4AF12;
	Thu,  1 Aug 2024 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722483453;
	bh=Vp0WRXh6a99JG+/ezGQ5ywVjgLg1EA2TbMiWufFAhyY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=cYKyRRsaeRsQ+vhTxImq00tcnxZdtguLo+p1yishEBW957kN/WnCAs86A3sa4FO5b
	 fznqqsk/HmFVZSZgPzjqCXgIidlgW6FKiDlNtWCwaPKRvrxb4zYj3/PoixfyNU/eeY
	 yJAXUvrbnDKr0FdMywkEY5tYDmd+QbkuH/TXP5dwLplej8NzyVIuBzhAcVIQ7m3621
	 fU6fcXG4LnNiWq1noxeAJGInlscL/a8YT+Q4PlSgOm0Hv6zl2KeaOZ08izcvr3JFpI
	 7sv+RVZ8CmSq8eafJLXtLWCk4hNwRfRGqcjbUNs12F8dh+RPlW+KtIII/nC0T+K2F5
	 7PfJ9q9ecsrBA==
Date: Wed, 31 Jul 2024 21:37:32 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Luis de Arquer <ldearquer@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 David Airlie <airlied@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>, 
 Robert Foss <rfoss@kernel.org>, devicetree@vger.kernel.org, 
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, 
 Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, 
 Jernej Skrabec <jernej.skrabec@gmail.com>
In-Reply-To: <20240801-b4-rk3588-bridge-upstream-v2-1-9fa657a4e15b@collabora.com>
References: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
 <20240801-b4-rk3588-bridge-upstream-v2-1-9fa657a4e15b@collabora.com>
Message-Id: <172248345225.2862796.6921035362248469311.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_203734_950959_513AC615 
X-CRM114-Status: GOOD (  12.34  )
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


On Thu, 01 Aug 2024 05:25:52 +0300, Cristian Ciocaltea wrote:
> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP.
> 
> Since this is a new IP block, quite different from those used in the
> previous generations of Rockchip SoCs, add a dedicated binding file.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 188 +++++++++++++++++++++
>  1 file changed, 188 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.example.dtb: hdmi@fde80000: False schema does not allow {'compatible': ['rockchip,rk3588-dw-hdmi-qp'], 'reg': [[0, 4259840000, 0, 131072]], 'clocks': [[4294967295, 528], [4294967295, 529], [4294967295, 530], [4294967295, 564], [4294967295, 594], [4294967295, 717]], 'clock-names': ['pclk', 'earc', 'ref', 'aud', 'hdp', 'hclk_vo1'], 'interrupts': [[0, 169, 4, 0], [0, 170, 4, 0], [0, 171, 4, 0], [0, 172, 4, 0], [0, 360, 4, 0]], 'interrupt-names': ['avp', 'cec', 'earc', 'main', 'hpd'], 'phys': [[4294967295]], 'phy-names': ['hdmi'], 'power-domains': [[4294967295, 26]], 'resets': [[4294967295, 462], [4294967295, 560]], 'reset-names': ['ref', 'hdp'], 'rockchip,grf': [[4294967295]], 'rockchip,vo1_grf': [[4294967295]], '#sound-dai-cells': 0, 'ports': {'#address-cells': 1, '#size-cells': 0, 'port@0': {'reg': [[0]], 'endpoint': {'remote-endpoint': [[4294967295]]}}, 'port@1': {'reg': [[1]]
 , 'endpoint': {'remote-endpoint': [[4294967295]]}}}, '$nodename': ['hdmi@fde80000']}
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi-qp.example.dtb: hdmi@fde80000: Unevaluated properties are not allowed ('reg' was unexpected)
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi-qp.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240801-b4-rk3588-bridge-upstream-v2-1-9fa657a4e15b@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
