Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20B41C76195
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 21:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsovTUXU3ylT3GGfmmn61pSr3vN9EpcdwvIAlcIKQkE=; b=b9tkn++F8tMoQn
	J+4NxmWyRWQdA3bCHkTZLzta3YRWQI5M1XEcE+3OhLEQOw9PRT/sg/u6P1QJlps1TJ1TdhYI7cT98
	UyzYW92/xCe49wbz5MBcDrbnoXINsAKDyBAns1JwFEZ/1R7qZwfyRaeUeL6RkZLJOZHCpm0BuXikS
	GZVvTc63lexECPcEjupuvwgM4Em3L0zj+X24y6Awcbn958c6x8G5pPhLMhFfu+jyF2XLUZBT9vJeF
	TR/Bg+ufK5+IwMYaswEOXblD2KH3XTUqeGa6kmPOwG3g+GRRhhrWjcX48u1qsx6GpgRBFgDJ4z8I7
	lwa0NrZ5fw2FoxFwBzpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0hR-007Vxp-2d;
	Sun, 19 Mar 2023 21:36:21 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe0hP-007Vvo-1p
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Mar 2023 21:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1679261779; x=1710797779;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=TT1NZFDlglG04lWn8b3D569FNDwhCTSHE8VYkA5Dx+U=;
  b=WwgLSns7j7gDtzj1dC7n4qMQav7OUrfj3FkmleU6GeTxuQeN7mGnTHRl
   IFgfzE9Nes8ut2l8deUs4MTzuGsBM2c3gzQJArS2H0tn1k6taMW3DMi/p
   kQhsGRQZ30wC9TSlQTjV1KeChzPn59xTEosvqh2DbcMrpV6LMIDfK5fog
   xDySjlxkRoxDKPO2hq+olaLujpqIAVIwESkVD0W5GzQnne4QF5Pmy/x3o
   HBkR7EZ7Bx+S/YSUDcn8NS4uag9JTtC2CBZyVJXIzstqzVVfiT95JOldn
   FZ/nx4fM7aMW8M1kgYp29vgzu/yvwiTBZxv2eJf7Pn3UdmT6GMl/at5NP
   A==;
X-IronPort-AV: E=Sophos;i="5.98,274,1673884800"; 
   d="scan'208";a="225987315"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 20 Mar 2023 05:36:10 +0800
IronPort-SDR: uCW34w2yp1LOORXkxZ7yszrj6xi81fG68lnfRPCT0mv45HAqNSsbiOObysHCgNfV1TUMB1N+mg
 14diPzNR4UrnBPNmRnJcadRUlKJhDErwMg7GI3R470smN1ys4mqnWs7SKd7bvMUyXX+fDnSCYW
 tHRHKckML4Jv771d1IiOw5okzrjymeIGiw3atv4IKnIsA1rrbdSGNs9YuwlBkW/N/JkpCi5c07
 AaxR/kesByhT4iUnYOpHwco0gQkMjLrw8IJzJOT7K/9cZXNS9m5Vdkf6Ja8dGM7RItRJGC1rsO
 3S8=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Mar 2023 13:52:31 -0700
IronPort-SDR: RTo3mUfyctituYOJT8OCVdgc8pTssYrgJTIUuyojlvnotDw0hF6LDtCMom0GubZSEAe95TL0SF
 PY54fMIy32nJ2HKeZKAhrf8pG0Cw0M64H1r/9Eepzx1FhIEYIczXHQqCZUwDhZlXU45lNBMUGX
 KJUNVgcNktIR1YnQLs1/RcXdcsDcKKMjB5EgAPy3/MTzsQHyzf+qDl6zUA0IV2w1PUq3XxiltH
 4TwCQa4FjukGF4NAHRBQvP8+mdGWqGGBnLRBDoX50SsIo1lQFQKKJLkpXUA4VF+Iw8sFxM3ytm
 Ko4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Mar 2023 14:36:10 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PfrlY458Bz1RtVy
	for <linux-rockchip@lists.infradead.org>; Sun, 19 Mar 2023 14:36:09 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:content-language:references:to
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1679261769; x=1681853770; bh=TT1NZFDlglG04lWn8b3D569FNDwhCTSHE8V
	YkA5Dx+U=; b=QceyF5oNgACqQ8sjsaRsiMOKfIYhjptv+fXpR24cGwPjyZhDE1j
	vVmgqZawW8MFo5w81UX/N52F6h67agOJDFUyUb26MzgcphLhiinAiqQWkieTDSKP
	tMMgaECZYxLp1AAz1MMQPIQxuB1u4yb+076EfiIzRPeTuVAU47AJHX2rsw0FD0M6
	aN6IbHH5zNoOnkdty9lS8MRF7fH9wn7leP6VHgCRIEPD0Lu8nhsE0QYDYh6J7RuV
	YATURhDOEJMHT68V1LyWGaCM/XqNoNFWnDzd7tMvIHoW1lRA0mU47aUJRZFpCT9y
	Rk7jzcAnxN6RDazWX8w6IClCd740fySdtZQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 32nU0z3rkMio for <linux-rockchip@lists.infradead.org>;
	Sun, 19 Mar 2023 14:36:09 -0700 (PDT)
Received: from [10.225.163.91] (unknown [10.225.163.91])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PfrlK1xCLz1RtVm;
	Sun, 19 Mar 2023 14:35:57 -0700 (PDT)
Message-ID: <de10b014-1a97-e74a-c7c4-b1004bf4cb60@opensource.wdc.com>
Date: Mon, 20 Mar 2023 06:35:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: pinctrl: Drop unneeded quotes
To: Rob Herring <robh@kernel.org>, =?UTF-8?Q?Andreas_F=c3=a4rber?=
 <afaerber@suse.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
 Damien Le Moal <damien.lemoal@wdc.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Tomasz Figa <tomasz.figa@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Emil Renner Berthing <kernel@esmil.dk>,
 Jianlong Huang <jianlong.huang@starfivetech.com>,
 Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 asahi@lists.linux.dev, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-riscv@lists.infradead.org,
 patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20230317233623.3968172-1-robh@kernel.org>
Content-Language: en-US
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230317233623.3968172-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_143619_671378_B6585C88 
X-CRM114-Status: GOOD (  13.14  )
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

On 3/18/23 08:36, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
