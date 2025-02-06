Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DF8AC02196
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 11:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dbiMZYHbishLAZcca0NmafYk75JSRHvVIxPWS9Sn1qo=; b=q0VXMqEYize5nN3i1ZWqPx2Olb
	QkDpQi7JlC7kEz+lY05Yrl0IhxoejqPlxAYZ2xYqV7lJNNpvXZaSjuBTHhhgzvAFmj6P/f+W+yory
	AMpR4mZWKYkJP9oqaxVub016j9xj8+0CzQcSbqGJk1Z+Noaa8uRdal78WS5rqVVfOrgLxKGEx233/
	XTDGpgp+aGye/arjz297lH9hkVKVAkvBL5O0C9W7tZKu2jLs8cMYTK7t4lASeA4L1B3GMnjxcM9oA
	dkWBRTm0Nz7ZxWGFF5KTFDvsiQ9Re0WTaE4uGG73WLIuJmYeKMhxsY/+4dNwni6H87K0UCD2JmSgX
	P0aI1e5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0QI-00000006Cgs-0Iu2;
	Thu, 06 Feb 2025 11:51:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tg00P-0000000680S-2R4o;
	Thu, 06 Feb 2025 11:25:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 388E65C0398;
	Thu,  6 Feb 2025 11:24:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6843CC4CEDD;
	Thu,  6 Feb 2025 11:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738841112;
	bh=3QenPFoiIxwYoHLxjpQR+89yGAMCqcwZRL9xqsJbz4s=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QRKYoQ7qDIl0na9wnb7PijB/8D4fHcvdZUU4SQ8mwDb+jZ15mRpttChVLKFDhsxna
	 FiEvmQi2FKMDRXKO18sF0fAkWrohSVBSqEmLPlwKI6E0vv+tuw/yrz26sskPAHCL0x
	 OtLlVS9wTnIuRdJa4rOiMY/O9BYAz5UMK4WsutiZYTMeL+MzcuXa5RQKtd+aR8K2an
	 oQxbfQiCF9POYSLrZxyR++BhL6VxUSpmiMB9Y7EHwSp51XAbkmGG228DfUJmw4AmCX
	 UrXxazfw9WocXcErgNUM8tbSy8XcrMSjaUDmnLazJhZJeJFR35QWvM/g5FqRnAFM91
	 7r9X67UNyUY/Q==
Date: Thu, 06 Feb 2025 05:25:11 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Rob Herring <robh+dt@kernel.org>, linux-media@vger.kernel.org, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sebastian Fricke <sebastian.fricke@collabora.com>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 linux-rockchip@lists.infradead.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Paul Kocialkowski <paulk@sys-base.io>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 Val Packett <val@packett.cool>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexander Shiyan <eagle.alexander923@gmail.com>, devicetree@vger.kernel.org
To: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20250206-v6-8-topic-rk3568-vicap-v3-3-69d1f19e5c40@wolfvision.net>
References: <20250206-v6-8-topic-rk3568-vicap-v3-0-69d1f19e5c40@wolfvision.net>
 <20250206-v6-8-topic-rk3568-vicap-v3-3-69d1f19e5c40@wolfvision.net>
Message-Id: <173884111130.679176.4491485161610037414.robh@kernel.org>
Subject: Re: [PATCH v3 3/7] media: dt-bindings: media: add bindings for
 rockchip rk3568 vicap
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_032513_713494_566EA101 
X-CRM114-Status: GOOD (  11.70  )
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


On Thu, 06 Feb 2025 10:57:41 +0100, Michael Riesch wrote:
> Add documentation for the Rockchip RK3568 Video Capture (VICAP) unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../bindings/media/rockchip,rk3568-vicap.yaml      | 167 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 168 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.example.dts:73.3-74.1 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.dtbs:131: Documentation/devicetree/bindings/media/rockchip,rk3568-vicap.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1511: dt_binding_check] Error 2
make: *** [Makefile:251: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250206-v6-8-topic-rk3568-vicap-v3-3-69d1f19e5c40@wolfvision.net

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
