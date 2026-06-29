Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89028C43602
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 14:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RYCL9rCjmQQMtyxa1UZuZulAKx3aj2oMeXOhCjXDNs0=; b=JkmyGEXMHKd57cXR1wu2PCOkXz
	DYhqFo8BYQQvSxXbirJKR8gE9kqieNXqlg6plpqdJhLwmDUi/cHm42OPyHOU4G5p2ju5t3T8SvZdi
	KWToX1BBk6JRRClVUmlrvm/OZrg4+S077mdQW8Ahvk4bJYq8bzZ82Hrvj+75/8bK07/ffPm0EZiLK
	ZfbpOf7OWpCWyplaTQTZqb+atk3wM2kTMDqNSw8dWJdMzKtAnzCW1h8p/dGAHjovapT8IzS8+k5WH
	k4unQgdk3CXfJy0lSW1avYJ7oPMDPVFLDEj2aoL+q6yMkxQx7FlNt5yNWwjkzrlT/n22xBgmVOioi
	m/LW5H5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCe4-0000000Epu6-24oQ;
	Mon, 29 Jun 2026 14:07:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weCe2-0000000Ept8-49i7
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 14:07:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0CECB43E3D
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 14:07:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E91F41F01558
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 14:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782742049;
	bh=bbeOSfk9uz1Wrt6J5wAea4CxiJx++/6lvqEjtpLfRco=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=T2cBdcpBltZQbc/dS7w2Gl2UqhEoGQ6sdZtr1MrFNY2Gfj4Fw8rJzfCdKmFa9eifU
	 QWU8f1v8zuNGrcQVWX5ifehqs0rA4wDyXJA4IlJPuu81HSPqEmIyvSi0reKC7kHHlc
	 ydLju7W1RcXkhe2yIGg5qlr8ShNspLlI2Vzx9LP1h8PnkPuWdpKk+T8mQybcO8e3cI
	 txMnh5sPsuUr7F7RRH6SxymxmbPs85PPP9e2n2UASI970GaWEEzMMBHMSauWdKugVS
	 v/eRkREv5Qmfajz5+IwHjZi7FdEVC5OIywvBkbFlrgzhj66+6mSPly3N9XttVJNe8p
	 JnzzBMyZpIvWQ==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-39b093b42b4so9658801fa.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 07:07:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpQBLOr3/gTDthE5NwQchwqjqknNy1AV/zgvSgABw9RfeOsPU9Cu8908N7HpqXY1fvOSIxrbazUW3LOF2oTyw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6wQbkZxlth1trhBhnXK4EvDKQgCGMNKUgRY6GJnFBQ8CEbjA2
	2KQeOmV5r7Z+5GyfzSuQw3Vw3kRAJkRYp1uJp+xYGEVetRbbnl0ZUlXiCY35rg2mL3ZMNUhPfZU
	TuaJjN7yx4ULcF/s8B4YbprtEnIEMIFigwwxG9xtFHA==
X-Received: by 2002:a05:651c:146c:b0:396:5d0a:765a with SMTP id
 38308e7fff4ca-39acb8ffa66mr33873361fa.21.1782742048596; Mon, 29 Jun 2026
 07:07:28 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Jun 2026 07:07:24 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Jun 2026 07:07:24 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
MIME-Version: 1.0
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com> <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
Date: Mon, 29 Jun 2026 07:07:24 -0700
X-Gmail-Original-Message-ID: <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
X-Gm-Features: AVVi8CfgGr0R3g5nrNxVwL-t6-jaKI4wsgAKUpj-c_HwbEC7_gerPUuikt96dHI
Message-ID: <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
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

On Mon, 29 Jun 2026 15:51:31 +0200, Geert Uytterhoeven
<geert@linux-m68k.org> said:
> Hi Bartosz,
>
> Thanks for your patch!
>
> On Mon, 29 Jun 2026 at 13:29, Bartosz Golaszewski
> <bartosz.golaszewski@oss.qualcomm.com> wrote:
>> Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
>> This is essentially the same hardware as sa8775p rev3 but the PHY is
>> managed by firmware over SCMI.
>
> So why can't it be reuse the DT bindings, and be compatible with
> qcom,sa8775p-dwmac-sgmii-phy?
>
>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
>
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
>
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: serdes
>
>> +examples:
>> +  - |
>> +    phy@8901000 {
>> +        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
>> +        reg = <0x08901000 0xe10>;
>> +        #phy-cells = <0>;
>> +        power-domains = <&scmi7_dvfs 0>;
>> +        power-domain-names = "serdes";
>
> Ah, this uses power-domains, while the existing bindings for
> qcom,sa8775p-dwmac-sgmii-phy use a clock.
> I guess the clock is the correct hardware description?
>
> Adding to my list of examples for backing a hardware-to-SCMI remapping
> driver...
>

Russell King asked me to put the PHY logic for SCMI pm domains into the PHY
driver instead of the MAC driver where it was previously. Instead of cramming
both HLOS and firmware handling into the same driver, I figured it makes more
sense to have a dedicated, cleaner driver as the two share very little code (if
any).

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
