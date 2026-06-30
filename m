Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B29C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 13:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lzTCNJ3ezaZlYAU48S9WHKna5rsNHnM7dOZKVZMxnK8=; b=ciutKmkxqwnzqJp12+84FepJWY
	OBDTZvJjHmwz+3Jk7b/r/z5xDFBmHeJbM8wGapqlY6br1jKaTYCliEqo3HnD2dn8/swpQ2dQqYfEy
	Lb2e4eRrapdQEDZueAUcaO7yGK8oc+8utkRG2vQSonVGBiCBohR6Tc2q+2ZzoABOBLTy+3OUj3CbT
	hyu84yB9M0gHF/BX0U9jLZ9LTs4I0k1qRveDDEj/odiozqvbidh9qHK1hX7/PuRxQ3qxOgjlO384f
	DDpEUFzpUzzDJs++qsxHiWiCM4uuDGtg2Y/9EzMThUUfIf097zBCDW7Y+rRYlz7ImIsYqtq6yNpRl
	r9dSSKvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYlD-0000000HC9q-3nKf;
	Tue, 30 Jun 2026 13:44:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYlA-0000000HC84-11BQ
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 13:44:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A43F0601EF
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 13:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C5B81F000E9
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 13:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782827059;
	bh=PTgTBVx6F2sw1dT8/Wpsaw/p93LgkfWgt2++tnwdsew=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=YXMCdVpntJnB93OzkvUVDbtYFd5zhX6pWrdfMuh2JCwfvuYS4n1e7MUgDjDc7Ox4t
	 s6th2MipiElRnWHqws9n7L/cj9offTB/GKb3qsHlugOAtLecitT0cneyhDagFiS6B1
	 2OMwTRqTEtXpBfNywSUPHXLxwqAqhoTI5AmZNel9mDUAg0RznYYyBhcXxVje6V7rBB
	 kMQkHkNLoixA4SJRMtRN8KNDkTVz14wg5vSiv4Va/CllGVLgpz17B+G6SY4lQ6N32l
	 JCjx0VVRdj91MSRW5CMXNffi/RGslJBYsxhbcNyVHWF7xY8WhqIbBdFW68U1fhhwTV
	 tCC/dXQCAbdrg==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5aebfa21c62so605262e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 06:44:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp95vNvDqUM2tDjVxBylmt+dt8E5iyFOniJKj15NgZo5VxjCfvvLpsUrRrpYK2Pq+SAbg2IJG1oSp6VDHkpqw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/8Pe8ccr9PPVJVy3AaCpdWHBT82wWmSwfP7Bs3hzztavHs/BT
	4fYmfhBRis16bDbLsIop6imjafvPTk6nqWgovknZQ9y5mqvv9uODLRG3SMFFjZ4v7qI9trz3QWG
	eiZcaZGe5pyxmqfjgjX5P2kKRGunuHSVS+qNM32WU7A==
X-Received: by 2002:a05:6512:247:b0:5ae:b36c:81c7 with SMTP id
 2adb3069b0e04-5aebdbd6a94mr630626e87.35.1782827058195; Tue, 30 Jun 2026
 06:44:18 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 30 Jun 2026 06:44:16 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 30 Jun 2026 06:44:16 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <akOZFIowVvprnAMf@vaman>
MIME-Version: 1.0
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
 <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
 <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
 <CAMuHMdVUBgG0EFB16OxHisbxx-sBvDKvBPNZdpyDnmBrnX4ptQ@mail.gmail.com> <akOZFIowVvprnAMf@vaman>
Date: Tue, 30 Jun 2026 06:44:16 -0700
X-Gmail-Original-Message-ID: <CAMRc=MfgAB8bc6PD-6jw_KR0uNBfH+PO2XtCeL1SUF2nCiT0xg@mail.gmail.com>
X-Gm-Features: AVVi8CeqiAShkPsoXNMgDMxOo0pT0xgKjAcbHHtz1YU8sQeDIyMdI3B6eTWFAXU
Message-ID: <CAMRc=MfgAB8bc6PD-6jw_KR0uNBfH+PO2XtCeL1SUF2nCiT0xg@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Vinod Koul <vkoul@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
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

On Tue, 30 Jun 2026 12:23:16 +0200, Vinod Koul <vkoul@kernel.org> said:
> On 29-06-26, 16:51, Geert Uytterhoeven wrote:
>> > Russell King asked me to put the PHY logic for SCMI pm domains into the PHY
>> > driver instead of the MAC driver where it was previously. Instead of cramming
>> > both HLOS and firmware handling into the same driver, I figured it makes more
>> > sense to have a dedicated, cleaner driver as the two share very little code (if
>> > any).
>>
>> I think you are mixing up DT bindings and driver implementation?
>
> Should the bindings change if we have different driver and firmware
> implementations? Isn't binding supposed to be agnostic of
> implementations..?
>

The way sa8255p implements SCMI is with SMC exclusively but - since even base
support is not yet upstream -  maybe it would be possible to expose SCMI clocks
like some platforms do and reuse the same binding.

Would it make sense?

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
