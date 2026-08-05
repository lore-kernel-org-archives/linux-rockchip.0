Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B63E3C55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 03:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DWN5TBTo6eIm5VIqKJA67wAzVvgGFaLe3I0qtQE9F/E=; b=GspX5M4WUOaYYAfJTtmhQnKRdG
	i8CUWlsnX32ua+zJzpew2iH2sxqiIlOTwikr8Q9mVg70wXHMU8EsLAeZH/qopy7gXYObJ9mK+Su1l
	QadHSae5T5h+YERdf8WXbBbEixdAJyOi72afhmuvngS/TDBDb3occ6cAXgLz+bTwRd0rH/oaRVg/U
	9+ADMjaS+okTRyzoLx0hGHGm9woYZPK9oCvhL4VUv7J/kLzMuF12PesjjNTlsD38EX7jeUePGFeqz
	FALoTQ/bi7NECHDUqmf6OX3tW+kHmonUx7c+V0cVf/SUG3Q0wNkGiAJu49+dsdOWKPQ3ZaAyWpIOj
	QVAKPXyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrSSu-00000003B6D-19Cf;
	Wed, 05 Aug 2026 03:38:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrSSs-00000003B5l-0Veg;
	Wed, 05 Aug 2026 03:38:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F125A600B1;
	Wed,  5 Aug 2026 03:38:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CA0C1F000E9;
	Wed,  5 Aug 2026 03:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785901123;
	bh=DV1z5mj1QUuYa1oiWEhvT6ntXIxw5uNdwhuaWJTrkz4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=Drlgmm2LfLdi0ki/OU0Gb5E4e5+I+O2JNolD4ppPZaLJkXeTG5e4xqL9bH0xg5dz5
	 Ecu1kCnadnEl4qpRAcaiDUcK5JJrZqrXzJ1+bj4jMLjSj3Roh8mYx9FCbsSAB9ZeP6
	 ntB8sCmubWP2E5oqg1iodV7HNKtGhiTKyuZc18MPgqjS6VQgq1EnwkK2D9Qnk+BEcc
	 QkO3HNbG0XZELHCViM3NT74RgZd/JL+q7ubZ/zTBdk/NhIVh/UX0Evas6uNMytAuUL
	 Mdu99nSX6FDAyx6lAe/+l2Xzq9H0NX4yAE9GKEwYysO42Mst+n76HarxMJJ3Pv8JQV
	 CWdfPsvBRbc3w==
Date: Tue, 04 Aug 2026 22:38:42 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>, mfd@lists.linux.dev, 
 Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Russell King <linux@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>, 
 Paolo Abeni <pabeni@redhat.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, netdev@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>, 
 "David S. Miller" <davem@davemloft.net>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org
To: James Hilliard <james.hilliard1@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-5-3eef49ff1d8c@gmail.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-5-3eef49ff1d8c@gmail.com>
Message-Id: <178590112290.2793077.11109877876759547563.robh@kernel.org>
Subject: Re: [PATCH net-next v2 5/8] dt-bindings: net: x-powers: add AC300
 EPHY control
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


On Tue, 04 Aug 2026 20:27:03 -0600, James Hilliard wrote:
> The AC300 exposes its Fast Ethernet PHY control registers through a
> separate non-PHY Clause 22 address. The manual defines that address as
> the link PHY address plus 16, giving control addresses 16 through 23 and
> link addresses 0 through 7.
> 
> Describe the control endpoint, its required VCC1 supply, its 24, 25 or
> 27 MHz input clock and its SoC SID calibration cell. The actual PHY
> remains a separate ethernet-phy node and supplies the MAC-selected
> interface mode at runtime.
> 
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  .../bindings/net/x-powers,ac300-ephy-ctl.yaml      | 70 ++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.example.dtb: display0: fsl,pcr: b'\xf0\xc8\x80\x80' is not of type 'object', 'integer', 'array', 'boolean', 'null'
	from schema $id: http://devicetree.org/schemas/dt-core.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260804-submit-acx00-of-dynamic-v1-v2-5-3eef49ff1d8c@gmail.com

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
