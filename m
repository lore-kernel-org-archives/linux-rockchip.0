Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6DDC71136
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqH0FRQZBbL506FVW7MpVHPDj3W4Nk5YmVmMnrvdofA=; b=A1H99gqhEs5w5+
	Pyf1Jddxb293KNhaGMWAA3JgHESlZPpwxLoYeZ2j2hp02BsmJlqbRl0K4/AOpQoI28IG1sDUIg2hl
	TNx+DAdlIVsDXONYUmxrYEzWz6xOhSviNVP9Rga+PXqvuQYqOIwAdAshVV6yoe7OGadQ5wh5ClWsx
	ZfEf0eeLRklDnGi0RJ0LPBba3cto+Dv0mimt9/LtX4gFedSJ3ZXzyMpkroA1jpWEJpS2UnhbWNaAD
	8xb5xTWK41b/D2jBxlRQKJBQtPywBCYfy+XxzpnZlnytIXLl1BbrFVWmOTJBUQiLFEQy3rH9j+MhO
	M2b8/uH4khxzVvy68x/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPoG8-0000000ESpG-2Dw1;
	Thu, 12 Jun 2025 20:10:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPoG6-0000000ESoX-2nDm;
	Thu, 12 Jun 2025 20:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ACQzSKiLB081J7RKsan9TDO2EOdfGESNIDhEKLy5me8=; b=LR0AQaMDgx2tKPP50r7DjHh+eT
	ThbMhDgVR4gRQRWNLUaK7BFr5NYBYAK3XwHf7nF37P150fYtbaOq87faDsnzEkk4tkKIjrrxVMo7a
	TrEwyiTTlgxvcqkA7zo4WwSKqrSTBTeeimWennJ4Lao/4aqeUMpGASTvI7wkc76or2/eSjITQqf0/
	RY18+H5I6okVZMxmgJ9IdZi2tC0a9o9JOdopX2AoEEFtYZR0Ujaw7LTgDyK1XoRI5uz/mAbUGIkMg
	M/A9Ehe2cQPf6qJmvYWkGCYiiqvfnFzAUzSVmo/Bkh9QstrX0BOhfm0kLS9AajGmVKsxw5nNntEgA
	jiG3qTPQ==;
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPoG3-00000002fZx-1MgC;
	Thu, 12 Jun 2025 20:10:45 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-742c27df0daso1202644b3a.1;
        Thu, 12 Jun 2025 13:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749759040; x=1750363840; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ACQzSKiLB081J7RKsan9TDO2EOdfGESNIDhEKLy5me8=;
        b=JpbkCBN71KE3CTz+f9XwnaBHi0WYVDiM0Frfk3PUgzIRT2YNN3D/MFLdZLPT/GkNix
         BnxS463abJQekiZ3caFoKKESWalr5uquAC0LnfxjWVZc3DkBYQMKMOBwXMAfJk4jeR8K
         XcnVK/6Er0/dtH2/se3+c5ZYww9qo8bTevDZx2c5sqNdpOAj5RTG/06X0ExNBDBYCCwo
         gOL1HrYbCVQZywbUKUsC4TAZRgmGVn1+5U4PHx3YiJYkhf17EaIss764nGSPpX4hJYeI
         DaGSbKgesEPAF0esqlVdfHy5Fsl1EMTLzTXXXAyJXWWVz7MWdnR/zAMwuZvw4ysiuGn9
         HWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749759040; x=1750363840;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ACQzSKiLB081J7RKsan9TDO2EOdfGESNIDhEKLy5me8=;
        b=Rkd9bLZP00MLKaS2nf+biiEkBipsAw14sYhCPXFJA2BUNYMaM1TP8d1E06n+76RWTd
         EqVIvK3LoaodarqHYdbSEaOVkOdYJ0dHuGsBtg1VRULQhubv75cZBdamMoFg5bqiVM9q
         oX78L8GUhvcXAhladwiStfy2D/+5m+H9kG/VKfgOzHjL1fqyE5b2m2n5PCLgrTRaC3jF
         HOYFq3OrfN0R0qUc7RyAtqRSLduYW5oV706me6Br2WcbDqrKPt27qCcojxrgSaktjjVF
         shglWpf57qt/NfrBoTbUs9NqxHsrVe0RE0Pa5AwyBaZMMkEBe8baHel5AZZQu8CQ0ush
         t+/g==
