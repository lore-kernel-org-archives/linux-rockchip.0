Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.6 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44730C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 10:47:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB50364EAF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 10:47:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB50364EAF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ilbOfR3ocGqt2ZDbz6rfLkhbMpURdGc+flRBe+/5PHY=; b=lDamCixM4aRGKpt1U6kx2zSKg
	qm8BlyZEN72nw+FOgCkgUpSpmfAN5Sk7z+MZ1zLluY3bzPCqdvr366Ep1xxgPaOKbRMUAw/BeIgFg
	3mR1gtS712EgOyWO5bcBe3BbiCZ3hqP3YDmZyT4euazFW0CRn1uTqUtEJN0XsWTpP0w28FLQCntp/
	JEckjYbmVkzL1LxIVczlZ1H2WuUkjahXVqRImxiW+fmS4QfY8VeA46nEOESiVz5RLsg4jTHVbuKsO
	kIjVIKtJBaXINEVGHsH+eo/mC3bc77F6HXajqKB/tQshTUdpldhI9s35+In8Vekf+crgCy44Dr9pp
	f1Fv6/eJg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFaf1-00056l-Nd; Fri, 26 Feb 2021 10:47:51 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFaex-00055j-O7; Fri, 26 Feb 2021 10:47:48 +0000
Received: by mail-ej1-x635.google.com with SMTP id hs11so14060326ejc.1;
 Fri, 26 Feb 2021 02:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SptuCNRcrUMOBsIkdiojrMBwnefuMhsLcusFLvnTYHM=;
 b=UgSKhLA/akkZKJAnrE3pT9d3/SWj3FfXTsU89UOw2ByYa5QnkTfotOA5ZGuVt9+iUH
 Lrg7CvpMMJFShGGw2pKdbipBfggmG8uvRm8p/UNQfS5qU0h7F2f+L9rPosdyhthGtETn
 Awm1eaMOGFK8XQc2JQCKqAYhaomkI1YOIMyMmzOGtEDOR32qunRy0D0HDB3raPKSP8G5
 uKlyZc0ltu0yzY9ka1i45OLdpy3LrekHK4KQTMS3HOq10u4WuEHUqVZUuKlc5eD4Itti
 elUUEeZtujxzrO678Hq+v5A7EPuVAvrFQzQaqAC225bjs51lf6H1pftHTqNuYVW0nvYK
 EnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SptuCNRcrUMOBsIkdiojrMBwnefuMhsLcusFLvnTYHM=;
 b=LdysefKv4OY7s4L8MU9DdlcIoC0gd17L7uo3JtDF8oaNBahwZtxMLiaX7oraqFbeMu
 g5r+VcqVTaEt7Cd6/0EqDCY9aIrV/H7zl1y7xOLgnI5a/hLBjxlwYJx4SLNLWiWyf9BH
 sw4osfDsShnBp+OEnmWmW/n//OtQEEcyL/Sa57mcZsRNvn2b1CUL3w+fLpeq7HWu47T7
 Z+SlSSApD9x4DVZaiWZ5OZz93VVSrWA7vhHgaaewWwv7b12RsBF0C+zfWahLzzjLGPj+
 MjBb/G+AC6vxhcqCeIx6WI/TcEAGfxf+lZggMkzs9/xLkenw6LNzZPCk/s2FFwT74bfZ
 rQbg==
X-Gm-Message-State: AOAM531vNNlbLES3p/g/6rXgEMKNjEFOClc3Ja7qV4441OFQDB9HO+jb
 vdqeTGHWekp2pYUicCTcSDg=
X-Google-Smtp-Source: ABdhPJyjvz1ZN0qOnMiud13/4Wv+lXyvHJx5mrK55lKgzUoPEYrCzOmGlSZWKFac1fz7+nrC6hCCfg==
X-Received: by 2002:a17:906:63c2:: with SMTP id
 u2mr2604960ejk.346.1614336464970; 
 Fri, 26 Feb 2021 02:47:44 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 x21sm4892801eje.118.2021.02.26.02.47.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Feb 2021 02:47:44 -0800 (PST)
Subject: Re: [PATCH v2 1/4] dt-binding: clock: Document rockchip, rk3568-cru
 bindings
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 robh+dt@kernel.org, sboyd@kernel.org, heiko@sntech.de
References: <20210226082234.1733-1-zhangqing@rock-chips.com>
 <20210226082234.1733-2-zhangqing@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <04bca26f-080f-384a-11c5-6fc51f82e359@gmail.com>
Date: Fri, 26 Feb 2021 11:47:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210226082234.1733-2-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_054747_864128_28BE7588 
X-CRM114-Status: GOOD (  20.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 finley.xiao@rock-chips.com, cl@rock-chips.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Elaine,

On 2/26/21 9:22 AM, Elaine Zhang wrote:
> Document the device tree bindings of the rockchip Rk3568 SoC
> clock driver in Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../bindings/clock/rockchip,rk3568-cru.yaml   | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> new file mode 100644
> index 000000000000..612da341ea67
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
> @@ -0,0 +1,55 @@

> +# SPDX-License-Identifier: GPL-2.0

This is a new document.
Use GPL-2.0 only for a conversion of an existing document in the main
kernel.

./scripts/checkpatch.pl --strict
0001-dt-binding-clock-Document-rockchip-rk3568-cru-bindin.patch

WARNING: DT binding documents should be licensed (GPL-2.0-only OR
BSD-2-Clause)
#21: FILE:
Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml:1:
+# SPDX-License-Identifier: GPL-2.0

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/rockchip,rk3568-cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROCKCHIP rk3568 Family Clock Control Module Binding
> +
> +maintainers:

> +  - Elaine Zhang <zhangqing@rock-chips.com>

     - Heiko Stuebner <heiko@sntech.de>

Add the maintainer of the clock drivers as well.

> +
> +description: |

> +  The RK3568 clock controller generates and supplies clock to various

supplies clock

This phrase could be improved a bit.
(?? generates the clocks signals for ??)

> +  controllers within the SoC and also implements a reset controller for SoC
> +  peripherals.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-cru
> +      - rockchip,rk3568-pmucru
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  '#reset-cells':
> +    const: 1
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
> +  # Clock Control Module node:
> +  - |
> +    pmucru: clock-controller@fdd00000 {
> +      compatible = "rockchip,rk3568-pmucru";

> +      reg = <0x0 0xfdd00000 0x0 0x1000>;

Method 1 (easier):

reg = <0xfdd00000 0x1000>;

This example is 64 bit.
The dt_binding_check uses standard 32 bit.


Method 2:

Add both examples in a subnode.

example {
  #address-cells = <2>;
  #size-cells = <2>;

  pmucru {}

  cru {}
}

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml

/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.example.dt.yaml:
example-1: clock-controller@fdd20000:reg:0: [0, 4258398208, 0, 4096] is
too long
	From schema: ~/.local/lib/python3.5/site-packages/dtschema/schemas/reg.yaml
/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.example.dt.yaml:
example-0: clock-controller@fdd00000:reg:0: [0, 4258267136, 0, 4096] is
too long
	From schema: ~/.local/lib/python3.5/site-packages/dtschema/schemas/reg.yaml

> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };
> +  - |
> +    cru: clock-controller@fdd20000 {
> +      compatible = "rockchip,rk3568-cru";

> +      reg = <0x0 0xfdd20000 0x0 0x1000>;

dito

> +      #clock-cells = <1>;
> +      #reset-cells = <1>;
> +    };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
