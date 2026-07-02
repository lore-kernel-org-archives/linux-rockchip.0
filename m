Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE03BC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 09:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MshGOscZybJlciaU4b00MyzTiwNTP+LGY2XSxgIgvyg=; b=N6hnYzShqb3PfW
	OM+k8awou8PN+LCiPEUmbURWXgsbDw6KfY/+l7+Uomx1JDp1YE1XU6jZx/3VEAvAMcXWTQHEwmayD
	IFsjHVFMnXCWX6UrZhRIQJNcz89W9tAptQ9Nsjc6knxkcZAbT7HNtmQGt9BMNqIEGkiV2QAZjnqwU
	CawMqC4/RhM1q0mxbPoM4chiiRnQixfrgOoofeVt3zakyFYrl3uZRvKjVVJB16TBzT9dH+i4lb2gd
	ggDr07apRYOWcQzpc4abC7uN7wXsyTAxAwILvndNZfHK46AWpLD3E2ZRGl8HasCq38hAzXl7ny7I8
	Q927d6160P4hL5no7NLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDeT-000000040Wz-3DBl;
	Thu, 02 Jul 2026 09:24:09 +0000
Received: from mail-pf1-f182.google.com ([209.85.210.182])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDeR-000000040W4-2IRI
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 09:24:08 +0000
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-845ea8924fdso1256597b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 02:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782984247; x=1783589047;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w3iqz34neGUxAgVEYrpwzzcpe57aRQt9k5cgKzpkuWc=;
        b=pBo0lZOdXim10rJH2Ktz10XXh/mJGK845SHyfihmLolueyX09IQwaKpWVb9AFHhI5H
         3/HXe16GXB/tG5EytF38J2FnE6rsLfntPN+PB5+eGOhVDL+ElJccte5OmrzlLayMSiuR
         OqCLd99+o5hVh/21UXYusjRXNiQoxul5CCDYYf9SwG+Uh/0Mvq2cVEokQRGKRcCAhpKK
         CTxLMf4z4GSzbJixDs4Zfv3vpZz92quPqGlCQCH5T1nQcfNTdl491ggc1ZXUEesvmAnz
         4jEaVNaw9W8Ml62P3hYKsxEdBp5ANmhtu9c87pVdQiAXaWTwIE8R+b2aEAlrkoqwNkVs
         pLEw==
X-Forwarded-Encrypted: i=1; AHgh+RrT7zCeIxTlCgAmNOIS1odNx+VVt24KgXMlQmoWNmucV9aHQ+a5t7Jw2/sZMBJuO2Bewl1R4fRtziCYwebVtg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgBAbCRT0V5QNDzwVg2YTpH1jPLm10ajO5tLsntkhTUXBQkF7N
	M5wYYTKoRGsrDoGMJMCA5O0cXZ6lC6oscoLHlTMff1sLocNgXgN3J5jtE7PrP/TNK/o=
X-Gm-Gg: AfdE7cmKo7UOXvbBa5ZOD16N5lHHaQ/EoLhVgpiwe49SpxFMX4mpr62sxp9TqBwUk3L
	UCvUt+Fl72aMi4kAMUOsyTOT1saZOixY5HY49BWLPWpEaoNDWGBNYZK/X8od7TpMJYTkvXb4emu
	YpqOcePjqCUhdPdETR2GGFL36Qenmq9fp5zoMqOCjtudg6x+4rHA1NGXscI2EsUD8kNaomBzQDE
	qfenJhSBPg9dxkmQj17WFmey7P76zKKVw9atGCTSgZfO/Hz8fAYS0ty3EBtYJY5GkzuUIFZ7k0B
	lVhiycouhIW+vmrA9L+oBWRfjYsVpj4Qq2fVSrxmOfY2JX4dt6aQfcT7HWXz8DNge3wXUNtj3WJ
	bRZ31XCVPRrSbHsq2dHSVBTCqa/gpowNDEJHQbickwqc3CCaqj/NROtpw1M8iMxWNR0VRhLiGIP
	dMAYsX4RAY9DKZoSmO1eW3bNncKJYRvROOC4Tl9V18/D+VDEbUEITOzg==
