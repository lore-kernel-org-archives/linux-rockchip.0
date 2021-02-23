Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBA2C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:50:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6301D64DF5
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:50:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6301D64DF5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z0HGT6+Mizk2qKQaYAQ9aEU2vjEf+wPoBUAdI1DLJDo=; b=iSzI7RssHS6zKcTlzwDhpRynI
	QTOLb90EVx1bc6RRNE20rz0+iyPzIspDueMpm9qjrdKhZSnM8ZLZ9vH0O5ryHZ4uXTgDOlJqIyEQ5
	9LccvstXAA0WjdprzaoOKjkqWcF84NHhA1kxS99alvZm0YhLxaRRCRE7tXYiNVV1U/Cf2PFncBBRD
	KkSEWUnRtTUWbj7Vv9Uix0wONTM1HHVhJEtLCmIan+9S/sxb++na2a6M3BZMlHBU9Emx8uvygKY0J
	LN2yplG7+Fdnnzg2owulKsITQbYlQNfGzysxIiZi3LIR1rK32FxmjqaFj8X/foSYaMJRbdjdvXapi
	mhHEwFM2w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEVGz-0002vy-1q; Tue, 23 Feb 2021 10:50:33 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEVGv-0002v8-J1; Tue, 23 Feb 2021 10:50:30 +0000
Received: by mail-ej1-x629.google.com with SMTP id t11so33820170ejx.6;
 Tue, 23 Feb 2021 02:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=P/1JNEV3PIgicB1am1l2YiBw1QtFaWJe84twwNeW3fU=;
 b=sbyScH7H7LXNHh4yh+UgXkonko8so3LzRkfz9yrn7msK1FKyYdgQev/OTj6nABvnAx
 Ndxr0plTbNcKNaAp2shfwJdrHxCEhB3j62wy4I7peJrx2pDerOoT0Y/0kNc7Aes5CLpP
 Wq4BLLAAMX9195J4zIb8wlEekLdedjItrAKbXGW2Eph7ffqRm8W5Ih5DgM8RIaNgx6jo
 nTwWD9Y5F19aFyezTK67VTMD3rr7/rDBuMyuJTDNDZ79Y3U0+hrTV0IH+LLn7hBqFXDK
 JoJChikw9YbVqyOrdrACYCZ/1TrL1jY3vxPpKcZkCc1iU6qoVOtPHK7jGvIHl2ah1BrP
 z57g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=P/1JNEV3PIgicB1am1l2YiBw1QtFaWJe84twwNeW3fU=;
 b=QBhfmdXvGRiY1iS8O2LG3KYG2H0rC6NUuuDkoAtEqLjHDq71Juwb1gxI8pfHkrXADq
 ZGDYCxIOypizPhsA/2PVYWh8A179NeUqJ+NZmd23BYUfB6x5mrLUWrRclyZgvkJolG1K
 ZQNEsAtRJ38t8zrdc8hqS99guUSX8dpc9B2Pp0Z1UY8E6L+itORmv/zCOisYO0IcZqjK
 MPAjIrS7e12lTxcReASS8TI6nQqb59KwwvGi+SlCxA//JNsNzvhfiYZxDIz+7psyr+Tj
 Nq4rWwJ+xXWDEfdhRmsHe7sUT035+ATCq/IyUL5twZ8JPlopVpIFEd/qAcyh8jzhjuJc
 NyIw==
X-Gm-Message-State: AOAM531ZMR+OIST6yCEkaWGZteg7kMbPVnQ2bxuwYCX9rvaQG6wmYe3d
 5vu3f1PNQLPdEFQ/lLIaS0w=
X-Google-Smtp-Source: ABdhPJzXHFXMEOji4avwfFcQdLZA7rv5Vj6DrXXynyzrv8X/eQxl2iIGEjF+xb3ztZgLCzcXWlPgsg==
X-Received: by 2002:a17:906:4e95:: with SMTP id
 v21mr364290eju.112.1614077428321; 
 Tue, 23 Feb 2021 02:50:28 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 m19sm13519029eds.8.2021.02.23.02.50.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Feb 2021 02:50:28 -0800 (PST)
