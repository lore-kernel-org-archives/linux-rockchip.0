Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24286C5DF87
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 11:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4GnMdWGBoNkrIVpWRjdICgzzH85SBDJwgpybQeQfUc=; b=UHJRAr5yLSaejz
	xrgDx7vBsI5mrG2PCaCpMINkz0AsV55YYwgGRACZs5/zJRS8hAkNnes3HF6xNTY6qXMBi3pFeOrFL
	DLnXA5rg8MDtC1/0w+ZnfXaemE7YqWxMh2qcDieu9IT4BvB7RGIpT0y3VLKROKBkdkSuuPomU83I4
	gug+xJXhSPDHPPHGyctmn99Ri6+XoN/ePLnoiZJM8GVfWAH41ZDSlPMCPhMDEz180GvWSzmRP6vQ9
	iK4H9TxJ3DQZY266S2KiYYZ2EFQk4cNWc/4lSoM3+NUzLUT1FzoTOKrZM8/3gDGwnVlTR9GTG7O57
	29639tdR3w1SlkO+Yuyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1F2-0000000BTnq-0Ifw;
	Thu, 20 Aug 2026 11:47:28 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1Ez-0000000BTme-2R8A
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 11:47:27 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c214321dc32so400294866b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 04:47:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787226441; cv=none;
        d=google.com; s=arc-20260327;
        b=ZZl/oJ8X4X/NMLc2dLy2M+PJq1wfeS4F5WlTx7vYRHjU70506ZT3Xjqwk80dMsYAi1
         58Y80Kk6tJLEdKII5dTdu5e0I2b5ZyEbuYHGAw/11VfDN/m9pQTCSlse4NzwjegCXOJ/
         Am2ZMyIJ1ekOjoQBrWbkfaayK/iS+11Su9hdmRbkSFHRg/1qLhcuHP06dDUY9lt1GRm9
         lk70aeN2GzeEJwt86l0pDsOQu5RgzE/sznr3TXDmGBr72g55IyforDImeNK3hZoATbxj
         xC4vRgnBvaVBACHEb6FwQOa1utD3XB5z9bcgdmGAwkph+N5WzLZUzvlay30G0y67JXki
         boTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bXKBm3AfG3en1bXUPpD4OIjt8IDcThCjJyOOTe6eAbU=;
        fh=LA/XrBAHCAWcaQRHP/uehHYiUJ9qdItpM0fxvF5yEtw=;
        b=f1z4Sp7pftsMBCUB/7fiWumy8qz/Hp/35OkI5lTYcC2pwfCo2eE9BIfne369GF0csk
         HbrEl/vvrZLfpwm9RAqy3dwWd3QCUQS3RI559kiL+SulPEenR2U5c2MD2HqORSnA2xYm
         Unajo1pu9XsiZR+iHTE6mQp2Sdd0iF2NciE06dJY1emR7dQ6hJqm+ZiemmiBTQObbABi
         nuhhWMKuHAfRrT6aOUr4tbQhIjGis7txuaatRdTC2mh0dqQI54ZqCEcmbHhdatWeZNdd
         5Jt1swfBf8gZgNB4OLG+as0AJQTNI9Y/+qJUXcY0JrkePT9mh+N+wLHG4wy5iqUldHe6
         mlOg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1787226441; x=1787831241; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bXKBm3AfG3en1bXUPpD4OIjt8IDcThCjJyOOTe6eAbU=;
        b=YJYc+iMOUOjVAr2UDoLMjNih+SQD151AtjdTGbuXuIsOQjLaQNaUgPn2OROW85s8lx
         B/wRX+PV9e0HmV0lFD2Zzwezp2o5djAyVhZB81rRR82jwMfLBRVaJuWAFeHkMqeudL0M
         o8iQTZNkc4Z+PYptL8484ZsZHKqSbIUDvKw34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787226441; x=1787831241;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=bXKBm3AfG3en1bXUPpD4OIjt8IDcThCjJyOOTe6eAbU=;
        b=UIA25xvd4s8Aeqf7hw+55tG3o8u7MpdFLrI0yrwVEdgGvaAPLxqVB29mpM8Mg00shj
         lozSDW/klSQgC5QIcLAMePndrHpjZSKj65BBhb5M3/pwAomr/MPlHWbsG2o5z/lExA4k
         atSO8/J8LF+l0lMokSFsdd7SgmrRh3vMdt0qStQMYqVvMf153bZOpLzlPY07gzyM9RsO
         dG+0CFQtwgqwZcn2OlgNbF/xk3ohh+CuzGodbdYqdRgKLgMy2EBXG0vyDE0EMjxHScVL
         cD01VXXs26KJJCVRHUD8JzaRSbkWgmg3cn6fVEJVAx16FqUSPPFLApLWXzmoER5z90nt
         7DAg==
