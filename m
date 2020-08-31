Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2206C433E2
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 11:49:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9184B20866
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 11:49:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ut/o7t0V";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Gj8ywQtn"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9184B20866
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eVbKqnQb1ZqMhBntPRhwCz+uMFraEgzBxsCNYmpD4Ds=; b=Ut/o7t0VpBbOBwSrG/bOR8nzM
	XjUPG/2uHC+xwdlpOcEPw/AUWbnCcnAwUPRMdzSUfEflWLIHdmYwvHlIVfJlD98E+VwXUFP81bmjd
	7Nj7/7LV+ZZoekrSxBzwGCW0B10IvGXnKNtSiaqZVtv1DJ3Neu9i11lkKCvRAE8gd7ro81nQIAV1Z
	LrJ1E3ssVCyJW3c+ENa5mwevMLZ+jkJztHqQhF1E+2OGauy6AqlLu4viJDBKDeKKO8RwJz52emdwk
	y3yelNlUI9bC1bKuT9juDcnaRKFZn+zrDceJwPVb/6FeBy2jNCpUAYbZ0uT8Ctv54/D08+5chs8/3
	BlI2PEO5Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCiJp-0001Bz-D6; Mon, 31 Aug 2020 11:49:49 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCiJm-0001BK-Ej; Mon, 31 Aug 2020 11:49:47 +0000
Received: by mail-ed1-x544.google.com with SMTP id l23so5107502edv.11;
 Mon, 31 Aug 2020 04:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=i3tk+pyCCALzmGiIIr14GTW97MYgxFsJAQqrrTnBu9Y=;
 b=Gj8ywQtnXqY1ivL8gvWTmcbAXVsPPxDJB1dMkPZE3GVG4SOwLd7lBu5p5E1hbG0Epp
 O3/yVRZqvARRT8qOSjWIvJQHvd4CS/WhstfOVyl7SsA3IrihpCRqBSj8QnL9wwzxJaWH
 02eIDL3/A1WRfcWMP1aodVBkpfMLkOFPJdvOcON7lAN+yOLWuJs3I+fAZivwcfNA+3vc
 6MarcedCWHn+OEzRYL3T8/vo6bBLuI6ZNuFt0T1xkdEcftKD2MkwL8pu8hBJHhm7wfhn
 eEIo4hBzy1Iz6egnNynk7kDAtJFeq/+MBi2ooLR8wf72cvDFdyF+ucQVvPJkInYDbUgq
 fTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=i3tk+pyCCALzmGiIIr14GTW97MYgxFsJAQqrrTnBu9Y=;
 b=fnBsVrPWBu49W+/Z+iGY5o4lvAS/2pCWMt+TwqV84E6UuIO71uZnRBeocdJR91uk6g
 XNVhy+9gL1l5KZKWKDna1twUPFirrz/h+jrJG3U4DtXWY+ZZpg7+/AaqKhd6Ir0tPlMq
 tZdCXdlVG1L8FhJRVjlY2kMTrhB6SBn2qjR3qGQmzoALqmCrWCsObdUDlSfELpsRRnP6
 0okVRKoigEdvhGc3UxpPJ+lxd+fOiDbkb+cwgtfYE0hM0bTm5Sn42/DQC1ajBoz2jCSe
 kxrVumCafI8Dsm2Z1qrluV5K7IMNC8/HkzWimYQhXP8BVf2rjP5b0tU78vqOMIh05z6P
 rrGg==
X-Gm-Message-State: AOAM532nmVCr/En7dl5WFG7IPz/akdvUnt8k71XzgRW/maqniVtGwMia
 lejX6mm3LyD5msPc/CItCCk=
X-Google-Smtp-Source: ABdhPJzCzjISaXtxp0dKAAl1ICyA6IktfHJZxUfHHAXCafvG8aEkZ7bxWyUz7wpXVmkVAfgeDPMR3g==
X-Received: by 2002:a50:fa94:: with SMTP id w20mr922495edr.82.1598874584406;
 Mon, 31 Aug 2020 04:49:44 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 cf7sm4972592edb.78.2020.08.31.04.49.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Aug 2020 04:49:43 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: enable rk3328-rock64 usb3 nodes
To: lindsey.stanpoor@gmail.com, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20200826170623.15469-1-travelvia@airmail.cc>
 <20200826171230.17041-1-lindsey.stanpoor@gmail.com>
 <20200826171230.17041-2-lindsey.stanpoor@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <9751e24e-1fe2-33ab-4fa5-019af9ea7746@gmail.com>
Date: Mon, 31 Aug 2020 13:49:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200826171230.17041-2-lindsey.stanpoor@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200831_074946_558358_C68F67CF 
X-CRM114-Status: GOOD (  18.51  )
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
Cc: gregkh@linuxfoundation.org, robh+dt@kernel.org, heiko@sntech.de,
 balbi@kernel.org, cnemo@tutanota.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Cameron,

Increase the version number for each new patch serie.

git format-patch -v4 -4 HEAD

In a previous comment I gave a sort example.
However, this patch serie is about usb3, so only touch the things
related to usb3 and leave the &uart2 node (legacy ;) ) untouched.

Improve the way in which your patches are send.

Your previous serie was incomplete.
Submit all patches with the same news server (Gmail for example) that
can handle plain text, because else you get 2 different Message-Ids:
<20200826171230.17041-2-lindsey.stanpoor@gmail.com>
<20200826170623.15469-2-travelvia@airmail.cc>

git send-email --suppress-cc all --annotate --to <..> --cc <..> <patch1
patch2>

Not sure how robh filters patches, but your serie 'must' show up in the
link below or else wait for an eternity to get a ack-by.

https://patchwork.ozlabs.org/project/devicetree-bindings/list/


On 8/26/20 7:12 PM, lindsey.stanpoor@gmail.com wrote:
> From: Cameron Nemo <cnemo@tutanota.com>
> 
> Enable USB3 nodes for the rk3328-based PINE Rock64 board.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 86cfb5c50a94..82c27eab6a52 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -363,10 +363,6 @@ &tsadc {
>  	status = "okay";
>  };
>  

> -&uart2 {
> -	status = "okay";
> -};
> -

>  &u2phy {
>  	status = "okay";
>  
> @@ -379,11 +375,24 @@ u2phy_otg: otg-port {
>  	};
>  };
>  

> +&uart2 {
> +	status = "okay";
> +};
> +

Don't touch/change.

>  &usb20_otg {
>  	dr_mode = "host";
>  	status = "okay";
>  };
>  
> +&usbdrd3 {
> +	status = "okay";
> +};
> +
> +&usbdrd_dwc3 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
