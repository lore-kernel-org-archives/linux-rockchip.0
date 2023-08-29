Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA26C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eM9AeaMEZNdgQBnaOFpx2JvZh+j9NsuIx5JvB2h08l8=; b=2vQ62032YTbv+8
	jjPliMo0yeAv02bRgwFaEK72DkRojdFl3jvcgnnvGu4PXfcE8Q9+ZIv0UwfSUvX+kNJBHc5SMdEaB
	GwPKTHfDXnxSSjCL9E35y8RX5IMj/SsR+K1AlyD6Lix7C2IIChxNJmE5DQym+f4vq9t79ErzNzkwC
	8vdvLXf0hnnJLS7bX04/JM31GCt0fxZCfWGjwoqKEtJrhc7RZdQCiF0ZNngZ/dYbrx9XfPSQoB/zD
	Nf8qQtkC76bO4iEXE7cC1Bh9dB8CaAhYZPH9oAQQ05fVsKNCKnglhcoXUBmvBcgqF9PBzEEASzF/A
	HUX0PiCpNcOW1d6DXPbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Tc-00BzOl-37;
	Tue, 29 Aug 2023 17:26:04 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2TZ-00BzNC-24
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Aug 2023 17:26:02 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9d07a8d84so69517721fa.3
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Aug 2023 10:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329960; x=1693934760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XASF6L+CFT37xAgTRLzvSw5XT/pAT+qRxQqIx8eoTe4=;
        b=kHbU+j63kRJgi19vriktot12nqwsQEFKOH92u6vdDrVpsZweOAUzFYD2jMRVZONtHB
         8oqMSawB5f/rUfbFdyoZZSeSbQNp2Qy7tR6DgybERzmJT83rICzzkoGQk2XZqyk7ctcd
         Qo0qLiW6c+Mhy6O1SSArqwSPnfoadLxFuMEsFg3G5OIFeYHbeEBWIrmo47N/zTLK6vK2
         S/2YVtg1nm66M3w6dqaNW1lkwhijfgcUAld2IqWjubjKAGtF3wRtAGth+yw0t4R+knpp
         9Yrrzco7+yLakp+f28SG+mWHIxXeTmtvIx6njQcK2459fq8ot/epCFFuSlkLUrDBPC65
         rAzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329960; x=1693934760;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XASF6L+CFT37xAgTRLzvSw5XT/pAT+qRxQqIx8eoTe4=;
        b=R9JrCvazXJLsABxol5vVQXFSO2dRUPc88VC9DFeKa58A8E/HyP/nP/Pc3YhwwL6gbE
         a3RcebP+3C7D+kzFRm6Q2yTVGGfcXbnQypLw4I15iP6/IGT9SqNMGTxaWYcnmfNOn7g3
         uUOR9VG1CLV1iYJAarafqF/FsgK2qinC7mEHkl6M5ZtrW6ZOa9nrmuQktSsQ+Q64SRnI
         SNh5kNaBGKfSNxvgCdyXVqTeIHZ0/A+oawnqd9AV9bcNXz8UcEyjqq/zC5hKUvCC28W4
         O09DUf6U8gRKiezf1XdH9Lm5vj4AwfcstGBVXLi//QM6eHmRuHPH7XLm/A74723R21xU
         esoA==
X-Gm-Message-State: AOJu0Yxw7/rsMJj9vMfnBsvs8SQOA2sEHT3tF6oomFvJCkRAHzBqbfd5
	XDd8rMHkN0Hgsz2ps66aE25AKA==
X-Google-Smtp-Source: AGHT+IGHdaXGoRpgBFSCCGbMrc9WN2vaolT0HlJjcJrqIeZe/CQVLwYV84VHWJ3Nah14pPFkboyfcA==
X-Received: by 2002:a2e:9649:0:b0:2bc:c28c:a2b8 with SMTP id z9-20020a2e9649000000b002bcc28ca2b8mr17205992ljh.27.1693329959883;
        Tue, 29 Aug 2023 10:25:59 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id vw13-20020a170907058d00b00993664a9987sm6181867ejb.103.2023.08.29.10.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:25:59 -0700 (PDT)
Message-ID: <4343e032-aafe-ed57-9374-c21961926184@linaro.org>
Date: Tue, 29 Aug 2023 19:25:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 17/31] ARM: dts: rockchip: Add CPU resets for RK312x
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-18-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-18-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102601_705009_8935A855 
X-CRM114-Status: UNSURE (   9.63  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 29/08/2023 19:16, Alex Bee wrote:
> Add the reset controls for all 4 cpu cores.

This we see from the diff. Commit should say why.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
