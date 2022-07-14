Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70CBCC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 18:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+xZeYlpvWzKVrfZBtE4/e5ptB6H87Drq9Texf9AvqA=; b=u4vDF5k4pnPlTK
	5XBPnKF/idcsy+71aJhJJWxYa5BY+1vprjmXDYojtsH0YxFb3j/DsdvWSxEflqY+anGkvsJ+u5HNb
	ND7vex20+E4wDYjlOd76ID3FfmQTtSK+OsXRXXNPIKoYhDWePz2KwSgslk3y9NNKMAhRCteU/xG4j
	ucyHELAq18rdapGnuaaG4L3UpqOSE30/zNdhT2UCqXCIemhgGHPRgX8kw2738UPj+2idEE9Bx+Sof
	aRmvIW+DPFZx/imxLHHvNrkre21oitMyu3Jl4lye4tenTY1TYQ2QqlYd9VkchieRx0RMoJgwt8Swv
	IpmpvXRU/HfuPBYzP4CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC3MZ-00H3Z8-KI; Thu, 14 Jul 2022 18:14:59 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC3MW-00H3UA-K1
	for linux-rockchip@lists.infradead.org; Thu, 14 Jul 2022 18:14:58 +0000
Received: by mail-ot1-x330.google.com with SMTP id r22-20020a056830419600b0061c6edc5dcfso1753995otu.12
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Jul 2022 11:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yL38y/2bFG1AO5qjLaabbJhiweElDmrY+o816APFSRc=;
        b=Ux+0eZn8uZtPH+hZ2lAG9pVVSBXTqp/fZBKovKB09+ewbBwSxUUfldTSCtw75y8LIv
         +tO7muQOWwlfNC51j0F7GNuUhwVxTPmLNQk/5o2qEQHoD0y/dEsVbJVAF4J25HtTWYFM
         vHQJ7vLQHU0xHeP8k4RYHCAUU3cGCE7cG5ZOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yL38y/2bFG1AO5qjLaabbJhiweElDmrY+o816APFSRc=;
        b=KNyCuc2diu8Gsl5d+7a7j06PFnoI1jzD+ID/1VOBh+7mY57cqDOy5OTF/GcUcJ3TsF
         y4h7ZdnAWdlZ4LL82eccoged8omHiirK5Q9Umfk9fjtvvY/6x8vFhtYHPDaaWNuLKjLf
         Tio/e7CmicnYsIKnWPES0ABV4AizTitMSOHYIZjLpFaL3H6jyqgEq78/NQA4vPEXyPfm
         xluipYFtpt/2kncdxZOG/O92z6cAUNEWpuqX41yv/lBFJp4CLvQkhuT+XurDFOOSlDVn
         cwvPFvpbFb0ryDO5fB/B0FBd+1NEQdAohasBGmOJNP9ojOqUsAe8FWtYnDOt3Id+/X8L
         B7jQ==
X-Gm-Message-State: AJIora+lNVDXf464CcTMzqoY1hoMja0Xkg8ak0Y8ka/oCJI+puQDSWHt
	FzRNowa0BNyQ4bjZqKIvuOEJmPdqga4WkA==
X-Google-Smtp-Source: AGRyM1t9xBGlFOkcUMJ/kgls4kpARu+MDHtxRFDUTzgSiwmuXLdFaXeSAJ2zk9vsJoKt1v1l4h5jlg==
X-Received: by 2002:a05:6830:1cc8:b0:618:eedc:3909 with SMTP id p8-20020a0568301cc800b00618eedc3909mr3850817otg.58.1657822491222;
        Thu, 14 Jul 2022 11:14:51 -0700 (PDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com. [209.85.210.47])
        by smtp.gmail.com with ESMTPSA id p13-20020a0568708a0d00b0010cb6fa9166sm1244146oaq.0.2022.07.14.11.14.48
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 11:14:49 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id g19-20020a9d1293000000b0061c7bfda5dfso1431844otg.1
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Jul 2022 11:14:48 -0700 (PDT)
X-Received: by 2002:a05:6830:3493:b0:61c:140e:b2e2 with SMTP id
 c19-20020a056830349300b0061c140eb2e2mr3766958otu.292.1657822488121; Thu, 14
 Jul 2022 11:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220708080726.4170711-1-judyhsiao@chromium.org>
In-Reply-To: <20220708080726.4170711-1-judyhsiao@chromium.org>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 14 Jul 2022 11:14:37 -0700
X-Gmail-Original-Message-ID: <CA+ASDXM-Cb8idKp+9nBDrGd5SRb4dy20TChAQT3WmdwS+wbzNw@mail.gmail.com>
Message-ID: <CA+ASDXM-Cb8idKp+9nBDrGd5SRb4dy20TChAQT3WmdwS+wbzNw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, Lin Huang <hl@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Shunqian Zheng <zhengsq@rock-chips.com>, 
	Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_111456_710463_6C6AC9BD 
X-CRM114-Status: GOOD (  15.24  )
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

On Fri, Jul 8, 2022 at 1:07 AM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on

super-nit: s/discoverd/discovered/

(If this is the only issue, perhaps Heiko can fix that when applying.)

> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
>
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
>
> This patch adjusts the device tree to allow BCLK to switch
> to GPIO func before LRCLK output, and switch back during
> LRCLK is output.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>

IIUC, it's not guaranteed everyone is using max98357a on this I2S
channel, but I suppose this change is still safe anyway? Or if this is
expected only for Gru-related boards, we could override the i2s node
settings in rk3399-gru.dtsi or similar.

Anyway, I think this is right:

Reviewed-by: Brian Norris <briannorris@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
