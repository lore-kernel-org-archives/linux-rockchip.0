Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF392CD129C
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 12:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30S1XS+jvvzBd1YEzXktFKxu/5jRJpQQNs8aezShhfs=; b=ElUwOs7ri25KnRgaGy2FI3WDQm
	dC2PHGgGUgzyl7AFLtdblkBe8n+790zZnztW6q3W8PfE4V4z4K8edMCMP/X92h7+x1JLxuPgH9qOE
	KiQNdMbAiqUa0+nutDIWLpZ+WsjNQTdXj4xPwatioLh//LgZACjrodLpiuS0zp9ru44/KWnJ8fzlV
	b3cnDaipqbuM4Td7Yt9aimN0ZkT/cuFBz774sSniJBLRBaX36nxuMbDe9Vu3gXcS0ASAYDz+NVuds
	tv9ume0Ndh1ATdbyTkA714/rbxeWVpyoR8MKDr4L+UrFdb6E27HNAzDK5BX3sXIm/7GNm6fSiEZjG
	5aqDLpXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGz6W-0000000FRNl-0ujS;
	Thu, 06 Nov 2025 12:28:40 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRv31-0000000EOhe-2bVN
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 14:45:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=X/Vu
	s3odAr0nVoUkxLttzX7Pk94wValiSx+VwO4R69w=; b=AuPvm2HYrBBxPCRmojQD
	7CRnGb08OzEAMIGsRtGo1cADF0LX2II9QCJrZUl8IaFo/ZZrZu7J+SrEBWtj60Pv
	1FkcrDPS/qIZnwEyGkXZcTAvUt2AcDbXPu9bRoCsRQVJ3yq7hI4gN1/pRnYBoxmm
	LrVreSCYG9WfR6AIcwartOTLwI8fldcBkiqrbY/9wh/UHI5zzHySLqznxmN0E27e
	CL+TVhOO2A9S47NlInzK62SsP9b7IiXAGum0KbJErYmlY66z9pmjZt/lJ/IEYVUY
	0s8pI4FRRnO0k8J6sY5OSdOg4ouZH//OI4WOka5wh84Dzu3nFqTCzDfn3u4TXjEA
	qA==
Received: (qmail 877093 invoked from network); 11 Jul 2024 16:45:16 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jul 2024 16:45:16 +0200
X-UD-Smtp-Session: l3s3148p1@33mez/kc+ORehhtW
Date: Thu, 11 Jul 2024 16:45:15 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: linux-i2c@vger.kernel.org, Ajay Gupta <ajayg@nvidia.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
	Andrew Lunn <andrew@lunn.ch>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	asahi@lists.linux.dev, Baolin Wang <baolin.wang@linux.alibaba.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Baruch Siach <baruch@tkos.co.il>,
	Bence =?utf-8?B?Q3PDs2vDoXM=?= <bence98@sch.bme.hu>,
	Benson Leung <bleung@chromium.org>,
	Binbin Zhou <zhoubinbin@loongson.cn>, Chen-Yu Tsai <wens@csie.org>,
	Chris Brandt <chris.brandt@renesas.com>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	chrome-platform@lists.linux.dev,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Conghui Chen <conghui.chen@intel.com>,
	Eddie James <eajames@linux.ibm.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Hans de Goede <hdegoede@redhat.com>, Hans Hu <hanshu@zhaoxin.com>,
	Hector Martin <marcan@marcan.st>, Heiko Stuebner <heiko@sntech.de>,
	Jean Delvare <jdelvare@suse.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jochen Friedrich <jochen@scram.de>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michael Shych <michaelsh@nvidia.com>, openbmc@lists.ozlabs.org,
	Orson Zhai <orsonzhai@gmail.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Peter Korsgaard <peter@korsgaard.com>,
	Pierre-Yves MORDRET <pierre-yves.mordret@foss.st.com>,
	Ray Jui <rjui@broadcom.com>, Robert Richter <rric@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Scott Branden <sbranden@broadcom.com>, Stefan Roese <sr@denx.de>,
	Sven Peter <sven@svenpeter.dev>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thor Thayer <thor.thayer@linux.intel.com>,
	Till Harbaum <till@harbaum.org>,
	Vadim Pasternak <vadimp@nvidia.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	virtualization@lists.linux.dev, Vladimir Zapolskiy <vz@mleia.com>,
	Yicong Yang <yangyicong@hisilicon.com>
Subject: Re: [PATCH v2 00/60] i2c: reword first drivers according to newest
 specification
