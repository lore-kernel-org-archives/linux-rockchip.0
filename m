Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93670CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 May 2026 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5lQoIgcOJzNtcTkPOFL1fo11dbBf/wHKnIrEMHag92o=; b=pYpCQb+aSi7iff4YfCEp+SIaen
	e17bk+bZ8VP10QcdE87/5qbFMA+14Kpiaxv82fFEhVK3VXmc/M0U/uK/JZ8OPxJpE7wP52MZhS3e7
	Ds51t6xL2PtOgHhKQg/nPVtvgd8vrTgBApT9wTGd1MvgvNwvGTBRgxxonPukq/vEz4UR5k0gp7j1K
	ccCvu+akSL3WsvcjO/U4A/SO6zPuoViaBeNEXd3HXDM73nQiNqi4ch+nvagyAo6E0HEj1ohVtg3WE
	rxzAA48Q5quUbeECDiwBndUegxBCtOIHuuHhxbyrA1zqrOR0hvK/EQbCNtgkEkvyd27CCcOimsNOQ
	bHEZy+gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOEL7-0000000AjW6-3S41;
	Sat, 16 May 2026 12:41:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOEL5-0000000AjVR-3EPf
	for linux-rockchip@lists.infradead.org;
	Sat, 16 May 2026 12:41:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 180CE4050C;
	Sat, 16 May 2026 12:41:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD969C19425;
	Sat, 16 May 2026 12:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778935314;
	bh=uYafgBDc4WEjuXohm6hvbshSIPL2XPQptSXqJkiZvW4=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=bBr43OrKVxmHLhzjL8BPK46Q9NRIOnq4JbrF9ODqS1yZZs5bg/xePiRcXC5oZmlTb
	 0Agw0sy/cYmzOARqeAYVv+8V6Qg6ltR44889O3d83yh6yLTA63ZoSWDEsJ6/hvDQh7
	 24ZQZPP1cKGnIsReS3vaGVCvAyw36LeDauE1bkkjNr6KEc/QtDd/tjK9qFEEYXbpyF
	 1yvDAsFNTT9aZm7ztrxO5a7ylHRkf/EZVtHmf1CSPjQm+Yi16luHxJM3DwHyWP3SaW
	 qetMchGxn1aXyH2lov07umZI+kAL8sUUCvBfqavzDmQw05p0ZRFXL0RQJA7MWF9cg3
	 fpeeOGrUzZGyg==
Date: Sat, 16 May 2026 07:41:51 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, simona@ffwll.ch, 
 neil.armstrong@linaro.org, devicetree@vger.kernel.org, tzimmermann@suse.de, 
 mripard@kernel.org, conor+dt@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>, sre@kernel.org, xsf@rock-chips.com, 
 krzk+dt@kernel.org, jesszhan0024@gmail.com, heiko@sntech.de, 
 maarten.lankhorst@linux.intel.com, airlied@gmail.com
To: Chris Morgan <macroalpha82@gmail.com>
In-Reply-To: <20260515221947.299229-2-macroalpha82@gmail.com>
References: <20260515221947.299229-1-macroalpha82@gmail.com>
 <20260515221947.299229-2-macroalpha82@gmail.com>
Message-Id: <177893531159.3189712.12987656927149699382.robh@kernel.org>
Subject: Re: [PATCH V2 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260516_054155_830666_1595A9B5 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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


On Fri, 15 May 2026 17:19:42 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the SG Micro sgm41542 battery charger/boost converter.
> The parameters of input-current-limit-microamp and
> input-voltage-limit-microvolt are defined as such since they are in
> common use among multiple bindings currently.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../power/supply/sgmicro,sgm41542.yaml        | 99 +++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml: $id: Cannot determine base path from $id, relative path/filename doesn't match actual path or filename
	 $id: http://devicetree.org/schemas/power/supply/sgmicro,sgm41542-charger.yaml
	file: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260515221947.299229-2-macroalpha82@gmail.com

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
