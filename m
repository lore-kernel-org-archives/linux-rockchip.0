Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59372C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 21:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5ZarBcPnc3xeXByFOJ9GOyB3Zk65GwzJ5Hd+YQXH0g=; b=TaOpH2lj+/x1+L
	nnIsEUiiWXgmi/sKZ2bnQx67D+QNbVYoTvTwNT+YGHrJ1TTP1c+a8cOXDmxs1TMDwn4Gm+HRA1EXn
	zfABgwupbHODQlSV7LD8jI2Oq7o0Js6dOJ1OwTjk1Fih/VWFmY4fYzUlE7eEsd9tgXr2jtabxRlsM
	VFuLBtHTyeiuJPZIPTYXX2nr0K2soJI+NLU8uquCqU5Vmnupf9eoUNeV0zqdv4PvqxxgFB5Pv8Gdz
	gJDlyxg93jdEru5NpYLfWzGUoIOKpoTCGQuYlixCP0yqk13KpQsfW9W8F+SgE3nklEM1QXwkzN8kl
	1n/mtoVNK66cHtnj4q8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9C0I-003LsQ-Mk; Sat, 24 Dec 2022 21:24:26 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9C0C-003Lpg-2A
	for linux-rockchip@lists.infradead.org; Sat, 24 Dec 2022 21:24:24 +0000
Received: by mail-pj1-x1030.google.com with SMTP id u15-20020a17090a3fcf00b002191825cf02so7837234pjm.2
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Dec 2022 13:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sladewatkins.net; s=googled;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O7iUW2yvLkltdJ+802lqDxjH4K6OrXY0D1JeDdF3S9E=;
        b=EZbEFdk/4VytSmEsom5jkRfrt7725OovIF6pGEOEMPd4rC1NNZYoDFjRjzeRUreWOL
         ynDybyobQH27InarSzLpWQ9iyd/lmERXpIdRfUQeAQqb5chcYYHTDXDdRR845nXnJkE7
         fn3nvIApiPI3z13VkU6Z1vkxDAz0pXgRpvhOTY3jKjeLZzQQwuH7eSODc27nbP04f4oH
         4UMvrLlYZvJ2zI6k8hEI2Iq4Ih+1VTyOqyEdD7Xcox3YNrTkiZYdrun8Gkp2J13ONj/y
         TOMaEDtq0H0sh56QLOUWA2+YIsHBVYy+Cswc9eMkyNVmOd6nI9HsWghT9t8r6HvpIEuc
         WadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O7iUW2yvLkltdJ+802lqDxjH4K6OrXY0D1JeDdF3S9E=;
        b=Znh8qYlI/zTAbwl6IcZg0MFrdXmEUC8OERbNMxvW3L3gExHTuRZXgF1oae6WGTQzHb
         9fekWLCTzAeYYsNt3P224H5RP4kyKwzHfI54nETtzabBlgOurIJ1iQTT+1Cn3WGVz7Ak
         23f+tFlhTRPDY2g4uHAbLtDHBrKobalv9fbwFqJSUt0u55CEjljMT1o44P0NG8SojOBy
         lp1XEJwjmhXR7qKS6EhW35xLSH5QzI2uhdhjbjSY3Qdps7O2sFtQepptO/Rs3MxizD6N
         rGg0PE1y/XegXNOXJmHqii1rlxks/XPC0COG31+/jbHF+yfUcw50tc0vrER/MC/vHTKQ
         bDpQ==
X-Gm-Message-State: AFqh2kpL0/Wbhallu61SV/ZS3NfeYRxE5VSEeMFliRNru/yakqph4yJl
	K7S8OrLZF1TX+4Ah3vb8mSlwX8iWDJWLuQr7e1yJ+Q==
X-Google-Smtp-Source: AMrXdXufSdzDq92KU6O4AEt6bGZwOQ4Kh8UTOP3WX1snLwgRIm8pHsfb3BR79NcWRxjinsFrfjD9knwbA/uHq88zD7I=
X-Received: by 2002:a17:90a:b301:b0:218:fb5c:a762 with SMTP id
 d1-20020a17090ab30100b00218fb5ca762mr1562383pjr.241.1671917057817; Sat, 24
 Dec 2022 13:24:17 -0800 (PST)
MIME-Version: 1.0
References: <20221223132235.16149-1-anand@edgeble.ai> <CA+VMnFz8nQ2DnD6L9cPmoRqk+uohRqTEpak9g=WGJnSBoONmrA@mail.gmail.com>
In-Reply-To: <CA+VMnFz8nQ2DnD6L9cPmoRqk+uohRqTEpak9g=WGJnSBoONmrA@mail.gmail.com>
From: Slade Watkins <srw@sladewatkins.net>
Date: Sat, 24 Dec 2022 16:24:07 -0500
Message-ID: <CA+pv=HP8ckG8dsh-uZ6=k2nMGDGbw3gnh2b1ZWV31mzuYsjNig@mail.gmail.com>
Subject: Re: [PATCHv1 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
To: Jagan Teki <jagan@edgeble.ai>
Cc: Anand Moon <anand@edgeble.ai>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221224_132420_152757_411450BF 
X-CRM114-Status: GOOD (  11.16  )
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

On Sat, Dec 24, 2022 at 9:30 AM Jagan Teki <jagan@edgeble.ai> wrote:
>
> On Fri, 23 Dec 2022 at 18:55, Anand Moon <anand@edgeble.ai> wrote:
> >
> > Fix compatible string for RV1126 gmac, and constrain it to
> > be compatible with Synopsys dwmac 4.20a.
> >
> > fix below warning
> > arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> >                  compatible: 'oneOf' conditional failed, one must be fixed:
> >         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
> >         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
>
> Please add Fixes above SoB.

That and, shouldn't the Signed-off-by: tags be reversed if Anand is
sending this?

Confused,

-- Slade

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
