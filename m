Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C5FC43327
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 13:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9l6Z31tRljdtKJ5xvnJE86+qHrklZojGQJrcQaxq6Bg=; b=xATf4DHVS75ZuO
	t0r9c/2qkYRci94XS9YerIvRKdLYC0DzToCfVsJn9pqHJFW1slGoHQitfWwCGC2O9wNM6GV31Z8ZJ
	rtBFB+MliMnyUjBbsadu+5OBkkGLDqHhIpxXFO9VdMqs0BaZPfrTrUbuTl7argx/BSpt8v1Ukvhth
	FkPZdGBz3VL7aRiHQqwVnh9K3DQhMyUsp6ofEBwaZFgEX7mdlMmkpiAaT5pDP1/ssaeeU0BpB6gBq
	SwFYtFldGgw6xc+yH9BihmZpPEPUE2NFaVXvcQbKWz9eY6DC2eOIX1lUupD9vFIME4bZ6k8R40AJ1
	8dNqLL0cuLAfoUeoBpkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCVx-0000000Eonh-2tYk;
	Mon, 29 Jun 2026 13:59:09 +0000
Received: from mail-qk1-f175.google.com ([209.85.222.175])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCVv-0000000EonM-0krZ
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 13:59:08 +0000
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-9159951f05aso428169185a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 06:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782741546; x=1783346346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDPhNjOsxEQ0DHLYZPQfDHuBKCTUhxYTzus1J/5tEMc=;
        b=omm4zDIeHMTftVsGPOx6s/vc24+zktdskEY+VGRitnWPnB21yj0i79aC6npLJupzxu
         rr+ZwYOkyOlAF+D+saZfK87/qeHE1r+jyQDzSMpib82L6gBqModrNW4TCKBce+Q/dBw2
         lmpO4ozXiDmAanWh9kqwkrGLrvLt7jb7pGG2ScGonbZ70AK9F+hcOKNBHx19xLJOPQeY
         Hmu/FuSpuLq0inwwEl2lmsMvgjlqwpA+9ooeEFEJ3XhGOLNPm8Fqo607lBHUYcRuDt1G
         ggoIZVOeE0DZCFlNPpdFaCqLkZyDAzPj92O/W/Ro/VlWd4Qf1PQ+hB4slsi7MY+Whxqm
         5Ojw==
X-Forwarded-Encrypted: i=1; AFNElJ9xfEVedVfdxGSn4CyJsWBq3V59jqZJGTfdKMVQ9/1iIb55Vq9TLNvRNFr6eOVKsikptCxY3cHlFD42kuCR4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQA05by4kxqE7Tkb9sN8vM7IXgTM9tkL9jbFpWAYSqZcEYXB5E
	XmhtNZqZbta+SiOqWMDcP//7PwUtL63BOXj+tcMEymdEVQOB0T1C/nVCH79GvdOr
X-Gm-Gg: AfdE7cmrrPlHwj5QxHMm+Otuonr0wJQX89fnl4FHPrqLSCig0LupIAUU+1bAGTlWWr7
	Jt8TOvsXxDkVQB+elEDn7RHDBslVTtpNpRDFHvQnVo7HjJEqV+OQw69fvGAZjSIEWth9Z34RH6K
	5Lu0K2VCm5+HTRx7IQLFep0TSe67FS8hZ18lXWwkcjk5JP4pfjPIc7YAduUlFo1yjyb3f1RJ8tl
	TPd9PONaJrbAwb1GUezpJ67JsxTP/I/gdOHtGdm3AIQ993rD8IBMndorzct43VhUD1msxbCaSfb
	68jYRojncAmBdwbLuRmqHuPXcmEQEOUCwA38oOIOAJ9Dgg8h1kAf8IK0i4J8KAN48B6t32W6HsR
	RjeXsLOe1burUDhoJMLiP1nQDgzOTuIO0FK5GiGeB3zGe6YWkHrnNL60vE4N6RgStfht/+iuvg6
	XQC1+HP3rPuyXxmN27LuGdBMxg8spfZeCHDFWShgNS4yCG+Tw+R9om7rU+dhTdGnRN
X-Received: by 2002:a05:620a:6412:b0:915:eec4:49ab with SMTP id af79cd13be357-92e5f1c17cbmr126662885a.51.1782741545525;
        Mon, 29 Jun 2026 06:59:05 -0700 (PDT)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com. [209.85.222.178])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-926000c343bsm2118740885a.28.2026.06.29.06.59.05
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 06:59:05 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-9159951f05aso428166385a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 06:59:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqxG0/hwyvfC1bTWxtpyzdhoblyYvOt4fsrGnk6rwrowLfsw7j5gVnNCP51BS//UnCY1Kz3vtFWhIyZfWwx5Q==@lists.infradead.org
X-Received: by 2002:a05:6102:c93:b0:739:86da:7777 with SMTP id
 ada2fe7eead31-739fa951f6emr430364137.27.1782741103904; Mon, 29 Jun 2026
 06:51:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com> <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
In-Reply-To: <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jun 2026 15:51:31 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
X-Gm-Features: AVVi8CdHRRLXddfc63bNJYLQ9RF__6zMi6ngPMxYGYM87lHlKy_8kZoakyQBXrY
Message-ID: <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
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
	Christophe Roullier <christophe.roullier@foss.st.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Radu Rendec <rrendec@redhat.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_065907_219984_A22C3CCD 
X-CRM114-Status: GOOD (  20.77  )
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

Thanks for your patch!

On Mon, 29 Jun 2026 at 13:29, Bartosz Golaszewski
<bartosz.golaszewski@oss.qualcomm.com> wrote:
> Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
> This is essentially the same hardware as sa8775p rev3 but the PHY is
> managed by firmware over SCMI.

So why can't it be reuse the DT bindings, and be compatible with
qcom,sa8775p-dwmac-sgmii-phy?

> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml

> +  power-domains:
> +    maxItems: 1
> +
> +  power-domain-names:
> +    items:
> +      - const: serdes

> +examples:
> +  - |
> +    phy@8901000 {
> +        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
> +        reg = <0x08901000 0xe10>;
> +        #phy-cells = <0>;
> +        power-domains = <&scmi7_dvfs 0>;
> +        power-domain-names = "serdes";

Ah, this uses power-domains, while the existing bindings for
qcom,sa8775p-dwmac-sgmii-phy use a clock.
I guess the clock is the correct hardware description?

Adding to my list of examples for backing a hardware-to-SCMI remapping
driver...

> +    };

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
