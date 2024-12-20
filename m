Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35CD5E77184
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 02:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEGCiNzIJmQ/upRuRiAeeSEn2HPs+z6149q7+s/SYbc=; b=iiMUGohy+I4M5H
	djWJEhVW6Flq9NYQjMbXFTtgHX0IYpQacX6HROhRDrPkNseG4o2PeausZJhEbDSZTYNKRMe557IYZ
	ZsimCGLeNZxbEt7v+OAnm8HwRq6wcOVsShEm5VYCCHuk61aOzTvfY/8RNBRDNYgufDquni4Kb+oRb
	ba+oPtHxGvSfSTz2OLeQL9Fm+hsKUNshzH+rTRb0Be9ZsWLQzUmwo5pj+CCieAhcSxOKF4ec6rrYQ
	3FZnCyhDnMm5Yk/YIWzD7NhXIHu4V1AfJg2gSIyw7s+HEGMsTGgCyAgKB8uD4QbmBWeAccvZB9n5P
	SPK4eMWOKiJSIix5leRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOSKO-00000003giI-2lt6;
	Fri, 20 Dec 2024 02:01:20 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOSKM-00000003ghA-3xGK
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 02:01:19 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-30036310158so13176261fa.0
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 18:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734660077; x=1735264877; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EWBTHFNbhUAO2tJHYtLJkSARvPMYrKVes0xn2BSQkPc=;
        b=v/QZOvTEeOyhX7cHWi6imOhuCp0J3z1C15iB/zsEEOu3UokQq3mSCx4Xc7M5HYe7Q3
         T5RYjes88uaanC+I+VTMwL7t2AZYWTUGi++gku/8CBpb0MQkx45oP129nAo2o84kys9q
         f3qh2C8jV3/4w7cr77D4wjE3lPbiLmmoyXLw+JLAJLDUF/WiWMDIGEEOJlI7xcP45oW+
         1Akq7+0KwperdbDZJTUR7VqyJ1AtHPNsn4rKH8GU31EY6nUVdYxrJvvVCzemJYkFuTP/
         +SJ1ARBmRZAv2eNmMjumJQuf1uLlphkX2bNXtTPz3jZYe2AmYwr07h/Z4OLJAqHUFIeh
         QJ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734660077; x=1735264877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWBTHFNbhUAO2tJHYtLJkSARvPMYrKVes0xn2BSQkPc=;
        b=vKTEf43gsTufYY9HubJQay61kJHtuDvr5kIL8jlHrzqhDUNT+6R7MKDc3z7XH9ptti
         7jb2YGljHkpKrj5LzqQZ9Xnxl9Ki5a2wNzsKPimMpt10J+heTDdZkxFRC6qFe2b30/xy
         P1om51085Ye9Qhje8w+rAcIG7/dxIiAs9xCwWlmRWK4ehEpOOaf+laTtEEfG7RLnsqG5
         SSc9iTYg/UVhiOcR/tGbfwWa64IyWBw7XPkznKk2ziPVStiMX0D6hGy4VsZXGAEJKERQ
         lISOPqJlvk/aIyySjil8lxWH+3wC7s035k6VFCHe90+JPi3STqueXxF6GLXhQfVFM99y
         dk3A==
X-Forwarded-Encrypted: i=1; AJvYcCXOTALAqjQ/lHkkFckRuRgAZg0d4A6Cq3F3hYVB0RpFroXAcDRvgnW0KcyFn8yQ8mC0Fr5By9wMmLqnSSvYsw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5aG/wEYm/IgKIEZn0E+2GOvM4utxdxDKA5wwy9CsynUQC87VJ
	Kpt56A5eZmXueQdVqM8vNML4WV6Cj/7vjY1uPaS6YVe/EeqAXiS6gIG//VbUNWjQXsmMGMVEAgY
	h
X-Gm-Gg: ASbGncsoojRnDFZBmFaxZDgAvvMdEg+vJLLlFfj9x4T3clynmitzVNFeK6eBpBhrRVT
	rc5LiDFxVI448ITYQ2AXf6wlDedU08M12av5ZqHL4xN5ZctHB846Oc9oyjlFd/CCNvJWeTzQe1z
	3j0RPW/Rysjt9+UxyNHpCpmhqT2ELRCqHpDg4a4JpoEla7d078ik4pcUHmGnVMvwFNY2f1s+2F3
	ho6fd2UIaPmNxGUbpOWYRdQB8rKdVeaaYLsFjLanWb1MGVzfIGBe97jBuIbNCNMpd7NighR1YLc
	Qq7IQKxFna5SOvBFoWAddV1317eyEBNuJL57
X-Google-Smtp-Source: AGHT+IHhyKDZ3R905U4863Iiit2Hr7nBV4qFueikwh/HiT57AnESraqkbGPykNmkeBs/b1aNdwU6wQ==
X-Received: by 2002:a05:6512:118e:b0:540:22e0:1f80 with SMTP id 2adb3069b0e04-54229530295mr201261e87.20.1734660077002;
        Thu, 19 Dec 2024 18:01:17 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600724sm344911e87.90.2024.12.19.18.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 18:01:16 -0800 (PST)
Date: Fri, 20 Dec 2024 04:01:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 04/15] phy: phy-rockchip-samsung-hdptx: Rename some
 register names related to DP
Message-ID: <pb5ds6pyugndyfttqeyy2czumaltagbuns5zfclvqpwcp5gdez@tfsgukr6irzh>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-5-damon.ding@rock-chips.com>
 <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
 <20d95d18-ddbc-423e-ab15-d246dc605527@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20d95d18-ddbc-423e-ab15-d246dc605527@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_180118_973401_FA6D1492 
X-CRM114-Status: GOOD (  19.96  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Dec 20, 2024 at 09:46:24AM +0800, Damon Ding wrote:
> Hi Dmitry,
> 
> On 2024/12/20 8:22, Dmitry Baryshkov wrote:
> > On Thu, Dec 19, 2024 at 04:05:53PM +0800, Damon Ding wrote:
> > > The modifications of DP register names are as follows:
> > > - Add the '_MASK' suffix to some registers to ensure consistency.
> > > - Complete the names of some register to their full names.
> > > - Swap the definitions of LCPLL_REF and ROPLL_REF.
> > 
> > Three unrelated changes, ideally means three commits (I won't insist on
> > that though). Also please mention that LCPLL_REF and ROPLL_REF were not
> > used by the existing driver, so it's not a bug and there is no need to
> > backport it.
> > 
> 
> Indeed, it would be better to split this patch into three different commits.
> However, I still want to keep the fixes for LCPLL_REF and ROPLL_REF because,
> according to the datasheet, they are indeed incorrect. And I will describe
> the suggestions you mentioned in the commit message.

I meant that the issue with those defines doesn't affect existing code,
so there is no need for Fixes:, etc.


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
