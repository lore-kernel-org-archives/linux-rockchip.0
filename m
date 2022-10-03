Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACDFFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Oct 2022 16:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM0p17KzgUPCrUhs3G3hFneLHWOZaqqH3GSoYjX5nqw=; b=Tk3Ykviqi+CFbR
	NoTOVRIKad5qzf7c2Um0L0CJP8CRGl4PrrwWRlQcvSjio8aYk2IbCKJjdPEUmBHKeg5hG7NSUDGDf
	lIEgv44owET8WhpOZJBUbYVNcvrFSuXypVWkr/xTWh3KN2vGLmzXhThTy2jKZwxp4tBJmDI3RHNbI
	q/cf9IBDFTfDAlL8wW3oRtfGCRlNn6CqHU2nMsS2akeZZcmzfWWAKqU3fN3DmUZYYAR6ban49pIn7
	V6lpev2+ETNWJVGRSzA1AL7YJq1CIjuh1CvVnKC9qJENNF3ArClAom5V2odj//33A1/cnjyI5zXOt
	dTuXpJzLPLJcOCoYvKVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofOUE-006qWV-CV; Mon, 03 Oct 2022 16:40:10 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofOU2-006qNf-VO; Mon, 03 Oct 2022 16:40:00 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-13207a86076so9344752fac.3;
        Mon, 03 Oct 2022 09:39:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=7+4YmPdd4Yd9qyYlmkjl9DXqLdEG2yOjN48nnp9UvcM=;
        b=AM4X/q++zJFFNuzA2w9cmcRtyebmWudXV1eaIqIcP/8dONkeQXxFS72w1r9jRVvn1r
         oqUKwh9VC1WEwW9GL5BXC9E8Y0s1TYYR4C99BkgZLBuFZOZ1iSA0n2L1U3iniZAbrXnX
         RIXR4J0imJ3HTUxYH9jAKrvr209IFam6ypZScH9LaOf6Dzy7ZXBPcJ+WATq7uGnZEY9m
         tyDoyH9P1yLKVO2vUvYsCM1qH8GJ7FGugR0IKeB0AY1qTdB9MlkyTplqNUEMhNoJT41G
         dOOQZde8eEDo+sfMGiqXXIfkHyG4pUNEXzXncSia17R6ANptnMZg4V32ZfC0zRBTDf4x
         9N+A==
X-Gm-Message-State: ACrzQf23VVL6iJ4gFlH0wsM6IFMIzxjWKtv4/8MufPelgmgjOZHDawaS
	B2l1JAnuQVk4qk0vykNrddtbiEo0uw==
X-Google-Smtp-Source: AMsMyM73Ezu7mapOpxY5SWfvUkYjbgEhho+/TRFR/5PGUHxN2fF+88Mqk5GP3abf4M7saf+ctUoXPQ==
X-Received: by 2002:a05:6870:d626:b0:132:9149:dc8a with SMTP id a38-20020a056870d62600b001329149dc8amr1205595oaq.141.1664815196861;
        Mon, 03 Oct 2022 09:39:56 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c16-20020a056870c09000b0012c21a64a76sm3031062oad.24.2022.10.03.09.39.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 09:39:56 -0700 (PDT)
Received: (nullmailer pid 2423947 invoked by uid 1000);
	Mon, 03 Oct 2022 16:39:55 -0000
Date: Mon, 3 Oct 2022 11:39:55 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, kernel@collabora.com, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCHv2 2/9] dt-bindings: reset: add rk3588 reset definitions
Message-ID: <166481519478.2423891.644032213788270415.robh@kernel.org>
References: <20220930153857.299396-1-sebastian.reichel@collabora.com>
 <20220930153857.299396-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930153857.299396-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_093959_027284_AE936157 
X-CRM114-Status: GOOD (  11.44  )
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

On Fri, 30 Sep 2022 17:38:50 +0200, Sebastian Reichel wrote:
> Add reset ID defines for rk3588.
> 
> Compared to the downstream bindings and previous rockchip
> generations this uses continous gapless reset IDs starting
> at 0 instead of register offsets as IDs. Thus all numbers
> are different between upstream and downstream, but I kept
> the names exactly the same.
> 
> Co-Developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../dt-bindings/reset/rockchip,rk3588-cru.h   | 754 ++++++++++++++++++
>  1 file changed, 754 insertions(+)
>  create mode 100644 include/dt-bindings/reset/rockchip,rk3588-cru.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