X-Forwarded-Encrypted: i=1; AJvYcCURdLMSvaTzE2iuYugCviRhEbLfzKPoYu0Q1msRXHs5KdS/TDTF4gbJsBzCeVJudXTK8sZifskjlnWCSn7c+ug=@lists.infradead.org, AJvYcCVMMM3LssaSHhOYluZnT+y5d8hTJI6R1EUJYskPTiZ+2b+10A5mfIz9uJyjIuxSEyJQNXe2KTk47Sldc6g33Tv2@lists.infradead.org, AJvYcCXoM2e2uwSiyrrxpnzNVIeM1oJ7f/vEa+3rhUnwcU8NJWqEnrEOtXzX/1qz+1KBjlT4S7FkUxkAjJbD@lists.infradead.org
X-Gm-Message-State: AOJu0YyISDS9xKFtm8KJ6wDNYg21M0PYO78gqrf2YDWF+Qh3RjHQ32Fu
	nHUCco+G8Yadw3pPSCfpQ2hOmz4pXMDPQY8RwSnHTFeMEDzc773SwQAb
X-Gm-Gg: ASbGncufOBqtsJq9DD7P4PL2ifyE+MLCiFUpuH1GE6ORKyVbq6NPd9LIW+XJaCphNLU
	9bgJo02ez2tV5chGIV0EmdEhCnelj4aEpsa4ItqRIYBfhUZjjJL8aqdwk35BHwDhFKhTZDsSvxx
	szrOsU/eAVhGwCYN0RMUfxMQs2uRuRypUuU5EYNAtG5HaXSVrTO1F5jAZGKUHjfQ7FQuKoVY1aO
	80oHWxyJlm5G+o9szcdI5ChZLY1sytwo/5RTbBprhXwFABAPgow364ALcjuMy56Do09MnL+j0JA
	zmZ4Et5PXos7963UpRimoOieGZfaRlGQp7Clw6pVbDRZIvcxrAkq2h+zQKVysA==
X-Google-Smtp-Source: AGHT+IG8TocKyZo9LiHYpgmcLhk97cCKpOT9D/IFBCoE4AePraGyNKa1PzBXNuqHoDVO+xHoWj80Yg==
X-Received: by 2002:a05:6a21:8dc4:b0:1f5:6c94:2cd7 with SMTP id adf61e73a8af0-21fad11efd4mr288514637.42.1749759040324;
        Thu, 12 Jun 2025 13:10:40 -0700 (PDT)
Received: from localhost ([216.228.127.129])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe1691d7fsm150701a12.69.2025.06.12.13.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 13:10:39 -0700 (PDT)
Date: Thu, 12 Jun 2025 16:10:37 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Qin Jian <qinjian@cqplus1.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
	linux-sound@vger.kernel.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Message-ID: <aEs0PVkwFN9uRgU0@yury>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
 <20250612124415.3399e26b@kernel.org>
 <22744779.EfDdHjke4D@workhorse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22744779.EfDdHjke4D@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_211043_537681_603F8D84 
X-CRM114-Status: GOOD (  18.33  )
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

On Thu, Jun 12, 2025 at 09:50:12PM +0200, Nicolas Frattaroli wrote:
> On Thursday, 12 June 2025 21:44:15 Central European Summer Time Jakub Kicinski wrote:
> > On Thu, 12 Jun 2025 20:56:03 +0200 Nicolas Frattaroli wrote:
> > > Hardware of various vendors, but very notably Rockchip, often uses
> > > 32-bit registers where the upper 16-bit half of the register is a
> > > write-enable mask for the lower half.
> > 
> > Please limit the spread of this weirdness to a rockchip or "hiword"
> > specific header. To a normal reader of bitfield.h these macros will
> > be equally confusing and useless.
> > 
> 
> That is how this change started out, and then a different maintainer told
> me that this is a commonly used thing (see: the sunplus patch), and
> Rockchip just happens to have a lot of these with consistent naming.

That other maintainer was me, and the macro is indeed not used by rockchip
weirdness solely:

$ git grep HIWORD | grep -v rockchip | wc -l
326

I don't think that that having HWORD_UPDATE() in bitfield.h is a wrong
thing. Jakub, if you do, we can just create a new header for it.

Thanks,
Yury

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
