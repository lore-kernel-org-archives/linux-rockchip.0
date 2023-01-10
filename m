Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FCFAC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVfcodIb+DjjuygIYpQLWuxxTNtfAIuU1B4aZkdcRrs=; b=CEI1cNWyKCGZWk
	QiHQBakictBPx/3jGSjSRu3/+NXUQ+GXjjDzYiLiaBfDwtWYmqHZC8q6l9NBj7LJ05sWx6Cbu8+SL
	ZXR7sU0D5EDq8+Ysw3GyTqDku3dWsI28V0kW9dFCoVec5lfkp3WsG64xND6O9snmzmD44N6oJUjNK
	hP5294aP3C+3bUBoLamalv0/7pJXj68RkUlPF5xb/QNRXo06PZhJ+hvwzQPMK/46bTGuT7VIxZ8y6
	1lccadC2wjHvK0zYVAK7023lKKZYgy8uORSGLBMxdCoMq8ZlQUow4HB6+MI0UspvONkBUMEbMjlte
	mDTGiYDcdC5dNH9HSyCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF83-0079p1-PR; Tue, 10 Jan 2023 13:57:27 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF80-0079nl-TY
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:57:26 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 188so11806328ybi.9
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4Mu/An59fONbzPRRXniVbBo2b/RYl5DOA+W3aYaQcyw=;
        b=A+VwZe+u1nuaXMwW6Cj2PrS1qQQg+UcBPDvzx7xTvRgfxbNtZ8mz9+BYaTjmAkfAXC
         fChq5JmsNAjOSXSJmXZRhVIBHUvkaWiCrAx/YTbAE0A+BKjkshO0d/CzrCmn9dcpmqLm
         eqoAFNY+H8j4hmZGNLv7WWq9h/5KfDSMkZPj9/cw6UartHfIcRawTTrW5OTA1XA3DK/v
         OUJOEO3PTF6cwSOfVc25N1vISgwimjp1vodQE3p7Po0nUm6SXBweDQ6QNTSgQvM2b4MZ
         1jsTeGkrpFgnh7Y7cpzU5hYQioOT/hOqEPlplMT8VAimjtlexJDwcxCQ+zc39Fk3SPMK
         qU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Mu/An59fONbzPRRXniVbBo2b/RYl5DOA+W3aYaQcyw=;
        b=VaQ4+3xISf+TjbIUfwaAhnqwkJSPM+4nv7SavS0WwMVCLtu01FG1XrneJ3IAuFXwYX
         f4iDSIdcrFKOno0PJISkQxKd3REmONcqf0YtjuXaj3LBdq5oaxwBZAxTflMfxuVD6heJ
         z5VlxR0R9sqP+ZP1IjkbWcJBPXuZt2OrcOaL0QhJjboo8N2+ryqg5hK03whkTnzi3LJ3
         frz/Oj2zsF11OBY+LfKXyy55MHnh/NjiIofTGHcDQbKc8NzcSqO7VxKst9sdFdXHPpAS
         kWNOUSDJCIughb/WbKaUkBJv1pe6GTpCBwG9y9HRxCaLd3FHG1JwmRzoKF2//5UiUZhl
         R/aQ==
X-Gm-Message-State: AFqh2krEQYTUFSJOiCFAACYKEFwjI35edeNXWfG1v8NzrLxDzfoPIBzT
	8iCJic+O7bx3VFNp+rtKpFfAffeXQkqHx9197FCHqQ==
X-Google-Smtp-Source: AMrXdXvJRRkuDxhywF9so2rhvJI+tN5+UMoa9SjW3oXrwilPFR+vyfb1fDxa95qStrW3l7lP9zl+bLyQEdFDh5onnzc=
X-Received: by 2002:a05:6902:529:b0:700:331d:69b4 with SMTP id
 y9-20020a056902052900b00700331d69b4mr4862758ybs.101.1673359041793; Tue, 10
 Jan 2023 05:57:21 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-4-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-4-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 10 Jan 2023 19:27:10 +0530
Message-ID: <CA+VMnFzM66AqDJJ6Nu--SG3dAt+MUGYMP3Y9LGN3BgV0sLkwgw@mail.gmail.com>
Subject: Re: [PATCHv8 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_055724_974101_55590F0C 
X-CRM114-Status: GOOD (  11.01  )
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
> From: Kever Yang <kever.yang@rock-chips.com>
>
> This initial version supports CPU, dma, interrupts, timers, UART and
> SDHCI (everything necessary to boot Linux on this system on chip) as
> well as Ethernet, I2C, PWM and SPI.
>
> The DT is split into rk3588 and rk3588s, which is a reduced version
> (i.e. with less peripherals) of the former.
>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Acked-by: Jagan Teki <jagan@edgeble.ai>
Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-neu6a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
