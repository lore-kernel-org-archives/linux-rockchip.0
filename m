Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EA4AC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 13:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2x5/RiQrZE/4OO4fW2iqCBHTr+w4YboHK9cYrCfVNRk=; b=i7Lxnt6sKGWq11
	L4/weMr3w+3Ue2wCxtgktcY54N3kSIwhLaVgTwQR6FrFfvld4BQMnS/x8Ybo9gLKqsMz/5qT7VsSE
	6HrNFrZ/tr12dG5dLf6oO4dCPHeHfhz+TprhdnjqQLkXRYb17ao76I3nOhn+t6ZRBjx58Z/MdTE7i
	j/JZPt6ClfrSZZ5Bbn4awjNLNf0A/YVoawwD+0PHS2flLosbKIDNpV+++RGO4fg+O6/2y9gUeGTf8
	uaUwQaFq6xnZXzBodUycoecwfX6P2drsbJkAq1uk3R4AscfoRPFsgJnq+PtMoE4D4L+Yk4ChzCVHj
	xXxkku82URKFBlfqiNfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbMH-0000000Feg1-2Cxg;
	Fri, 20 Jun 2025 13:00:41 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbMG-0000000FefZ-0Ce3;
	Fri, 20 Jun 2025 13:00:41 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-742caef5896so1363615b3a.3;
        Fri, 20 Jun 2025 06:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750424439; x=1751029239; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oSvBaEOwHs3K5QkOUjfhZZACAj/9HP8HSOlO7m0z0Zg=;
        b=CvE7M3YjpYx55d+zdhn2exGiKXx7q8AMkQnDlF7dMACJCTBO0b3pmqknFycgD3WFKn
         NBu4CZdsQw3e1/kIAvRtKUBW7AZTiCDQ3fEzNpV9LskYqdgkDmhJNRPh2IMDuO3kiMGV
         eH+i6urJS0iNgptageJX6kVleZXGkBQszjmPUoY1D1kJG/cgLNenvza8c6XIUS83qmwh
         T6PPpGClmHsfl4lZTovspG3jdow1n+AR3/C+tGNA6EQUxRRo8TL6o9By+XNrmCfJje+8
         F0sh5MgBbBpwCLe/lU9sF8lxb/cRQ2FK45tptuv/bchvsNFBd8Nqrp8uvY5Y6Bzqe+Nl
         cA/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750424439; x=1751029239;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oSvBaEOwHs3K5QkOUjfhZZACAj/9HP8HSOlO7m0z0Zg=;
        b=TFQdhJv2xSRYUrETU5a7H304SQ/KH8IRzdSDvsC+bkK4rLAkhYL2SOGNs19Y0FxLE5
         O+z8Kf5HvEO3cm49kzS3V6rk3DTCKITh/oqS0NlMhsjz4Bq+reQ09JPt5QVirQeDI3jn
         JFQ7ybKrb9A1Z4Y0cPLtE52RJldok5SuLcmkPBjplR/TA1i3lDvfQ8KsSSat9VT3UUEK
         2ske+I8BUPQ6KigibXj6wJ0AyBTnmD1KVHq+PztfzURXVUJqeyyt2uUYIfZT7/Xo7RX5
         y4l12UmZYTQTavUiMRXJLbjAbJoVnxdhWgZZAQWYn2DOFKyCHhJc4FqJQVWehFJqLhFC
         u0sw==
X-Forwarded-Encrypted: i=1; AJvYcCWaXNrtok8xO3avM800+jbm6G5NL4A9c9x3+g+hb3bHzEtrXDcqCBpftB83AiuJiUpqGnJVNIursqxH@lists.infradead.org, AJvYcCXS4t3ZHW4dthh7W5sNCL5n3vIMh1LJXHsvv3lqFhx1f20l4dYhKmpmGbBTkWoT0wtbdEy2mU+LkhGSvRePt9Y/@lists.infradead.org
X-Gm-Message-State: AOJu0YwO9QU9uVboQEu/MtwfpZRpHEJHZGqsukcJ7Kk6u1l0TPTRrCbE
	tn64enZtqU7/XeTWyDp7P3SqOCV89WzvC1/soNaPXTNGqht6EEC/vyUg
