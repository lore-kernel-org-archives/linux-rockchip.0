Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319AAC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 12:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YmtNq2JTgHIC3Je77bo5+ur/xNSQuq/5BlB2X9mO4Fg=; b=A8d+n8X4HnbWGWbGals8OA1q05
	rwzauARmpqza9O6syFITqXzScqe3Qb3YJOt0iowmDBO/I1XQzykBnY+n1LK/NSz+1E6kXGabI+xtZ
	6dP4qpwrxlUFzWZoI/kA88YHMTWv5PCUg8vfx3cBtoYGo7cD+zkNNCIWremH/AvsHgdp1CR7LQ/Ct
	wfKA1zefrcAilx/jMHHG+kd7NVOt3QhSGZ/c+2hmHqTInbow3xetdLW5GQUaJGhEWbk5YdsNAXQ52
	DgJafl2U1p+Knk4HPOYoeMJw2Towlg1aNN4Oee3mR1YII/zS8tBz44vvMLJC5T2G31tVgytTNwS8v
	TeBGfrAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Lpe-00000008D9q-2i15;
	Wed, 23 Sep 2026 12:12:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Lpd-00000008D9J-1Z10;
	Wed, 23 Sep 2026 12:12:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 778436020F;
	Wed, 23 Sep 2026 12:12:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECA731F00898;
	Wed, 23 Sep 2026 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790165532;
	bh=41hUWES7pbAlbHSGkaQiLHGpUJJzIo2wTh85YdC5i7Y=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=nGzCbXOCErUWL32EnIWhmVFip4E6yArRe/VGuqcfdgd/L82uIDqUzhiqYiXdqztc5
	 b5SA5UV+28wf9XQzqtzrfZWpoX4VdowWMAH8sVux7PZ9nILIJVTrHyg8twyyDO9odo
	 QA3AGIMJEAOxeyRwVdMFKX1ysH18hBWuqkpxjzfSkyz9R2Atz14Lk051hOSo4sUlZU
	 BMHmEG/sV6iUb3ZDhv8hzbixQP2UYyiR6y79hTgTIgiF5IXiI7qi5bzhgX25p56A3H
	 9IHsbcWnBnWwQg/fhkz3z3/XYrqq9bfCFE/T8ACQHGfjKea0d+0tnLoGKB5qM4kSS6
	 hKAUdLN7Epk/w==
Date: Wed, 23 Sep 2026 07:12:11 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: nicolas.dufresne@collabora.com, linux-rockchip@lists.infradead.org, 
 krzk+dt@kernel.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, 
 kernel@collabora.com, linux-media@vger.kernel.org, festevam@gmail.com, 
 kernel@pengutronix.de, devicetree@vger.kernel.org, mchehab@kernel.org, 
 s.hauer@pengutronix.de, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, Frank.Li@nxp.com, conor+dt@kernel.org
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260923090307.49959-2-benjamin.gaignard@collabora.com>
References: <20260923090307.49959-1-benjamin.gaignard@collabora.com>
 <20260923090307.49959-2-benjamin.gaignard@collabora.com>
Message-Id: <179016528765.6905.14962207522862834482.robh@kernel.org>
Subject: Re: [PATCH 1/2] media: verisilicon: Remove deprecated variant
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


On Wed, 23 Sep 2026 11:03:06 +0200, Benjamin Gaignard wrote:
> "nxp,imx8mq-vpu" is tagged as deprecated since:
> commit f3116f2e52e6 ("media: dt-bindings: media: nxp, imx8mq-vpu: Split G1 and G2 nodes")
> merged since v5.17-rc1.
> There is more reference to it since that.
> Remove for driver and Documentation to clean up the code.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../bindings/media/nxp,imx8mq-vpu.yaml        |  2 -
>  .../media/platform/verisilicon/hantro_drv.c   |  1 -
>  .../media/platform/verisilicon/imx8m_vpu_hw.c | 60 -------------------
>  3 files changed, 63 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml: properties:compatible:oneOf: [{'const': 'nxp,imx8mq-vpu-g1'}, {'const': 'nxp,imx8mq-vpu-g2'}, {'const': 'nxp,imx8mm-vpu-g1'}] should not be valid under {'items': {'propertyNames': {'const': 'const'}, 'required': ['const']}}
	hint: Use 'enum' rather than 'oneOf' + 'const' entries
	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260923090307.49959-2-benjamin.gaignard@collabora.com

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
