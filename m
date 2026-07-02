Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A56AAC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 09:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dBLYwbZmFdlkY0Y68/MHSQW/mBIut7urcRaDymwrYTY=; b=rI7ET2YS9LiNhvwOHb9Lj/xXsB
	Q7JQ3gSB4xg8WRdtnvoJoThvSitrzhAFtO81fcq7vF2UAYq9EWLB2AsgCFTChf1VwQmjdcsG9NhwI
	0gXAkwQjE7UPk6Ow16A0oGLqJQdhg4zfI/pMZQ5B5hh/oVSqTc6fDuBk5IBPEp45De58uF9n888ID
	cn9sIYizMLtkXFCZLA59+rOQon8Q9ESCThI7Lxdq6adTGDnSx2S4E++6XUX/36eiaOKWemWVCjHH+
	0bW5s2nAiFLyxGq/3Kkw2/BkzGSCcFkFMrrWtVCMsQCsZv1jg3NFBZkDmr8gArxf7Ul/CDBZ8CW/L
	9J16yAfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDTa-00000003yjU-3Cqb;
	Thu, 02 Jul 2026 09:12:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDTZ-00000003yi4-0oO7
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 09:12:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5C4AB60121
	for <linux-rockchip@lists.infradead.org>; Thu,  2 Jul 2026 09:12:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14BEE1F00ADB
	for <linux-rockchip@lists.infradead.org>; Thu,  2 Jul 2026 09:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782983572;
	bh=z3us1EYcPhA08D2V/YJ+nWiOnRiCmeZ4lZeMhncdG0g=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=lPyvPnDueqS9ZIaG4AR8IxxE8u+oV1PYjwXXaoyKWknbM6OhQLYanydVuc1qzgo3z
	 R+JWVZq5YV93ScxHlquZZEI93rboq8ubHxikSWMv+AFhTH61bnsbIfLwDQqmN/fcDh
	 L7OatAaU/eNHLzOUDAhmQAWRK86el8sgoojYtGqc2e+aa4Ab7EPhmdyDoi/e3911uD
	 H9YT4uVHlukHAKxHgypn/78J+0kzaG/PPT63uA23z0e0Jy2jiwUJiGiPEI4aLZoKPK
	 fgZnHkddf2MFQObw8Uq2YbfAhlewJXDrb5n2lpce9v8zY+WoWQU5rj6NBSeycKhtT0
	 BpJ6v3y8RhK+A==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-39957d210f4so15245041fa.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 02:12:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoFf/MmQu8kmnMSYtiydwkCdRw5MkIa98LCFsJJlZAnsCDD79kfMvWKxNrzglfz2dHjj3mmntou7dJp9VMSJw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXeovy22rol53VOuUXbUhMFV894KnRwStwwmX+8jbOZkqa9K/r
	WWpJO2LZAwrJwMJxlLIRWs/KwxN13+gGoAyOMD5uHIo/JYbzyn9XyBbI/Lb8rElajIAm1xo4Emu
	ZXLgIEJMza8YKzSasARDpy8zF5iudDxebd93FFkcccQ==
X-Received: by 2002:a2e:9c86:0:b0:39b:35bd:e705 with SMTP id
 38308e7fff4ca-39b35bdebfemr6340391fa.37.1782983570078; Thu, 02 Jul 2026
 02:12:50 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 2 Jul 2026 04:12:46 -0500
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 2 Jul 2026 04:12:46 -0500
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <akOZFIowVvprnAMf@vaman>
MIME-Version: 1.0
References: <20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com>
 <20260629-qcom-sa8255p-emac-v11-1-1b7fb95b51f9@oss.qualcomm.com>
 <CAMuHMdXen+E-Ai51aWBa_KV9W8Fz2cQPpT-FG_kQ7akhrrYa_A@mail.gmail.com>
 <CAMRc=Me3jaZXiXa1sFXr=8Do4sCd+XN1pKTcWC8-0j78SjCkKA@mail.gmail.com>
 <CAMuHMdVUBgG0EFB16OxHisbxx-sBvDKvBPNZdpyDnmBrnX4ptQ@mail.gmail.com> <akOZFIowVvprnAMf@vaman>
Date: Thu, 2 Jul 2026 04:12:46 -0500
X-Gmail-Original-Message-ID: <CAMRc=MfBcOhbj=ETxy2Xz9o_nyzykrEhKAc3jYi6V5_jMZEE3Q@mail.gmail.com>
X-Gm-Features: AVVi8Cc0cbGsvWIHn6Ltbm1wzcUWjyqAHy25YdAMNK19MIl0j9ziewcxopNMKrw
Message-ID: <CAMRc=MfBcOhbj=ETxy2Xz9o_nyzykrEhKAc3jYi6V5_jMZEE3Q@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/7] dt-bindings: phy: document the serdes
 PHY on sa8255p
To: Vinod Koul <vkoul@kernel.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
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
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>
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

I've thought about it some more and I believe this question is philosophical in
nature.

sa8775p and sa8255p are *the same* hardware. I can flash different firmware on
the same Lemans Ride board and it becomes one or the other. Yet they are not
described by the same DTS and the bindings differ as well. I don't see why we
wouldn't allow the same approach for the this PHY.

We treat it as different HW variant when it's managed by firmware - just like
we do with the rest of the SoC.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
