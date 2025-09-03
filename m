Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF385CA1007
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 00:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmAQoM9zdtiBb6zXh2KO3qpbkBb0/CZlWHl+720NcBo=; b=z5uZwp+tisw15s
	ZDUjUKJPoOEgmaBCLSHLi9C0NEZyJ6ghEg4NzMRYD2wYi1dXz2Dc8gruhkAJ9A/gLpcU8cmb/2f88
	+2q9cs+ZrG3W+a0T0uyfmjLWNyx5EJZUhm+8FtD0SNudmp3v+ZzYsMq/3NAlSJGvVueIOwg7/+5/2
	neJhuiHiwLLF2B/lBafhcgbj2byhmiaHMcmB3H3UcDTqlY8WGBTyYRrtfxk7vbBL69CYRD+BXfG6p
	oygfaVZQp1Mmc0sAKYNDoE8Np53bey/scJbF2+dkhQL5hteYpIS5lDexUGK/D5tlQaidBPhok5cES
	bsauocMNJ+LlWyE4Iaew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utbfA-00000002uJZ-3oiQ;
	Wed, 03 Sep 2025 00:47:48 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utbOV-00000002me3-0K0s;
	Wed, 03 Sep 2025 00:30:36 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-32326e2f0b3so4629956a91.2;
        Tue, 02 Sep 2025 17:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756859433; x=1757464233; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CmMfbXYYghLau518ZkBS9EQ6iyJ6tyWuJVdbkNRuMJc=;
        b=ZclISLkuLx66HK+6omMUKmOzO8LbKdaoOn++4s1HeuhYkFqTIf9WvlFYZWyCwMweTe
         SQD5rwhfEaKrOB3Afle4qAUrsIvz9yxsAdUs0jsZuDX/uSl3opsfQC0a/F9BSjsps6BP
         HUm8HmMk1FNUJfJ9Fngg7+9wbaxBiAm9fBPlP5frBNPmWn4Kk6Fy7hDU3XLI/xNfm31D
         ZP2tI01wUUPlGPoecp9xDtBnKaGsjdRFhhaYIpm+09lexHxNMylIGTsR/0xlGiFgG3Mr
         NG5wv5FqH9LR3Y6PrklQIIyE+pcnu/mPVNEziiXGzegixZdk4QH50CYB9ZbnlJZnaFRF
         TrmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756859433; x=1757464233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CmMfbXYYghLau518ZkBS9EQ6iyJ6tyWuJVdbkNRuMJc=;
        b=M18ZZ796g9jbpbNz9fitnITm4ecJfgcVY27dYO69unJ6jVVag5yzT/odhrhtiOVMFZ
         qBQsrB3n5C+KuTHecVVkZgrB8UAM6T3tVRqUou6x7H/S3suULatgmbS57BsKeuyv4J0Y
         5SqXqlvtIPwwcltQizJzM9G8q2/H8ZOs6+i64h2eEp3SqqSHxKAVlYuaPkhPk1gqQ59f
         SnDd40i/X8OOE9boYh/p10GrHcN0y0O0uDyWMwOQAjDU3fJ5iX2+U1Go/j7b250luIjJ
         WQ13CBRctE9R5b8OjTn6x+jsLow+pifYjomibLsrAxt1Askbq1u6iorLxGsAnBTH3HYQ
         BV8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVD6CGDvlTI+d9NcR7WhaFdAHwoQdDSCV8IFQoTZLCXaVtSBY0S1rhNIAaJmACPnnB6f5sWRZoRnD/rQ2jTMp8=@lists.infradead.org, AJvYcCW1Aq5IFuUUU0wOKqmotZ7H5Ibi75fvVgtNb3nzU0oZKwkO1a+H/tnbOwD3+BEd4+4uP52YlapJa861@lists.infradead.org, AJvYcCXabHgJOKblW/nXrl1DPYaR7ejruOmw+QKAQCcWjgJeTloUm+mHEuBqDZLS/CR5apgaqxDl60UP7BFgNbcrb1Oq@lists.infradead.org
X-Gm-Message-State: AOJu0YzqR74lG5lYKOvRg1wV6EWadNRtgkzS+t7pmJYE7dfMghdZ/3Uu
	cEfxyXmEKIl8OfX2Y9foFYWIkE0i/2Ms6hctwFPEY/TgYvFORRVF7sad
