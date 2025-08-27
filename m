Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B0E3CA0FF0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 01:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7m3/effYQjAzJGVZNTJ4a9MSIgrTOzlXJw964oab04=; b=ICrWJ6LtxIHZma
	wLOsB+mBrn5w9jkGGxXXjHvIQNoX8x2w1VCWJg1jFAL/3wyHjwOv/wtj+xlYieinHOO70TOQ3p0TD
	TDAdRlSYc2z3I9maY1lBDivUpzMyOBwnPRoCEFOp6D2dLvwPnukOGtJX4nAjmcjvBwkeHgJfLId0h
	qLW7lXW7GKCEZ9e7PbwqOQwunEMVLyeg4QwDZXu8sQBqWV5gO9Loys/r0Cnhhfk/LML2RGOd9hVfx
	2Es7z0KS9rirm7kSTRa5bKnuLqvJ4bs5RgnkPQzS8xNL5jaC8+eE+2rg3HDYfXbpb7EJT/+qj41H2
	K3Hov8TGTmL4ByuWSQKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur4gK-0000000DV7J-2wyb;
	Wed, 27 Aug 2025 01:10:32 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ur4fK-0000000DUtR-1wQa;
	Wed, 27 Aug 2025 01:09:31 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-7718408baf7so3194118b3a.3;
        Tue, 26 Aug 2025 18:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756256969; x=1756861769; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rYru9aDq9lQqkQVO+bwcYPZ+KioVEL3wdcshlzZLQl8=;
        b=a4IOV2hr/yLXe1lhop0qz7YQkblAPpegPcwKA6Z/fyUR0KUbHBnb2RzW6WNq55qIVf
         mWmDnyDlj0jgpURUn/JNOZu55FybD/eRoCv8e9aZlpoCh6bdvzoI8DEzHfcaRBM+uhkS
         /a5zcEEy+lxNE9qhYisR/iDUtjpSOJBGxAWissbFttTcqp5hyIy54lMoXNCtSVNUQAxI
         K+9rTDMztE51SURM4UWNLRXx6ljy/8UYJBWiTgGVJ097r1Oiddk/5neYO9PKedt/TvG1
         9iHkFUMzOjTpR4KdhbgjFSS3kptDNYQM4rDv5vt2/s1vC7piC+AzyvFITwdXjr4YIpz4
         mEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756256969; x=1756861769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rYru9aDq9lQqkQVO+bwcYPZ+KioVEL3wdcshlzZLQl8=;
        b=oI3GP0/S04g7YLzMkjToGAWH2CRUwpeAAi6kHizqOWUtdqHQk6KLrmZeAmvSlpyLgh
         nTKneGt6TPLE952wraBbCvFTfg4QGuj7qkPY2QJ6sFU9HJzs3otgdPvY7ONssV+FbmgI
         PVAFbJupESpeItcYFIMgKnq9k8ExY+k0UEx9mWSJp6KteY6n9nW68WOW+HkrgWEWij8C
         0JoPXg0wsEHMTJtcpBxDJBI/jvcmmeMk4Vcv6TG/WcUhZ185g+WbAAF9WbOKZTV3V2Dn
         HQgWK58Uuek1bS6YgDNifvpHgsqjAfOcU/rfbBYb4HJ8+0tVbsAuY8RmiLieHYrq6alW
         yEAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUJsm8DWldHVOkWaKukqTQ6c3eXfwy45Ns5ZHZIPkHpQequAunEkmFFocAIs5S0g6N4lnNE4gY9GaBStIUH80=@lists.infradead.org, AJvYcCX+G4jJRvP5OnxyuZdhdXceNkePcGVBRpaUTzqsyrepshH6EnKuN4I3itnkb7m276sNHsMPRS0eKqshr5L0BIh3@lists.infradead.org, AJvYcCXxcVuvecKR2m+vXbhn/N4eFURb6zUqZN0NRvB6HDk28tWpFrqC9oilhT5EUk/ikO6jh87m6Yze623K@lists.infradead.org
X-Gm-Message-State: AOJu0YzuuJS+hrEgj1/ltc/YDAjTIQWpZXks/KcJ6qco2X4QoEoa6maR
	HA9F9LwU24jYUSWz1ra4pOMNWXoJ2BWe8yJNiEYc5yFDyKms4tKbwDtl
X-Gm-Gg: ASbGncuvp44rQ/d3Ztf0bNaetEQVzQuh6ihizLokJCThF3CdWY33YQEwDH32TxM4Ukz
	yxZ8QYoJqLUradMZA2UYOjBSwl/Ya+OAIThx99elY5vKzz3lk+ORqTDfFjwhVxFWFG1d7WGfAIm
	jo2oZzoJPQngk5AytLPdfLeygWZmghblzR09BQOwcw/r9TUp5lNmiolhwdhvGjE+KeDqenk0GLX
	C38uD73NBmbDYrA6ja7Xd21aJ5xb5eHcI7JW18O4u+oIK/3Dsan1Bq0u/WFmIqQjd5RFu3E1knL
	m3o+SIv5+6+glbLSKVvEkXX3sDsCyIaA1ZqD7tsUo4aZMySRJx+dFBoUn6KQEb/5Q2/4LcKYnU9
	w3yNu8dbmklxJVXTr08DfrQ7utxwRih0g
X-Google-Smtp-Source: AGHT+IHkfsVuZ+4qDUB9kGWXKNs3ixhtdzwAG20w+Ik2IkMK7IqkqBUunACMn5yLzf65+cgJRTumCw==
X-Received: by 2002:a05:6a20:7286:b0:240:d7a:9591 with SMTP id adf61e73a8af0-24340d1c50amr25873828637.46.1756256969084;
        Tue, 26 Aug 2025 18:09:29 -0700 (PDT)
Received: from localhost ([216.228.127.130])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4a8b7b301csm6847632a12.35.2025.08.26.18.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:09:28 -0700 (PDT)
Date: Tue, 26 Aug 2025 21:09:26 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 00/20] BYEWORD_UPDATE: unifying (most) HIWORD_UPDATE
 macros
Message-ID: <aK5aujavDc4PvvjO@yury>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_180930_506220_CD1092D0 
X-CRM114-Status: GOOD (  32.92  )
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

Hi Nicolas,

Thanks for the work!

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
> 
> Left out of conversion:
>  - drivers/mmc/host/sdhci-of-arasan.c: mask is non-constant.

+ Michal Simek <michal.simek@amd.com>

>  - drivers/phy/rockchip/phy-rockchip-inno-csidphy.c: mask is
>    non-constant likely by way of runtime pointer dereferencing, even if
>    struct and members are made const.

+ Vinod Koul <vkoul@kernel.org> (already in the list)

>  - drivers/clk/rockchip/clk.h: way too many clock drivers use non-const
>    masks in the context of an initializer.

+ Heiko Stuebner <heiko@sntech.de> (already in the list)

Guys, can you please take a look? Would be nice to finish the
consolidation.

--

I'll take #1 and the acknowledged (or at least reviewed) per-driver
fixes in bitmap-for-next in 2-3 weeks before the end of cycle.
Everyone, please send your tags!

Nicolas, please ping me if I forget. For the rest of the series, in
case of no feedback from maintainers, let's wait for one more merge
window, and then move everything altogether.

Thanks,
Yury

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
