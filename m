Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08809C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8WaVa+erl8VAL7LRIikekoXhgTGzON/2jWgG8ykCwQ=; b=uAXJJeLhJMKXeA
	FpoMDIKj60tKe/qI9Xllc3ZGRQNHF6z2e+9HlOyW61Jr9miFlquF27ZMChFjsJRgkrSW2qpcnPlYl
	CZczgLqZCTl/PtNaHzoVn66ncD6z4BmUWpUlLtm0yueVDqxC5OwrkJopKE+qm5BGQhWTdh659i5fk
	Xp5L1mdI6zw/UpLVOXLcOrtV+UiHmuhynG39gE15d/t0NCCkIiQO+zEUMSyaFnnS3C/mSouqxwq9X
	gyR1ty6WxkPcbXKFsXNrg6v9Vzt18oPeMUqfSPK/JPAPNpf3REEr2mrnJYQaOnC/y9iaA6RnlNcRW
	duG2whTVj+S7kWlVUsZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na3dt-003tDV-4X; Thu, 31 Mar 2022 22:51:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na3dg-003tAk-Fa; Thu, 31 Mar 2022 22:51:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 32DE860FDF;
 Thu, 31 Mar 2022 22:51:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A0A9C340ED;
 Thu, 31 Mar 2022 22:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648767094;
 bh=QZtPMXY6JUY/ZfIXbEGhe3FtZuMlYLYppA7pePl5R5Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=eUVu2/0sluYfq3DhNMOnQ4SajAYtEbiavPa1PqSheOk4ucJs3VxLKjLCLbuGbl9hO
 XuevYEOKMXwSFS/Tpb+r6f0IqPoBQqigC7l8mm0W4emupTTfmjEAHRYe3HZTgo8MIo
 SB4MnkP4WO8ZQkr5M6AtdtP24O8ABHi2QQteUeQASfyFZz1LMIQ/++bGvSwA0zUB+x
 tG8mkgKQJtBS7khMW7VkW9z3PuK29qPubZP0ClVE/p5/SqQ1TyJbDQvGQabWYbxM9r
 Nl4jL3godJaYUbHrN8K0r810g5D2tRiYZAWPeRUZsKJkZR22ObCIHOQ3uyxxPbTGY6
 DO11ilqutw7hw==
MIME-Version: 1.0
In-Reply-To: <20220329111323.3569-1-jbx6244@gmail.com>
References: <20220329111323.3569-1-jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Date: Thu, 31 Mar 2022 15:51:32 -0700
User-Agent: alot/0.10
Message-Id: <20220331225134.7A0A9C340ED@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_155136_640930_62CC9C55 
X-CRM114-Status: GOOD (  19.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Quoting Johan Jonker (2022-03-29 04:13:22)
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> new file mode 100644
> index 000000000..ddd7e46af
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The RK3188/RK3066 clock controller generates and supplies clocks to various
> +  controllers within the SoC and also implements a reset controller for SoC
> +  peripherals.
> +  Each clock is assigned an identifier and client nodes can use this identifier
> +  to specify the clock which they consume. All available clocks are defined as
> +  preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
> +  dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
> +  Similar macros exist for the reset sources in these files.
> +  There are several clocks that are generated outside the SoC. It is expected
> +  that they are defined using standard clock bindings with following
> +  clock-output-names:
> +    - "xin24m"    - crystal input                 - required
> +    - "xin32k"    - RTC clock                     - optional
> +    - "xin27m"    - 27mhz crystal input on RK3066 - optional
> +    - "ext_hsadc" - external HSADC clock          - optional
> +    - "ext_cif0"  - external camera clock         - optional
> +    - "ext_rmii"  - external RMII clock           - optional
> +    - "ext_jtag"  - external JTAG clock           - optional

I'd expect all these clks here to be inputs to this node.

> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3066a-cru
> +      - rockchip,rk3188-cru
> +      - rockchip,rk3188a-cru
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +  clocks:
> +    maxItems: 1

so that maxItems here should be larger and minItems would be 1?

> +
> +  clock-names:
> +    const: xin24m
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon managing the "general register files" (GRF),
> +      if missing pll rates are not changeable, due to the missing pll
> +      lock status.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    cru: clock-controller@20000000 {
> +      compatible = "rockchip,rk3188-cru";
> +      reg = <0x20000000 0x1000>;
> +      rockchip,grf = <&grf>;
> +      #clock-cells = <1>;
> +      #reset-cells = <1>;

Where is clocks in the example?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
