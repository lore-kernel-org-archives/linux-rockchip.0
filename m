Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75195CCD185
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 12:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSYDPJrn5F+O9lqfyNELdaRBro5d3DQfS+zweuARBCI=; b=nd5l6aY5f3T3Zw
	cmY0E1+nIpTd7O8Dp1nxWPuTjuvWVofDmDIYu8WAdnuqZxzbnLNXeIEPXz4Oosw09gjitJe2KLG7t
	/MQ3D5fHFI/eJjkKYUidT3qwivJuqCxpQpXb2eDkYhnqZY3F0HvFnICU+ndN7wiVhfG2WPK81yuBj
	UbQ5jZPzdrl9o+7ruZ4t2vRSofN7FtGFjOsqZSVhDCR2dJKRmZDXvtLutKt4M0NgXJVRxIOf/pt2U
	P6VU6rnSMhFuvOlYfRhxb/Pa4pEDcrn/p9PubtY8qsmimyVlAoG32iDXoxPr03KoaGhjJi9HZVW55
	7A1AaW5qWX+w8nh5kdnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7Bow-00000008OOf-1fCa;
	Fri, 10 Oct 2025 12:02:02 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7Bot-00000008ONT-2YkR
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Oct 2025 12:02:01 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b3d50882cc2so373692266b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 05:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760097717; x=1760702517; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s90KB/NTrY2uO7MTlr/2on1AH8hzlT2J0wqk/Ex7Qg0=;
        b=lmSXbKmrLUKy4jTp7T9S6c9l6JTD4vCsUVvZobnExJD2BMRdiE59Mc7TVYkG1vvrw6
         IsVT2ZaPHAaSang/ZRPaA2VkManx0gHwbUGFZNIq4H10xcZqn3IGq8exXwFGXRkzLlu0
         ApcEYE9F6zeAt/Nf3zLbCHpwW7GDXPFzM7uQNsrG8QuBg3AkXmANdTnUVc5nprOYK9f3
         OZu+cJda7qyYTKAuem5opzbHam1/M3N4aWj3jhZ8Xwcg3SynIAwn1kLswMfgWJo3geI8
         zoQGCN3iuIt4pW3RpbTewaMjBkP4r4GgWjOvQl/HHxo1MzH0h5xILX2i/QGhibeq1Wpg
         9MiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760097717; x=1760702517;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s90KB/NTrY2uO7MTlr/2on1AH8hzlT2J0wqk/Ex7Qg0=;
        b=p7JLgoKD6f0baz/DAJr7cZG83qd3Ag49xN6zacHr1tt3JxpD969+lUzhIXc9IOqwyf
         N+mTwUi0cZFwrXiy7JQ/96u2G1mq9bmO4fvY7OScNEe3/irx61d+g98lthEwfPH3BbA2
         Kr4iXrGNe5v+sbnMwfxWwwaEA+ne/vkHc4F8h48ncr6+qDFncH2RllvzkWFGB32MESBC
         8L0QFGZn5ybCjz4KhlbN7/eR15AQVFnLe7QB1VrRxENFJla70xEYX1dDGLe0CSWtLml0
         thBlRNKLqFwQd0zGo8Ftv38nJjyXty+8WhIhcpJc/gdxTKSFfbciYG5FdEk59mRM9Zn8
         ej4w==
X-Forwarded-Encrypted: i=1; AJvYcCXryJapO7aCYnwncA/aZM9qogKRvaG/k5TMc7XCF8d0shqmQzsiuoiBvySqNKmWKmFMJ8RlVQi/EulsUe+HhA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3KnCIA1sq5WLS43o0onfsVjxxu58CGz220MtvcfU7A0IP4Ujo
	XF7qOjjfqcXUNpJ8SCmrrXlIs7lwO8dCCb+APq0Bgst+Re3RdHveLyyS7KJDZcaOP3w=
X-Gm-Gg: ASbGncus1wXKpx2Tf6hco3PHk+BiNqga92oCH6oZkStdIGLBSONkkXc6ZCaAs1GaGO0
	8PcbCUP1vF97JH0R2d5Ua0o4w9eipAi8HF2YXFwHTxUIbXlyWpTNBuv9LGFTkcTstPY+37kNRjC
	r3FA9iHt3cP6hiahhCL93EmsOFU/Vop6czuWi1BsHqrFeF43fk/ax3ug+5HelzVuJ3O/sJxZyJP
	+s/991R06JAuoFzFOHAsnwt/th4XCHwkw1LSNwfWwF8b/AQ3hr3dJXzOt7iOENZNyM+93M3CoJC
	XPbl1IAV1h5xS/dXjj4XaqsXSNk19DMmxT+k19JLjauhzKuU+KeJq7OhwtS7Lj8wOm7KQHiWxYL
	f3+F+ChrFqu2HIGp32tOM2k8ubcXMPE3xL2e6yoZLW6/z2WgLHhxijG4+Z2EC1bIVrqwUT0PVz8
	IcVZv7ToRCV1Q=
X-Google-Smtp-Source: AGHT+IHFEbOgc0ODAF0VuKf0ziv5aS2t3f+mpFW0dy7lOT4Bfjw96VQjQByGIVRZZDYAlQhb3Y/lvg==
X-Received: by 2002:a17:907:7f0b:b0:b3f:f207:b755 with SMTP id a640c23a62f3a-b50aa48d873mr1107494166b.6.1760097717302;
        Fri, 10 Oct 2025 05:01:57 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d5cada4fsm229334066b.6.2025.10.10.05.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 05:01:56 -0700 (PDT)
Message-ID: <f71052d2-8969-436d-9109-d5abe70b81a4@linaro.org>
Date: Fri, 10 Oct 2025 13:01:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 06/17] media: rockchip: add driver for the rockchip
 mipi csi-2 receiver
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <20240220-rk3568-vicap-v11-6-af0eada54e5d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20240220-rk3568-vicap-v11-6-af0eada54e5d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_050159_665233_28BEE38D 
X-CRM114-Status: GOOD (  10.20  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 17/09/2025 16:38, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip RK3568 MIPI CSI-2 Receiver is a CSI-2 bridge with one
> input port and one output port. It receives the data with the help
> of an external MIPI PHY (C-PHY or D-PHY) and passes it to the
> Rockchip RK3568 Video Capture (VICAP) block.
> 
> Add a V4L2 subdevice driver for this unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
I've been stealing ideas from this patch series for some time now.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
