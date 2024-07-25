Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5CB9C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 09:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHLTVKVn8qP31GtMKjJ+0+piQmgXkTTK9b39gCM7G10=; b=H/fZ/pXHgpqFnn
	dZB5ablzQkIja8zt3k2rhHMnN9p0yHwVYibY/nMPGyNRPaFv0sBzl/xon0BMNeueKTnp9acDnysUU
	MuaMCtcmlEeC+lw4uyNgIwFw/Ajj0buLPU+tGyIUPewrPk7gr4D/sMoYutiX/d3DT5hCMHNBljVu5
	tl7kdi+U/VcyNcmo409Pu80P7SmvlNCx5re2FUqICUd+7EE0m+8hGWUqmXXpK7LGlw9HLsvwRCv4I
	YYJip3uzXSJFLsoOAONL8tcwbLWXh5X5vhKKo2IodyNFHbypVJTc8OQGOXUXcymbBOF5ACFD11OXo
	1PvNiYdW96ckB1w6WKyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWv5O-00000000X8L-1FFz;
	Thu, 25 Jul 2024 09:48:34 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWv3n-00000000WSI-3lAk;
	Thu, 25 Jul 2024 09:46:58 +0000
Received: from harlem.collaboradmins.com (harlem.collaboradmins.com [IPv6:2a01:4f8:1c0c:5936::1])
	by madrid.collaboradmins.com (Postfix) with ESMTP id AE7C137811F4;
	Thu, 25 Jul 2024 09:46:51 +0000 (UTC)
From: "Shreeya Patel" <shreeya.patel@collabora.com>
In-Reply-To: <172142702137.153951.8294803513682327237.robh@kernel.org>
X-Forward: 127.0.0.1
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <20240719124032.26852-3-shreeya.patel@collabora.com> <172142702137.153951.8294803513682327237.robh@kernel.org>
Date: Thu, 25 Jul 2024 10:46:51 +0100
Cc: kernel@collabora.com, mchehab@kernel.org, conor+dt@kernel.org, linux-media@vger.kernel.org, nelson.costa@synopsys.com, linux-arm-kernel@lists.infradead.org, heiko@sntech.de, mturquette@baylibre.com, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, linux-rockchip@lists.infradead.org, shawn.wen@rock-chips.com, sboyd@kernel.org, "Dmitry Osipenko" <dmitry.osipenko@collabora.com>, p.zabel@pengutronix.de, jose.abreu@synopsys.com, linux-kernel@vger.kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, nicolas.dufresne@collabora.com
To: "Rob Herring (Arm)" <robh@kernel.org>
MIME-Version: 1.0
Message-ID: <ae465-66a21f00-1-25170f80@209442668>
Subject: =?utf-8?q?Re=3A?= [PATCH v4 2/4] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_media=3A?= Document bindings for HDMI RX Controller
User-Agent: SOGoMail 5.10.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_024656_117611_D81FD7BC 
X-CRM114-Status: GOOD (  23.96  )
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

On Saturday, July 20, 2024 03:40 IST, "Rob Herring (Arm)" <robh@kernel.org> wrote:

> 
> On Fri, 19 Jul 2024 18:10:30 +0530, Shreeya Patel wrote:
> > Document bindings for the Synopsys DesignWare HDMI RX Controller.
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> > ---
> > 
> > Changes in v4 :-
> >   - No change
> > 
> > Changes in v3 :-
> >   - Rename hdmirx_cma to hdmi_receiver_cma
> >   - Add a Reviewed-by tag
> > 
> > Changes in v2 :-
> >   - Add a description for the hardware
> >   - Rename resets, vo1 grf and HPD properties
> >   - Add a proper description for grf and vo1-grf phandles
> >   - Rename the HDMI Input node name to hdmi-receiver
> >   - Improve the subject line
> >   - Include gpio header file in example to fix dt_binding_check failure
> > 
> >  .../bindings/media/snps,dw-hdmi-rx.yaml       | 132 ++++++++++++++++++
> >  1 file changed, 132 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.example.dts:53.38-39 syntax error
> FATAL ERROR: Unable to parse input tree
> make[2]: *** [scripts/Makefile.lib:427: Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
> make: *** [Makefile:240: __sub-make] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240719124032.26852-3-shreeya.patel@collabora.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 

My HDMI RX patches are based on the linux-next/master branch.
Since the bot tested the patches on top of rc1, it resulted in some errors
due to missing reset ID patches.

I think the above statement means I should explicitly mention in this
patch that it is based on linux-next/master (something to keep in mind
for future :)


> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 
> _______________________________________________
> Kernel mailing list -- kernel@mailman.collabora.com
> To unsubscribe send an email to kernel-leave@mailman.collabora.com
> This list is managed by https://mailman.collabora.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
