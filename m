Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C205FC54753
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 08:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcvnRMlmdast4m+KS32stpcBRFk5QhsXcB6yta3fohY=; b=NkzNYG9sQxkqnt
	0jRej+1vCpHSU5E4aj5CKrNZprVFS6e8r58j6939S23DfGGFRDf457tN+HX2GWPcNy16c74YJ0e5z
	PpMrl0/UA+5dftIPZ2mT3FedsUk0jSdJEF8dQSrgJUGVDIZLc8rL9ybrvbgfV3tfNdfN77sNZ8/VF
	xCafKpm7y9YJMonjU389ZnIC+5ZENRSjVvDET7tlUhcmnmU7tpVjOYIrNEmVisG+heO620bGIMUPv
	b4Mj+p/vlWlc6DBCesgqlswn2YkNbkrG/jOR1EfjdrYlIq13dRywB6vCoTF4YT41bEaOomn9uBSF9
	db7jVrTAEaFL1LxsQrTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjETz-0000000EcWm-1Lf5;
	Wed, 28 Aug 2024 08:56:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjETA-0000000EcKl-1ufW
	for linux-rockchip@bombadil.infradead.org;
	Wed, 28 Aug 2024 08:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=QWYpKLox98Zm+kv0OB+ZP4rUkmwKANk3sWNWu8DRmgw=; b=b0jgw6nsnPTdL7E8rNBU3a1MH+
	XgotlmKiyKPI20JhcZNydg1HNCqcawVmqDc9kBPHH6OC0seDNcqZObkzhOYe7Klf/ZPRvHuduPVnl
	2wS0tQbVh9p+k9wXFvfTuzOM8WW/tP51vVof58ehD348cgJYUtsgNPc5rUdx556nD5xrKeGJ1Tz2m
	hDsj5fdGxJow5hjeI46eoGOljCRYSKjNKtHog/DXcGJlpcKSMQmRLmxO0r4RhtHmnDZmrWHqw4NFL
	Dsm9psXGvrNO1qfLNmY1EFj7rqAyEvOPonyks6L4CLfDc9xKODN+xwOhIqa7N6YfxGUKyhsIJr0vw
	Z1ppTWtw==;
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjET6-0000000B7Fz-3oqe
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 08:55:59 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5da6865312eso5122540eaf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Aug 2024 01:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1724835351; x=1725440151; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QWYpKLox98Zm+kv0OB+ZP4rUkmwKANk3sWNWu8DRmgw=;
        b=SLvSj/iKqQbT3EofRQaJ4ib5DQ2gvEI4wR2uskMkixBpJ+wqIxouUw70StFAlVlODd
         rNnAGzc03fGrIdkpwYmW9GdR2+CUA5ZCIB9DYAvffzp0HoVNRYQO/WGUuIY66okIs5bD
         yNBX4pAZgu3wibyXmVo7Gt+/SduUwT776q9vk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724835351; x=1725440151;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWYpKLox98Zm+kv0OB+ZP4rUkmwKANk3sWNWu8DRmgw=;
        b=TVbdKlgOJtXobeFOmLhCXeXwsngIRHinAB+j/79UxZcMsSchX+AXQgNE4HM60yFdas
         9QH9hZ9iXDgqow0zZ99kCKIWQOSgsaEGmu2xaCYtx4zQAePFU1cE98mUKyc1ijfA6AsO
         bs8mJfLlwH3UupmOECZTAs5VA84fnD44ZTPAglveuk1r59hPc5KD9WyRiq29wsPrcCCy
         /mdEFlU1eSOcNiqhjfghIiw6s751Whwm3fP2WvpzqDeOOiR313NNF2hUgMq/4MVrsFU3
         x+3BWZK+F1kpIvs/r/mAg+xM4GiNfxdLcAWoeuJOJIAXF4YHyUU058a/E/WSyyuv4ujN
         QofA==
X-Forwarded-Encrypted: i=1; AJvYcCVdVEOXKdhVELH1LFgH1SoWq/prm4MlQ4s5LLrGPDtAGGJID11NXiV8fsy3GNXxC8Rt+ZK1YKD0vqpmlzUdog==@lists.infradead.org
X-Gm-Message-State: AOJu0YwXodZ8gKwqZ3YP9YDmlrpc9igN9EZKTuobugcZLtujg2hHP2vM
	cUmwNPmgoln7WvChkXdq6dBasIc+SDlFnPbolZXzb7E4B5yYhlSZALManlbHQg==
X-Google-Smtp-Source: AGHT+IEmxUMmPUIRtslVRmejayJrNR7fKFL/cvIGljIuBj7DsRG0nD12IvGHcaZOt1yiq+lvFGmImg==
X-Received: by 2002:a05:6358:60c7:b0:1ac:660a:8a69 with SMTP id e5c5f4694b2df-1b5facf5059mr150068655d.18.1724835351435;
        Wed, 28 Aug 2024 01:55:51 -0700 (PDT)
Received: from [10.176.68.61] ([192.19.176.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7143430964fsm9726609b3a.150.2024.08.28.01.55.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 01:55:50 -0700 (PDT)
Message-ID: <7951482c-ee1e-45f4-8753-433a933321b6@broadcom.com>
Date: Wed, 28 Aug 2024 10:55:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/2] Add Wi-Fi support for Khadas Edge2 and fallback
 compatible for Apple
To: Jacobe Zang <jacobe.zang@wesion.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 asahi@lists.linux.dev, Muhammed Efe Cetin <efectn@protonmail.com>
References: <20240828-dts-v13-0-6bff9896d649@wesion.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <20240828-dts-v13-0-6bff9896d649@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_095557_247307_F3386B8D 
X-CRM114-Status: UNSURE (   8.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/28/2024 10:45 AM, Jacobe Zang wrote:
> Add basic Wi-Fi support on Khadas Edge2. Wireless driver need to check "brcm,bcm4329-fmac"
> compatible so add it to Apple's devices.

Did not receive [PATCH v13 2/2]. I don't follow every kernel list. Maybe 
good to add linux-wireless list?

Regards,
Arend

> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> Changes in v13:
>   - Change patch 2/2 argument from driver to bindings.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
