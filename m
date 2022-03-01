Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD007C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 14:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mcr0+gdMQh60HFXaaNBcEiimySX+JqOI5zkmcs/ABjM=; b=EVj258nL65xLoJ
	0f8qXuvVF8EIFX/VSf8CaNGomDvmOARANcKSpjtEW0Pjiuxe3dcq8FxWOLhlgh7+ozIzQv6okFe2m
	Bj75mxrIMWAo01n9RsIf1WOkPQcPEbt4uQQbepq5Aw8zyMmwg2EQx3FFzI6hw4rAtasEtSdp7B9+7
	cr4aJKoKTyVMptpiw7bbyDF1a+JubANZ5vLFKr+BeAyMQl64K5ZqhuaH8XPSEmj0ytfhW8SH+gwlh
	N4kzO+Q/vji97olZBv6m9MgN3lBEgQAS1lLs0uw+yVfOhI/FJ7Cioumx0yLe2+UiO1OICWkpLOnmo
	Vq8rOGRy3fW/GMfwwGzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP3rL-00H9f2-9T; Tue, 01 Mar 2022 14:52:15 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP3rI-00H9dr-OJ; Tue, 01 Mar 2022 14:52:14 +0000
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-2db569555d6so90804027b3.12; 
 Tue, 01 Mar 2022 06:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p6Qg573gQNt9jfmniDqk9TUY0R6tRZETMQPLMgu5ja0=;
 b=MVzYKmbx2t7YMZV9Xu+2eR04C5rESan7pI1k2NW1iYgltGe4Mb7IYmeBqg2gA+t6MG
 19DmTPhph79iYaEvmXnUGkuQOiv3Q80nP5y4TZZ1Ok2g1V+Zvyj/WwRldjuPZWv4INRi
 GmfapsiSFKSnJ9UKK0+QxdmRLrzOuilB+dRkm7orz8EKBJ3FLi8f2hgUfu63BTWEbxAM
 Gw1PfN9U3QqKRA5svNldODCwyLCWCAzyB9ORWAAw76IPRNZkrhe28RVRSDoVsJJYEA3l
 Ugp9K89fWodTQTziL8XmaWk0Yv4gfZeG9DDTZbnlzCoeZcOYbpkI7jQ6bi/9u5P6IwSP
 JOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p6Qg573gQNt9jfmniDqk9TUY0R6tRZETMQPLMgu5ja0=;
 b=ZTGMsFv7pXt1pf9hQiEjwyYjU8vKKLyFlJBk+GeUnCPKfC4/18HslxGTKg/3zUMktm
 da6ubhW1IdjFBfRrrQt+yHd0AINjuGcW8M7q2gxyuzNj/HvkWbqxCe0QearA6hL8l9kz
 ot8DUykDXuGza+uKw1F4mECJkB2/1lNiT6J03lD3e9PCIXbX1woPRkrsvj2nOeGAtDaE
 nP3xy8+PagBRxFU/sPHJgtwgzQSrfv/jLuGi+4J0XHDE6ZRe3BR9geHo+SKmLgJJCOcr
 tWgiQtr4KwGxdLOfqCyIPOyC4pgPpGFQKAT7PIt5G/0EcnM07hD9lFAzwAR8peZUbaWR
 77FQ==
X-Gm-Message-State: AOAM531aBBDgypH6frlCM8SHCUnnJTsjcnS092zuCxqrxZnQVLq7Wnt1
 DZKQMfXy22fxdcxrExnBsNdXVPPoi+a7GAnI/3M=
X-Google-Smtp-Source: ABdhPJyysLGtnRH92oZtE9p17EhgqGO4pnLHjiquEF3VshCrVWSWx0aniFMT/paLW5OieVagmvOftjmUzRGi1FAxI8c=
X-Received: by 2002:a05:690c:89:b0:2d7:fb7d:db7 with SMTP id
 be9-20020a05690c008900b002d7fb7d0db7mr27255346ywb.219.1646146331471; Tue, 01
 Mar 2022 06:52:11 -0800 (PST)
MIME-Version: 1.0
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-2-pgwipeout@gmail.com>
In-Reply-To: <20220228135700.1089526-2-pgwipeout@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 1 Mar 2022 09:52:00 -0500
Message-ID: <CAMdYzYqs=iRY6uNzVSkHrrhPYFixXdbZjtwSpPOjf-6f8TXutw@mail.gmail.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: soc: grf: fix rk3568 usb definitions
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Johan Jonker <jbx6244@gmail.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>, Rob Herring <robh@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_065212_813434_0067AF68 
X-CRM114-Status: GOOD (  17.61  )
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

Good Morning,

Would it be possible to pull this patch individually, to fix the
current error reported by Rob?

Thanks,
Peter

On Mon, Feb 28, 2022 at 8:57 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> The rockchip,rk3568-pipe-grf and rockchip,rk3568-pipe-phy-grf
> compatibles were incorrectly assigned to the syscon, simple-mfd
> enumeration, vice only the syscon enumeration.
> This leads a dtbs_check failure.
>
> Move these to the syscon enumeration.
>
> Fixes: b3df807e1fb0 ("dt-bindings: soc: grf: add naneng combo phy register compatible")
>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 072318fcd57b..5079e9d24af6 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -15,6 +15,8 @@ properties:
>        - items:
>            - enum:
>                - rockchip,rk3288-sgrf
> +              - rockchip,rk3568-pipe-grf
> +              - rockchip,rk3568-pipe-phy-grf
>                - rockchip,rk3568-usb2phy-grf
>                - rockchip,rv1108-usbgrf
>            - const: syscon
> @@ -39,8 +41,6 @@ properties:
>                - rockchip,rk3399-grf
>                - rockchip,rk3399-pmugrf
>                - rockchip,rk3568-grf
> -              - rockchip,rk3568-pipe-grf
> -              - rockchip,rk3568-pipe-phy-grf
>                - rockchip,rk3568-pmugrf
>                - rockchip,rv1108-grf
>                - rockchip,rv1108-pmugrf
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
