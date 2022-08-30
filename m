Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40DC8ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 09:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6x0xmqr7efq0uQUqyMGo7l8XWBooCzCRbxmpLTU4F8=; b=niBqnoJfmgXg8A
	D+52pjJ9CM2/TraXsh8PwUA9amdRdc52/YL6LgGihlon61egO7dWCf1lB9zbIYsg0wNs28MmX8wIF
	0m0koDEFG8iqXwg6SgFLCBbCMtyQxR9C2ztckJrs2TYvZ+bTfL5gB1X+mmvNRhkXy577/aS8fTNo9
	SByfJuCQyQ0xcQwV95lfUXGyGr0QgAQZ/FCLljt0P4DmLdcnhzlgvU5OfBU28W+A/r7DeT6NuZ27C
	yyRyK1n1YmaOno87+fhizzaBZxLvU+6OUCQcl8OE6Ub+3ZewxfiFzNq9ZADoZDrFjRR6u+DNWEhVf
	J354xTrDlH0/dTp8sPEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxVz-00FcWy-Ug; Tue, 30 Aug 2022 09:26:36 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxVS-00FcHI-H0
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 09:26:06 +0000
Received: by mail-lf1-x12d.google.com with SMTP id p7so3544810lfu.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 02:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Z86Y6lxNamKVhUvoDAYsCL5qC+ArzmuNwLTfX5YdhcU=;
        b=vClL7Wp2AjzkHeFjrfJbtXyOn+ZDyb5SrpxeEmYhond9rNlQ2z24kqshP5MygIMCRk
         /ClVAZzGx6FDuSRcgVNn/bpNT+IpsdCGd3ESzqyYEN1Bd9TpJYnR9ZkmpU2xwW5A0yrZ
         164q3HdSVSMmYRhipQLgVHI5oehWrEYliGivawRRuQeJr5bcvEIgVqcTIkA7HPszok9M
         xyln99RpfOpKI4QG1zsvkudjFto1qwmJn6kVWcTus572dvf6Z86EWepgV+36yg47Yaqg
         8HuUaB3VUT4vPoG/qShdSLOpN65NBsypNMsWLp9/B/5WmUqnBK0wH/4Wf39TrAGYTk5p
         JeIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Z86Y6lxNamKVhUvoDAYsCL5qC+ArzmuNwLTfX5YdhcU=;
        b=w2KyQUxkgcpvQWQm8CXAEFu4uj+lIUL++wPyqP5JeZ+9T8OWiuWBdGL6sLe0rtJgVQ
         OjfyTbweOuByqHPZD73UMuNuLXMy3sWwVTdeF9H8/3vV6/KgHsMEvQypX/eEWozpNdy8
         lDx5weYJsN5m8HPFXOIC8XiheMj5CSDsuoepQGXVQBRGF6uPcIHKbw4mUDXPajauHGtC
         7aiB4lAoAYC/benmUliS+38vbaXzPn9i/dlsStDTGVCMvbtFqYm642Ly6X/Qy87PSkm5
         m0kQKbBoftFX1l5O/saidZ+kVzWfK3L3aVGPtH5an+vgmw3coAc0J2RsVXF8v1b2PrT6
         fy6g==
X-Gm-Message-State: ACgBeo2X8FPE/o/wFyIWVQPBlGnME2V6h8/ukgpESktZ2mBk+D+poJ+R
	Z1UEL7VOKtL5oMUFaduaeQATXQ==
X-Google-Smtp-Source: AA6agR7754hHqSg2BjEUw4dFDyXcardLSAUs6v3visY5FZWemFipRh5r1I/ZkE8gUKcWC9rn4dKY+g==
X-Received: by 2002:ac2:5d68:0:b0:492:e4cb:b939 with SMTP id h8-20020ac25d68000000b00492e4cbb939mr6998002lft.340.1661851560814;
        Tue, 30 Aug 2022 02:26:00 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id o11-20020ac24c4b000000b00492dfcc0e58sm1554535lfk.53.2022.08.30.02.25.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:26:00 -0700 (PDT)
Message-ID: <1559ab88-8517-3637-3246-fa2d57999909@linaro.org>
Date: Tue, 30 Aug 2022 12:25:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 2/3] arm64: dts: rockchip: Add RK3399-T OPP table
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com
References: <20220830065119.120844-1-jagan@amarulasolutions.com>
 <20220830065119.120844-2-jagan@amarulasolutions.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830065119.120844-2-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_022602_658671_AEA815D8 
X-CRM114-Status: GOOD (  17.32  )
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

On 30/08/2022 09:51, Jagan Teki wrote:
> RK3399-T is down-clocked version of RK3399 SoC operated at 1.5GHz.
> 
> Add CPU operating points table for it.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - new patch
> 
>  .../arm64/boot/dts/rockchip/rk3399-t-opp.dtsi | 114 ++++++++++++++++++
>  1 file changed, 114 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> new file mode 100644
> index 000000000000..b41c765bd07b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-t-opp.dtsi
> @@ -0,0 +1,114 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2022 Radxa Limited
> + */
> +
> +/ {
> +	cluster0_opp: opp-table0 {

Test your DTS.

Node name: opp-table-0


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
