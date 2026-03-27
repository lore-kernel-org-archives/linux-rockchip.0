Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3059210A88E5
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 14:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aGnYOAg+Dy9oEhdtSZBjaVgxCCPdF3de9ndqTRCrsU=; b=4Sc/yr9D6xQCb6
	H0+pg8hK/E6N8dGiIEAqh0MX8KQh9WWzAXBvbLlh0NXxmVMzthki6RHil7VImnoGd4i35aXHNBiqg
	EQOHAoE4Lw40259WvNNdRz5sY2cKHdHqmnqTXKEf6ssX4ITBv4ryHCG3U2frRtKTrspYdqqMj1bn2
	USvrvG6uTFKNWpC4xrwOxD7pXr9I9i7waMtjbANfHhqTaFk6uyLmN6aIYozt/FYKNIt2vPNg3LMHm
	VuWmg15GBhQWMMifCZEhvuCroOHMLPPJb8bEQo8696xXXYZE0DmWKudJdUrorlBla8pJDytIWa8Dy
	7EgCpHLA5ZiK8NYnNF6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67vz-00000007Zm1-2iyP;
	Fri, 27 Mar 2026 14:13:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67vy-00000007Zlo-0jXp;
	Fri, 27 Mar 2026 14:13:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 324E0600AC;
	Fri, 27 Mar 2026 14:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36F51C19423;
	Fri, 27 Mar 2026 14:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774620788;
	bh=5mcg1waPoO21wSoUWMynxOB1O+1L/amm4zTHgrcVfQc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NGhTJMkh9Bq+k5+k40xOk3NeFoqbDJo/I30Evnz/mWtxMt3VlEaMpsrG2kVcpdgrx
	 mgjY1TYRrpGs2SUriLWnErf0NxHX8J2s+1TSggVuTcFCCgbA+9gAMwMXKy2ajtAMVW
	 psCh8SPtq/sUPrkouY9yCGB+s+hk2IhEG5HgBbqETSvuCuu0EuF+zSrp53uGd11Q27
	 ogRz6OwWmBEV+dXlrLobzC+68g3q5g7OjKiPGOXUEq7prS6Bfk618AyepMokewo6Me
	 GG4wbsShy/h72C9j7E4znJeCSxVjxYz3Q/GUMkg7sVq5LiOrhOWV72tFYFMAPsPCMu
	 Wd+VaI4cDgegA==
Date: Fri, 27 Mar 2026 15:13:04 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v2] i2c: rk3x: add support for SCL OE debounce and slave
 hold recovery
Message-ID: <acaO5ouMmGA8-tqJ@zenone.zhora.eu>
References: <20260321105146.7419-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260321105146.7419-1-linux.amoon@gmail.com>
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

Hi Anand,

...

> @@ -1125,6 +1141,17 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
>  		}
>  	}
>  
> +	/*
> +	 * If a timeout occurred and the slave is holding SCL,
> +	 * re-apply the timings/dividers to attempt recovery.
> +	 */
> +	if (ret == -ETIMEDOUT && i2c->soc_data->has_scl_oe_debounce) {
> +		if (ipd & REG_INT_SLV_HDSCL) {
> +			dev_err(i2c->dev, "SCL hold by slave detected, resetting timings.\n");
> +			rk3x_i2c_adapt_div(i2c, clk_get_rate(i2c->clk));

argh! this nests i2c->lock. rk3x_i2c_xfer_common() already holds
it when calling rk3x_i2c_adapt_div().
Andi

> +		}
> +	}
> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
