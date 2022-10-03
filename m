Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56828C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Oct 2022 16:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q3/ks8IBTSyPLTRK7/seKWKbiZozW1n6Bzs157YAho=; b=TcsWFdC+MK/peg
	yvcAmbvObbeTlGIRPtRSslJrOqhHJAFTGI0WSUosoAEzUKMu+QqENLAbQ2XUWRB8ipB9hnVInFuiy
	mmz4euRFRyOr34J1cVRP+gv+O4rcyW4qeY4Rv+5zLsoeOQ63E5WrfjgQ9W/ny/0UaC5HxW79nilLr
	PocAEgPwsl16IyUqj5VVQQ8V9i0dSxSQW3rk7GvB83EEztQZ1cu46Q87DSVDPL6pIcOY2vhMnCmLD
	CQNsGawERD5IZtUiAYwjLfGc2/GOvvBL5Tw/GeA5GkQt56o9yTvwUS/jtDGbyyd8YdcZRxLzM7hyr
	8RARczY6D2//YBN8mgWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofOTt-006qKC-1T; Mon, 03 Oct 2022 16:39:49 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofOTi-006qFA-Ce; Mon, 03 Oct 2022 16:39:39 +0000
Received: by mail-oi1-f172.google.com with SMTP id s125so11886713oie.4;
        Mon, 03 Oct 2022 09:39:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=rCkVgFFm81c7XCEOFqwSIFr8KWJouyjzQpmxMv51+P0=;
        b=OgvpiHXFWUPD1s8mPh8uyeaq/OiAC2FNFV5J0Yc/B8ohGLg2AopfcnVstlGYrOMRyb
         +lB7joMC/z3wCe2s54iyVPsaqj0+wTVBhi6yZn6SQoDE1OywsDgiGZ51uZyl/UCxthBj
         TDbqVkDSUBkcWIOc2WAKHdtzqg/66b/bUFgvJu8C11lbtjsI+94y2ZUG4O62mm/Ckh5T
         4MRuNIJSrdLLXTkOB9oK6V0W7AQOq65dcu4f0ncv+I7kq/Kj5LH/PPl6+zXHPjwLTS3u
         HpyiOTkXkMWEtqvQjl4EBuVm1OQQdk6JfUbvQ4zjMAGx5b3FXzlDYBSHAA0iYe5ReHQ4
         1/7Q==
X-Gm-Message-State: ACrzQf1x0Pp8FOa7r7oyRegH7aH+e9U24o0lUZ4CVJl9ZugQIstUERJ3
	PS3f4b4oIumcUV5TIheTLQ==
X-Google-Smtp-Source: AMsMyM5g62exClojpTpSmD9HqfcpJlqbBa2KyN+2JGz3TWulMtbWRZ3rBot/gwNKUtjp4G3ki+kjdg==
X-Received: by 2002:aca:1c13:0:b0:350:ce21:a022 with SMTP id c19-20020aca1c13000000b00350ce21a022mr4604235oic.172.1664815176043;
        Mon, 03 Oct 2022 09:39:36 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id fp18-20020a056870659200b00132741e966asm872725oab.51.2022.10.03.09.39.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 09:39:35 -0700 (PDT)
Received: (nullmailer pid 2423452 invoked by uid 1000);
	Mon, 03 Oct 2022 16:39:34 -0000
Date: Mon, 3 Oct 2022 11:39:34 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-rockchip@lists.infradead.org, Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com
Subject: Re: [PATCHv2 1/9] dt-bindings: clock: add rk3588 clock definitions
Message-ID: <166481517368.2423396.8795946691890924874.robh@kernel.org>
References: <20220930153857.299396-1-sebastian.reichel@collabora.com>
 <20220930153857.299396-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930153857.299396-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_093938_441852_4D1AF165 
X-CRM114-Status: GOOD (  11.53  )
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

On Fri, 30 Sep 2022 17:38:49 +0200, Sebastian Reichel wrote:
> Add clock ID defines for rk3588.
> 
> Compared to the downstream bindings written by Elaine, this uses
> continous gapless clock IDs starting at 0. Thus all numbers are
> different between downstream and upstream, but I kept exactly the
> same names.
> 
> Co-Developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../dt-bindings/clock/rockchip,rk3588-cru.h   | 766 ++++++++++++++++++
>  1 file changed, 766 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rockchip,rk3588-cru.h
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
