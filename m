Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D37C05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZuoLjrJ3kLtlXNOOFl8U270drgcIvGtJkK33eTUljU=; b=Zhh9gqUSMx6Ink
	hJUEa5oMbbaxb46MGFgYBpW2bgX/P0s0mjmsO+NHDbg4oAJdmogNU747ahiTnnlPRBGDaRBcJPO48
	+eT1Io8b8znIaE0O+v2oPQqtaDkvmAkzb1eagn/aWIN8rAGUAOe3FwUzvyfli+ObDRzW5uoozsAog
	1n+MJGhxCv7gWAHfUxsyXdfLfsDi17/nKxvBnC/JdUNhtvLjXrBMgWbBQs9kE31dTRxHcBeAsCgw7
	dsBMefsK9DQ+Ouhch1ecYRJQ8iSsMypkgi1+TV36e5gg0Iz3x3i6rxsccjGBQym1acb7l8Vh7GUTI
	flk2rSMOqJRkhvCes+Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImjn-0092Rh-BD; Fri, 20 Jan 2023 08:27:03 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pImjY-0092JX-GC
	for linux-rockchip@lists.infradead.org; Fri, 20 Jan 2023 08:26:49 +0000
Received: by mail-wr1-x436.google.com with SMTP id n7so4137804wrx.5
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Jan 2023 00:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dQD3SeU5cieHqSaSQOFOuvwfEvzyXZdGHoT+3iMV3+Q=;
        b=sVyo1WQwvoZ440cfSfd/pBn6sA68vMHM8R19MkVLWsSsjdsZTDLI/NPzuoCWheFB43
         U7XktPstpagWZ2qz+/mHgKjzQQgu3K9H8IY2GeXgWQYXzCePDwAWGP8CDHTPDv1XAbUK
         dLcildkMljvAn1QFV/+0m7H3A/iSELWMk8RmyCxo4MfsLd0NJX4Bq5SCA2I+UggX4tp6
         W6pC9BpEKDUFQ3uN21L7ZEHZbdVwujf+RUFsv+roVc6i/LE8/3KauFC7lJjED2eJXAaD
         OkTontz5KnEQacEvrHalrX1nNKaPgQUBXoYOJu+4WJhlFa3MztSxvXw8DUEY7rb12NJP
         jhYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dQD3SeU5cieHqSaSQOFOuvwfEvzyXZdGHoT+3iMV3+Q=;
        b=qrAEyGz6HcFiKVioQe4pq9KCwWW8ZDzEwEgG5wi3oD6POVoosSLMCDDr+OjHbGIuXp
         6rtTTjRCcG7SxEvp4+5oOmlmZSHktTQJEG5fi7z7Gn59Cr7tWKylzlgDE4URp4TtZi+8
         Qnuld9GIZx6knXzM7EhnvSobK+5MOVcKOVdyCnYj0AgtAb+eIG+NnMZZoDSn6OX/N+tb
         RcHvOvtH+EDpEt3OdJ2eMlETZUuNzMFYM3bSzCO0p7QqkJXELUJkVgmUsnncLotnuHv6
         3QvN9vbLrFxV66RkRw9wqMiVI6uSoe27FqGwXSXO2Xq90BdYTLTVAtVEMZJBUeqd/TFV
         GMfg==
X-Gm-Message-State: AFqh2kruaKJr8MXoeyuyVebcU13WP9mvHM2NiRVlUqvms1Omdi43m/dN
	UnezW8PdxlgHacCXx5u3acBDwA==
X-Google-Smtp-Source: AMrXdXumlxfJ8KEAKW4uHiXN9MBz2WNa1cx1COulyE/9/p90MuXxNfk3ZAmuW8Tb8rR6CiXOYcG//A==
X-Received: by 2002:a5d:6447:0:b0:2be:34f9:5284 with SMTP id d7-20020a5d6447000000b002be34f95284mr6818039wrw.48.1674203206302;
        Fri, 20 Jan 2023 00:26:46 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w10-20020a5d404a000000b00275970a85f4sm35371733wrp.74.2023.01.20.00.26.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 00:26:45 -0800 (PST)
Message-ID: <94655b6a-4e2b-9ec5-8c86-17cb8690f44f@linaro.org>
Date: Fri, 20 Jan 2023 09:26:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 3/3] dt-bindings: display: rockchip-lvds: add compatible
 string for RK3568
Content-Language: en-US
To: Alibek Omarov <a1ba.omarov@gmail.com>
Cc: alexander.sverdlin@siemens.com, macromorgan@hotmail.com,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alex Bee <knaerzche@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230119184807.171132-1-a1ba.omarov@gmail.com>
 <20230119184807.171132-4-a1ba.omarov@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119184807.171132-4-a1ba.omarov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_002648_565883_D506F46A 
X-CRM114-Status: UNSURE (   6.95  )
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

On 19/01/2023 19:48, Alibek Omarov wrote:
> RK3568 SoCs have a single LVDS output, that use PHY shared by two display
> pipelines: LVDS and MIPI DSI.
> 
> Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
