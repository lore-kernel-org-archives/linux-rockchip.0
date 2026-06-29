Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8093AC43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 14:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Gk0Lpdztnjzvq/Sg26y3vIWdprg7+048VuOMtplNOM=; b=2RQ9GaEyIVL06w
	L1wCCRogGlCp+czZJyhauBBmToBt0ZJWwWoAULyW6xRhlhmzwLlhxQ7S/LnGjd9LXzJJ6YQImRirf
	P2vLkWI4EOPBFdGuwdP+WJN6di3tbX4eFLrAleg8ySvERy73ptw3R3JrL7HTffBDAWckD6QaZDLXK
	KdMH/19gkhPY1l1wsaAG/Jc7f9F47/yCz6GM9dCJfdntj6hrVpLW7dG1Tdp/apSOBZX/eyCM6f3NX
	HX6BeVsiL85/aPiDiHBDhhTAnrd49AD8dNs4AFclBRqMoQQh/NIF4sYYmxPDU9/rTPjv7w5cYNpY1
	pYNL8nOuDWcUrPxTHPlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weDRD-0000000EyvQ-2ZPo;
	Mon, 29 Jun 2026 14:58:19 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weDRB-0000000Eyuh-1siP
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 14:58:18 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7e9b4f8ade0so1696219a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 07:58:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782745096; x=1783349896;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YrA9ccFaco9J2BZQ3eRpFjtGI3CKCK/xF2koXbFr26M=;
        b=dmeKQf+MZAzVRjxOIsil3xHgeBwcJyQLWOxQsD0CtvZpU1/9xxEQ63Sab1rbKHg5zg
         8HovD0jZtj/wZXTWP6aE7TMcidD2Mz991ptxnccCsBE3qSQ7yC2EO8JBc85IWMgVKgDD
         XmkWgrtXFZuL9UeoPoI+P4eauvpN/WSbSiXK45MZdVpX+8NA46MzEyzez4UAJ89N1hSu
         GSwARy7sble4EcJBZzxUUiss1Nn3VupMWQD7oHjPXegzhfN0wNEPymJfKTDfXtDRw3sh
         ef8fLEuRz3bSFoMEz1IRqyKjdI0kAnWVx7fphPsELaxkEGmfgFjndFilUEik2bkVBjMT
         qMgw==
X-Forwarded-Encrypted: i=1; AFNElJ8ETgnqwIZgEJhn0yxDRBlmmWMVjet6DYmNWZcRZzocvuer185212I2+UBgJtd+Jcw9xf6EtjfmumSaXB0mKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxwMU8KBzkiLoUNLu4jSpZzg1mkVYLq3oQOYxPxuqVUcKWl9KSq
	C3HtdZqoLfXYWvy34myHkyWZi3DjjEM6YKJd6eeUOQuugaryItN6zvo9tcQuwm7g
X-Gm-Gg: AfdE7clxeYLLTZeAcioHrGZ593/5+So5P4NTEdoE0kgYaFjllyAmE4UjklzUpHHYkYe
	1Cbxk/cnTfpBw2tjz7euh/hOk3wziUhtCZv0dV95dKKt+nZBOcRJ9P3amVrzl22Tyac6NuFstAH
	QYEbDdrhdwmDixrjOdv0bT1XTp4QOrFSDRPvo2HogoSyRVE111x440RbdCWst/DvAG906WcMvQF
	t8LKWDkt6m4ATcHBypOtUBOBA5/D3VXQvGzg2CPRBb2eAIo8pZYNTXa6xPWBJoOSi2MnAn0vPaO
	HRCLGnG+SbbiIfVtvslpepbAs4/wVyZrvX7hFdUsnXC7xN541KtsyseEH6GHEauFCgPYwFjqEK/
	kyQm6uuD71HRpcMCrH6K1Zv/S7Bp1RLKYHAvJLyVF5g9/ltzdGARaz6VxR7tPpkifYGL5gWovR1
	NTSm8Xb0DQyOwM9dUJNPsYgABg3Q8skPUYGXtQErhEyeCBoqBdXZc76dgXlPIN
X-Received: by 2002:a05:6830:610d:b0:7dc:df37:844b with SMTP id 46e09a7af769-7e99bf3f3e7mr15193084a34.4.1782745096298;
        Mon, 29 Jun 2026 07:58:16 -0700 (PDT)
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com. [209.85.161.53])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9df579d44sm2005218a34.21.2026.06.29.07.58.15
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 07:58:16 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-69dead44101so2957168eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 07:58:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+De7LQGz/F/k9aQVHvgPYC/ZzzeAvncnDMRaRb76oT9gyAmUIx6uCNMI285E7FknszxC3yD+29XigBQVZw0Q==@lists.infradead.org
X-Received: by 2002:a05:6102:c86:b0:738:ecd7:198e with SMTP id
 ada2fe7eead31-738ecd71defmr1394925137.19.1782744721048; Mon, 29 Jun 2026
 07:52:01 -0700 (PDT)
MIME-Version: 1.0
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
 <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com> <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
In-Reply-To: <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jun 2026 16:51:49 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVUBgG0EFB16OxHisbxx-sBvDKvBPNZdpyDnmBrnX4ptQ@mail.gmail.com>
X-Gm-Features: AVVi8CdkJoaQviVQ7ltoNYHwA2g-kW32TDsBBJn2QkEKdC-zwJrV4O3to75iJ6g
Message-ID: <CAMuHMdVUBgG0EFB16OxHisbxx-sBvDKvBPNZdpyDnmBrnX4ptQ@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, 
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
X-CRM114-CacheID: sfid-20260629_075817_484767_6F498CD7 
X-CRM114-Status: GOOD (  28.74  )
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

On Mon, 29 Jun 2026 at 16:07, Bartosz Golaszewski <brgl@kernel.org> wrote:
> On Mon, 29 Jun 2026 15:51:31 +0200, Geert Uytterhoeven
> <geert@linux-m68k.org> said:
> > On Mon, 29 Jun 2026 at 13:29, Bartosz Golaszewski
> > <bartosz.golaszewski@oss.qualcomm.com> wrote:
> >> Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
> >> This is essentially the same hardware as sa8775p rev3 but the PHY is
> >> managed by firmware over SCMI.
> >
> > So why can't it be reuse the DT bindings, and be compatible with
> > qcom,sa8775p-dwmac-sgmii-phy?
> >
> >> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> >
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
> >
> >> +  power-domains:
> >> +    maxItems: 1
> >> +
> >> +  power-domain-names:
> >> +    items:
> >> +      - const: serdes
> >
> >> +examples:
> >> +  - |
> >> +    phy@8901000 {
> >> +        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
> >> +        reg = <0x08901000 0xe10>;
> >> +        #phy-cells = <0>;
> >> +        power-domains = <&scmi7_dvfs 0>;
> >> +        power-domain-names = "serdes";
> >
> > Ah, this uses power-domains, while the existing bindings for
> > qcom,sa8775p-dwmac-sgmii-phy use a clock.
> > I guess the clock is the correct hardware description?
> >
> > Adding to my list of examples for backing a hardware-to-SCMI remapping
> > driver...
> >
>
> Russell King asked me to put the PHY logic for SCMI pm domains into the PHY
> driver instead of the MAC driver where it was previously. Instead of cramming
> both HLOS and firmware handling into the same driver, I figured it makes more
> sense to have a dedicated, cleaner driver as the two share very little code (if
> any).

I think you are mixing up DT bindings and driver implementation?

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
