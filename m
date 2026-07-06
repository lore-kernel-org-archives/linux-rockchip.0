Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56271C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 17:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oFYg7XOlE0wDnoUJDeqK8bTKkwgApN+C7sMqQbqLn+c=; b=ixm9RuVsQm81n8bUey3arl7t6b
	5PY0rlASynVRhhMc+NjUF1DaGyjCLc4t7oDFgJ/64ry7Je31bb2vhSRz7ihrXnb9EaSkhWZTnV6Sz
	+WPPmga9T0ewVdCV5bzJl2jMD4moukyWl7J2uYdsqPgiFxnnWTOAGVWveXxXfXZ3fahHaM62pAkR3
	kOsjUgzsRgAcP+YpJlg6SKW9TiVZy22+t/SIFkHZ5uCy/P9RY5qu/+aW743EqrNwSxZV9E7JwW09V
	zQGjYuwdM9Nl5fqz5y12O7H7YT0KwM6SQDJmgQ2nhSYq7KK1QRwPXjjvxczOqMVKg9+zJhpw9EoPE
	X1vhQLSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmqC-0000000DALO-13p8;
	Mon, 06 Jul 2026 17:10:44 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgmq7-0000000DAIe-1fgq
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 17:10:42 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so22871815e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 10:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783357837; x=1783962637; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YwUdG1I8kJNunEWTpdhFYSiUn8LDq7cMo60LuGY0n18=;
        b=DwCw4gL9zT7ERB7HBO7vWw8eeSrGbOlZG4qnXQcI970tQ3uU/IPf2zbpjtW7dRnhI1
         NekeT7XWlg2lK+S7uWslb0898BpyNMPsnWnRZj13pvpNVk4L1v3M/ZPgc61fxM//aPz1
         EE8fWLArPpRf1pTDRSdX+p8yrzly2NvubmMev4z8NE1EkbhFNYLPnH7rNjnRKnJ2lDSd
         LylTX6zBhsb9defvLKJzamH1GG3Aq2f3NlVarclmk5gwBFLRlQ7yb5JAA1kT+ooKDgER
         CixQBSFyCxNaEpP1YW5wIPVKGz0HghW7h8RK+NEvC9ePIx90dxgIfvApBWC6dOTZkYGg
         uLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783357837; x=1783962637;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YwUdG1I8kJNunEWTpdhFYSiUn8LDq7cMo60LuGY0n18=;
        b=eYzGNHeJ3R9LMfeeokig9ktgBo/cbdtFNi1K4C1rE2wXpgpImjEwwKJDWTSzo3DQYX
         TtFWAVt+asiIh2yYuJvSOuLRn5rgK2Bw/9GOjbDnhRXCyG+jStWDOadYT/w5I2hADIHe
         0CnScF48hrstX358F3j1Vygjz7aqZ5ac60+TePfu3cupRsuByleJtymJGp9T2cOYPcI/
         ox8Dej8PchicZdT4CY7iXOBm5cufKDuFyjKc4cafWW2Cn1UHfy7RIX92yTy4fXjN3U/9
         TdcQ85F6XCMWkYp8GNbYoJNVhZEFghdWM9sBOx4ysSVkCc0wJLFnaPtyv3g8cg/BYMCO
         KKZg==
X-Forwarded-Encrypted: i=1; AHgh+Rriv1YbAUof/q6GttjgbwsJ7B1j8wXZtxFhlWa+9wkEfABIy9t77aemXj6B5Z5UHaHXjfmg3Z2DSkXCtwhiFA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwyOt3DVbrj0xTNedOAhYA2HmmCo37lLlr7acYsWtGWu9/oFC00
	8VO1SGQ4YJ+RuKP2LA/8/ufmX9qyEJtHCmbLa8ltDvcLLHCJun/VGuprn9C67x7A5H8=
