Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7237AC282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 12:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpzmMRyvOQxB1AYDXBGq/lAFwRapovOrjEQgcLq0QfI=; b=C7YzRpgD1an3gG
	8MiiBLO4IXaswifTrb6NFk5xAFCyt4VthxP9up3101bxOikc6/1pA/Z9RuN/zUjvY+3fvejklzqcS
	DrbJFdKkDg/N4cHCPrLj0DIqRWb0e896wd629XDKQeqJWIkOHq29az1z3zIgiG9Zea/zYN4+8E9RC
	Shc5byJ1rSFOuu8owQMwPk3oflh4NkKiIKjth5cJR2J47iiGAcmmDJt8bSxgtRarBNIhHdpHJ4von
	Ut27dHOeMCGbNUSOxdkpHw1t+hiQGCuiaayOaMZGYz97Rm1EIfqS/h3mV4ZJg71jmBSPKPUX3uHK4
	yc6Q3+28VeDco6OOAveA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzFf-0000000ArNn-2qFh;
	Fri, 28 Feb 2025 12:13:59 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnzE3-0000000Aqzt-1Xbr
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 12:12:20 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6efe4e3d698so18505947b3.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Feb 2025 04:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740744738; x=1741349538; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+5pSPichyRWnjhlJDxySBmjSSTwMvFSyoqY5brH4NbM=;
        b=tssjZt+hhOfWwvJnPgVvAsAgTdO2eOB92+EVOIWBvkwF09XrgvxGqs4tYBboW+jVFK
         V0zrjCW5eekCR+1Tpt9X06C1wW2i+w4IBGPJdXUhph8p2apOIO1How55zZwaB9Jp6a6r
         TlDITtCa/yXnwod61DNaJmogsCXqLXvi7P7jaeXrxCiSCO3/l1QiWF0zLY4AIhoJF26v
         aphwCMWVUWxiK/kgf/cOKVGs5tSBW7k/PRfaxLvI6p8/JgyL6VN7at7ows+27hNE4gY7
         BUfiXfmJ/aZ0e2vjd8O2Ufi3A98y1sO5Q6IjLTb0AavV5kmg4ofs3FCazAFk4QyYg/Iy
         jEJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740744738; x=1741349538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+5pSPichyRWnjhlJDxySBmjSSTwMvFSyoqY5brH4NbM=;
        b=EGCaWgZHct9DZmDMkjSZSyODEsl8lvpd9/3qseUYC5fobIMd82SVJzR2rtDfpDtur0
         fuz0Krjbd9gtI0yc4NWgnDKcYlWYK1cach2vfO74ELXwsPCBrkMft6SliDPTmgHwbkht
         C+4kg9gP1AQ6aNfPCyp1Qe23TNaBqgV3adv5wmax1dJT05qP//s4H8rhtLvPA8jkrF02
         hcyq8P9a456zF+TqpaFp8YyV8iwAsVXnLvMQ4QTpa5KV+kDDqEfIuGfKo0rLjLGNLS0B
         B8E+E5kuu9l4yfbUdLbDcKOZaR1wB5tiQRfBnz23BOdKVyKcWb2WfVo1g5/SHbCRKj4Q
         mnBA==
X-Forwarded-Encrypted: i=1; AJvYcCVf5k+KtPwGSRgAMORuPkxquzez7owOEwd6eXMeR3o+HKYMnd8IpUqfXjdzBCjUSkrBia4z2ahEqQQPxhQeIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YynaxaGwz3OKQRNy/0EPCyRkmEpmZYs45up4N/i6wk+XRaM4Ant
	UQw2N4Ian5JxILdNwaZNX2XXNQR86wCYjIy5d7/KHSWq/MSFXs/1OBJ0IVg5UYg8uMV2omWEldi
	TimHs2lNZnotPuEmMSjfni+FKOU97yJfA4Prs4w==
X-Gm-Gg: ASbGncu80LziXO/08e3ljPXJ0aaxYTrbekguNIp7IiiDrQSc0E2HPIS9tL/+LfLH/tR
	+8brzKXUHRn0PsjfnmH+h60i+HS5bkmEK70Q7yyZFbwrT5dfjv5fpH7EZafUXiQFNR8hIhjmHON
	OA6qebtPZD
X-Google-Smtp-Source: AGHT+IF5LyA0z6vq8zu3tO1oWVDzeSmN4FFCP4cjtDkkdxPV7Z3Ux5LaBEWOF5SLfhfWthG59puDdlr/Ga0qhFSovFs=
X-Received: by 2002:a05:690c:3506:b0:6ef:6fef:4cb6 with SMTP id
 00721157ae682-6fd49ea038fmr45080957b3.0.1740744738231; Fri, 28 Feb 2025
 04:12:18 -0800 (PST)
MIME-Version: 1.0
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
 <20250220-rk3588-gpu-pwr-domain-regulator-v6-1-a4f9c24e5b81@kernel.org> <3360051d-1699-46cc-a4c9-0f379fcf8de0@sirena.org.uk>
In-Reply-To: <3360051d-1699-46cc-a4c9-0f379fcf8de0@sirena.org.uk>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 28 Feb 2025 13:11:42 +0100
X-Gm-Features: AQ5f1JqGrLsCSl6mU4TpCihGk9__DNvMDKpAdcL6_WxMDANY54b_Qa_DhEb314k
Message-ID: <CAPDyKFoJ5ZH6LAjFUURkJcudVewxwBM50T4e_GX_COVA5Z2knA@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] regulator: Add (devm_)of_regulator_get()
To: Mark Brown <broonie@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Peter Geis <pgwipeout@gmail.com>, 
	Tomeu Vizoso <tomeu@tomeuvizoso.net>, Vignesh Raman <vignesh.raman@collabora.com>, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_041219_417958_EF47A23F 
X-CRM114-Status: GOOD (  15.65  )
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

On Tue, 25 Feb 2025 at 18:59, Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Feb 20, 2025 at 07:58:04PM +0100, Sebastian Reichel wrote:
> > The Rockchip power-domain controller also plans to make use of
> > per-domain regulators similar to the MediaTek power-domain controller.
> > Since existing DTs are missing the regulator information, the kernel
> > should fallback to the automatically created dummy regulator if
> > necessary. Thus the version without the _optional suffix is needed.
>
> The following changes since commit 0ad2507d5d93f39619fc42372c347d6006b64319:
>
>   Linux 6.14-rc3 (2025-02-16 14:02:44 -0800)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git tags/regulator-devm-of-get
>
> for you to fetch changes up to 0dffacbbf8d044456d50c893adb9499775c489f4:
>
>   regulator: Add (devm_)of_regulator_get() (2025-02-24 15:26:08 +0000)
>
> ----------------------------------------------------------------
> regulator: Add (devm_)of_regulator_get()
>
> This introduces devm_of_regulator_get without the _optional suffix, since
> that is more sensible for the Rockchip usecase.
>
> ----------------------------------------------------------------
> Sebastian Reichel (1):
>       regulator: Add (devm_)of_regulator_get()
>
>  drivers/regulator/devres.c         | 17 +++++++++++++++++
>  drivers/regulator/of_regulator.c   | 21 +++++++++++++++++++++
>  include/linux/regulator/consumer.h |  6 ++++++
>  3 files changed, 44 insertions(+)

Thanks, pulled into the next branch of my pmdomain tree.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