Subject: Re: [PATCH v1 1/4] dt-bindings: add bindings for rk3568 clock
 controller
To: Elaine Zhang <zhangqing@rock-chips.com>, sboyd@kernel.org, heiko@sntech.de
References: <20210223095352.11544-1-zhangqing@rock-chips.com>
 <20210223095352.11544-2-zhangqing@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <eb82f0a4-ca89-d1bc-5660-49bd05b7fc50@gmail.com>
Date: Tue, 23 Feb 2021 11:50:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210223095352.11544-2-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_055029_695924_30B15E28 
X-CRM114-Status: GOOD (  23.26  )
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
Cc: huangtao@rock-chips.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com, cl@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Elaine,

This is a new document.
Could you convert rockchip,rk3568-cru.txt to yaml?

To get an acked-by you must include:

robh+dt@kernel.org
devicetree@vger.kernel.org

./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
--nogit <patch>

Your patch should show up here after filtering:
https://patchwork.ozlabs.org/project/devicetree-bindings/list/

Check with:

make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/rockchip,rk3568-cru.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/rockchip,rk3568-cru.yaml

./scripts/checkpatch.pl --strict <patch>


On 2/23/21 10:53 AM, Elaine Zhang wrote:
> Add devicetree bindings for Rockchip cru which found on
> Rockchip SoCs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../bindings/clock/rockchip,rk3568-cru.txt    | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
> new file mode 100644
> index 000000000000..b1119aecb7c7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.txt
> @@ -0,0 +1,66 @@
> +* Rockchip RK3568 Clock and Reset Unit
> +
> +The RK3568 clock controller generates and supplies clock to various
> +controllers within the SoC and also implements a reset controller for SoC
> +peripherals.
> +
> +Required Properties:
> +
> +- compatible: PMU for CRU should be "rockchip,rk3568-pmucru"
> +- compatible: CRU should be "rockchip,rk3568-cru"
> +- reg: physical base address of the controller and length of memory mapped
> +  region.
> +- #clock-cells: should be 1.
> +- #reset-cells: should be 1.
> +
> +Optional Properties:
> +
> +- rockchip,grf: phandle to the syscon managing the "general register files"
> +  If missing, pll rates are not changeable, due to the missing pll lock status.
> +
> +Each clock is assigned an identifier and client nodes can use this identifier
> +to specify the clock which they consume. All available clocks are defined as
> +preprocessor macros in the dt-bindings/clock/rk3568-cru.h headers and can be
> +used in device tree sources. Similar macros exist for the reset sources in
> +these files.
> +
> +External clocks:
> +
> +There are several clocks that are generated outside the SoC. It is expected
> +that they are defined using standard clock bindings with following
> +clock-output-names:
> + - "xin24m" - crystal input - required,
> + - "xin32k" - rtc clock - optional,
> + - "i2sx_mclkin" - external I2S clock - optional,
> + - "xin_osc0_usbphyx_g" - external USBPHY clock - optional,
> + - "xin_osc0_mipidsiphyx_g" - external MIPIDSIPHY clock - optional,
> +
> +Example: Clock controller node:
> +
> +	pmucru: clock-controller@fdd00000 {
> +		compatible = "rockchip,rK3568-pmucru";
> +		reg = <0x0 0xfdd00000 0x0 0x1000>;
> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +	};
> +
> +	cru: clock-controller@fdd20000 {
> +		compatible = "rockchip,rK3568-cru";
> +		reg = <0x0 0xfdd20000 0x0 0x1000>;
> +		rockchip,grf = <&grf>;
> +		#clock-cells = <1>;
> +		#reset-cells = <1>;
> +	};
> +
> +Example: UART controller node that consumes the clock generated by the clock
> +  controller:
> +
> +	uart1: serial@fe650000 {
> +		compatible = "rockchip,rK3568-uart", "snps,dw-apb-uart";
> +		reg = <0x0 0xfe650000 0x0 0x100>;
> +		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-shift = <2>;
> +		reg-io-width = <4>;
> +		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
> +		clock-names = "baudclk", "apb_pclk";
> +	};
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
