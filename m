Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59A5AC46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 23:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2hvgGEocsrCAPU9W9uM0/ETNAjFlrYrLG8W5bPMh1I=; b=kK3Eqbpse3GPZG
	pWzD+AFbjH+MHybhbNrETubumHFAfjhOnkndd+CwiEX0hOZXeKvWhK3PfvmAbkUAo6y+5IthWFydM
	x53Nn48I16yiSxbyc1XLolLtayUJsKUx17h8/y/uYxg+0dAP923MffzjsooIL4xjeipm2CcGeysjU
	9vFde0d0HsIN4G5r8VJhEyfmxEK6KTP6FMYv23Db1aAHNS5Dk5zCSXbR0WeYwg+Eczs19c9Y8mR/Q
	K/jZz0CEU+E63EZPru2j+b2TjGBkmY/SJtKWK1MJUrWPYa0mzMIszP44ni+d2lIFg9oLrnT3kGngZ
	o5OV+Glo+N9WyM3OIfnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUx7a-00000000q8v-1hjc;
	Tue, 30 Jan 2024 23:02:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUx7X-00000000q7W-2V6p;
	Tue, 30 Jan 2024 23:02:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0525161177;
	Tue, 30 Jan 2024 23:02:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D7FAC433F1;
	Tue, 30 Jan 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706655742;
	bh=Q/5sVxq0UBbAMtH5axjn8/3c/o19Bpt/DiCP+LgTKhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bFFzWkI23nEDrljXibfFpeh//ZhwiOaUzuVPkBQ2abO2/Y9SHQejdGt/YabotelJQ
	 zi9/4pjDB+6508q+ONxNgxvAlj3y9j54UOIxYBvV6+sdgZIvDTqEqBQbgGBf0ly5zC
	 ZLHiVvyOR2kz+RkZ2Y0XvD37h3WAEkdrxwH0Tgy4pGMD2XmUs4ev4Oje1ZkeMG58yz
	 XL9n6vtKfCoTsoFTpvUdpkS2sA/oASkFLEpiBZvbgFwrLFGraThwDpZ8t/ihP0ZXrZ
	 Guwib0fCCB/9i5WEUXw+doqTL8urbagZHfBMV+dgNE7fRoL5Csn3hprI0zPV39sdDr
	 FRKUgu27RaEoA==
Date: Tue, 30 Jan 2024 17:02:20 -0600
From: Rob Herring <robh@kernel.org>
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH v5 3/6] dt-bindings: serial: add binding for rs485
 rx-enable state when rs485 is disabled
Message-ID: <20240130230220.GA2569797-robh@kernel.org>
References: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
 <20240126-dev-rx-enable-v5-3-5d934eda05ca@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240126-dev-rx-enable-v5-3-5d934eda05ca@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_150223_698544_99E5B0AC 
X-CRM114-Status: GOOD (  17.93  )
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

On Fri, Jan 26, 2024 at 06:27:44PM +0100, Farouk Bouabid wrote:
> RS485 can have a receiver-enable gpio (rx-enable-gpios). When rs485 is

s/gpio/GPIO/

> enabled, this gpio, if provided, must be driven active while receiving.
> However when RS485 is disabled this gpio should not have an undefined
> state. In that case, as DE and RE pins can be connected both to this gpio,
> if its state is not properly defined, can cause unexpected transceiver
> behavior.
> This binding depend on rx-enable-gpios to be implemented.

Sounds like a constraint:

dependencies:
  rs485-rx-enable-inactive-when-rs485-disabled: [ rx-enable-gpios ]

> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
>  Documentation/devicetree/bindings/serial/rs485.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/rs485.yaml b/Documentation/devicetree/bindings/serial/rs485.yaml
> index b64577036b5c..4c79dfaaf460 100644
> --- a/Documentation/devicetree/bindings/serial/rs485.yaml
> +++ b/Documentation/devicetree/bindings/serial/rs485.yaml
> @@ -55,6 +55,11 @@ properties:
>      description: GPIO to handle a separate RS485 receive enable signal
>      maxItems: 1
>  
> +  rs485-rx-enable-inactive-when-rs485-disabled:

For something a bit shorter, perhaps: rs485-rx-enable-inactive-on-disable

> +    description: rx-enable GPIO is not active when RS485 is disabled. If missing, active-state
> +      is assumed.
> +    $ref: /schemas/types.yaml#/definitions/flag
> +
>    rs485-term-gpios:
>      description: GPIO pin to enable RS485 bus termination.
>      maxItems: 1
> 
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
