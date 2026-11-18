Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EFF606A325
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dznmDBDR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UIFRxVfh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=8ky6dXaB1ohcplxzGOJfiug+zP/VzcbCwi6ALyuWRj8=; b=dznmDBDRtN0hV5w1DuyM1B+PXX
	h6/BzZf321pPFGbSeb3eAai3MaFa7UL0ApnJgJl92Yn8yG1qWdnJ7NOH/JhinqMUQMK/fcFeDh7Fe
	ByfKQGlQxOgd9UzSw1ZDlrQfHxGkQrP5saeBQtWe3+7Q0V5OuEN1CmHvNJ95K21PQfqH46iksEamJ
	eIwMP7BWWkBeqZILODadGw00TEM7HtqrkjWvNT2D0/0OG7ve+AiVyvuavoOVWcGCbO1ZQJrXsiPGB
	qSDV1lrLNO+a88hkc6XcS7NwZHAgnRwxildY5rv6RLpadZZjbABpcnvfIb7v2pokEfNekEeKwgbNQ
	SdeknvQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTfPx-00000008vF5-2jiF;
	Wed, 18 Nov 2026 13:09:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTfPv-00000008vEQ-3qON;
	Wed, 18 Nov 2026 13:09:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3370840DC0;
	Wed, 18 Nov 2026 13:09:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B17311F000C4;
	Wed, 18 Nov 2026 13:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795007379;
	bh=Jv7xiOwj7vNDJYc94swhTjLaxDuF+oYg+FR9gK6fY2k=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=UIFRxVfhZOBpR58i+xWgwvJgi6ckSkf4VwBHNoJ3oGbBDCcSsuXkCOfPMo4zrzi3e
	 BfE+/OETp17fb1q6nTdCw8/NFY9jPBp5etRRCTPBfhPM5lgZI5otxcQtzM1TOLy0rq
	 FgZF5Zul7iQw3weqflU0XlPuIrhdbodrWdIBEJ5dT2wuTjUlHDYsGThmQOtlkG7RNh
	 csA/Fd/GsKvMRZ2QK8cLgpNzMUKxDVTxZZXrgrSXr5afa6TpDblOzW+G3nuflrU0HK
	 J/V8m8RCEbki+pCvMVlkUPH7RGxR4eBYXnsw8N6RhaToUrfDdkOYA3wy9AzVDxma7c
	 jUGaDT3OmqMuA==
Date: Wed, 18 Nov 2026 07:09:36 -0600
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Kyungmin Park <kyungmin.park@samsung.com>, linux-pm@vger.kernel.org, 
 Chanwoo Choi <cw00.choi@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, 
 devicetree@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org, 
 Conor Dooley <conor+dt@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
In-Reply-To: <20261117-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v3-1-32ff1546b0e4@collabora.com>
References: <20261117-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v3-0-32ff1546b0e4@collabora.com>
 <20261117-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v3-1-32ff1546b0e4@collabora.com>
Message-Id: <179500707079.165885.1994428844573235279.robh@kernel.org>
Subject: Re: [PATCH v3 1/9] dt-bindings: devfreq: event: rockchip,dfi: add
 clocks to rk3588
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 17 Nov 2026 16:35:37 +0100, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> RK3588's DFI has pclks for each channel. They just weren't noticed as
> missing until now because nothing ever gates them, and they're ungated
> by default on power-on.
> 
> The RK3399 clock situation needs no changes, as there the hardware
> really just has one monitoring unit for both channels.
> 
> Add these clocks to the binding, so that drivers for this device can
> properly know about their existence.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml       | 84 ++++++++++++++++++----
>  1 file changed, 72 insertions(+), 12 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml: properties:clock-names: {"required":["maxItems"]} is not allowed for {"minItems":1,"maxItems":4,"items":[{"enum":["pclk_ddr_mon","pclk_ddr_mon_ch0"]},{"const":"pclk_ddr_mon_ch1"},{"const":"pclk_ddr_mon_ch2"},{"const":"pclk_ddr_mon_ch3"}]}

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20261117-rockchip-dfi-rk3588-cleanups-and-rk3576-support-v3-1-32ff1546b0e4@collabora.com

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
