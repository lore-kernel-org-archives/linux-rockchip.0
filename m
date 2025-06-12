Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C611C61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 20:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sG10HmRNXE+Tdx7AAtnU2HVs/YjnPwBXkQ7E+kBy7zs=; b=5CEQkYSWvkMrUR
	PJTmEQiQ0GnLE3obi4sxjrqh6v2WZHSj+zW984kgZKmFqTnkmEmi/JSws6fcZZ3lAW9+kFhwrL+RS
	IsorOU6bWLdKhPqYDtsi3UVHXQfe3guJRN5kJabI19WaKZUyezh+RZbSUF0DzN0PYCTk2iNvVEiL3
	ah14Ni++CfCfAmr1k267a2r2DZii3/t0EoPML6IcdWKhU/rhMOrO38OEmNSlp4epWkLEG9UxXjGj+
	qPxjU/dWV/Vbiy6QJFXmtraPOC2+MFv5Oh5y7w6ELxP/B9Iz8qANobfJraq+ONCP1PlUL/ELfIcZd
	J8V4rqOGnhQat3rsdMQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPo9D-0000000ERLu-3Hxl;
	Thu, 12 Jun 2025 20:03:39 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnxG-0000000EQIo-3itv;
	Thu, 12 Jun 2025 19:51:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749757825; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=niCZ7gfbCTphUt9F4A6BqJhyAWLYx6ZFwS619hLJe6PBl39fzz0Cx8vMltl3JFnMTsylPx4rmHxzSjlI6+i7JxXqUGT3s6Es/ezleTw1LiVQjojUFV2MChvno5MY8Cvp/2xtoIVUvXIUkrk6ZQaLkHxbgid9Eb84F9rtiiep3/w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749757825; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=mU+CcqNywPoimgVbJRvOWx8a/xllDqeUM7RTijoC4cY=; 
	b=QslLP2IFvCv129jJG9S1czdWGSll5oQcKPTGbu69twy2y6tft074Tj9gl4VSLqgkHbZePSQXCS47CfPxgVRXhkhNwNcM8sjdLMyylkaGbgAbNTkJteWsZT0or3z04oq3pKdilJf94Uubjr2Ok5GHz0dv8po0Wsr3HlZiPRC3pWc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749757824;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=mU+CcqNywPoimgVbJRvOWx8a/xllDqeUM7RTijoC4cY=;
	b=dgrFviZisw0pqrB+YqDeMyESyiRkmHgCVyEhMK+qA9s5JJEM1kHaX6FSiVjc6CAL
	ESUjzFUcC4kIRX5GaLHv+75hTR9fo3lR/+rESxFHOrnAIQiuvgMjh0P0wu1u/jZe70V
	f2+QqcSa+85I9n/Kg//f8lLHO3nJsdYBvCrZC82w=
Received: by mx.zohomail.com with SMTPS id 1749757823600263.75629300643163;
	Thu, 12 Jun 2025 12:50:23 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-sound@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH 01/20] bitfield: introduce HWORD_UPDATE bitfield macros
Date: Thu, 12 Jun 2025 21:50:12 +0200
Message-ID: <22744779.EfDdHjke4D@workhorse>
In-Reply-To: <20250612124415.3399e26b@kernel.org>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
 <20250612-byeword-update-v1-1-f4afb8f6313f@collabora.com>
 <20250612124415.3399e26b@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_125119_020666_A0B3945E 
X-CRM114-Status: GOOD (  11.87  )
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

On Thursday, 12 June 2025 21:44:15 Central European Summer Time Jakub Kicinski wrote:
> On Thu, 12 Jun 2025 20:56:03 +0200 Nicolas Frattaroli wrote:
> > Hardware of various vendors, but very notably Rockchip, often uses
> > 32-bit registers where the upper 16-bit half of the register is a
> > write-enable mask for the lower half.
> 
> Please limit the spread of this weirdness to a rockchip or "hiword"
> specific header. To a normal reader of bitfield.h these macros will
> be equally confusing and useless.
> 

That is how this change started out, and then a different maintainer told
me that this is a commonly used thing (see: the sunplus patch), and
Rockchip just happens to have a lot of these with consistent naming.

I believe normal readers of bitfield.h will be much more confused by the
undocumented concatenating macro soup at the end, but maybe that's just
me.

Best regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
