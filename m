Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5724C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 10:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBJKkERs66SPMaBSeZkCQcAIVpidtHr38ESClbhltjE=; b=3SxubuDypKorBN
	92I0wTud0Nf0qCU6FLYusBpxIo4oKFeUEEk5MlcG5TvoVRs5hJkGdwasDnpo/cAHHlepFBj6UaehI
	Y0cNadBY+sEBBpoMVvBylnU0qMiJDnZebFzFzuHv7IrQ1uo7KRez37X5khw6IJ+MN3ZufZ3VO3vbt
	ZjhEwnc0KRVuOh/38iAAR9yDGi8UHP22eyCx/0W1Z4wLdjsXwQNtpkFvQp/Yhc+bYSsADCCcuwEkO
	Vqdtzxg74zmYOYTc7Och8+3F81aVaH8kJ5G8LM3sUWYFRS3kBi2zZ4svjKZOLr5BQc/4Oka6W2bbT
	GbIkxjvHidPGmp3a8PFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgMMl-00000004s4W-3k93;
	Tue, 20 Aug 2024 10:45:31 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgLFx-00000004ahV-2i7p
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Aug 2024 09:34:27 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e162df8bab4so1913768276.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Aug 2024 02:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724146464; x=1724751264; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aSXCAFYTvpfQfHjHP6dIA3NLVm4vtDOO89IX3k2TK1Y=;
        b=gg4IjY6dhK6mOthSMwucY2kHnOzJBsP/QQs8quF9zJajnKxY5iKmWJtj94P65blsgM
         CbPXhoBxjRaYATbV5cXBu3J0tj7kIN4mHMzM5qAqGs2QIUdSmbO8ipfKxfH8hfIB2Ji3
         N36Giu5lFrc+oAL652qmi8JOWYTWYJrnYdHHUVxq1hU3zNhvcfG+4VaUE63lWHC90aZn
         HJKBAaF8jcF7moutGz6K6y5bjByOjTz/2KxaW46d/Sh+pV2g8nfkTgY9poa50IebRyBe
         GHc5KiIyemVoBAa8hPyBLxEQ3z+odd5effYdAJ+HyNQpMxpbyNhCrgHDOE+2P0ptTMR3
         QVWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724146464; x=1724751264;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aSXCAFYTvpfQfHjHP6dIA3NLVm4vtDOO89IX3k2TK1Y=;
        b=OmvdV18Zly9ZcW4MG0c4uk6KIBFEnV116wreleEvJn9/ZGI21J1ArJohC5W1qiCJ/P
         KXr8l3GnMqPxU0npVnWdeTrotaB7hwWP9bHV3rOAcRn0F+H4U8bPLSIbrGLdYLdwz6TM
         LKvqLF1GHiksVL+x5tW5kXKm3kOpS8YA02+Nu6SLBFNGNDd3Ri22AYLpHauLQRjtSorc
         cOQzAzM2ShKm5YebhSCHlhe8IxGoZ+l9WTf/aCxDxY1waRqZHZMJCHs+O/l9Twmstt/q
         OzAcVLXKiYWzl1LqrPfrDjQIDh9ch+uzMMSatOXZC36N/WaB1mx9c3GaUWxmAhC/41LK
         ltmg==
X-Forwarded-Encrypted: i=1; AJvYcCWLpxmh9hW+iYPfe+MSvlKNdEWKhi+heqECcEJS9exDtcpgdFXI4+G9AtsoMQJaXoTs0KOq7L1h7B1djMIHObGSt8rxcoF70Z3ty7mwiBSoDOuv
X-Gm-Message-State: AOJu0Yw0mJiWv9+hjJ6Z8mDC41vrtVYUeEhBaJ4Nm3dTBUo228SSm+R9
	L88uXAQtBWgsa/Ed2a+Uy/OqYg31LEHnB5zLoP0ptDZx/FFSX812WeRPKkdynbhRNZ+9spZJ1x0
	zLC9bF3OP96m2Kdcee8JOcxA+SLoQOIjA6Eo78w==
X-Google-Smtp-Source: AGHT+IFiA3AjMQPNBeiejtIMDCLmON3LWIAb/PR9mOtMqct6XG5GSoya7WrnNNdnhEBwTarC4WErTc/FTZbw7fqFJDc=
X-Received: by 2002:a05:6902:12c3:b0:e0b:43a0:3ce with SMTP id
 3f1490d57ef6-e1180faa0c8mr13052250276.57.1724146464513; Tue, 20 Aug 2024
 02:34:24 -0700 (PDT)
MIME-Version: 1.0
References: <20240814222824.3170-1-detlev.casanova@collabora.com>
In-Reply-To: <20240814222824.3170-1-detlev.casanova@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 Aug 2024 11:33:48 +0200
Message-ID: <CAPDyKFpdCKkwVJ9+rOAw4oZOjaxd5PYy-sswTRk_o-MCL41KyA@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Add power-controller support for rk3576
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Arnd Bergmann <arnd@arndb.de>, Jagan Teki <jagan@edgeble.ai>, 
	Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_023425_707902_CC30F19E 
X-CRM114-Status: GOOD (  15.93  )
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

On Thu, 15 Aug 2024 at 00:27, Detlev Casanova
<detlev.casanova@collabora.com> wrote:
>
> Add support for the power domain controller on the rk3576 SoC.
> Patches from downstream have been rebased.
>
> Note that the mentioned TRM is not publicly available.
>
> Changes since v3:
> - Remove unused g_mask and reuse DOMAIN_M_O_R
>
> Changes since v2:
> - Remove unused delay for npu and vop
>
> Changes since v1:
> - Rename rk3576-power.h to rockchip,rk3576-power.h
> - Add memory reset support
> - Squashed header files with bindings commit
> - Updated license
> - Fix commit messages for subsystem.
>
> Detlev.
>
> Finley Xiao (2):
>   dt-bindings: power: Add support for RK3576 SoC
>   pmdomain: rockchip: Add support for RK3576 SoC
>
>  .../power/rockchip,power-controller.yaml      |  1 +
>  drivers/pmdomain/rockchip/pm-domains.c        | 45 +++++++++++++++++++
>  .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++
>  3 files changed, 76 insertions(+)
>  create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h
>

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
