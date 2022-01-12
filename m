Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FCCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jan 2022 02:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iNbSqa6y+g/0Ass1gdhrCSkJ2UFAqMKOV/92CWT2C4=; b=XepQ0ekyNRdOoB
	zwuawUxKgr/T9L6pNSeo+SIQ7CF/l18X3wotk8+bO4EJBUfWzc7R9gNjXBYnLS4+mK7IKr1jQGgm/
	M4E8DbMLK09rzBSf1V68/BNVWT1PQRPFtT+sG+ouv9SF0VczFukw2WB4shfIWKcBeFglik+W2u5so
	RqC1HtxpTSsndIY+t0/IRm/KYCtk6SLk4qBNkfgubnxVm6A3gIe10xzu5YFa/C9ME97ftiICILl6p
	07MdRBtuaq5bkYs8ldTgPiVOSB3QxfE1B2ymHIEKK4B0nvxM7nvPFwiffrlteg8y4RvmwkVhwbRiy
	RPdNgBuvzNJeQTFGQB4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7Szt-000m7t-Eq; Wed, 12 Jan 2022 02:04:21 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7Szf-000m47-JL; Wed, 12 Jan 2022 02:04:08 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 r7-20020a05683001c700b005906f5b0969so932634ota.5; 
 Tue, 11 Jan 2022 18:04:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=732LfXDboSsjn+njEaotROfdKRLLZkHsbM9vidIAV2s=;
 b=pHuFuNRDPnxkzAq7r+6OW1tRzQW3i2b2dV/i1GVZO5ogBLBaBs2dSM1lRUcKmp0b/W
 oIiVoNt352QYsFGinw5jrSa3KLesIpr/jmGdSo0KjQ1FJSxPBOv0IbE87U2QD8lauOw3
 yT7kVDOpjsnPBQgUk7yozPtzNT6LwlWoBO0BFzm8iEqby2UDN3q2ewauEZzmx42MITPU
 F6ziiYMKBqSOFNCKTFyV36M/ZXT1J0KLfKmuxtP//uWgYjjOV7mqi0RixE3+xBfeR7vX
 RMy/nqv3xmHEtLjT67otw0g0VLdoKH6vX0pSIvLhsQaSW+8Eo97qHZcoWpbhDgjAgOzT
 yUMQ==
X-Gm-Message-State: AOAM531WkHdTGcyt78ZQi1MLFdIowjuLsTZzk/MfuSVm4wBmxKz+LHaE
 KTDZFS9WYKtiRxVg7TZl0w==
X-Google-Smtp-Source: ABdhPJwY9dDpl1RJ6XKuFyePGvXumDgTUK6UNAgVzBPFfb/mWwiqA6knmsV9VO0FPVh3Jm7bTxlfAw==
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr5231750oth.241.1641953045635; 
 Tue, 11 Jan 2022 18:04:05 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e69sm111160ote.1.2022.01.11.18.04.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 18:04:05 -0800 (PST)
Received: (nullmailer pid 3919030 invoked by uid 1000);
 Wed, 12 Jan 2022 02:04:04 -0000
Date: Tue, 11 Jan 2022 20:04:04 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-pm@vger.kernel.org, Derek Basehore <dbasehore@chromium.org>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 04/10] dt-bindings: devfreq: rk3399_dmc: Add more
 disable-freq properties
Message-ID: <Yd43FL2JihCdn8Ta@robh.at.kernel.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
 <20220107155215.4.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220107155215.4.I382d4de737198ea52deb118c9bdc4d93d76e009e@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_180407_665915_27563BE9 
X-CRM114-Status: GOOD (  21.54  )
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

On Fri, Jan 07, 2022 at 03:53:14PM -0800, Brian Norris wrote:
> DDR DVFS tuning has found that several power-saving features don't have
> good tradeoffs at higher frequencies -- at higher frequencies, we'll see
> glitches or other errors. Provide tuning controls so these can be
> disabled at higher OPPs, and left active only at the lower ones.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> index 2c871c57fd97..357d07c5a3df 100644
> --- a/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml
> @@ -271,6 +271,43 @@ properties:
>        When the DRAM type is LPDDR4, this parameter defines the PHY side ODT
>        strength. Default value is 60.
>  
> +  rockchip,pd_idle_dis_freq:

s/_/-/

on all the new properties.

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the power-down idle disable frequency in Hz. When the DDR
> +      frequency is greater than pd_idle_dis_freq, power-down idle is disabled.
> +      See also rockchip,pd_idle.
> +
> +  rockchip,sr_idle_dis_freq:

'-hz' suffix. Let's not repeat the same problem.


> +    $ref: /schemas/types.yaml#/definitions/uint32

And then the type can be dropped.

> +    description:
> +      Defines the self-refresh idle disable frequency in Hz. When the DDR
> +      frequency is greater than sr_idle_dis_freq, self-refresh idle is
> +      disabled. See also rockchip,sr_idle.
> +
> +  rockchip,sr_mc_gate_idle_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the self-refresh and memory-controller clock gating disable
> +      frequency in Hz. When the DDR frequency is greater than
> +      sr_mc_gate_idle_dis_freq, the clock will not be gated when idle. See also
> +      rockchip,sr_mc_gate_idle.
> +
> +  rockchip,srpd_lite_idle_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the self-refresh power down idle disable frequency in Hz. When
> +      the DDR frequency is greater than srpd_lite_idle_dis_freq, memory will
> +      not be placed into self-refresh power down mode when idle. See also
> +      rockchip,srpd_lite_idle.
> +
> +  rockchip,standby_idle_dis_freq:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Defines the standby idle disable frequency in Hz. When the DDR frequency
> +      is greater than standby_idle_dis_freq, standby idle is disabled. See also
> +      rockchip,standby_idle.
> +
>  additionalProperties: false
>  
>  examples:
> @@ -294,4 +331,9 @@ examples:
>        rockchip,ddr3_odt_dis_freq = <333000000>;
>        rockchip,lpddr3_odt_dis_freq = <333000000>;
>        rockchip,lpddr4_odt_dis_freq = <333000000>;
> +      rockchip,pd_idle_dis_freq = <1000000000>;
> +      rockchip,sr_idle_dis_freq = <1000000000>;
> +      rockchip,sr_mc_gate_idle_dis_freq = <1000000000>;
> +      rockchip,srpd_lite_idle_dis_freq = <0>;
> +      rockchip,standby_idle_dis_freq = <928000000>;
>      };
> -- 
> 2.34.1.575.g55b058a8bb-goog
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
