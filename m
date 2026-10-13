Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF83CA9ED0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 06:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkGKAqfLA3Eu+Nyn2lei8rY2fengD4w95ryXdklks6c=; b=ClV5pzX7EtzPSR
	0qYemc1l0QDH1Tsvx+8wzp9uoG7FqPHWVcHFYqAN+gZTkH5R9hp3P1wi/6du8FFuRb4OB8/Xns1iE
	b9Xv4kEbOa6WiCWL5yAQq/xKMzs7/tFPiKj+HjReTTC9m7vTShT72dF4+QL9RMEgQdqeMX2HC7XgZ
	2YGok6sGq6lCPbJiJraVfDz4r30kXIZVavDEWrBphoRARo3JqCEG9EcQNlqc9D9zSnQGQxsmdzHzn
	IK2EvN63CsSRZdeicziefmWPp4x3/tRN/qRuPTKejsLrj/LtebCX1LYiZp32ceMbdYBWjZLmvOvhy
	CwePTLmqocJkfVKPce6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGVcu-0000000C4wJ-1bdn;
	Tue, 13 Oct 2026 06:04:40 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGVcr-0000000C4tn-33ik
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 06:04:39 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-3ab752f6244so2088508a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 23:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791871475; x=1792476275; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=acEtVgfuadFdXlisXUuNZxKScLo0hQqEFXfuOZQe1a4=;
        b=YLlyt/W5kaEWZwUsTe/AnzY9+HoJlUFjGnS6CZT76gNnw1KzuJfDV/dWleEUoTplpW
         vGwvxOw8jwdaxqIijz8MUJkvXJMlf5I7S1xelSfaBFmCOPDJd+GlkeGkyyTmVQqppYNx
         hqwWr5egq2vgXwhHo10LCjTiYN5utx1CFZwZ0K1WgTQ9NpIiIFenijbvfclp8XW2HEIh
         a85Qt0tfoxifiXb9KchBgLgNaqich7s4J44PqG4rnsG997jOa1NcpuZ49c0DHQJW/uWW
         nFQKQSsjAkmvZWahbbAlPsmvIW4SDPlNZrzcgaCuJqsNrN+bIdyWja0KHqiLOk8pa5Ki
         6UvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791871475; x=1792476275;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=acEtVgfuadFdXlisXUuNZxKScLo0hQqEFXfuOZQe1a4=;
        b=Zb+9K1qjpmIhbhmy0UN7wiCKSXdXSNBfQ4lI7vjjqHCXP80TqemwdIGhPAA9d/vT9c
         lQ6p5KNnBvnq0XLdBScW/iGQIQNOisecfrYKIGLF7jfd/E4lxT24nB30maY3Nl+Rx0Ou
         P9+MklCaR6dfhWp9ytBSNHN8NXbwLIK3E2rdsRqQQrFrPhckJt7XsOcotnxIX5Y74DiF
         d+Z3TjVunEBqQY5l8Gqn82XB3pEQFeueY1exzqPCJ64ehigqDZtL2rUqp8fyBliiNXKB
         EtUM0yG1sOG9ieuJZm+gvgPtDXmzGQBDGodEnFQLBNBi281xxkm4kQ2JvK1x7LZmXBjR
         r8Sg==
X-Forwarded-Encrypted: i=1; AKwUvBxtdlnOPOBSp5a22Z0Eie0dHxD99/nIbgX3My4SW6xXnK+8XN6m14CnHyjDedRiozaTrjrVbj1iV2H9TEtcbQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIjqKeDAViefzoOY6welGKT5E62Scyj3HKEUv8GRw6FSJMyYbzq
	nNfB/GfMT4beEL3JooaZMUr3lUfN122y7a9qpukXndBl4OvopE7cej55
X-Gm-Gg: AYBFou0BmcqOj8wnnG3mRJK+s7IJA/qZQCiHACFwMrOsNURFYQw8Be8dlj+b3jccy9d
	lzHaXBf4uuOkthEiR07BaWDHxjqanTKyXqSExyFhMQMBOIbGcLnl1OqZmRoZ1PZkgeDZ1NznqpU
	k+rKTWq+BBGqWg5Tb0Nn4Pvdd0dOsW4/jJLp9QqOpYujazBiltESERfbZlol20Ym9enUmGgSo29
	q0BOGDxhPiDgJ/jPusVvkdUBLFabKORJiZqoNOkA0HT+TUqsfEnSoZLUG9UPb406XPQQp87D8KT
	P56ZA8BrR4YYEY3HFZszIao2re/eEfzC9nGwF94zgAKY/GvmAE9bMkvqiDp2esJKcewe6Xy+B+o
	x24i6svubwBUZUEFJHJYqjCXlUJQdcMEn3s5orwTRKaVvWba1FZKd6F/F9vQldDgiRiC5IJK/Nn
	XyuaLfSwSl4D9HpgvLhR7BG3CVB0XMgAiYYBz1mYKkUz0jurryRAGONMuuVJRu1Ac0nxPBCyAc9
	5iaxLKX/qsseOUKxLQ=
X-Received: by 2002:a17:90b:4d86:b0:3a8:6571:b43f with SMTP id 98e67ed59e1d1-3ab3a9f7f28mr9589394a91.29.1791871475585;
        Mon, 12 Oct 2026 23:04:35 -0700 (PDT)
Received: from [10.25.160.252] ([165.85.154.27])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab38f4863esm23035084a91.11.2026.10.12.23.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 23:04:34 -0700 (PDT)
Message-ID: <14bbf027-4a16-4bac-b530-d4654ed38d4a@gmail.com>
Date: Tue, 13 Oct 2026 14:04:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/24] ASoC: imx-pcm-rpmsg: Fix imx_rpmsg_pcm_close()
 being skipped on rollback
To: phucduc.bui@gmail.com, Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
 Venkata Prasad Potturu <venkataprasad.potturu@amd.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 povik+lin@cutebit.org, Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Andrei Simion <andrei.simion@microchip.com>,
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
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
 <20261008103831.542533-19-phucduc.bui@gmail.com>
Content-Language: en-US
From: Chancel Liu <chancel.liu@gmail.com>
In-Reply-To: <20261008103831.542533-19-phucduc.bui@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_230437_798300_7028BB57 
X-CRM114-Status: UNSURE (   8.00  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 10/8/2026 6:38 PM, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> snd_pcm_hw_constraint_integer() may return 1, which is then returned
> from imx_rpmsg_pcm_open(). ASoC only marks the component as opened
> when .open() returns 0, so .close() can be skipped on rollback.
> 
> Return 0 explicitly on success.
> 
> Fixes: 3c00eceb2a53 ("ASoC: imx-pcm-rpmsg: Add platform driver for audio base on rpmsg")
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>

Reviewed-by: Chancel Liu <chancel.liu@gmail.com>

Regards,
Chancel Liu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
