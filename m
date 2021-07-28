Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4578FC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:14:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F327760F91
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 15:14:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F327760F91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MzjNwvyimk4J8wTJL/TWuX1m1IidWRQ4mLCfnAqQD1g=; b=vwCKkRJVm4FkdLaZi18IZPQHI8
	MP9IvMaAmagmq3k7eSgDiIR+DFKEB0pUjm35xjgXMJPrWbyA+2Z7leBc40OdhHb0V1F/DZL1k3YWR
	ZgbFlsVELCvpzWZjFcF+t423fAkXmFmrYpFmpPKyRVUEpEXe9jl+o0OeYAwgiikROO2Uysht84diT
	xwK6MasaNv8GiQhYLsQukcnLcQXmSPLfmTL0aHubGkMrsU5kjoIAHEPSqr75PdstVC7tTVP03n971
	WLF6BfTN0PbX690K3ezMoJ+3fU5NfTnkREkJD7LVsnIY5770FIllke+CXkiz3vsv9k9F9pZr7NOUq
	A3VrA9Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8lG2-001ECd-Qq; Wed, 28 Jul 2021 15:14:06 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8lFz-001EAp-Uj; Wed, 28 Jul 2021 15:14:05 +0000
Received: by mail-ed1-x52d.google.com with SMTP id x90so3694905ede.8;
 Wed, 28 Jul 2021 08:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cv7Srx2vdGC8p5AayhAc1x36FU3CBrODDMXJnHccCXs=;
 b=BAQ14WaPG7i/wSxrFcSXycBXooHnTQa/gjTJk02yB44V6O6ikoHTL053m5pYmog1Ya
 cBfejhMflBDCitSugOOkpmERUovXnaJfDEssgqOYkqyJ8Lz+zGDLY5FKw+hsUn6WKFJ6
 fusYJYoqBlju4c/Ap8bHxgPWhetKX/E+ALuYAnYzQWPt/0gdW8bD/TJWBnGgSegxpcak
 4sT3omFomFhIBffRspi/Ll4NWtN0XM2n6rkk5vwkf4wfdymBUrZjIC3zzVT0PqphCp7B
 bSCuFMPzT/Qy7chhMcIdWz5akLZwLI87MKwhXXazCMRs2EnWS+MttTqlv6bUkLsYqWSq
 FaGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cv7Srx2vdGC8p5AayhAc1x36FU3CBrODDMXJnHccCXs=;
 b=HAxV/0ioSSUiE30nfONN6s3aM+R0DGIUDhkNrWc2kY0i0IWdG81OI1K5RYobE3d1Hl
 WfCZAtBmt4zVBSQpEQ1sr1NtuhiNzo3IN80jiaJ73bAvb6z1Ujo68ZI7h8wsSivrb1Lt
 oCs0FWpAkx4yMf5gpGGvaKCZjw3W+mQcX9KyE1oP1M8qAYBsMZpB00QftC3WSZTeZvXC
 39oaOb595P5MJmsM1KRpNc+CYluvgrteQoOB02HDSd6vg4tEPUyhVIe2y/9VmGYTaEcy
 uEfDzynRadIMenV0XfePrZq34hUpaqoV+mRb5kALoI13NG/q+CbZzapozC3nOsgieKYa
 PBKA==
X-Gm-Message-State: AOAM533lpSzLeGRKyrrEAdlYD8zbMSHbE9se4+6lQOa85hMqOfHeA3tI
 WaU9BqZW1KyJvbXVFpuUUOCy1m1vRDY=
X-Google-Smtp-Source: ABdhPJzOKrXYtXnhEPbZymJ13hNwMm1ajsOCyGGeskMiqviw4wWP2s/b6Ev4HpY4ZUWrcb7xKFZP2w==
X-Received: by 2002:a50:da0e:: with SMTP id z14mr359969edj.73.1627485242029;
 Wed, 28 Jul 2021 08:14:02 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 b13sm20385ede.49.2021.07.28.08.14.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Jul 2021 08:14:01 -0700 (PDT)
Subject: Re: [RFC PATCH 2/9] dt-bindings: phy: phy-rockchip-inno-usb2: add
 rk3568 documentation
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20210728122606.697619-1-pgwipeout@gmail.com>
 <20210728122606.697619-3-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c7ea6f09-bed0-15d2-1124-44cf98898538@gmail.com>
Date: Wed, 28 Jul 2021 17:14:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210728122606.697619-3-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_081404_062726_ED801E42 
X-CRM114-Status: GOOD (  18.33  )
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

Hi Peter,

Some comments. Have a look if it's useful.

On 7/28/21 2:25 PM, Peter Geis wrote:
> The rk3568 usb2phy node is a standalone node with a single muxed
> interrupt.
> Add documentation for it to phy-rockchip-inno-usb2.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml   | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> index 5bebd86bf8b6..f16fea5cad1c 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> @@ -18,6 +18,7 @@ properties:
>        - rockchip,rk3328-usb2phy
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
> +      - rockchip,rk3568-usb2phy
>        - rockchip,rv1108-usb2phy
>  
>    reg:
> @@ -50,6 +51,9 @@ properties:
>      description:
>        Phandle to the extcon device providing the cable state for the otg phy.
>  

> +  interrupts:

> +    description: Muxed interrupt for both ports

My spelling checker suggest: Mixed. Don't know what's correct...

> +

For rk3568 only.
Could you test/use something like this?

if:
  properties:
    compatible:
      contains:
        const: rockchip,rk3568-usb2phy

then:
  properties:
    interrupts:
      maxItems: 1

  required:
       - interrupts

>    rockchip,usbgrf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> @@ -78,8 +82,6 @@ properties:
>  

>      required:
>        - "#phy-cells"
> -      - interrupts
> -      - interrupt-names

These are still required for other Rockchip SoCs.
Could you test/use something like this?

      if:
        properties:
          compatible:
            contains:
              const: rockchip,rk3568-usb2phy

      else:
        required:
          - interrupts
          - interrupt-names

>  
>    otg-port:
>      type: object
> @@ -109,8 +111,6 @@ properties:
>  

>      required:
>        - "#phy-cells"
> -      - interrupts
> -      - interrupt-names

dito

>  
>  required:
>    - compatible
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
