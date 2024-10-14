Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB651D18139
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 17:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UFTTI5TJ06uNNzSioshTpDbUsPOCUzys23/Pz4H+Ys=; b=HtUSngoSrL+E/t
	p+rBx/1eC6VV7Tu8QM7IvQUMEkHMTQsxWWeLlbpVj5k9RmUD436K03agbkiQnygL0Krr/bHU4YBjU
	vk9r7ktNOWYmDJCMeCrQsxxXmXZL35qhVcJbqtK6oVx4IoYD/Odok/R7EtYNzEg7FzZR3oTEmM1rl
	LvFUqc+4ul8dJVOoYbtI07wyDgwkplDuBh7TFBHB8IzlWRjB3/RPRYLUfr69mo7o7yJ1UHZbWx30c
	CiVrW0hj7J804C4ruLrBMgLvsXUG17cymXXlaHOityncPKfCiDsCaunK/u3USKFJep26GvEQnMVLu
	vRw6RdsgLnbY685wFX2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0P50-000000064oF-2Eom;
	Mon, 14 Oct 2024 17:42:02 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0P2G-000000064Kd-30ke;
	Mon, 14 Oct 2024 17:39:14 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-37d5038c653so2776693f8f.2;
        Mon, 14 Oct 2024 10:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728927551; x=1729532351; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ex9dSK9Fr9Mrms2dZEi46OXusqhHyEOAsbZ50rRI7gk=;
        b=bHyYSAv4lXeCd1mBJbl4/XyiadyPILwZHoQSHS341YzmF1CdNIpwN4aeBGQXBLalW5
         XknaA7iFUsNgeNoRFGExikctygvj4Dprk8vjScXTe9WiH7pfxZsPyG6knOQcrMT0TC/7
         HIZsJu7iIYtpdlUcL6V4k50c+qfpcQxC+27dDdZbUpnA0/ZZNT89hxcSo6L4ZofiC0MG
         7EKeZiQyPJWxg+Y6XxVBEowopZ6qMDvfTxyyySgwBECbHPexOxenhCfvoWMPNqtQgObU
         EjP8vsyuVy9pEGTWvxT2gVCCufXwnZ7PNQ9qTsTkZPBebUw6OZgsC11Nnx/NXRvXHMOl
         xmTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728927551; x=1729532351;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex9dSK9Fr9Mrms2dZEi46OXusqhHyEOAsbZ50rRI7gk=;
        b=C8My0Zi42mbyRERpKCjrT8F5DG/3otiTBmnkzzFJdHUEkJBAXP+dSeNnzBA0wOHTk4
         YtS7zacBoHlOJpIwAJuyqUuurju4pfNTTLTHfT8t935uDXPLlyAtZg4MPP83mycmqwYp
         +VDRr49tvPggM7bItwxUuLX9R23Tpsd4ZF3fiF6ZHI8Mmb3gJKbaMXWo1d09cYisfcDi
         IcaRAezgIgx8aDmZluB6rSSrmLwc8W3lyjSfi7rK8PSVIlsAGX0fI+DJCIlu1wR0Jyk3
         j4HPwI7xvfJzPiuQBEyrHDus12F0kKD2DxUo/1PkKUtOmBsDfpFurOTpeKzpQjzFQmw8
         DQuw==
X-Forwarded-Encrypted: i=1; AJvYcCUUM31G2Vi8pMObVH/AohXfulzgWtxwLCGq8+TrQNAhmUCoI7pneYpbCB7VpKjN0Cbsa8nhN5FT6O5cB7yxonaw@lists.infradead.org, AJvYcCXccl5sN2H3CZpJrFW0+RooScbgta2egHOLy39T4oftQNgQ73vPcvH/sK18ZO05+6yg/khnMkuDZpSXCdV3pjQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnnQjvRKWVhs4flbFZ3UfuA9Q4etBGfvd6P0JgrlkEPbA0djAb
	pnh8e+8w9SD1eqoX+ev9CjIDwNhvvGrDZhAm5kESveGUAtxa8Yp54t56ziZdvVCzQ03y5uZKof+
	Mtd4B1XWP/+/Cg7GDX+omqoA7v5A=
X-Google-Smtp-Source: AGHT+IG8Ioyzz6mOTNODHp+6JGPrDIqTDoYoXcA8KANumMT330PJOmG1Ry29YovlxV6hBGItqkJAhM6agEIpW0+j5LI=
X-Received: by 2002:adf:ea45:0:b0:37d:2e78:8875 with SMTP id
 ffacd0b85a97d-37d552ce636mr9080330f8f.56.1728927550932; Mon, 14 Oct 2024
 10:39:10 -0700 (PDT)
MIME-Version: 1.0
References: <20241014113026.78853-1-cenk.uluisik@googlemail.com> <172891445477.1127378.13874736914700071280.robh@kernel.org>
In-Reply-To: <172891445477.1127378.13874736914700071280.robh@kernel.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 14 Oct 2024 12:38:59 -0500
Message-ID: <CALWfF7JNcNi5Gs04V5arJQEw89MJKPy6oRDxh-jdtmo-oCAu0A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andyshrk@163.com>, 
	Jagan Teki <jagan@edgeble.ai>, linux-arm-kernel@lists.infradead.org, 
	Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org, 
	Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jing Luo <jing@jing.rocks>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	"Rob Herring (Arm)" <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_103912_779332_6B416B25 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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

> New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-orangepi-5.dtb rockchip/rk3588s-orangepi-5b.dtb' for 20241014113026.78853-1-cenk.uluisik@googlemail.com:
>
> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: gpio-func: leds-gpio: {'rockchip,pins': [[0, 2, 0, 245]], 'phandle': 253} is not of type 'array'
>         from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
Regarding the "leds-gpio" warning, DTS checking script might not like
that id. You could probably avoid it by naming it "green-led". Similar
to what the Orange Pi 5 Plus does. This would be a separate bugfix
commit before any of the other changes in this series.

> arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dtb: vcc-3v3-sd-s0-regulator: Unevaluated properties are not allowed ('enable-active-low' was unexpected)
>         from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#
The enable-active-low has already been addressed in
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v6.12-armsoc/dtsfixes&id=f4d29bebaa6118c1e51e8f1c21ce2b34f43e1479
So you can avoid the error if you start with v6.12-armsoc as your baseline.

Regarding the "leds-gpio" warning, DTS checking script might not like
that id. You could probably avoid it by naming it "green-led". Similar
to what the Orange Pi 5 Plus does. This would be a separate bugfix
commit before any of the other changes.

Jimmy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
