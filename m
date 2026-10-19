Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF35DCCF2E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 13:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S2T4AllS2ebln3d33RHgWAFCGHkvuW7lT+YF18XDB04=; b=VLZ6OCDq5j/42kf430AbVEnEd+
	+YGo4hXtrCQk1Euby8wwNlaupgVDk9d0QRvp92iAmqUTAd2d/I5Ya7b41kbe2QDbRWjD/ZGw5oM5C
	HbHs9XDfIDdumgVPzCN6uBezLO6/F9pE5fByGmxSMtjgx8v6Cq7be1daMNGzm1ZoJ0giFEZdvpohz
	zZvx5Pkgxc+BbaEuXzYJH9k3rTulWMuECLr6txSzA7o63M3GeJTC/oiZDe0HpJ5JY9GpPUK2AvbIY
	iJU/BFrYw/YH44VQHAtKEedk2ILQqLx7bsq+bMD3U59A3Kd6QJiQEBg9VARC+Trs87N+qrIIfurIy
	FctLqNCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xInXB-00000007Wnf-3F2Z;
	Mon, 19 Oct 2026 13:36:13 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xInX9-00000007Wml-0Hj3
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 13:36:12 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4a171b677d2so12597575e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 06:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1792416969; x=1793021769; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=u7QI1RqFBazH73cHjUm3bJRQ468s8YNQSYzETjY7O2I=;
        b=Bi8uBr66BPe4Z8RsUkAgyKrUIhZrDT2/GzQZ6XIa3AsGXAgnPkBm4uFtpOcIoRkqvn
         KWUbbCzQUWnSXmXJ/epZiEkdbGsJzn0BbBPkJ1E1Z+j9cMjeTe3v1RShqDyVF87IcgGl
         mLS/Gzvv+VLUYkMHIwPf20bdDQX0jQSxeyPzWKFqpz19L41COSjxo+JdRtoWL7JU4lVf
         7l4/0d3V/36sFvruLMeXcRNevfM7N+U/U0ATMHzDmKEIDaphdQDW8VHfMkrHulGsOkFr
         CJY0k+rd+fTaSSc31SyPSgIMw1hOAZ15KG7skMO5TXvXusBOpjve9vNDOV+y0eJ7/rRG
         jUAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792416969; x=1793021769;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u7QI1RqFBazH73cHjUm3bJRQ468s8YNQSYzETjY7O2I=;
        b=2p1pG4LSzFLP5kp4R21PV7Xv3CfkRl/tGBo/9s0NBA/moLVPiROx5+r6n//9DUPh0z
         mOMBPYR2HiqWwo8xXwkImr0hDkUYmbfO9Ka/R1wXaca28n8zyLmVQ59klxOQS+A88Pq+
         cwKwvDojrDXmFv402heKbqkrx5zC7ZVK5wNygjPm7M/0Lu5cwotsyOdZDNMM2p4FwxUx
         5W59w9K0owVcVmdekKKoesxBoKHy8OApfLTAC8WBJAfzJypDfJlCr7kSqgnI9YlbpblV
         Ev4gazPTGw63r+1FpNf2bzXd5n3MW67MiRCC0C7oYMu87VuTr7DkXkovjGKQj3l6+LGA
         pcvw==
X-Forwarded-Encrypted: i=1; AKwUvBx1zscX54K+ir3PmLFjC8gSgfqIvwzHBDqKzIUgwP5ZncVESgS4KblV5Yjqp2prwkrUbTGmAGM4e1VLJOWCaA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJx+ovAfxt3lI5OzaLRs1/+xq73pcBA22DR2qdnKTyyrhPALXdP
	6iihhp0TLzypnvXy2eiGXwMcUUg6pKq12ZizL4jomX0FPXOVMBwoT8+ioNojjmutHb0=
X-Gm-Gg: AYBFou2DA7/leXiMEBpNPZR62NVIyfBwK8loj0hP6CP4d1Gmc4ejI8KjAZrwNDXaqfL
	XBer5SPMqNxMM1L30B2MbHozWDd/o9XTXFQ3S4NkRLeuGKUHFFrdehtyY53J3ET7NVLwbVaOmw/
	jvMsT5S1OIFVW/CueuEQV36GwBeXliZckl0pxMrN0ht7OLxM67Ha5A5GGevD1PcukCc1JJq5IhJ
	FCI8zHNOQTszdA8v3y1wAukl8vNBd2EkGFmdwtUdga1XQQIVIhOJqCCBC23Noa3O/2mKkkbZoOT
	sZipw3xioJrpiU0W4qymMjuBE0mFDleVjPDiDgYtRixCZ0CxK5XAkYAcegMaqudexnaNtSl3HAz
	88ehmVXuDlRa2YPqZTVApETvPikilSzdu5I/6qLT6igfQOEAgOctsO2gtcN5oEtM8Xx354GD6CQ
	b6ObqdL05QzgaEud57EODOWh7TSnzV1JJF+kT2yg3lJVWn/QwgaV38qxutgf3i3hKKW41UoIwWk
	OwEEkzP
X-Received: by 2002:a05:600c:c168:b0:4a1:ed0c:f051 with SMTP id 5b1f17b1804b1-4a1ed0cf21dmr30497355e9.5.1792416967770;
        Mon, 19 Oct 2026 06:36:07 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.221])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4f8cfesm20387473f8f.37.2026.10.19.06.36.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 06:36:03 -0700 (PDT)
Message-ID: <0cf7bef8-42fd-475d-b47a-9cb8629644ed@tuxon.dev>
Date: Mon, 19 Oct 2026 16:35:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] ASoC: renesas: rz-ssi: Explain component open
 return value handling
To: phucduc.bui@gmail.com, Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
 Venkata Prasad Potturu <venkataprasad.potturu@amd.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 povik+lin@cutebit.org, Andrei Simion <andrei.simion@microchip.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 David Rhodes <david.rhodes@cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Shengjiu Wang <shengjiu.wang@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Heiko Stuebner <heiko@sntech.de>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
 <20261016040946.521195-10-phucduc.bui@gmail.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20261016040946.521195-10-phucduc.bui@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_063611_169017_E61BC39C 
X-CRM114-Status: UNSURE (   8.17  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 10/16/26 07:09, phucduc.bui@gmail.com wrote:
> From: bui duc phuc<phucduc.bui@gmail.com>
> 
> Add a comment explaining why .open() must return 0 on success
> to ensure the component is correctly marked as opened and
> prevent future changes from reintroducing the issue.
> 
> Signed-off-by: bui duc phuc<phucduc.bui@gmail.com>

FTR:

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