X-Gm-Gg: ASbGncvuwdAxzdyNzOiiym2eCTjxqI1Y7X+O9SQT1DnjkQSY+V5Dx9oRWYaAprIw0aU
	8mSktdwJ+7g4WED2XM8Ggc/iG9iZsfbLlnXWiXeTf/Dbz7Hyo94IZvT64zkWiTiucEFF/I4KM9l
	N8XBcgOvNLK2yMNge8/sw86UJiFeausVaUAbj+VHQ3GYWgKKws4iOXMYhagYpJ43bhW2GafFm8c
	3opxNndI52kYBItfR24zriU/+GxKx7c4UhxVawwUFTQxS/rgZyPvhIbL6scLhm+tEV1nd9idUw7
	CL2AR/q4ImHxdPk0YZjRgdAKW/xD3HrDT1fgLwhcdD+w74YPNOpRVsfRM3k09TXwmbZP7tTKe2R
	qk/IiJR1pjFmwRxudaCMTQg==
X-Google-Smtp-Source: AGHT+IHKuGow4ZFuttu6aoYR+s2VkdzBbs1o2jEf8YSpdi38rlMbKdEgFtFxfdUZ56XgWRNUklItiw==
X-Received: by 2002:a17:90b:1b12:b0:323:7e80:8818 with SMTP id 98e67ed59e1d1-328156e5627mr18724374a91.37.1756859433210;
        Tue, 02 Sep 2025 17:30:33 -0700 (PDT)
Received: from localhost ([216.228.127.131])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-329e23858ecsm3480217a91.14.2025.09.02.17.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 17:30:32 -0700 (PDT)
Date: Tue, 2 Sep 2025 20:30:30 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 00/20] BYEWORD_UPDATE: unifying (most) HIWORD_UPDATE
 macros
Message-ID: <aLeMJjfhisYSIEph@yury>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_173035_138643_0906EF95 
X-CRM114-Status: GOOD (  28.80  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, llvm@lists.linux.dev, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Alexandre Torgue <alexandre.torgue@foss.st.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Eric Dumazet <edumazet@google.com>, Bill Wendling <morbo@google.com>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, linux-phy@lists.infradead.org, kernel@collabora.com, David Airlie <airlied@gmail.com>, linux-stm32@st-md-mailman.stormreply.com, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Simona Vetter <simona@ffwll.ch>, Jaehoon Chung <jh80.chung@samsung.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>, linux-clk@vger.kernel.org, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, Michael Turquette <mturquette@baylibre.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Qin Jian <qinjian@cqplus1.com>, Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org, linux-mmc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>, Vinod Koul <vkoul@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Justin Stitt <justinstitt@google.com>, Andy Yan <andy.yan@rock-chips.com>, Shreeya Patel <shreeya.patel@collabora.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Aug 25, 2025 at 10:28:20AM +0200, Nicolas Frattaroli wrote:
> This series was spawned by [1], where I was asked to move every instance
> of HIWORD_UPDATE et al that I could find to a common macro in the same
> series that I am introducing said common macro.
> 
> The first patch of the series introduces a new header file,
> hw_bitfield.h, which contains two new macros: FIELD_PREP_WM16 and
> FIELD_PREP_WM16_CONST. The latter can be used in initializers.
> 
> I've cheekily added the hw_bitfield.h header to the BITMAP API section
> of the MAINTAINERS file.
> 
> This macro definition checks that the mask fits, and that the value fits
> in the mask. Like FIELD_PREP, it also shifts the value up to the mask,
> so turning off a bit does not require using the mask as a value. Masks
> are also required to be contiguous, like with FIELD_PREP.
> 
> For each definition of such a macro, the driver(s) that used it were
> evaluated for three different treatments:
>  - full conversion to the new macro, for cases where replacing the
>    implementation of the old macro wouldn't have worked, or where the
>    conversion was trivial. These are the most complex patches in this
>    series, as they sometimes have to pull apart definitions of masks
>    and values due to the new semantics, which require a contiguous
>    mask and shift the value for us.
>  - replacing the implementation of the old macro with an instance of the
>    new macro, done where I felt it made the patch much easier to review
>    because I didn't want to drop a big diff on people.
>  - skipping conversion entirely, usually because the mask is
>    non-constant and it's not trivial to make it constant. Sometimes an
>    added complication is that said non-constant mask is either used in a
>    path where runtime overhead may not be desirable, or in an
>    initializer.

Applied in bitmap-for-next for testing.

Thanks,
Yury

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