X-Gm-Gg: AfdE7cmuRDKEP84+Xd9r1gP/wSGb3df7uRpy/QP/XjZWdGqezdGWo9dqEdHGQ6YfS+b
	loOL27J9bKi+5apBwJvilpo3IrOVmNhpTFLmdHX4Gn6yCPIeM/Su6VUK92FyM7hQSvk19dBM1W9
	I97Ukr7xWUdui0fg/OchWwv0ezdWDxUI7Yti3U/nbkuTfOhDFu4E9jtZoDWfnZYQCW7nmXE4rPc
	jrK7rbHPRZQ9l95/wGBPpYvJOkCZA5g2bmu1EJuh0NlaH8JZWknwXJIgzawlYrcHfmD+2w/Voke
	mvRuGKkz9snGExka3l8e+dKUL75hlWqzBQJw/8u/Vulyf0dydNdBTgMmgo9kIaAm7a4Tn0YrL1r
	zxJvXB/5uUO9HDm8PxvxaW+S35x9eL7+diWzy5YV5qMOmCUDPp+TFj904bGYPcOXsulr2yT+Qkv
	X+tutFx267ojiXX1igX8k/lTKZ5j1+jICtmPz5frlSsm3rjFqCKIrpBMSzjR5G71shDBwSizROQ
	XM=
X-Received: by 2002:a05:600c:548d:b0:493:c478:8744 with SMTP id 5b1f17b1804b1-493df0644a7mr17176475e9.18.1783357837297;
        Mon, 06 Jul 2026 10:10:37 -0700 (PDT)
Received: from localhost (p200300f65f47db0404eb41111570ffdc.dip0.t-ipconnect.de. [2003:f6:5f47:db04:4eb:4111:1570:ffdc])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493df703391sm6037585e9.0.2026.07.06.10.10.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 10:10:36 -0700 (PDT)
Date: Mon, 6 Jul 2026 19:10:34 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
	Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Christophe Roullier <christophe.roullier@foss.st.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Radu Rendec <rrendec@redhat.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, linux-mips@vger.kernel.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH net-next v12 2/7] phy: qcom: add the SGMII SerDes PHY
 driver for SCMI systems
Message-ID: <akvhUwQ_FFSJYICA@monoceros>
References: <20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com>
 <20260706-qcom-sa8255p-emac-v12-2-e3ab1ecf2901@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <20260706-qcom-sa8255p-emac-v12-2-e3ab1ecf2901@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_101039_445209_4819056E 
X-CRM114-Status: UNSURE (   8.43  )
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
Content-Type: multipart/mixed; boundary="===============7786164111366479198=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7786164111366479198==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hya7dxqb4rmwvjro"
Content-Disposition: inline


--hya7dxqb4rmwvjro
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH net-next v12 2/7] phy: qcom: add the SGMII SerDes PHY
 driver for SCMI systems
MIME-Version: 1.0

On Mon, Jul 06, 2026 at 03:20:17PM +0200, Bartosz Golaszewski wrote:
> +#include <linux/mod_devicetable.h>

Please only include those <linux/device-id/*.h> that you actually need.
I'm actively working on deprecating <linux/mod_devicetable.h>.

Thanks
Uwe

--hya7dxqb4rmwvjro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpL4YcACgkQj4D7WH0S
/k57CAf/UgOJNneAcYY3lQuZ+RhwSluKHlS9kU+LP6KfWURj/Pj78uMbougI/MWm
NOPHFAV0gOZPyox4TK4XImoVNCHq9wWJVtMM0UMCguoEBhrqgoeV/Esik9YncvIc
INlZjmDSd0r0OJd9oMZmIM7O1eIZxLQugbLTCT2WK9eW0OCT+20CmmtgHzGHZ7eU
krIfDqpfq0wJOa70OZmh/lowgwbJIjabcxyyCGiY0Scvf4F31ClocQmot5e6gabR
OcwHOulxqkUKBtOVZtPrt5lRsawYjY+ZslpAnnZvlrbrqmj2M9IuVyQGMqEW6kkC
CFP1TQBoEVajey5oRSMzdQ2ZlvM/wA==
=Sskc
-----END PGP SIGNATURE-----

--hya7dxqb4rmwvjro--


--===============7786164111366479198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7786164111366479198==--

