Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DADC25B74
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 10:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M/jKevgwr1Ggs4Rbz4HIKL65HktzpD/FFrEaje8CQfI=; b=L5ATqsSe14yBkbO+/08/QgNbmk
	bEAqUh6qehIIS8F3ZEa9FELdyIQxxhyGt99WFrXC97B/SmmKnWDTiV0S04JGhA0GoHOD4M2SBW81c
	IrUjOXbQNyrhAU3j8mJ0rK7im8KCDgJ/LsRq8jJZx9AgecDTlVqu6rIgnuE49wzf6POJd3mc/YVnw
	mDyuEa36Ee4GylAqZfK8PpYCPOFoap06Zar4n+RNbgknIKlUybI/rdE/q2wWGp+arDUXnGIpYFlht
	98FYlpu4pHM5e4QwtHAQdmdAQZ6IMpNeVu5w5ip27y2Ko99Odwzwgtc9jf+ctkkX0WAOOcfLEzNb5
	yi5xuU4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCdJ3-000000070w8-43fr;
	Thu, 30 May 2024 10:46:49 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCdIz-000000070uL-1xtM;
	Thu, 30 May 2024 10:46:46 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52b79447c58so1037088e87.1;
        Thu, 30 May 2024 03:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717065997; x=1717670797; darn=lists.infradead.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Kz3V9iZ9GUeS/4lYsW1iAj8Ti45jGQbQe9Z5iScKCj8=;
        b=aDbRW1nHGl32vNI4aAP6FTt9P2s6gTp2mplEFTv4LVryudQDgg5dnkEicpJS/jgQa7
         s7cqga9+9UDlrrE120Rd2sQr85w4zYrtHKir33jp54lxDEaSNhSa55TiihqVlPDoZaZY
         K3rwH2xGRqvUnVHwB/+Kt3AMjZtX0beT1OxLTmx6AqqryVOHErzEC7mr/Gwa2aTsVY1U
         jTxjJO+goMPAQAT83y2fTBKGV49cMeo/JOF09c/r48QmbT2Xitgb5TxB9BscPzAnzidS
         VxLEcfIaXNi/3KQEIETE/D2frRMwNElKn8zLTJcgLJj2bWEGDq80o2pctkd/+uF23Ek2
         vrGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717065997; x=1717670797;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kz3V9iZ9GUeS/4lYsW1iAj8Ti45jGQbQe9Z5iScKCj8=;
        b=LYMXDdLc2kmd6zcF49Fs6Cc0Q+YldmsrK7GfX7t9OrYQIeNn28KrjZgg24GwBLH2IL
         tWp0QWVHm5wpI14P5ISvWE9jlHC9XxKMT1x88F93D3P/c7AH1UHimL2pU0VumtbfcpIa
         bMWMnfHsnUFCxHxvbosQJyLF1btl5PBVYs8os6j1c/X2ALYolTNt28DWB9XkMdqeYE3o
         7qsVisuX0q1WG/FBPk7q4CpBBNuL+Suz3j7ADdlmyD1Oyr3T78OMZ95KLjkB588edWaO
         7l8bq9v6ZiiLOSS/oxBc2jY7h4oPFpJotq9vkySRkl5/8Rs+0TV9NDvWy/fj0X6mDpKn
         eM3A==
X-Forwarded-Encrypted: i=1; AJvYcCU8lW4Mls16v+4w3qkrFO6Fzd7UC+7aE/8G/fYJ9H3jEI5XovQdNPQTMyF4jcVZGOCeG7/Zggb4ZPzJJ6gPFcrYKKnJ3esL7s3M0sHeZgjaRnewRIoJEzHHuHu2HqBazmKfvpJr8RCFk5NkIitbunI73edzUBneGJ7uRwe0spUJzoSxwBeI1xNQwhvPBG0JOqqdpNMXJZXg6fNOfbt9oAXC5URW5lKibzQGIAUgAJxBjXj2wF/OFM4/hted6HU=
X-Gm-Message-State: AOJu0Yzhr6pXwgiUibbXfO2LEggzUo5flgNrgoRr7v9W5Vszc1oBmHo1
	ewr5UkHwAkuZ+J1MW1SDyg8DpRXO5B694VsY7ae/hieBnmKb19FyffiDzw==
