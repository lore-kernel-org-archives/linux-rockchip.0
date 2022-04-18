Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44E39C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 11:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3RoUl4eoJr9Uh0EjemKeR3Tu2K5w/0qrJvDtS++shM=; b=Lm8sp+E9Mpmee+
	kLadgfq3OjLGJ3Ql4VuD3Uf9KNTskLrH9kMVPaZ0GVlk5TQLnCzB+6upb97FY5EGEhPdVINExF2b7
	FPv42X8o6u1GVEfw1CB0QLlr1gUp0H0ApYDSjfJfkR636zg1/bM+NEe896Mk29nNsR2JJUuEjUMm5
	ALx/LpVsxMCUjbCQ66e6x9NlKEQO2oDiB1A0/woBkDS/ASqIBkddpLuN62iMFWuMaeqyQV6EcdheU
	IK+zF4B95QVh834iUl6KZOEvlxGx+4Xpq6Raozhdq6VxElzhR/EIvodeI45T95PS5b2G270VZp6Mq
	bFpKDXS3arzGboZapFTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngPoi-00GWHp-CM; Mon, 18 Apr 2022 11:45:16 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngPog-00GWGa-00; Mon, 18 Apr 2022 11:45:15 +0000
Received: by mail-yb1-xb34.google.com with SMTP id m132so25107345ybm.4;
 Mon, 18 Apr 2022 04:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3QYWuVtVlC10CN/U+uRjoO+2nquc2+/bWq8BF83jGkg=;
 b=jfQaZilDsjqziuXCg9rlesjzPfFiG3oIMyOIqq5lw8qAztwHtpWY4jtAArkSDne/hj
 WHMReGX6BfrGLoQnV8WR5NKGH+wYTMucY49FMaoybLsVogUeG5UHNJB90L26is73oQ2a
 HLEfKNtE1MPtZ0s2VfikMrbz7fcrUP/pZ7JNAwnlEcFoK33Mj/9Y7e/2CjMrd7ZeuZgy
 pgf6YvEg8sa9VGkmZsUP1Tx72gvCoriVLtdKucG2AtMK1WjpswZgBVERLVq1qETCw6xu
 aA9NlwqWySqcw07791GL/QEQWtHumXnMAHyu7bIBiQyNxqop33xJp5PvM1nnNFmAy6jK
 RIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3QYWuVtVlC10CN/U+uRjoO+2nquc2+/bWq8BF83jGkg=;
 b=A1vwldHB+VMfa+Ufzy9E/0POkpuHz1tSZvOYgPA3FA+WMEWtbwQ1QGtYHqc3cgPe9g
 hCZBYyhLjJxMTANdN/E7LZceBE5rcMD6qc9+rpRSQqvAiBGvoSNfX96e+t/oGjoodCjz
 vBYaUCYa7uw8wyA33oouPVADezQEygqdnExOs2TEBLk+/ql+TaURHvttVW2hxW7B70Dd
 0WFDUEccLCqOe45gI1AqjpamSfX3765u0HmUf4ILeMNr59Z2VcyY9v5VYzGJJh1hArSS
 N5r5XMBsNh8TadeaWEtoOPd5SZzoy80Ta/HowyFnOPcScTLkPOXMEDK+G3JjUXC3dLuv
 NZgQ==
X-Gm-Message-State: AOAM530F8DKswvBaZCSd9oXp5SY021057ZyxZmC/dwgKHqHfKnayU7bT
 +i9tVXegtZLBcPlheHBjoMC9i2ZHfCnvU79GbJ4=
X-Google-Smtp-Source: ABdhPJw+jWAcmcfFZ237nXEhtG2xq0d8v20HKmocJKhYOlQFPTgC1WBVREyz/ckqjsxTm4JfzpWxDClmhqtXY0reNTw=
X-Received: by 2002:a05:6902:1249:b0:644:d8bb:e741 with SMTP id
 t9-20020a056902124900b00644d8bbe741mr7161250ybu.585.1650282313075; Mon, 18
 Apr 2022 04:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220416100502.627289-1-pgwipeout@gmail.com>
 <20220416100502.627289-4-pgwipeout@gmail.com>
 <eadc4422-15bb-0b46-8235-db6e160e8d32@collabora.com>
 <CAMdYzYq=nQhwY_4+Y=PM9do_Dcrg1pD-jeD=q36D48ks=WDVgw@mail.gmail.com>
 <a8bb3ef6-8f37-709f-adfe-3608e5c1e11f@collabora.com>
In-Reply-To: <a8bb3ef6-8f37-709f-adfe-3608e5c1e11f@collabora.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 18 Apr 2022 07:45:02 -0400
Message-ID: <CAMdYzYrwGyxRnB8YU9vvgqXsKhi9fZ1a7UJhixCbC5mGm9aP8Q@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_044514_077493_EBBAAF61 
X-CRM114-Status: GOOD (  15.85  )
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

On Sun, Apr 17, 2022 at 6:23 PM Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> On 4/16/22 13:17, Peter Geis wrote:
> > On Sat, Apr 16, 2022 at 6:08 AM Dmitry Osipenko
> > <dmitry.osipenko@collabora.com> wrote:
> >>
> >> Hi Peter,
> >>
> >> On 4/16/22 13:05, Peter Geis wrote:
> >>> +     pcie2x1: pcie@fe260000 {
> >>> +             compatible = "rockchip,rk3568-pcie";
> >>> +             #address-cells = <3>;
> >>> +             #size-cells = <2>;
> >>> +             bus-range = <0x0 0xf>;
> >>> +             assigned-clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
> >>> +                      <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
> >>> +                      <&cru CLK_PCIE20_AUX_NDFT>;
> >>
> >> Why these assigned-clocks are needed? I don't see anything assigned in
> >> this patchset.
> >
> > Ah, those are remnants of early bringup when performance wasn't good
> > and I was manually setting clock rates.
>
> If it's not needed, should it be removed then? Otherwise it looks like
> something is missing in the DT in regards to the assigned clocks.

Yes, it has been removed from the V7.
Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
