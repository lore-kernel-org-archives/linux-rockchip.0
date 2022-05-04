Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF92C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 15:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwxbrHPdjVXnCn4PcNLRtfcXqQYJM8eChT+4Slb2W3U=; b=D2NUzITuHQLoS3
	C5Nw7TkxMa2uTcxWJ/XDnwozx3cm7NFTbK5FaI4IS5LVMnwDCMdPOy14Bu7q/mMfhHlAvP77+bUta
	3jExCwq0StSzg1YmRrGJ86CcLlji8cKDsoYccxz0sKHXqvJxqV+EAq1WG98UxPcc28UcK4HXedn9p
	xGQBuBa9NjohsSiQccDy+VPZmJeJOwJOj6pgyVw3fLS0JUy1W/nU3Qztck+jl21HGLpgqtBLGeZPC
	3FENelAStxBW/CEzzma3YAd1nL+jKQPxAhEyExjKuVZ9vh9XlaMM5glrOyL/+eb0osbeazXp3DbRL
	NksqXNJCi3u2h0MY+Zcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmGpe-00BQ6Z-Tg; Wed, 04 May 2022 15:22:26 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmGpa-00BQ2a-6w; Wed, 04 May 2022 15:22:24 +0000
Received: by mail-ed1-x534.google.com with SMTP id be20so2064734edb.12;
 Wed, 04 May 2022 08:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xTYBUgx4sIq3qSVsjgl0przbRExfOFSCf3/4HQ5y1Uc=;
 b=Tg8Bx/C6xSkcoO2dnyBeqWLtw2X4t7JrowzuBljo19KkSRX3m38bUXkupa3z1LKIYj
 lDc8dTcPIaGDiX8W5KxFNIyHS5gvtVITsZz5B0sxg6t6qFqj8XmvaUZKitBipDise3vG
 zloRxSRT4SrmBSzVIvtpBZBpluOGNuOOCbkwR9MDxZxTkD56RomzQqgffTRXpUBZ8ege
 EWkhyLiMvel0CWoo7osXQxbTKp1qYa/QYtC3hy4j59fctlVsilNKhTrkP7lM+JRKigJF
 OGROArQqHuYpH/tamBr4G2HaA24v8QKypOjDCBqglcJNUxpg+C9EJEyksuZJ2hV58FKV
 GXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xTYBUgx4sIq3qSVsjgl0przbRExfOFSCf3/4HQ5y1Uc=;
 b=uOK5IekRPq6Q3kx2e25wwvlIXxsgwjzntWBpg17kTfFyZiZzahn/P3OLxWR1PlFo6A
 ccvmPGYeyz4W1ZkkgSabmsZXVupIublfBiybQaHRoJyoaHyiQY5ctCxDt1sH2vBnhn4l
 dz9SZav6IKJujHqJy8ijbVBcW62fddDE7YcZ/p+uze33nSkwaIlRKnt8na7o+AcqGWx/
 Ahb48QL9SKiHkeRgWtbBcXunJcKGSW0JAkPuDzawere6WoDzRK6m2OcwDZB5MTlnnM78
 UPrZbnd1cNriS9Ai08wwh0gqpf0TCpZ2Jz2g28+xmidqO9qSsmsyRPGRA0A3657YQK7o
 qFRQ==
X-Gm-Message-State: AOAM533WcSffS6oKZoc7FrAJ09hPfv0I7SZ5NHoTPJops28U8e5WRYC3
 KtYDVvyvo9fCR37I+LfDK4U=
X-Google-Smtp-Source: ABdhPJwQSHC3W2lpy/MOReI9kMJhEDuuR09hgP0Zb7GTtVs88FaRrxHsHhn/RqOQZsC5VpzSXtF99w==
X-Received: by 2002:a05:6402:12cd:b0:426:16f:c135 with SMTP id
 k13-20020a05640212cd00b00426016fc135mr23796449edx.297.1651677738235; 
 Wed, 04 May 2022 08:22:18 -0700 (PDT)
Received: from skbuf ([188.25.160.86]) by smtp.gmail.com with ESMTPSA id
 jx4-20020a170907760400b006f3ef214da3sm5739421ejc.9.2022.05.04.08.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 08:22:17 -0700 (PDT)
Date: Wed, 4 May 2022 18:22:16 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>,
 Landen Chao <Landen.Chao@mediatek.com>,
 DENG Qingfang <dqfext@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [RFC v2 3/4] net: dsa: mt7530: get cpu-port via dp->cpu_dp
 instead of constant
Message-ID: <20220504152216.747ckl3km7vbep4s@skbuf>
References: <20220430130347.15190-1-linux@fw-web.de>
 <20220430130347.15190-4-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220430130347.15190-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_082222_325499_113B9940 
X-CRM114-Status: GOOD (  11.10  )
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

On Sat, Apr 30, 2022 at 03:03:46PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Replace last occurences of hardcoded cpu-port by cpu_dp member of
> dsa_port struct.
> 
> Now the constant can be dropped.
> 
> Suggested-by: Vladimir Oltean <olteanv@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
