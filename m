Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB38C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 11:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3+detGJRCEwuEXSPgbm5kXNEU3XzQQ9Tv6wG5zbKQ8s=; b=Yc4QRM8FWrECKf5j3XyiD7f/cn
	Tq6v3JlUCLbLBU5MYBepBkaViXsI0bj7PcRPQ+Z8jYHz984lZ8w0hfsktAEeGPb4h8wnPZnauRN/v
	lUPazpZ6ETY6vpsxewmj4kkooFzLyFwJKpsz8UsuL6meFaet05mxiFRl8Y4As1En9/phXGxWYJaf2
	RCRquYiTR/1dQ7awpLwDp7qjvESoXHEbV3rz3yZIMEKTcCUOx+iP9PbBdRmOakdvl0j50e1ebHaFB
	jxsovkjW7hsMAeJ+CRIYFxS7z9MKZy/lRCKPjlmhG5cxcvHc/bf8uES0unu6OlIwQLIPPIE6gjLIG
	B/ZvlzXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPhJq-00BlEt-2C;
	Tue, 16 Jan 2024 11:09:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPhJm-00BlBf-0y;
	Tue, 16 Jan 2024 11:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9DD1B6104E;
	Tue, 16 Jan 2024 11:08:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22AE5C433F1;
	Tue, 16 Jan 2024 11:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705403327;
	bh=kJGk0fjidgmzt3ZWgK7tdK17z1gn1n+qBqI3dXSdxbo=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=QPPGEEQtJlx2/mNwA1qsS0qhQ9WYxoeJknVaQhBPzj4yPVjIbC2ITWDvgRfx4Bguz
	 F8GYZb5yBjzlwEicvSFgNGcHPI9bdPvaMkf78ofPZf8mpy12Bpnf/GENKSZlEe4Bii
	 tiFu+k5ZaNGnwhhibIVscyUtL65C5xp5qB8wudfBM8rGHmqXg7tnq9ipAyIbgxT+PO
	 UFAhDs3dczpZIJnn+/L3GwvwnX83vf5FxqSftYiM8jJHwTSeZaYmZlZkHZnitwec2Y
	 JbtFTaOaqhrKapB5PtuUSuMHtsFJGk8Dg4PoBKXXITlc7Cj1uhyFIpqRBkeBqnkxW2
	 tAAAGjm/BHS+w==
Date: Tue, 16 Jan 2024 05:08:46 -0600
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Chris Zhong <zyw@rock-chips.com>, 
 Zhang Qing <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240116084618.3112410-3-tim@feathertop.org>
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-3-tim@feathertop.org>
Message-Id: <170540332448.3326634.4106682214139586687.robh@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: rockchip: rk809 fix compatible string
 in examples
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_030918_396366_E1DE2A5A 
X-CRM114-Status: GOOD (  12.17  )
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


On Tue, 16 Jan 2024 19:46:17 +1100, Tim Lunn wrote:
> Fix typo in the example specifying wrong compatible string
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/rockchip,rk809.example.dtb: pmic@1b: 'vcc10-supply', 'vcc11-supply', 'vcc12-supply' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240116084618.3112410-3-tim@feathertop.org

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
