Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE476CA100C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 20:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+M6QQX5cmGisbbe3VxMEfpVdqZSDUjHMiU1czzekXbs=; b=0fiTgjEfz92KnKUDDiSt4R10Ab
	Hw+PgG5SVYe7eE+EMU6ZFIo/xqhGaPhKYLQqZfeaEXQFfwo7puFGbzJ+Omcs7n7RTvWTvt10Ktgln
	oI0YChF/WaKclPZsvSH21vwVmB4Tuh0Sj7mcKZzEZERfr/aehT8H7PKpHofBQRw7LM4gl+67eMGC2
	IiulX33zmmQ+Yl6a00+YT0oOzvMRo9NZ4agzsQ9gn+A+ERXcC+WuVIufqTvvoXO0hOYjD7VureMje
	psOjxM2+rpQh7B/7OGbUtqSqMSdm66MpyDjKor4mO/hvpP71v9SzR35YBDvJK63S2sZ70DWAXunJc
	7oULlewA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk83M-00000007ZfQ-1vjW;
	Fri, 30 Aug 2024 20:17:04 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk82R-00000007ZZb-0ic3;
	Fri, 30 Aug 2024 20:16:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1B8C1A40249;
	Fri, 30 Aug 2024 20:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FF73C4CEC2;
	Fri, 30 Aug 2024 20:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725048965;
	bh=BHJAPCRkkwvBrJQihBZsj9YydNkC0N902Xxm8U4CrfE=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=YNy+ey6INHaAq9MsgntpjXQRnsDtR4mQxaT5mip9SwXlpm49c7B5zp9PkHSqyPx+b
	 AwMLMRu0e3WmZ3ZhpSPb6+xqc67eCDC6KidvQPHC8PV4+bwl/Q4h2v7nJoES2QOszJ
	 bCVw9kWyVi0mhWJf6yeQsmlhORy47rpMoyJiGyvZIpNAahjD78TJf1ONtCa0LCI+wG
	 TvXRYfI3/F8Bro8sv/+QV4179CosziWun+hm+KkkU4dHYkIl2UcPDEnGuuy45lvgv+
	 xB0UqtTuGn5ikLwp364HDjVLCgG0ZPyilgdFDMxyrkpxPVs785/RRVRH1rb2EebrZt
	 hkVENzPwrWwmQ==
Date: Fri, 30 Aug 2024 15:16:03 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: David Jander <david.jander@protonic.nl>, 
 Jakub Kicinski <kuba@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-can@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 "David S. Miller" <davem@davemloft.net>
In-Reply-To: <20240830-rockchip-canfd-v3-1-d426266453fa@pengutronix.de>
References: <20240830-rockchip-canfd-v3-0-d426266453fa@pengutronix.de>
 <20240830-rockchip-canfd-v3-1-d426266453fa@pengutronix.de>
Message-Id: <172504896361.968651.6212275556677921387.robh@kernel.org>
Subject: Re: [PATCH can-next v3 01/20] dt-bindings: can: rockchip_canfd:
 add rockchip CAN-FD controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_131607_374221_41FD00A7 
X-CRM114-Status: GOOD (  11.10  )
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


On Fri, 30 Aug 2024 21:25:58 +0200, Marc Kleine-Budde wrote:
> Add documentation for the rockchip rk3568 CAN-FD controller.
> 
> Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  .../bindings/net/can/rockchip,rk3568-canfd.yaml    | 74 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 ++
>  2 files changed, 81 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
 	 $id: http://devicetree.org/schemas/net/can/rockchip,canfd.yaml
 	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/can/rockchip,rk3568-canfd.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240830-rockchip-canfd-v3-1-d426266453fa@pengutronix.de

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
