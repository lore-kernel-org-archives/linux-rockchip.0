Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA63BC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kyw1FJHXURfVMz4itm5ai0R5Jf6tiI6Ry+AoKL+tGUg=; b=eXYHeaANWNmkmy
	7rfco0bx4eIrFDGGfqpiYIraYKwKOybpq11OvcmNtqg9Us2FQ/Dd2psjyYC8uATB5soEe95qQPqp5
	2Gw3oyZvOb+eXX/581LPv5UnAKAXNjHv0c7bCNA79iAbRiNblUx7yHYyYwPr3pFvYTbadLqtut47w
	23G7Ok651aWd7Z3RxjILcR1SuJCgsfYNxuOoHn3nJcZpqMKvC/JaIC71ILuLud7kxHeY8xO/0K6Lg
	sa3U3QWKmCsfUA+UWEWLHwE39tZFj6zosHRU4bSFP2+r7STbUuhwdLqPR1sjwH8gNPjJhfUzy7Q/s
	VO6R9Oyr6u01U7BUvViw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbJy-0000000Fcg0-07YB;
	Fri, 20 Jun 2025 12:58:18 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSapJ-0000000FZVJ-3gfm;
	Fri, 20 Jun 2025 12:26:39 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-74801bc6dc5so1342921b3a.1;
        Fri, 20 Jun 2025 05:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750422396; x=1751027196; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p7ARiXudRcsVDm3GaWtxNNIcJ4AykF/rfMCwYdzsnKw=;
        b=PFN6Po/fgWLoeYN6eQEilx0JhzRTG+1RnkWMhe9u+vTMavufZ+v1868qi1l83dPIHv
         P9L0bi/+zPHyZ9YyTslXytM7dDmHcLBIDExSvTTj08qMqwUXpqJUK9uS2VQcTQr1TikY
         ZRfvZknhJQRp0vkjFfVaOQq5wQWu8/gO8HA68NEYpK/j1EpjwJt44vyF2ZcfpLibWMOE
         lVo2wypw+cENffkiyw3YlEad6ha2HGmL77ZeHWEDZERrULj/kNoBBXKG4OGpp5ZPyqQD
         f2A9CwJQ59ZR6VPYB1zL2bD0KgeeMtXD9xdRe8lIHs4Ujcwd6T5Mic/35dgmUfKiEMtf
         y5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750422396; x=1751027196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7ARiXudRcsVDm3GaWtxNNIcJ4AykF/rfMCwYdzsnKw=;
        b=bnvkp/wUFn144w4IQHcqozGJyt4qxYoV9WorCnpUkPw/Cmt/0iQNQGf/IuJexbpNLv
         QpUHu4E3VGda27QR+axPXZ9yq0CAHLXs3nCe7lUjFv8alcu2/rlfqWB4/GCTKR1uzoRN
         2IBCyUuulC05hZq/7C9QkWul7f3RiB1yAABOUTs/qo0GGaM28b1+N6KKiiA6a5htIrua
         sSEMRnUViZNLuCdE5kjq5YMg8wWtDQn6QokLZ+7JCKZenLPFMH2oSAPO3JO719pPR2lo
         ES2kElqs4xO/mWqkss+J8e+llMjI6/n7VpVkPAOwIuDzd47T/iKXzkbMB0r63sLwpXU/
         9kiA==
X-Forwarded-Encrypted: i=1; AJvYcCUEULQ9ox59m2NS1jsscpEu4Bdst7tpWv8oRfxnsJTdMcyTvKIdEN3I6M89/Y7Dvo2P7GTYR2bdIBo0kjq/JcvA@lists.infradead.org, AJvYcCUypQQiVIw5Pj7L6hIhv7Ta7LoHPLxvAJYDzgC4NoYkXKLU2BOfoctVAYMStYmozgelvIsLO43DGtdb@lists.infradead.org
X-Gm-Message-State: AOJu0YwAMdK9E2+WAI00w+/Vr1EiDZsu/GWCk9Ao1OT4uciTtmfnp0oK
	mhWm9wDEG8shxzFe2rqo3aeD6pyZiMJfBpdZ9CmDmF1RibGLkFuaR+yN/XnmckaPRQBTUzq8
