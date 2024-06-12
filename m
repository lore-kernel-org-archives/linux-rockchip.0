Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB508C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 18:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uqmwgSQ29cfel9C6mLj26T6Rbnw20wQMT+usYBHPo/E=; b=IuwHoUbltKrFNA5SB7i8/SIWh0
	Y1jpVFfdWeonMocxg9J70Q25WMTCpi6B3lsfVaD/e2t30xEFuZzhNZIByciDEgPz3ZbfUMHR2qwT1
	5Zn4S54FaeUZZJlCh6L0+ePIfeNU6U0e4ka6EkiaH1GM8Yej909vq5S7TRgU5EcU1mnTf9vCIA/ey
	2NCLL2JQd2qZIeucOiv2VkC4I3YHaI5TLRYSLzGYefG3hhDm/Lq/65ZkC7D/rBV5jJ/UKJW+1MFj1
	EKdSQtBBdLZbqJAY5KQUM6dqpwjvh9yVvRXV9lMDR2JJc2/aQdhijvl4CG2b/7zpbO9Ig3JXRO9i+
	oYchK0Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHSgC-0000000DiFN-0Hak;
	Wed, 12 Jun 2024 18:26:40 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHSg8-0000000DiDm-0foq
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 18:26:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5D2A8CE2222;
	Wed, 12 Jun 2024 18:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A9FDC116B1;
	Wed, 12 Jun 2024 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718216793;
	bh=Oflo0Z6FTwnUSLl+h7B3P+bMflqpd3ukTy2UKe/HuwQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Z2rTv7HjFJLHLPmxLkfFWfoZVsrpsDg33wNt8pzWfR7haHlnF4ZXXBt7JS9wd0sj+
	 NyaplEUsjtqORao/P+OHiBdXmg3h9qrAjRfkVORmcXZJm1QcQw2SMXjzLnd415nA5V
	 3P2Oq/HC0AFfuMYJREx7iez2ND0CQ5H4yyKUp6psJoNSMKffXSc/PIIH3xUR8dZVgk
	 vvgYJHc9lcFUtCoTE6vxIJGAifJqbNXw5GDAB93aBlClGjN0kHJ960JnfE9Zf0jwZu
	 yAJ+494ULgRbE7G5qv5rU1+MUmoArKGRMq14/aHZ1qpOhFQT8vNsiFNswrRq9lCLMb
	 Ut32pJ4Hs0aEA==
Date: Wed, 12 Jun 2024 12:26:32 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 devicetree@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Jianfeng Liu <liujianfeng1994@gmail.com>, 
 linux-rockchip@lists.infradead.org, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, kernel@collabora.com, 
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20240612173213.42827-2-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-2-sebastian.reichel@collabora.com>
Message-Id: <171821679246.3419351.9732124883795406633.robh@kernel.org>
Subject: Re: [PATCH v5 1/5] media: dt-bindings: rk3568-vepu: Add RK3588
 VEPU121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_112636_403488_00E5313E 
X-CRM114-Status: GOOD (  11.88  )
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


On Wed, 12 Jun 2024 19:15:41 +0200, Sebastian Reichel wrote:
> From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> 
> This encoder-only device is present four times on this SoC, and should
> support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> encoding). No fallback compatible has been added, since the operating
> systems might already support RK3568 VEPU and want to avoid registering
> four of them separately considering they can be used as a cluster.
> 
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml      | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml: properties:compatible:oneOf: [{'const': 'rockchip,rk3568-vepu'}, {'const': 'rockchip,rk3588-vepu121'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240612173213.42827-2-sebastian.reichel@collabora.com

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
