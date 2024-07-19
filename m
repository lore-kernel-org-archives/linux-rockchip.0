Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD77C3DA59
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jul 2024 22:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5kl7k69Gn2J5TyN5dYZYE4Vnb1AqnEqd+QvVnaNZ6nk=; b=Sy2wCqTUFNz7+0vbPgw48GNAiu
	K9FU1BBOPX+k6Ev6e54zCf+FbGbfpZ31h9/aKNKNn3eYh1tM9qbggfslZL7tyXgjTqTjZICMQuOOA
	BZLKI+cI0ZO8eueOkh7T21brsEYJiBwHgW0y/n0LjW9YqkCy98ImnKayjSX/dGhTDi26Qx+7GjFfE
	A1dRNRGIiEfByeRUWCuXs+KCo5QDCYAizufS93WTFOkxJ0ONo6zshw039a6RArljBTRLmbAeYYP8y
	mSAjPfzuTwb76SOg6jvKlx6qVPNYGW2aPLJ7yVtnfSZk1Hc5gaW67dC8P1KVxLjMzlyKFMHMc3omQ
	HMAZowYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUvoQ-00000003t0L-3pI2;
	Fri, 19 Jul 2024 22:10:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUvo4-00000003sus-1Lha;
	Fri, 19 Jul 2024 22:10:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4786761B14;
	Fri, 19 Jul 2024 22:10:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 971E3C32782;
	Fri, 19 Jul 2024 22:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721427027;
	bh=V0c7nQInZQHViP4y2EWyTjZ7257Z/OpHVNmbSCyY7ZY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=ZCefEhJxD0kJDQF5aFMBqtXgHQF4iEAJ4Q/a4iQMbM9zpxDeZ82frT8KnDMfOuBD/
	 SLj8mUvaW4Mi0+vR7N4k/ogzdRkfpgGMy7D7MSadkG5tbin2bGmh3bT7+ZvAi3f8gW
	 S090FuPqtelLDtxuycYBSSa97nF9akGChXYyAX5wC/zhvYvFpQuwXxAqjxnpQkEPgV
	 rkXd/2P43VWn+/3GcfXHhP9l/UUZaojZbrB0QyX1b82s9jkONpc5ercshIM+3uqUz5
	 snTa2//H9sHznlbEjrPODobZwxTSlb5s8LNGP7hct7cOwJYQqin5ZKKWBcchGFfndO
	 OfdLGACRqzP+w==
Date: Fri, 19 Jul 2024 16:10:23 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: kernel@collabora.com, mchehab@kernel.org, conor+dt@kernel.org, 
 linux-media@vger.kernel.org, nelson.costa@synopsys.com, 
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de, 
 mturquette@baylibre.com, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, 
 linux-rockchip@lists.infradead.org, shawn.wen@rock-chips.com, 
 sboyd@kernel.org, Dmitry Osipenko <dmitry.osipenko@collabora.com>, 
 p.zabel@pengutronix.de, jose.abreu@synopsys.com, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, 
 devicetree@vger.kernel.org, nicolas.dufresne@collabora.com
In-Reply-To: <20240719124032.26852-3-shreeya.patel@collabora.com>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <20240719124032.26852-3-shreeya.patel@collabora.com>
Message-Id: <172142702137.153951.8294803513682327237.robh@kernel.org>
Subject: Re: [PATCH v4 2/4] dt-bindings: media: Document bindings for HDMI
 RX Controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_151028_513478_5A28F7E7 
X-CRM114-Status: GOOD (  15.76  )
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


On Fri, 19 Jul 2024 18:10:30 +0530, Shreeya Patel wrote:
> Document bindings for the Synopsys DesignWare HDMI RX Controller.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
> 
> Changes in v4 :-
>   - No change
> 
> Changes in v3 :-
>   - Rename hdmirx_cma to hdmi_receiver_cma
>   - Add a Reviewed-by tag
> 
> Changes in v2 :-
>   - Add a description for the hardware
>   - Rename resets, vo1 grf and HPD properties
>   - Add a proper description for grf and vo1-grf phandles
>   - Rename the HDMI Input node name to hdmi-receiver
>   - Improve the subject line
>   - Include gpio header file in example to fix dt_binding_check failure
> 
>  .../bindings/media/snps,dw-hdmi-rx.yaml       | 132 ++++++++++++++++++
>  1 file changed, 132 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.example.dts:53.38-39 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:427: Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240719124032.26852-3-shreeya.patel@collabora.com

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