X-Received: by 2002:a05:6a00:4fcd:b0:845:3033:6cb7 with SMTP id d2e1a72fcca58-847c0687a74mr5206365b3a.9.1782984246690;
        Thu, 02 Jul 2026 02:24:06 -0700 (PDT)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com. [209.85.214.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb6db75asm1090661b3a.2.2026.07.02.02.24.06
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 02:24:06 -0700 (PDT)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2c6b67d5fa1so15156785ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 02:24:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrEmKy7wi5LA6T1/yX0JPAJ0t2BGEDqAj+KEgJZPP1bDK117Ff8Ruxq7ANgTUsmtU690BiwzpvBDqZt38euog==@lists.infradead.org
X-Received: by 2002:a05:6102:1620:b0:62f:46be:8318 with SMTP id
 ada2fe7eead31-73da7681403mr2525301137.6.1782983793184; Thu, 02 Jul 2026
 02:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
 <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
 <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
 <CAMuHMdVUBgG0EFB16OxHisbxx-sBvDKvBPNZdpyDnmBrnX4ptQ@mail.gmail.com>
 <akOZFIowVvprnAMf@vaman> <CAMRc=MfBcOhbj=ETxy2Xz9o_nyzykrEhKAc3jYi6V5_jMZEE3Q@mail.gmail.com>
In-Reply-To: <CAMRc=MfBcOhbj=ETxy2Xz9o_nyzykrEhKAc3jYi6V5_jMZEE3Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 2 Jul 2026 11:16:22 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXNG=C=XcioQUEN1M7cQgKhO0AxUyg5X+TWb2rQ3-H3fw@mail.gmail.com>
X-Gm-Features: AVVi8Cef5-UyxrfN1fWvFDcXcIwIbwhU7f5lsircbKpxY8MZwCT2oXalNKmt_xQ
Message-ID: <CAMuHMdXNG=C=XcioQUEN1M7cQgKhO0AxUyg5X+TWb2rQ3-H3fw@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, 
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, Romain Gantois <romain.gantois@bootlin.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Christophe Roullier <christophe.roullier@foss.st.com>, Radu Rendec <rrendec@redhat.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_022407_604329_C4DE5C91 
X-CRM114-Status: GOOD (  28.77  )
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

Hi Bartosz,

On Thu, 2 Jul 2026 at 11:12, Bartosz Golaszewski <brgl@kernel.org> wrote:
> On Tue, 30 Jun 2026 12:23:16 +0200, Vinod Koul <vkoul@kernel.org> said:
> > On 29-06-26, 16:51, Geert Uytterhoeven wrote:
> >> > Russell King asked me to put the PHY logic for SCMI pm domains into the PHY
> >> > driver instead of the MAC driver where it was previously. Instead of cramming
> >> > both HLOS and firmware handling into the same driver, I figured it makes more
> >> > sense to have a dedicated, cleaner driver as the two share very little code (if
> >> > any).
> >>
> >> I think you are mixing up DT bindings and driver implementation?
> >
> > Should the bindings change if we have different driver and firmware
> > implementations? Isn't binding supposed to be agnostic of
> > implementations..?
>
> I've thought about it some more and I believe this question is philosophical in
> nature.
>
> sa8775p and sa8255p are *the same* hardware. I can flash different firmware on
> the same Lemans Ride board and it becomes one or the other. Yet they are not
> described by the same DTS and the bindings differ as well. I don't see why we
> wouldn't allow the same approach for the this PHY.
>
> We treat it as different HW variant when it's managed by firmware - just like
> we do with the rest of the SoC.

DT describes hardware, not software policy.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
