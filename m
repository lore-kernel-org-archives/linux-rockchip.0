Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815C7C3DA64
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 10:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eRbjxSl6gVqAtlqQucM/eNlMzVqlD7CjX0qrObxJQ7c=; b=TU1rh7DSxk9gN2rD/4xnsdHXXI
	tk5LZr6TbPpV2RFH6N3JYg/DyV2GfjXSNoTHYAkVDSgHQCK2hJasjB8gCuv/Mi+MkfBFQ6bWvBBFP
	HfpONn0rMSbsryS/hAqZt+nAisZxCnZgmsuPZHJoNvFobHWI3tWewLswgFZmMzlTPX7kOORVZ1Rdo
	B5TeioUX6xmRFBYIpuovyGOAc6DpkW30rWaZVB+s/7QmGRfwbNCwy0pCFwTFAj5DXgeN5sRT/4fUT
	p24MF8JhGAlApQAyr1PVj6O2c0I1hrqZOQYZ7PxeGgWMVNqFakYSmMqgDjW+tC5RaN048t5/dQHqd
	xglvEl2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHHM-00000001CI3-2PUo;
	Tue, 06 Aug 2024 10:18:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbHHK-00000001CHF-0MP6
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Aug 2024 10:18:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 09F2E60F85;
	Tue,  6 Aug 2024 10:18:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75F15C32786;
	Tue,  6 Aug 2024 10:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722939532;
	bh=tF0qjnYximJMqHXdOuRBPd07BvDP+1RETk8lBbegNus=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=G6teTVXMpXkvXvwEm1eqcxD+f2dxW9AtJaoh1XUdCghJVgE9sD7g88FiFcf2I8jrn
	 Zi6RDeTm1vENbDa+4gm8tZLgBfHVke0nII/6kaI9kKiqrNUDy0Qg17VcQVbklrS8nt
	 2s2zr5cke7yRuR+Ue7vFKwNuuRk3sZ2+vFSY4/i33vl3oHuLQKDJ7PMv2GoAhM8r4J
	 ppR4vfsJSGfiANkhFhuoiZQbPw7HSG6z6QTw9UJehmgRbyVZfFRYoy1eKbiFPWgTqX
	 4mD+uzvgET5JeO6Xw7xCAb08Ej/Ob/QQ04+f6LM2ap8eJOyshfeWBpr/Sid8SF0Soc
	 Ckadafl7TQLHQ==
Date: Tue, 06 Aug 2024 04:18:51 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, linux-rockchip@lists.infradead.org, 
 "Martin K . Petersen" <martin.petersen@oracle.com>, 
 Bart Van Assche <bvanassche@acm.org>, Liang Chen <cl@rock-chips.com>, 
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, linux-scsi@vger.kernel.org, 
 YiFeng Zhao <zyf@rock-chips.com>
In-Reply-To: <1722928800-137042-3-git-send-email-shawn.lin@rock-chips.com>
References: <1722928800-137042-1-git-send-email-shawn.lin@rock-chips.com>
 <1722928800-137042-3-git-send-email-shawn.lin@rock-chips.com>
Message-Id: <172293953136.567331.12860236483720130246.robh@kernel.org>
Subject: Re: [PATCH v1 2/3] dt-bindings: ufs: Document Rockchip UFS host
 controller
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_031854_296288_BCF1E911 
X-CRM114-Status: GOOD (  11.47  )
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


On Tue, 06 Aug 2024 15:19:59 +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/ufs/rockchip,ufs.yaml      | 78 ++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml:24:6: [warning] wrong indentation: expected 6 but found 5 (indentation)
./Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml:65:1: [error] syntax error: found character '\t' that cannot start any token (syntax)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/ufs/rockchip,ufs.example.dts'
Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml:65:1: found a tab character where an indentation space is expected
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/ufs/rockchip,ufs.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml:65:1: found a tab character where an indentation space is expected
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/rockchip,ufs.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/1722928800-137042-3-git-send-email-shawn.lin@rock-chips.com

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
