Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F037C7EE24
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 23:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HLnpqosT8DbxQ29S1SQA/AvKgTvCLFQcG7X60q7n7+s=; b=LKV9VzQu3CzL+c
	nqBQro1DuRNZjOcvtfvjrE4MgETtb8Kivr/edt6O3gwaqt82yUDvosJcT1ymRI5wHkbxEZWJI7GNw
	j6A7VLW9sbJ+TduBao77YoW7C3uS1Ye5DaLh4oQ/jjZ6ZM/7zaV3WZI8/jfJJSXT7/D/rnKti0ukT
	iBaWHQc9JXJstS5xOSayYZ3RkCS6G50FrdR/h5ASfP6f9ycu79WsKg7SUX/H1uW5dr3CpDYQGrW7Z
	uX9WT0jVne846tn9VeMshpHIApbS8DcD7AMksYB53nulaDDPNvT2ZYwQZK7wz6+Yg5yGY5qkd4S/o
	IrGv0FTrSyqhbPARviYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q48Pz-00FQAQ-2a;
	Tue, 30 May 2023 23:06:19 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q48Pw-00FQ7M-2Y
	for linux-rockchip@lists.infradead.org;
	Tue, 30 May 2023 23:06:18 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-64d3bc502ddso5907334b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 May 2023 16:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1685487973; x=1688079973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zao+usj1MFnHO0lPVaYxKTWIh4Wrl1XUDw1PK7J3fWM=;
        b=JxW2OPW0HQsH3SYq6o+okCUEhDYhLDsnK1IuCG7HA6xFymgskDPQOJb3fsdobb+33b
         OytwBRj9myGzf6KufZCXuq8v1N449uBhWYJDYZr/WDjiEjkffVePnp2koTcOUJletBb3
         V+wiOOW5qxMjHFzU+yLJCZPoAi1X2q/uS84gg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685487973; x=1688079973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zao+usj1MFnHO0lPVaYxKTWIh4Wrl1XUDw1PK7J3fWM=;
        b=Btd0Elpf8aq4UrESuCzIUxXGp0AGvxERD0IoFXedl+2Nxo4B1Gdu6COp2TwQQGgngL
         4oLfCfsjIQUhj+tX1ZVJ5zFIM84mD5AN6qqOTOsbyMpCRD3FoUCmZq25s64Wl26dd5Fr
         P0JW6y2nJ31LJcRw33oLpzDmjtxo9qFDM9v0cydF8kBd/n0jPTF+2yB2DITqQ7qfyo63
         /EFk2DoEwom3Y1t7ohsPKoJAMrqY4354p+SLQby+VlErHk8FxkPDVwtBonQm7WeRqs6m
         DqjkTrEUZ324s4RAp7rGYARm7w08QFqh4KuHBeJl/CdW4vbIrT00MWZPInV7z9/Zfwvp
         1OTQ==
X-Gm-Message-State: AC+VfDwn1SdCr7Vjoo1lf3y9WkAh8jzy2gLqhpoauoubMzGpKR3vo7li
	v6w2jlcNnFouJzPS+QakbIQdJA==
X-Google-Smtp-Source: ACHHUZ5D1+tV1+lvxmaVwvByCrU2SFfVv0srtnoQzi2H74dwcr6jd0JM1qdxaJAJFzqXVqgoNVS1HA==
X-Received: by 2002:a05:6a00:150f:b0:642:fbed:2808 with SMTP id q15-20020a056a00150f00b00642fbed2808mr5705307pfu.25.1685487973579;
        Tue, 30 May 2023 16:06:13 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id d4-20020aa78144000000b0064d7221529asm2162683pfn.32.2023.05.30.16.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 16:06:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: heiko@sntech.de,
	azeemshaikh38@gmail.com,
	hjc@rock-chips.com
Cc: Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	airlied@gmail.com
Subject: Re: [PATCH] drm/rockchip: Replace all non-returning strlcpy with strscpy
Date: Tue, 30 May 2023 16:06:04 -0700
Message-Id: <168548796306.1350188.1085117815557149174.b4-ty@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230522155149.2336620-1-azeemshaikh38@gmail.com>
References: <20230522155149.2336620-1-azeemshaikh38@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_160616_827175_2E816C4A 
X-CRM114-Status: UNSURE (   9.95  )
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

On Mon, 22 May 2023 15:51:49 +0000, Azeem Shaikh wrote:
> strlcpy() reads the entire source buffer first.
> This read may exceed the destination size limit.
> This is both inefficient and can lead to linear read
> overflows if a source string is not NUL-terminated [1].
> In an effort to remove strlcpy() completely [2], replace
> strlcpy() here with strscpy().
> No return values were used, so direct replacement is safe.
> 
> [...]

Applied to for-next/hardening, thanks!

[1/1] drm/rockchip: Replace all non-returning strlcpy with strscpy
      https://git.kernel.org/kees/c/3bc490653e12

-- 
Kees Cook


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
