Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D1A7CF6498
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Sep 2024 23:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xEqC4INEX3Ynnbdz/7XNUwpHacvREcS8C13yOew000=; b=VsJD3qUqTpRmGW
	eWA9mx2QHNZBlQqhR90Wc/CpVpjLwfeRz7qpyAmlQCmsXw1FzWRcXRGMxyLZvwLjL4dflkZkSmGOw
	Hx2z1TgsHMDLIA211TJ6Tse7LPgK91Rh3uKWOZZc2EAzrtnPVdUQFQBD0fioCX9aAljSsUEcgJn14
	UlG1NYrdk+7ohYLiCKbE6Yv0FodqPCETQvyQddb8Fi6SFxztsnwERi6zHsnfkNZXXKewD6JDZxtp5
	LU/fRvlhGfte5aKALSpmxOwAJNGT+OOtHdI1+S4HG/rKFV/28GMvVRGte4X6NRYP96DQEthvOtAzG
	7jUD8B1OqTujZ0pJjXrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sv3kS-0000000FYy0-1FeN;
	Sun, 29 Sep 2024 23:54:44 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sv3it-0000000FYjC-0aIz;
	Sun, 29 Sep 2024 23:53:08 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e0d9b70455so1797573a91.3;
        Sun, 29 Sep 2024 16:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727653986; x=1728258786; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cZj7rRCbSp5Le72reiEeyBZIYO4Rp1cDLd9uDCcf9yw=;
        b=JzDvvl7v30AsKjNJkOcxKzcrSWsMRbdDQUT/ChjNBIxiUvRcZdu/WL1FivjmfyhaLU
         blh8PpYXYoshRMPzC3PImSWteVIYX4tz3UTPitJZBh5Cq46L+iki14dfqgb8huVPL9r6
         pzZqJgLE8f6gwQave77yhLKDHQe/baz30nlmcxp3zx+5uJTWPuOKuXu3+wpCmsR+ANEG
         r3y2AWlf0OufEkavd6s6OmjooYM1C3LWkkKOApI0S2B4O5qUzoaz+zLQhBNFBKXiOTKK
         51y7i0vZSEKZj8rLLC49xZSjnSr201C2HH5M7KLKxuICdEHhBrPHTlJYTsLIm2B78TkZ
         t2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727653986; x=1728258786;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZj7rRCbSp5Le72reiEeyBZIYO4Rp1cDLd9uDCcf9yw=;
        b=sgdGrc7iyTVgXWX+9I1Qi3OHQhaFVRZgczUyKzW49+tbq+w9yHuXaQ+I5+6mdAzMJp
         1wcYTSsHxo5EXoAe0niulf2xRB1heRFPAvM+IgtEb5bIDrn32INLJZnu+UZyLIDxzPxu
         BhsZwa/eefz+sbKwJ1cOaExyuimCCRons9ZLpbGBOGeQ+AMYjzD+hQ3FTmkBlH2z0wNw
         qgf49T1pdP8iOZvX/w8HVXGb0VhUHhdOu2KIOD2NFkPjK3nTf+6E6h41Yak3cJNKFOMx
         t27vhuHBmKW/Ags09xq/FbvWJYeZOFQXEF9tJAQw5u09yK23zPhd+3fe2nkWLbb1nf11
         bkVw==
X-Forwarded-Encrypted: i=1; AJvYcCU7qGbWHIcqxTeasNBqNCEtYyd/g8mBdgER2aUX7qM1dD+88D3pzbpL/tY/aQCPlBR/TCru7JSznoiO4b1q4y5z@lists.infradead.org, AJvYcCVlbr758mngImGJQnLnSkMx7UtI6uWEikcdgtpaCDNz7BXDDMBmdvzrCQ5YHKGmT+yhMirf+Q0EJQnVTqBG4Ko=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1stxML8gLqVwaklq3dn1B5S7szHztRou0e6xMu+B9U3zmYO5A
	KEm3CZb3Avst5j05fptcEwAmEy6oNhDzI0/3u+2PCpWhUwbt7LOb+sgpiw==
X-Google-Smtp-Source: AGHT+IG9mOvJW4+CYn55cAUlBeq5AoaNchjydiS1B6g7Lp+N+fyK6WtLToJJyPNspzD3bpThL4wCdg==
X-Received: by 2002:a17:90a:ad8b:b0:2e0:9236:5bb1 with SMTP id 98e67ed59e1d1-2e0b8ec017bmr12709284a91.30.1727653986182;
        Sun, 29 Sep 2024 16:53:06 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e0b6e13d01sm6414300a91.42.2024.09.29.16.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Sep 2024 16:53:05 -0700 (PDT)
Date: Sun, 29 Sep 2024 16:53:04 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 4/8] hwmon: (amc6821) add support for tsd,mule
Message-ID: <a49f51e4-71d8-4a88-9827-51db67f208da@roeck-us.net>
References: <20240906-dev-mule-i2c-mux-v8-0-dbd28a150e41@cherry.de>
 <20240906-dev-mule-i2c-mux-v8-4-dbd28a150e41@cherry.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240906-dev-mule-i2c-mux-v8-4-dbd28a150e41@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240929_165307_206505_649E91BE 
X-CRM114-Status: GOOD (  11.28  )
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

On Fri, Sep 06, 2024 at 05:54:15PM +0200, Farouk Bouabid wrote:
> Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
> among which is an amc6821 and other devices that are reachable through
> an I2C-mux.
> 
> The devices on the mux can be selected by writing the appropriate device
> number to an I2C config register (amc6821: reg 0xff)
> 
> Implement "tsd,mule" compatible to instantiate the I2C-mux platform device
> when probing the amc6821.
> 
> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>

Applied to hwmon-next.

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
