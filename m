Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71291C3DA41
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 17:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bSXmY/KFDvfRPeN49RbmuSN0t6+KhZSTQOEZUQUC8b8=; b=2hZYMlh0hru60nPEX+nFWxo0gu
	RsPTl+B7vYNOtL1QZ1KYhtZW3IDaOklB2H6LXuJsVjwjCa49A7MzlQum1L+m2fnJ2WnSsrZfLuDnI
	GGcX08ffr6BZufekHx7hhWuUKvefcpyaoh3ggSUDlFaBdIhYFWlr3jxovDCzENQrAuamR1VHirjXg
	UJeX8kLKH8SS7u+BLKORG4iY4j820KYWMasvgdqzxVSHdRjeNrwB9jbCf3B4fRRGnx7FMQsVdTYHR
	hkMkT6zctNoEJIVE+GzyLvGXYFEpEPd4qg31jBGNmVgylKqybGrSYBCyuaw05huwLp1nsVjmreniY
	vA1fQfLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQs05-00000004ZoH-0uuo;
	Mon, 08 Jul 2024 17:18:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQrzn-00000004ZkQ-42DB;
	Mon, 08 Jul 2024 17:17:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3C48B60EA7;
	Mon,  8 Jul 2024 17:17:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1076C116B1;
	Mon,  8 Jul 2024 17:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720459066;
	bh=ZUZObWhSbMSxsYVODKwPis9fWvoPX61U5GmyBYrA5Do=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=YSVYJBJQyryGmTGrjhJ6DPlK1HX9PujCxuyVTwz8FTMFuigd8FfK/km4TVmQNoAtw
	 4xiTYi+FWekUIPrbz2uUvQzdkqoi8eq0XDyLb913qvE85f5QzWUsVE/Vgnus0UnQFp
	 7UqCj8q2kG3etfZTY0uZJ0ONXDPBtitTjbtZIV7fsArracR0c2J52+qaCsgcdtYR3I
	 o0K4W9EvdrHeGcaLYCDoYCHpzrH+GtwT8mtNNqmptzyMZExpuQGxWFclH5TIVlggF2
	 eI8aBEuuvfp+ZkzroBGoYy3Nhi1qDo9AV45bU35BMhkP8KcE1oQmvYSBDG6fo3H+qs
	 qEfVrKJJA/1gQ==
Date: Mon, 08 Jul 2024 11:17:45 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Jean Delvare <jdelvare@suse.com>, linux-hwmon@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Guenter Roeck <linux@roeck-us.net>, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240708-dev-mule-i2c-mux-v5-3-71446d3f0b8d@cherry.de>
References: <20240708-dev-mule-i2c-mux-v5-0-71446d3f0b8d@cherry.de>
 <20240708-dev-mule-i2c-mux-v5-3-71446d3f0b8d@cherry.de>
Message-Id: <172045906545.3469012.7420722768425918930.robh@kernel.org>
Subject: Re: [PATCH v5 3/8] dt-bindings: i2c: add support for tsd,mule
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_101748_073921_A2654957 
X-CRM114-Status: GOOD (  12.25  )
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


On Mon, 08 Jul 2024 18:12:14 +0200, Farouk Bouabid wrote:
> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> among which is an amc6821 and other devices that are reachable through
> an I2C-mux. The devices on the mux can be selected by writing the
> appropriate device number to an I2C config register (amc6821: reg 0xff)
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  .../devicetree/bindings/i2c/tsd,mule.yaml          | 63 ++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/i2c/tsd,mule.example.dtb: /example-0/i2c/fan@18/i2c-mux: failed to match any schema with compatible: ['tsd,mule-i2c-mux']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240708-dev-mule-i2c-mux-v5-3-71446d3f0b8d@cherry.de

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
