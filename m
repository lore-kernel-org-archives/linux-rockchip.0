Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B1DAC43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 21:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+m6zBGyaFwgXvFhj3fSQd7lIL8QqPdvTvbsTYMaUhs=; b=4+0NVWjNmBO7M7
	w0HmQkAwHRhzTO4g3w0T9slglhfCrWMC92dxCydsK97h9Y2BQTEOr1eHjd4NOZW64xWT8X0lN2RXO
	g0QXp12myZVZKUFVbFfrg5sBhn4/Cuq8O1LHdJfl2g/E4v5u6gX02sikhM6LG/vY8v5w3AZPRPFcr
	S9wddxSgKrVxb8yUPgfgW1utqJgdRC6ZwMvDus35msiKoUHW1w4bl3G//dkl8Tb/ANna0967DAKVW
	zqfABqLfxe/34AvIJRsuaK5bERv+hglkGanyyOfaEwy7wDLMgbbpsg6+ARysA+aWuOsCMsEEQF3ZT
	T7M7MFNItMWivLgHAbsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1DgR-00BJ1m-ES; Tue, 14 Jun 2022 21:02:43 +0000
Received: from mail-io1-f46.google.com ([209.85.166.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1DgP-00BJ0c-Gs; Tue, 14 Jun 2022 21:02:42 +0000
Received: by mail-io1-f46.google.com with SMTP id y12so10719102ior.7;
        Tue, 14 Jun 2022 14:02:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2/cyFUpUGPUplOfOftDnZp7vPwEuiKwsOzYr7Oqpd9c=;
        b=DF/m9o9azos0UIEkvY55V/f3eUtkDfNsWs+0BfDCDrY7A/LxP1yzA5lXjfpHysuz6+
         o7XfG3vB2SoxzNvLTyiSGbsaSjqHqQBm5G48MTdSjOcm+080jLi/5DQWjpE1SvgOGtIM
         KVjbmav742v8Lqw0JQFY0aQ+dSW5/NynT5ebvv+Sc1Z931z+h8dDrrwwz4p737x5MH/p
         grO/Yr48rGKbPPfWyomGO9O959ZoS5Jg8Yjtq0qYOs9TXd8yQrPV3+WyGTT9hRaTDOIO
         JB83d02OuxHxNjL60swSWqePGgmvtAa0JnIdX/zh7RMDQXr7DHZHfZuQuigMNhStBBca
         /fyQ==
X-Gm-Message-State: AOAM531TkEkASczjXbkcOxbS/mB5UUGs1k1iLx7kW5L5/JPqHboQG9I1
	aRh/B74RUISLKT/9+VlRug==
X-Google-Smtp-Source: ABdhPJwArJB183Z3ToeeqDaidsVtxn45dq7qpYio0HGMdk7IzR5wzQxV8JC6SiQfQp3gbJl4lHM0kA==
X-Received: by 2002:a05:6602:15c5:b0:669:ef95:1cc with SMTP id f5-20020a05660215c500b00669ef9501ccmr3538533iow.140.1655240559745;
        Tue, 14 Jun 2022 14:02:39 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id y5-20020a92d0c5000000b002d5c572f410sm5885426ila.63.2022.06.14.14.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 14:02:39 -0700 (PDT)
Received: (nullmailer pid 2566780 invoked by uid 1000);
	Tue, 14 Jun 2022 21:02:37 -0000
Date: Tue, 14 Jun 2022 15:02:37 -0600
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org
Subject: Re: [PATCH v5 1/3] media: dt-binding: media: Add rk3568-vepu binding
Message-ID: <20220614210237.GA2566560-robh@kernel.org>
References: <20220612155346.16288-1-frattaroli.nicolas@gmail.com>
 <20220612155346.16288-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220612155346.16288-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_140241_595222_28FBE2FA 
X-CRM114-Status: GOOD (  13.63  )
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

On Sun, 12 Jun 2022 17:53:44 +0200, Nicolas Frattaroli wrote:
> The RK3568 and RK3566 have a Hantro VPU node solely dedicated to
> encoding. This patch adds a new binding to describe it, as it
> does not really fit the rockchip-vpu binding, since there is no
> decoder.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../bindings/media/rockchip,rk3568-vepu.yaml  | 69 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