Message-ID: <Zo_v-xk3Hh_88sNa@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org,
	Ajay Gupta <ajayg@nvidia.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
	Andrew Lunn <andrew@lunn.ch>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	asahi@lists.linux.dev, Baolin Wang <baolin.wang@linux.alibaba.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Baruch Siach <baruch@tkos.co.il>,
	Bence =?utf-8?B?Q3PDs2vDoXM=?= <bence98@sch.bme.hu>,
	Benson Leung <bleung@chromium.org>,
	Binbin Zhou <zhoubinbin@loongson.cn>, Chen-Yu Tsai <wens@csie.org>,
	Chris Brandt <chris.brandt@renesas.com>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	chrome-platform@lists.linux.dev,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Conghui Chen <conghui.chen@intel.com>,
	Eddie James <eajames@linux.ibm.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Hans de Goede <hdegoede@redhat.com>, Hans Hu <hanshu@zhaoxin.com>,
	Hector Martin <marcan@marcan.st>, Heiko Stuebner <heiko@sntech.de>,
	Jean Delvare <jdelvare@suse.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jochen Friedrich <jochen@scram.de>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michael Shych <michaelsh@nvidia.com>, openbmc@lists.ozlabs.org,
	Orson Zhai <orsonzhai@gmail.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Paul Cercueil <paul@crapouillou.net>,
	Peter Korsgaard <peter@korsgaard.com>,
	Pierre-Yves MORDRET <pierre-yves.mordret@foss.st.com>,
	Ray Jui <rjui@broadcom.com>, Robert Richter <rric@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Scott Branden <sbranden@broadcom.com>, Stefan Roese <sr@denx.de>,
	Sven Peter <sven@svenpeter.dev>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thor Thayer <thor.thayer@linux.intel.com>,
	Till Harbaum <till@harbaum.org>,
	Vadim Pasternak <vadimp@nvidia.com>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	virtualization@lists.linux.dev, Vladimir Zapolskiy <vz@mleia.com>,
	Yicong Yang <yangyicong@hisilicon.com>
References: <20240706112116.24543-1-wsa+renesas@sang-engineering.com>
 <nbi3fngfcipt35gzguk2mh4zzh3vy5a5gsk7dti5smm2iimytl@drm7p2iqsinp>
MIME-Version: 1.0
In-Reply-To: <nbi3fngfcipt35gzguk2mh4zzh3vy5a5gsk7dti5smm2iimytl@drm7p2iqsinp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_074527_970214_BB57E9AC 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 06 Nov 2025 04:28:36 -0800
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
Content-Type: multipart/mixed; boundary="===============6598893208891564110=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6598893208891564110==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Vk6JWgUmE7mz+Biu"
Content-Disposition: inline


--Vk6JWgUmE7mz+Biu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Thanks for this big work, at the end it turned out quite nice and
> I'm happy of the outcome!

Me too. And thanks for the enormous review work!


--Vk6JWgUmE7mz+Biu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmaP7/sACgkQFA3kzBSg
Kbbq3A/9FNY+7cgd8CU9HNabmoXmMSCsOVflmaDNapeEn/iIYZUiBBFhDcYnJczI
T429i2bK95+lup88Nhn9fzXQ4hoPFa2TuPkQ5n3M7A9hjFnAOxLmTd91uO98BfVm
8IYBr6EIu/AfX/+D6Rj1Ro1VpSwK4laze5p9WGyNjp6QIzJ+KqmRh+vf9Shg1urk
9gNjTClxMD1OjQ60X0Vr4XmDONnsK8guT/Zkkk1gtDRDC8P92Jw17/3vtuBQnwP6
S1NAFaqvdLbLKuRBsK7KwJ6oJ4sH5jq2LCiJk87GHsXnQBerXSR3AFORTQWjvEBF
6qz8rHh0/GrQklzbs/VgVlqV3NygU4D2T18NZMyLxaJAGPmDPGeL5YvcweblR0TL
yMMuXmSq7ACO+aTJgqIqt2Wx1PS4cbvSmaHUnG52eGrX28o1PgjIW5y0xGu9G5FU
Funcvt0JlI2HtC1FI2FGDsCW77U3mh3U5N5NEo7y24XPebmTVhGifj2kWp/WkA3F
UPgJdkXF0gUzDxQj3Febmvmeh3m58s+Io+3LWBncCK2eRgL4YyEaKpEegQfA43Rl
PJGODikSLI1gh/8qN/WE44DGio65TYItOJrPX3b8VwOQLCgKgwz0y+a37vy2Jd7W
X/LXLwb8txlca1gF88Bg07eWwR/jwNoHp4c/k2C80iwHtJ12Kcg=
=ribe
-----END PGP SIGNATURE-----

--Vk6JWgUmE7mz+Biu--


--===============6598893208891564110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6598893208891564110==--

