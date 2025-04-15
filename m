Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2917FC369AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 03:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4797bd9JXya7wVYfAgwS41bVBey8V7km3846bftLaxA=; b=BdYYkiltJU4IFD
	InVB2KuNczbZ2ZAEV+lx6fh2xf23TdiRWJ2FcGaFWvMibczCRPrv2AnvZzxtDYPsD3veJKNsF74PF
	0KoTZEmpfviO9JhmglYuLNyPFqdInlASMr1GVGaGDM6JHRYpaf5lGG+cRUODQoe/DicuNgMc16n4m
	wtlHQU6F2JSccvcEReyuRUpTNWwpzFhBvbHX5JMHpf/UJsvpUYeDNIWFakbCRdGhPOoiY4usuHfAC
	Fg5qT7AkZx4M7ujZT7gv9xTMGAvINtnpSQI2O7msW0pmIhLQEjbCF/KoM208gwayPVw+6RE8nXeT5
	/+qe05yhapBN7BB7Q5EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4X2W-00000004Jqz-47Pp;
	Tue, 15 Apr 2025 03:32:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4X0h-00000004Jhq-15WK;
	Tue, 15 Apr 2025 03:30:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6D6565C48F0;
	Tue, 15 Apr 2025 03:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8659C4CEE2;
	Tue, 15 Apr 2025 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744687854;
	bh=oUQpqhzWVXdp7qUthWu4+FwVJs5T6FEKdE+LDL0Zth0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=emoVDUEXzCKPaf/UKFmsycT+RflvlzEn5RrTavLL+jTvjNDJFMPgpYI2ewq4hF6oS
	 FsM4qqMSKgHQoYRFHyhjjMFZH7DdM45qFnfQDKtO1KfmHl1s+uKdebTECOMrGNYbsR
	 Vaf3bENryMskS7yjbj0lD4CzF3tNu1VuyIG3y0stEHQUDgqA9opb/F5i/PYyiJiywa
	 kpPhIzN5PIdHt2EGP1oIIylGgf+FE/7NLlZ4QbuulMkowsJANMIOM6/l00xIB6uFtt
	 RhUX2OQDkHSTsRoKJxGDZxkeR9CLBLnkIyH6+6bibndxfhQdpbY1R/xBCpAnwz9Wzx
	 pYgFtYhDcnpJA==
Date: Mon, 14 Apr 2025 22:30:52 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <AD40AC968D12DF48+20250415015441.371214-2-kernel@airkyi.com>
References: <20250415015441.371214-1-kernel@airkyi.com>
 <AD40AC968D12DF48+20250415015441.371214-2-kernel@airkyi.com>
Message-Id: <174468785229.2606230.18106531706948394659.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add rk3588 evb2 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_203055_353178_9319E3AA 
X-CRM114-Status: GOOD (  11.18  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Quentin Schulz <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 15 Apr 2025 01:54:40 +0000, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add devicetree binding for the rk3588 evb2 board.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/rockchip.yaml:1078:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/AD40AC968D12DF48+20250415015441.371214-2-kernel@airkyi.com

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