X-Google-Smtp-Source: AGHT+IF8HtLfN2jy2u5b6qrXpWEdw3o5ChBVoUHw6Bx6hyhWP9jrTNwrZOX6TBLkr1VZDWVNaz6SDA==
X-Received: by 2002:ac2:5979:0:b0:51a:c3b8:b9cf with SMTP id 2adb3069b0e04-52b7d4b1c97mr1485781e87.69.1717065996469;
        Thu, 30 May 2024 03:46:36 -0700 (PDT)
Received: from localhost (p200300e41f162000f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f16:2000:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c9376dasm807478466b.54.2024.05.30.03.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 03:46:36 -0700 (PDT)
Mime-Version: 1.0
Date: Thu, 30 May 2024 12:46:34 +0200
Message-Id: <D1MX3G6VN849.WKRMI0MU71Q@gmail.com>
Subject: Re: [PATCH v2 02/20] pinctrl: tegra: Use scope based of_node_put()
 cleanups
From: "Thierry Reding" <thierry.reding@gmail.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, "Linus Walleij"
 <linus.walleij@linaro.org>, "Jonathan Hunter" <jonathanh@nvidia.com>,
 "Dvorkin Dmitry" <dvorkin@tibbo.com>, "Wells Lu" <wellslutw@gmail.com>,
 "Maxime Coquelin" <mcoquelin.stm32@gmail.com>, "Alexandre Torgue"
 <alexandre.torgue@foss.st.com>, "Emil Renner Berthing" <kernel@esmil.dk>,
 "Jianlong Huang" <jianlong.huang@starfivetech.com>, "Hal Feng"
 <hal.feng@starfivetech.com>, "Orson Zhai" <orsonzhai@gmail.com>, "Baolin
 Wang" <baolin.wang@linux.alibaba.com>, "Chunyan Zhang"
 <zhang.lyra@gmail.com>, "Viresh Kumar" <vireshk@kernel.org>, "Shiraz
 Hashim" <shiraz.linux.kernel@gmail.com>, <soc@kernel.org>, "Krzysztof
 Kozlowski" <krzk@kernel.org>, "Sylwester Nawrocki"
 <s.nawrocki@samsung.com>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Geert
 Uytterhoeven" <geert+renesas@glider.be>, "Patrice Chotard"
 <patrice.chotard@foss.st.com>, "Heiko Stuebner" <heiko@sntech.de>, "Damien
 Le Moal" <dlemoal@kernel.org>, "Ludovic Desroches"
 <ludovic.desroches@microchip.com>, "Nicolas Ferre"
 <nicolas.ferre@microchip.com>, "Alexandre Belloni"
 <alexandre.belloni@bootlin.com>, "Claudiu Beznea"
 <claudiu.beznea@tuxon.dev>, "Dong Aisheng" <aisheng.dong@nxp.com>, "Fabio
 Estevam" <festevam@gmail.com>, "Shawn Guo" <shawnguo@kernel.org>, "Jacky
 Bai" <ping.bai@nxp.com>, "Pengutronix Kernel Team" <kernel@pengutronix.de>,
 "Chester Lin" <chester62515@gmail.com>, "Matthias Brugger"
 <mbrugger@suse.com>, "Ghennadi Procopciuc"
 <ghennadi.procopciuc@oss.nxp.com>, "Sean Wang" <sean.wang@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>, "AngeloGioacchino Del Regno"
 <angelogioacchino.delregno@collabora.com>, "Sascha Hauer"
 <s.hauer@pengutronix.de>, "Andrew Jeffery" <andrew@codeconstruct.com.au>,
 "Joel Stanley" <joel@jms.id.au>, "Dan Carpenter"
 <dan.carpenter@linaro.org>, "Tony Lindgren" <tony@atomide.com>, "Stephen
 Warren" <swarren@wwwdotorg.org>
Cc: <linux-gpio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-tegra@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-samsung-soc@vger.kernel.org>, <linux-renesas-soc@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-riscv@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <imx@lists.linux.dev>,
 <linux-aspeed@lists.ozlabs.org>, <openbmc@lists.ozlabs.org>, "Peng Fan"
 <peng.fan@nxp.com>
X-Mailer: aerc 0.16.0-1-0-g560d6168f0ed-dirty
References: <20240504-pinctrl-cleanup-v2-0-26c5f2dc1181@nxp.com>
 <20240504-pinctrl-cleanup-v2-2-26c5f2dc1181@nxp.com>
In-Reply-To: <20240504-pinctrl-cleanup-v2-2-26c5f2dc1181@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_034645_606771_E1753DBF 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============8982778651940029873=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8982778651940029873==
Content-Type: multipart/signed;
 boundary=0af7656c2f06897086bd91562b0d7ec8235257f5e63bfa8c4a36e7a56c11;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--0af7656c2f06897086bd91562b0d7ec8235257f5e63bfa8c4a36e7a56c11
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Sat May 4, 2024 at 3:20 PM CEST, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> Use scope based of_node_put() cleanup to simplify code.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/pinctrl/tegra/pinctrl-tegra-xusb.c | 7 ++-----
>  drivers/pinctrl/tegra/pinctrl-tegra.c      | 4 +---
>  2 files changed, 3 insertions(+), 8 deletions(-)

Looks good to me:

Acked-by: Thierry Reding <treding@nvidia.com>

--0af7656c2f06897086bd91562b0d7ec8235257f5e63bfa8c4a36e7a56c11
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmZYWQsACgkQ3SOs138+
s6H2yBAAgeFKUkMlk3cWjVf9KNcypicIrr3j8r7LwohalNat613qoJ9YbzqqhwI4
Gz6WRZUeiS7foiJu4a7gpc+lM2BsBe1fH2Qp8quSuXvd3qUCG7X5x3lf3NKsgqTY
cXTyByotLJvYp5A/oUqWp1lwEyHec33GjJhuUzl7SD/HXun7zOdGWkBDonQJBlLj
Bs5fE7wt9ekYvMAU7EHBDbIg10fvay+qWs4EJoqxhFgSgnmFSK9NrRZIW8IpWcU+
AYMf2SPzWXdNPHij0BrXcWhV94d+XhSjSk1ERGByH2AOAr9WJ2YtrZm/W+7KVHXe
G/4DE+Ss2wpYr6d4kAVn9GEDwH21w3DBKY38Ah/0B2SE1Nv1LXdaPD2m4SiNSIMb
X55kEyxnrVPM9TTH9LlMKeJBwUDqohmQ9vYKDVuTVGO6Kdu3fc8euMIjCaWW7RkA
lbmgGT83eBp279Bw72mbM83wtPgVvBY9ufV0oy6Ox8cY7D0pDOFCCxLhxYld7XT1
7Sqg9E9rNlM/OX0QBFtCqcx/RtAY6ILPMioWUfFOS6FX8JjA9hviTvPYGNrSdvRl
ZC6LcNmGEY9OjNMxft3NCl+kjz3fkiYyd9UglVHjAi+q4odk2HFwg93bVAEC705u
xsy5uZQ96h1OIwzr643CV9p79G4CjuxDndqb4RfPWrnW3Dkw0iY=
=tJx3
-----END PGP SIGNATURE-----

--0af7656c2f06897086bd91562b0d7ec8235257f5e63bfa8c4a36e7a56c11--


--===============8982778651940029873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8982778651940029873==--

