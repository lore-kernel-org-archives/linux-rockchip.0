Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E323CCF2E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 13:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VmMt1lhemKA77+BzjnKyNCK7pNIcDvwgtF1Zh2L2NxY=; b=iqg1oVjmaMDxTcqp8TlSeJo4xt
	SEabJrU2QK1YcwDxLY+Re7x145Rl1wAGZ9XuAqVgZ+qVW4m6Q6Sd6LCMHqJw7G1li0mHszXY3wU4H
	6adrOQ4tFjsvDshRnggJNMUfh1q0WoNynwr7fe2UKCkGmKQr/6+6N4/VE/oOdV4rFTj9MYeR+cCPF
	hNlYIXd/44teTCSHJv7na55KWwyXt4izbvAsWCPQYBXqCxPld/dYQWf3laLE4uhMoZ+TK5uvjLsbJ
	GnToB5LWPEkuUP1gbbQcm3We3iFDfM1rRXFNx+A4HFZuWaPW3tVAb1p+18UQQ+SAHOhllu4nNI9Cr
	y33Ev9mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xInY6-00000007Wwp-0dVh;
	Mon, 19 Oct 2026 13:37:10 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xInY2-00000007WwA-20lu
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 13:37:07 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6b1f4d8e09aso3019657a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 06:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1792417024; x=1793021824; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kc0HBa20pNgTgn9A/dNG9MRjR4EzrI7cz68avvggZvk=;
        b=ne+zXMmCTjGRLo5qIi+wiwyDqo/KJnJhAlU5XA8OuMbtwCrMH8bmQ2hKxp/DzwIPfp
         B5As1B4y14CTm9o/5we/fYLLydHBlFGeEMmTnrFZOn/PwZc2DEDAw9CcM8ONyDLfsAMR
         FKPrH4Iv1kBmAl1aQ7rOOwcCmEi+2hk0jg94nNAbW5g8wwbaanFPsppP1wNfhV/bUSjL
         Rx2UN5prJF7Fmkbkp6SZyVcmGDKj81Oz8nILjBEP802Q1Ipm4S59ErcsBqrOO3sKrEES
         orrXODbuPA/VddbYm7Qjo4ZUuUwlANsCdyvcmKMZBDdfloT5753AN1MAXBchbWm6yWwN
         r6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792417024; x=1793021824;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kc0HBa20pNgTgn9A/dNG9MRjR4EzrI7cz68avvggZvk=;
        b=cGOXNzoyXdOPl0N3otEg3dggiFL74MshCwKD4dY/rDdPaP0WmT5UHKk6KFZ2bM9n6F
         jsJkVjtP8DGaj7Pir34GH0gPXTMvYrfc2IOdeghzxX5E66YJhjnUYqeszJnYuGC8NXS0
         DE2HqMqQQTEKDIyQo1orPluHybJYV1YxaZG/4ZxFPCXP1OOAGR87hXEk4Rn1OMEQEZXQ
         OCc2PY/OzJtRplhQr2M7UcXDh7iU0sxZanCB4J72k9s/Rsl0Gmsn251RW994/LYnfIn5
         IkVqdAOXYyNwXF4Y/Ga8OxgDbRn84WGyju1GSaiOwUIXBE4OlcRh01qjf6cvEihzPQzT
         bP1g==
X-Forwarded-Encrypted: i=1; AKwUvBzv/DI9QZFYfLobxUu26OOvdjxiGShKHvZbkg5w2xQFfh3yVmg6nVzi0O9vkal6PaixV2W6962ufTe9Gmn8cg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKAqad37whYn+tU2D/HlIYABOpNvepS17eh3GbG1cHH5v9NrEUe
	84vzGZjIBjvUdLLhPqQOjbTYC6pErWzC5IGFJiMvbRewQhlad2XzlQZvgK5gB2j/AtY=
X-Gm-Gg: AYBFou2qqA5e0Il7wemMcPXZ3rKWWrg/9nGZR1I9xRDDOOAN1newQA+3KuKU7Z8ZJsz
	6mdUSHTbMX8kkXQgdJK0N3MsJtUr3n3Y+vj1waYaOZb9fq8S4UXbq3/lpe7dhRSjRmuwVAYoegU
	J66+j+jdmZnFtgrnmKPW4helztTvCqdNXnfB1Qi2iPDptdtdpm437kqeL7ecpZ6cvSRutwygDLH
	mJgw422ShJeMEcN9vhOK112C/mP8GmQ/JRjyTRT+MNlyfpT1ucAKtAibp3Kb4ScyR/8byCeOlqO
	iFFxmGDPtzpfMh83goNugfV3OasJo8wtuuXpzfcwO1+fM+IWEHErzy2NqmHPzYrtxyambpCfkHP
	YmLV/rh4Kn5fMrTTwsMzGHL0/dGgef/QPSg2MoG7BbXDcMxvEUapGyqX9C+zDHIQygZodDYhiO0
	DUhd1sPLm83xDYYOE1HaUqsb9uTgIdq+ztS9Szt6aBwKQKtqY10CXpklOPJ7wY5DZW/omzFsQeI
	1rbLZs=
X-Received: by 2002:a05:6402:5489:b0:6af:8a4b:7aad with SMTP id 4fb4d7f45d1cf-6b3a81a6d00mr4333695a12.28.1792417023411;
        Mon, 19 Oct 2026 06:37:03 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.221])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4f5177sm22897379f8f.30.2026.10.19.06.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2026 06:37:01 -0700 (PDT)
Message-ID: <14f60932-9a85-45ee-ad87-593c20cc116b@tuxon.dev>
Date: Mon, 19 Oct 2026 16:36:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] ASoC: renesas: rz-ssi: Remove redundant component
 open callback
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
 <20261016040946.521195-11-phucduc.bui@gmail.com>
Content-Language: en-US
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20261016040946.521195-11-phucduc.bui@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_063706_563786_3D6A6EC8 
X-CRM114-Status: UNSURE (   6.41  )
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
> In DMA mode, the generic dmaengine PCM component already applies
> the integer PERIODS constraint in snd_dmaengine_pcm_open().
> 
> Since rz_ssi_pcm_open_dma() only applies this constraint, remove
> the redundant component .open callback.
> 
> Signed-off-by: bui duc phuc<phucduc.bui@gmail.com>

FTR:

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