X-Gm-Message-State: AOJu0YwdOVrSLhB2BBaS2B8r/HKIY5kXWbTD88SDsL5DTTCOJ9UiyBcf
	PJAboVvHJvSbf1nslucAPPvk5gJRSdhmZYN/kZ4IHGkVJ31UeIoyqdMvF+gL2HBPjX95fZpaNlb
	etGU+mgorHD+bflvYUxbKkpP+doUbfxCuagLLmFLWsq9jVFsn6Yl0gQ==
X-Gm-Gg: AR+sD10NMWAd3moFKf3F3e95MTIgaVgrmOozNmrMVAY5x6u2nKBfjpQBCnCFKXnYlvo
	vgJnbsK0RFkGFWn9HaBXAA8OPaBazPzZZSIPdN7Gy0wxcMSmamlEf1Vw5JVgRV11/LDhOQnLAEz
	eE8SuVCkfObqlB1OMx+hgVBJ/c0y8TTcXx5LImhJQ8qu6e1zQt0QW9maZgEkcFzbxsmTxhudJfk
	7MdlUtzwvHjW/C+sEgFZdXfwBVDv/34TPJNpx2apghuJ6lizl/1TltXqDR4aJwxKFIzkw6xhstQ
	dToCy0K9MZmguX0VcDjCMLg3qJ502+nqZTf77U4aqJQ=
X-Received: by 2002:a17:906:99cd:b0:c21:74ed:4608 with SMTP id
 a640c23a62f3a-c23f9750de3mr814724566b.10.1787226441540; Thu, 20 Aug 2026
 04:47:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260810121121.210040-1-vlad@zlab.su> <20260810121121.210040-24-vlad@zlab.su>
In-Reply-To: <20260810121121.210040-24-vlad@zlab.su>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 20 Aug 2026 05:47:09 -0600
X-Gm-Features: AcwNN1UCnC12nuoA1x1viqpRcNtcnZpIWhvuLlHFbx5J3DwZqfYkTadrWwnjlvQ
Message-ID: <CAFLszTiExzcYKBpe5h2SorR5OJEJgRx9x1bSCdwTtw4mN0Fcfw@mail.gmail.com>
Subject: Re: [PATCH 23/25] ARM: dts: rockchip: add arm,cpu-registers-not-fw-configured
 to RV1106 timer node
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_044725_629579_A1F610DC 
X-CRM114-Status: GOOD (  19.84  )
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

Hi Vladislav,

On Mon, 10 Aug 2026 at 06:16, Vladislav Leonov <vlad@zlab.su> wrote:
>
> The firmware on RV1106 does not initialize CNTVOFF, so the virtual
> counter may have a bogus offset relative to the physical one.
>
> Add the arm,cpu-registers-not-fw-configured property to the arch timer
> node so the kernel does not trust firmware-configured timer registers
> and uses the physical timer instead of the virtual one.
>
> Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> ---
>
>  arch/arm/boot/dts/rockchip/rv1106.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/rockchip/rv1106.dtsi
> index b31cdb1c19d4..12e87d25c72b 100644
> --- a/arch/arm/boot/dts/rockchip/rv1106.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
> @@ -57,6 +57,7 @@ timer {
>                 clock-frequency = <24000000>;
>                 interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>,
>                              <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
> +               arm,cpu-registers-not-fw-configured;
>         };
>
>         xin24m: oscillator {
> --
> 2.47.3
>

I know I am using different hardware from you, but in case it is
useful, I just wanted to mention that my boot log says "cp15 timer
running at 24.00MHz (sec-phys)" both with and without this patch, and
userspace time seems unchanged either way. I am using a board powered
by USB and that power is removed on each boot.

I do have a Luckfox Pico Pi now and I will make time soon to add it to
my lab (lab.deinde.dev).

Regards,
Simon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