X-Gm-Gg: ASbGncu6Fol92GDxUWL0gp60A3CRlHR6BivVketVhkEzMyjZxrNVe5U17TH0bYWAEts
	7aTpqm6FzMERSn7+/4gycqtnVQmIv6s17sVjVLv6PKe4VXIIxGIpfUooQhrsQ25Svi6fQKvVQxD
	5uU8PHbCUgqNn8vM7fJVfMeYmWWammLoPW5k7t65OxDMNjRGAd13ZCfS4XVEjC2ydso5uBQTGXY
	nEUewtwj+t+aMfFDeFP0hm4JAEp/ZUIUXfa6ER2/LE3zxB1+01kFEwkXdYXd3n0eDgMSPOZxwXO
	6NRM2AYLkLTlWGTDXh4r6ypunxg7Ylxt0TOd9638hne1ro2uOQ==
X-Google-Smtp-Source: AGHT+IHnSxrJDupZ3OPyegK3Fz6jZqTNQdZvWSKyqjh1BSv5jMmoQ/P/ubeKmDuHCyMxy9L2ZLnnvg==
X-Received: by 2002:aa7:9f05:0:b0:742:b928:59cb with SMTP id d2e1a72fcca58-7490f572337mr2605669b3a.7.1750422396458;
        Fri, 20 Jun 2025 05:26:36 -0700 (PDT)
Received: from geday ([2804:7f2:800b:cab9::dead:c001])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b31f118f2basm1364196a12.9.2025.06.20.05.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 05:26:35 -0700 (PDT)
Date: Fri, 20 Jun 2025 09:26:29 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rick wertenbroek <rick.wertenbroek@gmail.com>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v5 3/4] phy: rockchip-pcie: Enable all four lanes
Message-ID: <aFVTdYWxuq9YzVQR@geday>
References: <cover.1749833986.git.geraldogabriel@gmail.com>
 <ce661babb3e2f08c8b28554ccb5508da503db7ba.1749833987.git.geraldogabriel@gmail.com>
 <4c2c9a15-50bc-4a89-b5fe-d9014657fca7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c2c9a15-50bc-4a89-b5fe-d9014657fca7@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_052637_917264_E03DFBFF 
X-CRM114-Status: GOOD (  16.34  )
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

On Fri, Jun 20, 2025 at 01:04:46PM +0100, Robin Murphy wrote:
> On 2025-06-13 6:03 pm, Geraldo Nascimento wrote:
> > Current code enables only Lane 0 because pwr_cnt will be incremented
> > on first call to the function. Use for-loop to enable all 4 lanes
> > through GRF.
> 
> If this was really necessary, then surely it would also need the 
> equivalent changes in rockchip_pcie_phy_power_off() too?
> 
> However, I'm not sure it *is* necessary - the NVMe on my RK3399 board 
> happily claims to be using an x4 link, so I stuck a print of inst->index 
> in this function, and sure enough I do see it being called for each 
> instance already:
> 
> [    1.737479] phy phy-ff770000.syscon:pcie-phy.1: power_on 0
> [    1.738810] phy phy-ff770000.syscon:pcie-phy.2: power_on 1
> [    1.745193] phy phy-ff770000.syscon:pcie-phy.3: power_on 2
> [    1.745196] phy phy-ff770000.syscon:pcie-phy.4: power_on 3
> 

Hi Robin, and thanks for caring, it's excellent to rely on your
extensive expertise on ARM in general and RK3399 specifically!

However, on my board I'm positive it does not work without proposed
patch and I get stuck with x1 link without it.

There are currently very similar patches applied downstream to Armbian
and OpenWRT so at least I'm confident that is not only my board which is
quirky and other people experienced the same problem.

Thanks,
Geraldo Nascimento

> Thanks,
> Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
