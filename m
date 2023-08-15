Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23C85C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 14:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZCphIjyVOcPsoygv0oQ+0lzsnKGkPe7MzcZovSYAJY=; b=FDXL1AGhoCWmZ2
	FUdm6/BApI6lS78XOzOBcbdp35q8kFPquDn5tXD0ErgpIUH5YNb0Uq98pc0GXfm9pTGFnoyyuSvux
	aU3UR7SIM/7QxA4H1OFicgukCuvxZJkVWD1piJpsrsVXm53Cjv2mJy+4MUB/pr5gvOubb63RZQ4pQ
	0w5fALYO/fFWVBtm5E1aCTTCwV5pCLCf7ehEpSfoRXCEfm/d4Mh645SdMZANyUyZlnGdB8NcHkgH7
	7RmXWtGim9Xx3AfAaqtbAx7xvZrTkA9dQ41OQUwhwvMly+69lq4LAlwyMCuO52DPF5j55GrZ4Yi+q
	tyIdBn/UvKeFF+52cQiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVuvV-001kxZ-0F;
	Tue, 15 Aug 2023 14:21:41 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVuvR-001kwK-2s
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Aug 2023 14:21:39 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-31781e15a0cso4827206f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Aug 2023 07:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692109294; x=1692714094;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JcRYAsELzZ8xRLuoOUuCkPhIs6L8FpGXiLKJ/U31bwc=;
        b=W8xTN3MuYzsk/gktkGIfSE/PAeK98mpIjOfIYE/T3/2MX3yrRDb3azJBlDK7GzR4Tz
         AeAQ1bz+s0fHgqrEMYLn3BVVDyNWduExyhI/6N/4zIrQJuAHXr6fFhOmTLj7hWxMmtET
         1u+RyuVd3gerwE9AxrDSts6g178F9f5MN/GgBsJpDdw4XytAeIFvwXAlXtAlnl9aoNyT
         coz/AW+OnpkcCaCsvms44BGaXma8zUXstmUicH+SC/GSxqHJqyGj8TRnunGmkcLQPnqh
         WzkN91TLjGSWaHEkSsrKad4jQ3Ez58daY/eHTzDqMHDAj7vUlZNJu+dVeCKapvbKTuZD
         iKzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692109294; x=1692714094;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JcRYAsELzZ8xRLuoOUuCkPhIs6L8FpGXiLKJ/U31bwc=;
        b=J0Igfg1LXwHN2+oFsP9HxMFaCj68wAWj6KAoPq0AnjR0kN5ZQJfW38zqja/mcBInKP
         DuDfExtpxWVKzGSAOwYft87jduuYMLuCkp/OspGGKpfOyf5ofXwrHZs7B41rD6scmJjW
         yGw/9ZRdt4+hUg3H7TDb6JPT2CcwatyElMZqQSB0dykrqFgqBXxPgrf1BtCUconLWeEU
         EEEJCYvqfa5SL9QMiBTHUY+CsxNWIXkmQBOqhIO/VbSEqaUO3CO8J7tdFxDKhgRMSvHP
         ucZmsz9Yy024VhR1HPa6IP4zuOg8g3jARjj3eWKL2SOwM/HgmrHcfNCa/7WurPPriYuD
         Zvhw==
X-Gm-Message-State: AOJu0YwBX9HTPLlT09WJO1WwG9N8wbUesck7CIam/SX0bGqPEI/NC8g/
	hFsSOdpbLaudPCfyzB2rS14ZnQ==
X-Google-Smtp-Source: AGHT+IGMZDYsY9WXT/bGyg3GabwvTyu8r4sZ31hz3OHbKpNSggTjUynaU2Kv5wRsGCL3EmjExdrD9A==
X-Received: by 2002:adf:e784:0:b0:319:6d91:28c2 with SMTP id n4-20020adfe784000000b003196d9128c2mr6426748wrm.61.1692109294035;
        Tue, 15 Aug 2023 07:21:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e1-20020a5d5941000000b003141f96ed36sm18128814wri.0.2023.08.15.07.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 07:21:33 -0700 (PDT)
Message-ID: <e8548782-65bf-114e-afb9-f0450468f6a5@linaro.org>
Date: Tue, 15 Aug 2023 16:21:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/4] ASoC: aw88261: Fix unitialized ret of
 aw88261_reg_update()
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 patches@opensource.cirrus.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, llvm@lists.linux.dev,
 Andi Shyti <andi.shyti@kernel.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
 <7b35b3b6-7eab-4652-9a16-851a060350bd@sirena.org.uk>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7b35b3b6-7eab-4652-9a16-851a060350bd@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_072137_937107_73A76458 
X-CRM114-Status: GOOD (  13.22  )
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

On 15/08/2023 16:10, Mark Brown wrote:
> On Thu, Aug 10, 2023 at 12:47:43PM +0200, Krzysztof Kozlowski wrote:
>> There is a branch in if() clause where aw88261_reg_update() could return
>> uninitialized value.  Pounted out by W=1 clang build:
> 
> This series appears to have two copies of every patch which *look*
> similar but I'm not 100% sure if that's the case or in general what's
> going on - could you please resend a clean copy, it's probably easier
> than figuring it out?

Sorry for that, I must have screwed something while sending. I'll rebase
(first patch seems to be already fixed by Arnd) and send again.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
