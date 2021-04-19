Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECEB9C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 18:38:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 56BFB6127C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 18:38:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 56BFB6127C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l2lCsV1SQH2Z4rDG1SOJXSVvWswOWeqpmGxsj+bklTA=; b=AcrMVpzlyKT6bWyR7deJ7TNTj
	i20EOcrdjdDYJHBmYwacaG1WNP0viACPh1p3PN1x0+tKAOBpHdh1LASiAtnToZvftg6TIx0hNVXyX
	yubDtEPpJUZNht/8YZzGtq4mGCqHB8yOR1bSKyXaESJOP765834RGamOZVXjOeFv2SiOeI78/QObM
	WNDuh6ZYv6UbuV7fQgKOnABiBm9eTIhiInqfkRdcpReWges6THUHcaRKBUKfro0/tbz/a7ipB7QG1
	6liUyl8EMGGBG20d8NtaumVQ1y51VLgDmWGVS713+qWTaMIpjcQ2eguIvuoAdWe8DFpyY42TMD3DD
	lAWwDpuog==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYYmf-00ASQy-4B; Mon, 19 Apr 2021 18:38:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYYme-00ASQj-BF
 for linux-rockchip@desiato.infradead.org; Mon, 19 Apr 2021 18:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Jrs+XBm6ggvtJYv1/c5X0qFwYhKg9w9qG3XK2lChT6Q=; b=LHTaP4N5qSC4S54C9VfqC1P8Tf
 2sCBd+KmPRFhDOizJcr67plopnkEVCMqQxm0/10OHyucicwUe/trSQC2Za0hZfzLPYOuUMJGSsYb6
 WqAQOYR6jrfizBzZl7lHRgBsCvTHdWJdRL16a3ZVoG9E+SJt1lfzhah+cfd8EIWwDDeMlhHBrxGp+
 WSMKywYZV4fuRQU8ByNj4WpBkNVRSTtLpZNCGBhJeQrdjDKMPc9CHiYgL0BwR+9hsuH3ADg+5Cr+a
 +3SerwVqSOr2liqTRpTz6emp5Amda/kzkcru1B5BfyMTPf8aWGi3K6J7bKyFNAmWOlv07mI0bCNIm
 eKHIFlcQ==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYYmZ-00Bavb-AD
 for linux-rockchip@lists.infradead.org; Mon, 19 Apr 2021 18:38:07 +0000
Received: by mail-ed1-x529.google.com with SMTP id d21so21863129edv.9
 for <linux-rockchip@lists.infradead.org>; Mon, 19 Apr 2021 11:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Jrs+XBm6ggvtJYv1/c5X0qFwYhKg9w9qG3XK2lChT6Q=;
 b=b0NwK4xLCTp2I4QI7ahsuHGRcGm/SVXCLrAbkmSB6F84muMtpFMtGDl6ttK8FagNsR
 Ipy5GlyFjEo0z44+b372t2vEQC8/tYBMpbuGg7pAEA9ESCdqThDH5bm8EbeD12YHq1Aa
 8Fw8X5ZtSx9r6rS9epPF4QlnfKp5qiSNUJJt+BkQiRVmCr6J2+SEVid/THQslkL8zQwD
 Mgr+c8uXTIXZAJXWlekOw22OSXuwY2AmXiyyerd20Uo+YF5x75JDP3sPNVsWXCjlc0a6
 4PK8OyIOEa5X7vD0nk9Vn3xwWlEiyVT59TpU/u/FS8OKkJEQWhCMmuejzLOP/AsOo+Cm
 2bHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Jrs+XBm6ggvtJYv1/c5X0qFwYhKg9w9qG3XK2lChT6Q=;
 b=PsYZQATgE7J4LllL2Txtcx+UnKnrzFSc5poW8H5xEiuYv63P8iE6hV349Bysb4dPLH
 oMai2j6grb30AMjteDAa1mLLHaGbtZZMaGDiIanbIbKATHljVTPnZSGYawfaqxevGaIg
 OnEh/joI7DCBVEXTWF1yj8wUyklHxTks08ZicE8bYiHFA92mN886QZaoq4r0rPcbHSlE
 xlebBi0JfsTYaWakMW+0kYrf75VFkOdpOu4KPKNrq6doT7YspAI0u3fcXSY1+6fykiwG
 T6eyNds0IU6YN4AgasCWytIZC6mLfFp9HoQv0J9CXr36aVS6cGT1oRMIS1c1yt4j/7cx
 cusA==
X-Gm-Message-State: AOAM530M2mmFLzsfvIR48ZxCwPX8ya6vQH5Mi58Zm7Hz2qeo0hk+sWuw
 SeatHUw3VxAKUdhXuvSPrvc=
