Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBEB9C32796
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 21:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz/mw8CKsKgtiwVAjpRX6EnzaUzxVMnv3NDLzAhCkdQ=; b=tbZCDp9va7j+WO
	KI83THN+nTCyagaeaOYbhPB+IkMGXMOgfQ9LYtNKuxUpaJkZE40Pu56VWjSfMikNevQ0D2caJQPxA
	AmRqQn+H8exwb7A4Of2gtXVYYvjYcSsMo6NEHx4PEBj9ZqMhMslSxzHhbpJtKEN3/xT0HNUm2RKS2
	ZT1uVXb0d+fou8iucqrgiMohyVYWI+H0TEC/MDyJLEykvmwJZzta12G8kPOjP6ee1NbbtfMZn47Dq
	GHKk3HxImuXxkB6fRMT+LTa3Ndvhb08kgU3MWMqTTiG7onhodVmBgN5GO/FW9W6yVp5N1fd+LHdfu
	kF00ICgKHPXUqcd5Q7+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oP9Pf-00CMNS-Tt; Fri, 19 Aug 2022 21:20:20 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oP9Pd-00CMKe-21
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 21:20:18 +0000
Received: by mail-io1-xd2c.google.com with SMTP id z72so4226441iof.12
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Aug 2022 14:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=OfCpFIGAjFJsxjylyQFRN1gMCuzZ2lrehRbujDwIBrI=;
        b=4ZQ0+xuHChLvgPrgERyPhVbD22qMPtZ0MG1KNebJBDlFyoktNdcbqas7BedPfS7B9m
         gNrF8YBi58gSbHIG7gstgDG6vehewWB4a77bagqqUJzijntM7XsAPEdsxbmEscLojbCa
         QFMIXhbtwjf9XQLu+6pT5k+5SFDIzIoSY6VOsD6JfPrvGTiLdYDvqsrE45zWvdijciPR
         UDrx/y5J23bx1pDR1dAYrmXPVloHvdeBbNwsTEfs3+QVtKXY5VBJsd5eMkp1htrvVRTS
         RLPCCNVcHgdUDbz6qpWw+XVnV1kYca+HFQCNMEKa4BSCz7seAz33U2y2EcXNj/1cIV/t
         l9Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=OfCpFIGAjFJsxjylyQFRN1gMCuzZ2lrehRbujDwIBrI=;
        b=Vy99odfIRg9BE3Cr84eJY4IuzGByxLjQx7pHG45Hk1Cgd1mVEeGIYeIWpvyrdmTQor
         +4QQrOe7RPAvXhoPQ58DfX6n3c0wiHgeD8ySTa8YSClkYyOsA/CG50m5spacwWSZzmGx
         LSZwaUiWCWW+pEcxKT90iJ4+PY/kBH+TjZ5Tx/0WQZ6N0tNtPWT11YXYXFgfbnrrjz9X
         RtCL+n6U5eRTEDHAWWiYP5BKBsypPRuI2MlNhN6KkDbqVkmfWLce0zz2EBw+ZE0b8639
         g3slSRc4iyUX4CQKizrXXmJ3UmroXpfbokguGQyzHoj31unDNuRmJKgcImCOmGf0dR/S
         JK7g==
X-Gm-Message-State: ACgBeo2iOVp2+y7m1afzVHGk+S9DbgJjiBIYGZc4gZXyD8skBUHXCW5b
	mC14sn5MlvOFZu6fK/aWau2J5geW4Jsc1Y9SU2PupQ==
X-Google-Smtp-Source: AA6agR79Pmev4zKlgZ4BZ8NzNHDZ5WQNzZpmakWKSvZw/zlLHtlC3993Hb/w9TbnPo9G9XdWt7+Qyndtr8nVzPv8pMQ=
X-Received: by 2002:a05:6638:1483:b0:349:2dd2:64ca with SMTP id
 j3-20020a056638148300b003492dd264camr1951928jak.305.1660944014487; Fri, 19
 Aug 2022 14:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818124132.125304-11-jagan@edgeble.ai>
 <20220818212913.7FC43C433D6@smtp.kernel.org>
In-Reply-To: <20220818212913.7FC43C433D6@smtp.kernel.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sat, 20 Aug 2022 02:50:03 +0530
Message-ID: <CA+VMnFyJOCc-RzENYs9L+U4VeJgEpMmZeSLZahcNdnL7_Cvw9Q@mail.gmail.com>
Subject: Re: [PATCH v3 10/19] dt-bindings: clock: rockchip: Document RV1126 CRU
To: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	Michael Turquette <mturquette@baylibre.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_142017_417447_2F240A0C 
X-CRM114-Status: GOOD (  10.27  )
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

On Fri, 19 Aug 2022 at 02:59, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Jagan Teki (2022-08-18 05:41:23)
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: xin24m
> > +
> > +  rockchip,grf:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      Phandle to the syscon managing the "general register files" (GRF),
> > +      if missing pll rates are not changeable, due to the missing pll
> > +      lock status.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#clock-cells"
> > +  - "#reset-cells"
>
> Why aren't clocks required?

I don't see any clocks being used by cru in rv1126 [1] so that is the
reason I didn't add any. Let me know if it is something that is
mandatory to add even if it's unused.
[1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm/boot/dts/rv1126.dtsi#L1074

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
