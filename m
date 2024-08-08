Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D78C52D71
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 17:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xk+rzRrR6nXRyN3c+FwJQWiqDYPw5wqUn+tz6SxUNU8=; b=WLCLRD0bnm6UpMbQHhsBPLYmYl
	5HPavM4duk7+0yvivv/zOPfibgOXdsyHnOZoH9p9DANtXkoyXKkfa+MvF4UvlSjyde9ton7wp8lmg
	gMCEzVVNL7PvdLGUJX6H5EWDfGOsoLxb40nCRL+Jtuv2/9uSHi9x6lfA4F0XLjRfrD12s0N/YOJUF
	ZovVeHE3XyAQMfOt7K5Jicl3yiexYQ//FxdbsS5vMBvix7UHzfZKcu5PwJ5Bnfmr/YSD+ZPbD2/6+
	ECxiL9B55K3Z0B3Az4ZPLJJsTTO1IZPWWub3JMZFRP/F+3aRWtx+rdPatQt+k5Qedla/P4rT/3wYe
	Whqz38sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6m9-000000093jq-1qzj;
	Thu, 08 Aug 2024 17:18:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6lZ-000000093fe-3tTX;
	Thu, 08 Aug 2024 17:17:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 843ECCE131A;
	Thu,  8 Aug 2024 17:17:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 724B8C32782;
	Thu,  8 Aug 2024 17:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723137450;
	bh=+A2ABjowY1uwCXufdD4VYUuq2E3xVfwjhSzZriEGmTk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=iLECvuLD2ett8jb54Hpj+bA3hMmCpX512SPRuoJwNpMU0EwfjdgHxc8I9LkcYJnMa
	 /16hh6Dq5TkhW4DColyYB/N3DUhQu1WfY9kHyLyzGuclkyg3b2VX77D0KEUB/Nf6ZT
	 xf/8+S71gI9NiaKop7J4Z1FGtB0qINt6tss+bbs6GmUVpMHuU4IyS+EQMG7T84yGoi
	 6Py0QyweroVTrYqQFYfk6EzHwSnFrfE61//DL+PjvxykO9pUfHL4bgdJ5cK1Z5V+Xs
	 xzOU03y5M9HM3z9qWR+D5VAdUD9jyA297KR+Gh0yE576P4l07ynZVwoGtEkXvD3+lr
	 US8cOqlhms30w==
Date: Thu, 08 Aug 2024 11:17:29 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org, 
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Michael Turquette <mturquette@baylibre.com>, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Stephen Boyd <sboyd@kernel.org>
In-Reply-To: <20240808162258.79271-3-detlev.casanova@collabora.com>
References: <20240808162258.79271-1-detlev.casanova@collabora.com>
 <20240808162258.79271-3-detlev.casanova@collabora.com>
Message-Id: <172313744929.1529145.2568982422354325643.robh@kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: clock: Add rk3576 clock
 definitions and documentation
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_101734_161415_3F971966 
X-CRM114-Status: GOOD (  13.63  )
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


On Thu, 08 Aug 2024 12:20:57 -0400, Detlev Casanova wrote:
> Add clock ID defines for rk3576.
> 
> Compared to the downstream bindings written by Elaine, this uses
> continous gapless clock IDs starting at 1. Thus all numbers are
> different between downstream and upstream, but names are kept
> exactly the same.
> 
> Also add documentation for the rk3576 CRU core.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3576-cru.yaml   |  83 +++
>  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 592 ++++++++++++++++++
>  2 files changed, 675 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.example.dts:24.19-20 syntax error
FATAL ERROR: Unable to parse input tree
make[2]: *** [scripts/Makefile.lib:427: Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.example.dtb] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240808162258.79271-3-detlev.casanova@collabora.com

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