X-Google-Smtp-Source: ABdhPJxegTgbTkCeYJYJ5bYMyVBkLvV3cvuTH8TQ2bDbAkBKMQEDJfOeiLYdm/o2SyuqCssTvOmXWQ==
X-Received: by 2002:aa7:da15:: with SMTP id r21mr26937828eds.253.1618857480677; 
 Mon, 19 Apr 2021 11:38:00 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bw26sm8704212ejb.119.2021.04.19.11.37.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 19 Apr 2021 11:38:00 -0700 (PDT)
Subject: Re: [v6 3/3] dt-bindings: Add Rockchip rk817 audio CODEC support
To: Chris Morgan <macromorgan@hotmail.com>, alsa-devel@alsa-project.org
Cc: pierre-louis.bossart@linux.intel.com, heiko@sntech.de,
 devicetree@vger.kernel.org, tiwai@suse.com, robh+dt@kernel.org,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 lee.jones@linaro.org
References: <20210419155718.17348-1-macromorgan@hotmail.com>
 <SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <5cad7e70-89ca-6e4c-47cc-1248250108c7@gmail.com>
Date: Mon, 19 Apr 2021 20:37:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_113803_407456_EB452392 
X-CRM114-Status: GOOD (  24.23  )
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

Hi Chris,

Never use hotmail.com for sending patches.
They corrupt Message-ID, so use for example Gmail.

X-Microsoft-Original-Message-ID:
 <20210419155718.17348-3-macromorgan@hotmail.com>

Message-ID:
<SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>

====

If you like rk817.txt should be converted to YAML, which is beyond your
serie, so move these changes to rk817.txt instead for now if rob+dt
agrees. ;)

====

Include the dts patch back in, so we can compare it with the
documentation changes.

On 4/19/21 5:57 PM, Chris Morgan wrote:
> Create dt-binding documentation to document rk817 codec.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
> Changes in v6:
>  - Included additional project maintainers for correct subsystems.
>  - Removed unneeded compatible from DT documentation.
>  - Removed binding update for Odroid Go Advance (will do in seperate series).
> Changes in v5:
>  - Move register definitions from rk817_codec.h to main rk808.h register
>    definitions.
>  - Add volatile register for codec bits.
>  - Add default values for codec bits.
>  - Removed of_compatible from mtd driver (not necessary).
>  - Switched to using parent regmap instead of private regmap for codec.
> Changes in v4:
>  - Created set_pll() call.
>  - Created user visible gain control in mic.
>  - Check for return value of clk_prepare_enable().
>  - Removed duplicate clk_prepare_enable().
>  - Split DT documentation to separate commit.
> Changes in v3:
>  - Use DAPM macros to set audio path.
>  - Updated devicetree binding (as every rk817 has this codec chip).
>  - Changed documentation to yaml format.
>  - Split MFD changes to separate commit.
> Changes in v2:
>  - Fixed audio path registers to solve some bugs.
> 
>  .../bindings/sound/rockchip,rk817-codec.yaml  | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> new file mode 100644
> index 000000000000..0059ef54d6b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip-rk817.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip rk817 audio codec
> +
> +description:
> +  The rk817 codec is an I2C codec integrated with every Rockchip
> +  rk817 PMIC MFD.

If you want to convert rk817.txt to rockchip,rk817.yaml then add

maintainers:
  - Heiko Stuebner <heiko@sntech.de>

> +
> +properties:
> +

> +  "#sound-dai-cells":
> +    const: 1

Move things with "#" below as much as possible.

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: "mclk"
> +

> +  mic-in-differential:
> +    description: the microphone is in differential mode.
> +    $ref: /schemas/types.yaml#/definitions/flag

This is part of a sub node now.

> +
> +required:

> +  - compatible

Add compatible "rockchip,rk817" to properties

> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +rk817: pmic@20 {

> +	compatible = "rockchip,rk817";

Without rockchip,rk817.yaml this example will generate notifications.

> +	reg = <0x20>;
> +	interrupt-parent = <&gpio0>;

> +	interrupts = <7 IRQ_TYPE_LEVEL_LOW>;

add include for IRQ_TYPE_LEVEL_LOW

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pmic_int>, <&i2s_8ch_mclk>;

> +	#sound-dai-cells = <0>;

Move things with "#" down below the list in possible.

> +	clocks = <&cru SCLK_I2S_8CH_OUT>;

add include for SCLK_I2S_8CH_OUT

> +	clock-names = "mclk";

----
Heiko's sort rules:

compatible
reg
interrupts
[alphabetical]
status [if needed]

----


> +

> +	........

remove

> +

> +	rk817_codec: codec {


Move to rk817.txt example.

> +			mic-in-differential;

> +			status = "okay";

Never use status in examples.

> +	};
> +

> +	........

remove

> +
> +};
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
