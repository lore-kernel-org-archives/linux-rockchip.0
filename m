Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22DE5CA5FDD
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 10:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrdB2w9CNvxlES8Vsv7ed8e/MXTmG+ZXvuuwDF2i6eM=; b=wngPAxQDdXq8t6
	IrBJiTIKznFixToUch9vXu8/OuC/ORmNL72B7mN2ObH/ZC+dYOiH8EhJP+BRo7BNpAjTBAVaxms05
	mR2lKJQ/uim2Osr8n6qkbvBRig4D3TY1L9gv7OoILT2IA9H8JARF3Sk+epXmvG/ByfZ0KtZK4sN4/
	RJm+o7OlfO02I3UMJETHSOO1DjwTp8ds/EpWFpela9GYheqpCjRSeVkTIKDxe1RYALMJVLi8aX4FA
	0+ttRK7mRzC22/KmFL9oK103m+1NGhL8VfUInSr19A4hEsd0RRKH1R26CXN3a2jMuHCA/eWLYhQM9
	PXiyx2HMnLqO9dS2Anlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGy-0000000DOHR-3RHV;
	Sat, 03 Oct 2026 10:47:20 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxGv-0000000DOGL-3GWc
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Oct 2026 10:47:18 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c2e3dcfe205so85257366b.0
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Oct 2026 03:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791024436; x=1791629236; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=p88yqRzBtcIHaHKazkQdIPEyby4tpYcGRuIGuiev+70=;
        b=yBX753/gPtSFPZnV0EqrLF1CIc0JRybHe/oJa5eCdvRjFY9yu4ht0pkXE0jJ3jZruD
         bBQoQJxjpOPhZUzaNay+2yXs8dDQSN7NDbfkIGIZRy2zM6CjydXsNcGv+F2wXYW+6A+1
         Jf0CvGMfDn69/v4qd93j/MDvf9oOLfe+7Ojr7JrG4SJkrM6Pl0afk6L2ArubDjJspkoq
         urL9oNkZ0vjvAJGxBfhfWDdyIjEFxW1uLRcxJ2vxwqQagVVFwyWUiPjidd1BMzHCfAtB
         Yvr8yMB2rGAbcADk5ld2Gmk9sthOJEdrWnezJ8k7Hw/o+Y9KK47mxnAPWfLfmeUWAGKT
         lLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791024436; x=1791629236;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p88yqRzBtcIHaHKazkQdIPEyby4tpYcGRuIGuiev+70=;
        b=MJHmedyPPiy4V9ikKJmwuFWDsgzt6hcsuMM9AZJCzqPN2tZN+5pXwl4VSUnukVwD7L
         esMS4qs1wSRu8C/lF+KBuDhKlb5r+re42VFzRH0PfzxME/0mdIjxl2hk933saRv2IUFL
         29MundEtqaLC7y77b1Txi9T6ki0rgINSFQa2YixPt1Z2t7koy3wpFefB2czvy+rkBp4c
         8xmsBRXzlcgYJCZ74hZQoXpOXxDFn2bMZEn0EbKrgx4OXw2V2NGXgAsCRMw9njVLfw3P
         lCrET1h1D80q302fPiNGnWfK0g/BHi2E2l4pebeZdXbImhBdOezL6AQ+O1k/kn3Nl6Wo
         W6PA==
X-Forwarded-Encrypted: i=1; AKwUvBxd0vuUFZywOsaA5VGeFNw8igtbOyIGSFU9mrKT/upf9wCq89ShamebTVkvEzkTwkiub9fFaaH8NvVdv/3X6g==@lists.infradead.org
X-Gm-Message-State: AFuF++mGIxYcUeuNA6BgNU0jNETPLiqHmecP4fUdhS3z+G0u6b24Q942
	Iu5/NqW2AWXpAYG/KeYr//zp9JlmhnAJNC5MXPSeHQzAJPypQHti6GpM+mAv5RROjoQ=
X-Gm-Gg: AYBFou2DT7MLck+EVETfrKGgC9wdYBQ1+wfeCAOhEbdENeOit4I24y9EErJmSig1crn
	o2CCRxwam69ON/sBArPl/JFBZokoUDehpxtmkop220zWDJjweQ08mVZfdMhoNzFIPlwyaMOdxOA
	GQqb/5n8EVFxiyRg5bk1PxC8Y1ZC8SPydNPwHKfoITSRKjah1EZdOiqzHSjJnpRBBY6D5gTsIcs
	sY3lqtgdFDowe1PFYh0tMzqbEE3BHEzgt8NlRvemXIdIot+PEPcMx7DER5fdkHkvGEyhCEAueym
	cfeGJClUXTZRLfk6znlqlOy9y/w+y3xpLa8gWCTPpsxu+UNVClNddsCYB5Gtgc7OcrKN2jPN0vm
	nBpb7GLgWtYVW1x+i8YxEVq0Tnm/AK8ROUBAU4zYazDujw2TIFa5wNndnkVgHUXcIQid2lyr508
	Aeio4egoXsnsXnsCAWK3raGk4Nn3SlDNWsCzxiiN1MTcIyvCwOsFZoEWjrNClb2oB1eBc+RH16O
	4QlNQZhDXho
X-Received: by 2002:a17:907:7292:b0:c29:f0a4:a4f8 with SMTP id a640c23a62f3a-c2e4a6a1e60mr460884166b.0.1791024436000;
        Sat, 03 Oct 2026 03:47:16 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cf5f4e4sm192867866b.42.2026.10.03.03.47.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 03:47:15 -0700 (PDT)
Message-ID: <27eea513-dbab-46c6-a1bb-8d9817f39ae9@linaro.org>
Date: Sat, 3 Oct 2026 11:47:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add
 support for rk3576 variant
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
 <6HuMsILf2j8sOpHhyUAGmHbTeavDsa4sI8LzGK1bRrT-XdkhCbQBfa3ytLaMUPaXjfPyHA_3DGWmAaaAbS1tsw==@protonmail.internalid>
 <20260915-rk3576-dphy-v2-3-b56e68b54b8c@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260915-rk3576-dphy-v2-3-b56e68b54b8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_034717_830526_1B8B8B17 
X-CRM114-Status: UNSURE (   8.05  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15/09/2026 11:42, Amin Gattout wrote:
> The two RK3576 MIPI CSI-2 DPHYs can be supported using the existing
> phy-rockchip-inno-csidphy driver, but they need their own driver data:
> as on RK3588 the GRF control bits live in a dedicated CSI-DPHY GRF at
> offset 0x0, while each PHY instance only has an APB reset line, as on
> RK3568.
> 
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
