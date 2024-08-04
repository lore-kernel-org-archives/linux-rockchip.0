Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC0EC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 16:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL6r9ddeEwGtZl7xBc6iQKRbb+vJyXn5iIer5TO8Vi0=; b=A9uCvGZKDqWk0d
	9s8lrmyUNKdrNNjP2DKR2iLwwv8/pGQvigXQi7c438/tXwV11wUa8jGewLVonlSl16PhriDBSRSRE
	CCgO8VCFF+FRthbusv+RaxuRkVRee1/a5a3iahWYZE2W705tIk/aHy7T4DgNp+FfD+lrpzWfjqVnM
	n2piJOHFgStA6bOe2nRpP6k5KN3YJU4FWKNcjnHef4fzbMHS6xUyzgXUcgv5+W4AfW4BJ0htAVRzv
	kW3PMFx5K1SNnxIXHQAmsPyzNsg3TaGWytv40edF06gyPVhWo0y0TS485BJKmzs5zRjJygHglvlSP
	lgiXjGY4xS3h4KSCnk2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeJJ-0000000DbK2-0qOj;
	Sun, 04 Aug 2024 16:42:21 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeJF-0000000DbJZ-2INb;
	Sun, 04 Aug 2024 16:42:19 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4266dc7591fso62473005e9.0;
        Sun, 04 Aug 2024 09:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722789735; x=1723394535; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5PmONzH0N6GHJK/evEMG5zaqLLbJAVtPmbQ/7DmQl0k=;
        b=OXZwJy/fexK9vV2l2pmhCRBU+w8trFVNj8W5HmAnge6lZiBpnGrXmT6ACcS17xbgJL
         bIWTlnELhWztuPSkZS5eWsofF+IWu9MJsPWzsdEhFK51kpaSLW8CELXIllYUFUHtNd6m
         n3zH8eP5DgKMfzDgl4NGcnARXWCcEfSARox5j4vskQQvJ2+P6r67wrqfIHo8J6uM2j9I
         KbDvEQCqTdem1/YVWpxiEAOQdIrIvNmo+B7TqaDkD9Ivn82pwNA9VMJFfE7dCwFRyA52
         ImTCXs3C7Mgr5Fg1OFlTS6bhMIHMt0qNTlGhp9BPHbmniWmEPGn64U3TR+ln9Exi18RL
         nH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722789735; x=1723394535;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5PmONzH0N6GHJK/evEMG5zaqLLbJAVtPmbQ/7DmQl0k=;
        b=AurABXNDFWK4QcQFTNDy7Fe9vm1rmECVXr/b6A0hIew+126+vhOjkVKFFKP9dIjrW6
         lnwrlDS7eASCaad0iLBWZ0Q/9hmrOQNB1kHJHpZ5uui0hs1HbE+9/gOV/et8zeVctaRa
         jRhdIEVFOpVQh9q8SiMpV1ZqC/Oz2+YMKPGHK6/eME4x0tYIhD+jAfW8ZlfZPoZ2gKy8
         xEL9Tuyv9/aayMd/Re5FdfjBoba60IcPwR/a1cZtYAkVuf0V/6MzU1Iz4rRuaC4oiO7W
         KTDG9EOdUd+efQjNkQCmKzCaP3gPbMdvUCoMgUkge8KWr54FMmdASHgmabluj+r0bgR7
         8chA==
X-Forwarded-Encrypted: i=1; AJvYcCVe2HCKjxmnVKu9ZH3MLamImVT9WMul2X/YrO6v6fOfo9wki62Qm4tbqiBzFCYNmX2sl4SKn9AGl0Fmrbmbd+zw6UR08TbiKH8huqm0Lgbhhu53641MN08BrALtn4jqAxqZdCfZANiCsFD3wd9fbaRvOjZ0HSoZFWY=
X-Gm-Message-State: AOJu0YyivKaaSuijjon55qZNXmxPQQy6NVU41kqzRPEC1FDTEFkFqhUC
	vfLp/qrY+5auOp73GJ+Ldei/cRRJJbKo0aTAJbBH/dEDXVjDSRk=
X-Google-Smtp-Source: AGHT+IFqflsqzZhXnhI0XacoJn9GGWP851g5t/pGKC28fnPeseerjExCPtatHRdcqL0H+lp6KBCM9g==
X-Received: by 2002:a05:600c:1552:b0:426:6822:861 with SMTP id 5b1f17b1804b1-428e6b925c7mr60093145e9.36.1722789734425;
        Sun, 04 Aug 2024 09:42:14 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:c804:e7dc:33a0:15b0? ([2a02:810b:f40:4600:c804:e7dc:33a0:15b0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282bb63f21sm166259275e9.29.2024.08.04.09.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Aug 2024 09:42:14 -0700 (PDT)
Message-ID: <8a5f1856-823b-4cf7-a9fa-1dc6b9b54cd2@gmail.com>
Date: Sun, 4 Aug 2024 18:42:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH 0/3] Add VPU support for RK3128
To: Heiko Stuebner <heiko@sntech.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-media@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240523185633.71355-1-knaerzche@gmail.com>
 <171690893336.1899981.5081114224300578276.b4-ty@sntech.de>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <171690893336.1899981.5081114224300578276.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_094217_639427_0E76283C 
X-CRM114-Status: GOOD (  12.81  )
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

Hi Heiko

Am 28.05.24 um 17:09 schrieb Heiko Stuebner:
> On Thu, 23 May 2024 20:56:30 +0200, Alex Bee wrote:
>> Similar to most Rockchip SoCs RK312x have hantro G1 based decoder and a
>> hantro H1 based encoder with attached iommu.
>>
>> The existing drivers can be used as-is.
>>
>> Fluster scores:
>>    - FFmpeg:
>>      - H.264: 127/135
>>      - VP8:    59/61
>>    - GStreamer:
>>      - H.264: 129/135
>>      - VP8:    59/61
>>
>> [...]
> Applied, thanks!
>
> [2/3] soc: rockchip: grf: Set RK3128's vpu main clock
>        commit: b465223129f951d110e633a305085bd8430d7df0
I just noticed this patch didn't make it in 6.11-rc1. While it's not really
important for this patch as the media mainainters didn't manage to apply
the vpu bindings patch for 6.11 anyways, it looks like all commits of your
v6.11-armsoc/drivers aren't merged. I still haven't fully understand how
the SoC tree *really* works, but I couldn't find a PR for this branch [0].

Alex

[0]
https://patchwork.kernel.org/project/linux-soc/list/?submitter=24481&state=*
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
