Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD47BC3DA6D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 12:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GeMNIjFLq05teG0lCGSqg09GuXuLPnVwp9q8y0lO87M=; b=vFynYh1ipD/qbn
	kDYQCXKj8JXyUvj8I+GcPZCY2jApwh1UTpJ3RHV/iRKMHUwHQzs0EQ+YPOZHdUiHUHd6Xoxfck7y5
	FkslZSCPlq0I3czA6FLDhxmzbbStPNz4UcdcN63FTvm85OEMCVGzxS5f5Vx/Cinsb9M502jvUuGKt
	b9sBf629AyWboUeMrHDc7t1fwI2RBQrMAMzZHy+BZiVl6STyZTlP9730jFFN66eLp5rZLOPjK1svR
	h3HQWcDLlSc+Av6OUBxd2WZsDNV/fZ6vIRW3PaCfdFFKtlXIRHyS6K9Ydy/foyKDk1fmmooWsuRSD
	BiuBKDCVAz6gEmpGWMvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHMJB-0000000Ctw2-3BBa;
	Tue, 20 May 2025 12:43:01 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHMJ9-0000000Ctux-1npL
	for linux-rockchip@lists.infradead.org;
	Tue, 20 May 2025 12:43:00 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-e694601f624so4083372276.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 May 2025 05:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747744978; x=1748349778; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=88lOLN3//BdORRDyk/6LjlOBy9fkXDogVmGs1sgPhyI=;
        b=uJGVsVu5beKG+6hSJ5wwykWfPXyDr3sQ/ZGUNqw4LdiehiRWJM1i05aZ4SgnpphSAo
         i63ry3CuKjnNGAlsElf3MYLLZvIdLxl3Bb3gQTYkKShZ6vdGE+VXGDepEVyIy2Na47W/
         c9u8iXZVuBXJxnO4Iw3Lr/A9bRlkNeuQA4toS42+PEfztAV3Hh4lmsKx/P0PaS/jVKv9
         GM93UTSCZfp4HXD+DDFbEKxR05/RrBByyu3YabHIjCdI/gwDrSu/umbw8+QLRSfIaSGY
         ck7hZkGCVwW+Mhr86xVGW9Ou4JeI+M3oM3DrciNUOGPkiPkkZc5AimSPAc5w7H4CdK17
         fXhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747744978; x=1748349778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=88lOLN3//BdORRDyk/6LjlOBy9fkXDogVmGs1sgPhyI=;
        b=EN/ZV4S9IPmb+TyWjorjy/Ko6dvZ7o9KAkleZyI3hnc4B0CqOidXNVr4ixHdHShc8Z
         Vc+tXz82qlqT6uI8c9UXReWxOiDwHedC8mD8QAsN72SO1wQ4gmMtUPcAFk3eRbRPE1nb
         mSyVSNDz1QHMfiQ6P/2uzyhKhIAGuSyS2S6BR+N2J3HeNI2nu7kVgAaeVwqYmM1Qkhq5
         ss8AT3lEJNaYi2GzmlSg+xNpFE0ekEvp3tZ4QxOhGOslhIkGsgNFdVkECAEBEGvRcvzG
         oisLvxWDKI2H71Hx5r4DjvHd9Elsuzd0mP7F1Ie64EGbTpTDaeh6/H7z7DvFVWG1vrZt
         jaBA==
X-Forwarded-Encrypted: i=1; AJvYcCWCArSO1NfCpCUc9vJdxxnXGeAzXllHf8fCswUOvUbEmw6y1py7hHn/nSWJxgO03y+9VfrMmINJ47sHHmbatg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwC9xye4CAiKsVrnZem4y4gAAtwaWoDj4UEtFaj45bWpUyLR98L
	oMlBfCzKSenIgXZUaJhIKfsxrrJXZWkTi0VQfR/87hYLhaW1c5/cBoIua+5trjhrIpbMYVCO1rd
	u1EAfkgL31uLV+YMzrFMzpfmdqVRqTbyp09fi+FVqlQ==
X-Gm-Gg: ASbGncuxSCsEajUbirPADBL75ob2UBs63TPEpXKlHWCvFsWEHAvPs6CtelUBenoi2AU
	Cis4r5muo4QFh79XQwP1riIXYDP0NkbjriqOfAOVus5O3N2eRKcQLswnsUuhrGVW8p9qkW0Xo3T
	4h44wV4SUvPk125+rSG5eycXQCVpfbmevLQg==
X-Google-Smtp-Source: AGHT+IGhT+v8r+0GZsiYhs7CHph95cb2P8MRGP6RGC8fZ7dFYUwqCE9+mfUsNw7SyUvETHMbFtvpOAcTqK/Ng1hl+qE=
X-Received: by 2002:a05:6902:1201:b0:e79:774:866f with SMTP id
 3f1490d57ef6-e7b69e80915mr20083103276.17.1747744978059; Tue, 20 May 2025
 05:42:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250518220707.669515-1-jonas@kwiboo.se> <20250518220707.669515-6-jonas@kwiboo.se>
In-Reply-To: <20250518220707.669515-6-jonas@kwiboo.se>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 May 2025 14:42:20 +0200
X-Gm-Features: AX0GCFs3Un2EF18YwTSrDKI84LtGeBLBa79SYyXbjLKaJiwIZzX41KzumIQh4bM
Message-ID: <CAPDyKFqu-ox90dEnK8L0C8CqXJDsvgGwH00__nfQcOYu8hNM9Q@mail.gmail.com>
Subject: Re: [PATCH 5/9] dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a power-domain
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>, 
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_054259_471402_C9C5C1B0 
X-CRM114-Status: GOOD (  14.74  )
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

On Mon, 19 May 2025 at 00:07, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> The commit 7e856617a1f3 ("dt-bindings: mmc: Add support for rk3576
> eMMC") limited use of power-domains to Rockchip RK3576.
>
> Remove the power-domains: false to allow use of power-domains with more
> controllers, e.g. with SDHCI on Rockchip RK3528.
>
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 5fb347167004..f882219a0a26 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -120,10 +120,6 @@ allOf:
>        required:
>          - power-domains
>
> -    else:
> -      properties:
> -        power-domains: false
> -
>  unevaluatedProperties: false
>
>  examples:
> --
> 2.49.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
