Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C93AC369D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 11:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3mDJ9lxtP+Ku6UDuknIYvNieDWn30hvO17FnsEvZX0w=; b=mg8EWJl16z6XiFqvPdXEsjuxa4
	I8JfVb9lj4ySj+TU2TZl06UOsehRSyCZdS+Hjl3vl/9cuzaJ4bvEZRGuzfSOV9AXZ1/xcOlGc2Qqb
	w13Ww6C7y46cCOoeziyj/VFnldei4qIHf9BNX+Blh56weaTB4Rb7XlkPNOgHZeLS1NgtFdiuLamXv
	6FFBQA6ArtWH6gTi+EH6ahJar/01JjXG1da4l9YqoC5n129XuvOgogF4QDBtT/na3+DuhPdQmODSt
	gTl/UIVJn6GIPcxBO28724bd71FOhR0sj2J+hZ6hECd2mdD/f5VkjPwk0EfiSFxuQInqBBzCoerZy
	Im2DKraw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA5if-0000000Chvc-1uDW;
	Wed, 30 Apr 2025 11:35:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA51k-0000000CazR-1b2v;
	Wed, 30 Apr 2025 10:50:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B32124A8E3;
	Wed, 30 Apr 2025 10:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 992C5C4CEE9;
	Wed, 30 Apr 2025 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746010254;
	bh=ZjzGktDuEXTVBXBesmsZddLH/eT94AqUPytgvMpqg0c=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=YtkmVCYFSPPq2DvJRioYCjMT4Mcl+xYmUXng0aOdlomNdNeWz8b8HJViDUOJgRPFm
	 8lC/lPz0VG88pfupxMhOdV/9oSILxHmHUZhRg3p7/0xusNYlaMnBCYFHVMa3cF+kyd
	 L0XTdoHYdJn6NCNkM7vAcIowqqsD7p4v0mvJaKUkUGXqEzDXQ6ZDWg1RZD9X/iKnur
	 qrG26wIJWCVtB2mn0SV8wG4W/yC+FaIIjzjNDLsDB7hpw6e7NJiNrnowiY4SwctCRp
	 cMkBd+tRK2LuuCi+nd0FwnjvSpcFwS2grCCVQy8AFs70mm9qA+jkx0j0ZsKhnKudAL
	 +P0fabQTwSeRw==
Date: Wed, 30 Apr 2025 05:50:53 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 devicetree@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>, 
 linux-rockchip@lists.infradead.org, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, Val Packett <val@packett.cool>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Michael Riesch <michael.riesch@wolfvision.net>, 
 Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, Rob Herring <robh+dt@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20240220-rk3568-vicap-v6-5-d2f5fbee1551@collabora.com>
References: <20240220-rk3568-vicap-v6-0-d2f5fbee1551@collabora.com>
 <20240220-rk3568-vicap-v6-5-d2f5fbee1551@collabora.com>
Message-Id: <174601024955.2105633.4770841218138986246.robh@kernel.org>
Subject: Re: [PATCH v6 05/13] media: dt-bindings: add rockchip rk3568 mipi
 csi receiver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_035056_458973_AE32C90F 
X-CRM114-Status: GOOD (  11.30  )
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


On Wed, 30 Apr 2025 11:15:54 +0200, Michael Riesch wrote:
> From: Michael Riesch <michael.riesch@wolfvision.net>
> 
> Add documentation for the Rockchip RK3568 MIPI CSI-2 Receiver.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../bindings/media/rockchip,rk3568-mipi-csi.yaml   | 113 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 114 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.example.dtb: csi@fdfb0000 (rockchip,rk3568-mipi-csi): 'phy-names' is a required property
	from schema $id: http://devicetree.org/schemas/media/rockchip,rk3568-mipi-csi.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240220-rk3568-vicap-v6-5-d2f5fbee1551@collabora.com

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
