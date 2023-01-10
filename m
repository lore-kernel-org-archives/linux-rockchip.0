Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CFDAC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHL+04aRwpyWZHCMs2ymMUUk9f2K7e0rwlHR3sIcPjg=; b=gzzBTzodVRAZVg
	kwhQ2wpsVboJdKIj59IS3BjP1LNT/C69YwlOD32QghQOgJ5HWxsLDUCsilMSGlS+2MCMia5xjo3Ak
	7rHL1qt/p4RKElTSEDKpnZs4ZkKWp9tNqX7Z9LiFuI7CxHvXkrHkl4K3HwaSfnfesgCVE8qs581zb
	Dl4gKTOdzZ+o8McI8Ul+GRaTeHMqmvooVbJ2gWrnh8oicLkzr+emLPIkAHp1EF6NzkmypOtBnjWQz
	jvo4UBrkID7UDgJLbeo8HEPmSX1dPT3TRyURmvdwPz4rXrgPcDOKuMptWdTzPRZ4TkelqrSUlyPjt
	qiJjyrD74uC0KXl42wIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF47-0078vc-IG; Tue, 10 Jan 2023 13:53:23 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF44-0078tj-Ra
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:53:22 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id e76so11797356ybh.11
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rVCMSgatdIf3t9Qq9Q8tQnF21QDdXZk3rUx62zf2uI8=;
        b=hn9FBSlUWNgiKhcp+XGG6IP3x7ac3jxe3Q+cCwYFo6h+OfPXirEiREXUFjyi2FCoiT
         EHntTsn+pJ3rYh5MNy2CoDWTEbucfkEIdpm+HHU0GnOpThR0jLHKXBrncMvmBYIkBzIy
         3zKlr07MOTtQLl6sKhWWpZcIX4ZFZYveBL41ibfHkA+GcoUkpWTtoHQdyGx73QTyLUd0
         ItXmN/H9vQQYT2b4IjVsvy6Wbd2u85kBXKBzwYKpKaUxF5wMwiqqb0TTavELWHviTupB
         sKUk5vhOO0HoxTTSipHDF/xE6eNl1/gHQPxYE1uNfkRGUkEETWEU3iY0OLDjrrOh3Seu
         bHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rVCMSgatdIf3t9Qq9Q8tQnF21QDdXZk3rUx62zf2uI8=;
        b=zY8/R7T9nHy9p7PJ2iMJ92ES6TrXmkVzqS7C4fCuNURdHlL5grWa8sDSt7isQrbQhh
         P4lbXqW9QnKIIt9tw4Jnlte3p9zXAkYvx7XSov6ACglWvwW9N9z6zdGHnboe/JEfA7Q9
         HQg9lrKZY/Z4wcb1jYjpKCGaUskqqtJmlugX2ODsdHc+qgaSJlFKmJXiACQkTE1p0OzC
         d6jGFz6w064Si0eJw/r2qGh/wU5YCSnDThVtwzPn4yoWMVmXBNTaLD17USv2bS3xYpcB
         OX+l8REA1loF4AEyBUtn88MJwvPODKqFTN1+fz+tk5roWaJ+bSZ2EJ1ef7iko70PnMyC
         TQyw==
X-Gm-Message-State: AFqh2kpoTxSoxKuJY4jCsH3DwIIw3FXE9sCmgslw7A5yhrciSMSYgCux
	BiAcE+ej8r4C/LQQvnqTaPdHlRF8crpvZZTXTeEIdQ==
X-Google-Smtp-Source: AMrXdXugIKCVBl9k9fZr5k8yNXAqd8M3xUejgOHtloMcYf4xIp128JO5fcHVa46s2bGC9eoKT2SVnUE9HoyhwRFH69s=
X-Received: by 2002:a25:cf02:0:b0:7b4:fa63:5519 with SMTP id
 f2-20020a25cf02000000b007b4fa635519mr2132063ybg.270.1673358797706; Tue, 10
 Jan 2023 05:53:17 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-3-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-3-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 10 Jan 2023 19:23:06 +0530
Message-ID: <CA+VMnFxxx18=u7oFJZ9x9g0HA8PV+yNPUk7OdhffR7vdhz712g@mail.gmail.com>
Subject: Re: [PATCHv8 2/7] arm64: dts: rockchip: Add rk3588 pinctrl data
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com, 
	Shengfei Xu <xsf@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>, 
	Steven Liu <steven.liu@rock-chips.com>, Jon Lin <jon.lin@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_055320_906420_0A2A8B39 
X-CRM114-Status: UNSURE (   8.76  )
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

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Jianqun Xu <jay.xu@rock-chips.com>
>
> This adds the pin controller data for rk3588 and rk3588s.
>
> Signed-off-by: Shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [port from vendor tree merging all fixes]
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Acked-by: Jagan Teki <jagan@edgeble.ai>
Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-neu6a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