X-Gm-Gg: ASbGncvQpF/h16PVBbdK9p6Yon7NQW0f7KlxDa5aEm6crFVCpUnHTG/VnqVaQBku/cG
	qtu99B8cK+1y2vvrPtDfMeRKWpLHnz4IAcYnjE2qoNbzGJRcXLQuIf+25UPTdOSGtcMs6aRisRa
	KbxGaZvoE28lDJq3XyuTvKWBU6JGprZbhQkLBhelQuuytv/DY9/XaWFYkrXoEcuBjocJXq6MobF
	QbcMHvFYJD7GVU64y4gAl8TxcEXI0HSuE3mBYssS4Hj1Am5P32XjYSMAoYn6KPkHbtMOvQu+RKj
	SZDKM/JuGx9YBL3g6WTd+8t+uLnQcjruBW+ZRkDoSTvq0g5RJA==
X-Google-Smtp-Source: AGHT+IH769Yhqpe3IGCT87lyXbykB6q9+9qjkxaYFu3oBfVpD+WnzrOHIxyf03fBlIyFkkLBax0GxA==
X-Received: by 2002:a05:6a20:748c:b0:218:5954:1293 with SMTP id adf61e73a8af0-22026de98cfmr5302329637.34.1750424437536;
        Fri, 20 Jun 2025 06:00:37 -0700 (PDT)
Received: from geday ([2804:7f2:800b:cab9::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a69b973sm1994049b3a.157.2025.06.20.06.00.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 06:00:36 -0700 (PDT)
Date: Fri, 20 Jun 2025 10:00:30 -0300
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
Message-ID: <aFVbbnl9UscGQoqC@geday>
References: <cover.1749833986.git.geraldogabriel@gmail.com>
 <ce661babb3e2f08c8b28554ccb5508da503db7ba.1749833987.git.geraldogabriel@gmail.com>
 <4c2c9a15-50bc-4a89-b5fe-d9014657fca7@arm.com>
 <aFVTdYWxuq9YzVQR@geday>
 <413e7ed5-fc4d-4e4e-9cb4-234c41db267b@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <413e7ed5-fc4d-4e4e-9cb4-234c41db267b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_060040_086257_B940E9A6 
X-CRM114-Status: GOOD (  17.81  )
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

On Fri, Jun 20, 2025 at 01:47:35PM +0100, Robin Murphy wrote:
> Ah, I put that print at the top of the function - on second look now I
> see that there's an awkward mix of per-lane and global data, and pwr_cnt
> is actually the latter. Sure enough, moving the print past that check I
> only see it once.

Hi Robin, thanks for re-testing and no worries.

> 
> However, I still don't think blindly enabling all the lanes is the right
> thing to do either; I'd imagine something like the (untested) diff below
> would be more appropriate. That would then seem to balance with what
> power_off is doing.

Thanks for the suggestion, I'll make sure to test it appropriately
before sending v6.

Thanks!
Geraldo Nascimento

> 
> Thanks,
> Robin.
> 
> ----->8-----
> diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
> index bd44af36c67a..a34a983db16c 100644
> --- a/drivers/phy/rockchip/phy-rockchip-pcie.c
> +++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
> @@ -160,11 +160,8 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
>   
>   	guard(mutex)(&rk_phy->pcie_mutex);
>   
> -	if (rk_phy->pwr_cnt++) {
> -		return 0;
> -	}
> -
> -	err = reset_control_deassert(rk_phy->phy_rst);
> +	if (rk_phy->pwr_cnt++)
> +		err = reset_control_deassert(rk_phy->phy_rst);
>   	if (err) {
>   		dev_err(&phy->dev, "deassert phy_rst err %d\n", err);
>   		rk_phy->pwr_cnt--;
> @@ -181,6 +178,8 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
>   		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
>   				   PHY_LANE_IDLE_MASK,
>   				   PHY_LANE_IDLE_A_SHIFT + inst->index));
> +	if (rk_phy->pwr_cnt)
> +		return 0;
>   
>   	/*
>   	 * No documented timeout value for phy operation below,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
