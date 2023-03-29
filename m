Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFCDC74A5B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 08:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOmzsEtoI5qspx3U9CfMrc6r1YYXatXV/d+RJU4exQg=; b=hS4G1zl9xkcYAF
	ir+cN0HWXPkXsAEPoCnsXTDcqTgNHGrUj7wIu6Uavk0QEW50Wf/eOgaqVG279cfl/4cZXLRVTY9z7
	MCuugXfDyOSq9Il7LkPkp7Tm3XWx28ugCiCRJxMjAkF3LofmBxlonuRmKgMmM7b66udqzICZmUPLF
	+SVIGKutAS+SiiAVsvJ9mrvC0g9PnbLU+j0+tqFmEmL8KDGGG5v0jFeKW5CjxC742P0sCFfgT1rNB
	GLeHgwJxNFr+4Vxx+BczlbrBCpOJJ5U6QQ8d9xquJxcPvucwrgpSu4LU75QazX76vjCCsAMMNfVVV
	p/Ec+/yDhuZOdv2F5wJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phRHE-00H7zU-1d;
	Wed, 29 Mar 2023 08:35:28 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phRHC-00H7yb-2G
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Mar 2023 08:35:27 +0000
Received: by mail-lj1-x231.google.com with SMTP id t14so15267507ljd.5
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Mar 2023 01:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680078924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8n6H02kYmd8gwvoaq31SqGY+BRAc0v4qQoRYdY6sZnE=;
        b=VPMdksRMaakDYMc+JCTrhyek8dDo2DhMdiPf1p7ECaK5PYJLpj69nRPbl/N40FJgvj
         ZX7zujtuLD4QePT3VEOQBMeQQOgJk2A9ZE403xwdFUVMKmVqwNx9Bw8fm1jEw2aal14g
         1AsfdXeO+rI2Vo0zEEpvwfP4910kbKIB/PKcIpGIp00CYFx8AAR7BIVsNwzxV64MwwrV
         n4KRtr1GpNtuae5LRWyxFnJqnvP65i1sjRO33jeLPOjzLTUsnZccT0wDU+MnWsrkrKgE
         ZWTafX9FCdZ7TJNyElwOxJpf6v8p/lV9IQHNa7b9mNwVnhH1dnrRqKq1yTvSZonV9ian
         pd7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680078924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8n6H02kYmd8gwvoaq31SqGY+BRAc0v4qQoRYdY6sZnE=;
        b=VM0SAYOuiuGq/NKllwjrwA/C23agBGubKOGfhCokIPCAReFBVmD09KvlN/e0HYnng6
         q2mbjRfnQoQzggm6ifosduWuns/lxHWrVlVhQdPIGpjRZ0so0x0t3A4ZaojtqpMZZ24x
         0ens0Sj+z5/x71jHnPm31LiMgyfpuJBj+aaeithGA1FHB7WWmgukJ1PFP1IWgxSAC9f3
         9S9OR/YDBt4ytm/V6ohN0jUcIaKMP5/LPu9Wgzzo1wAuurqY0eTlZaohtaehIwclLOHz
         xvNjHy5d7pk4JvF2kCd3+FI7P+MA37SvsfE2D6FwPaNvF8kt2wGVWL/BCqOrU5K4Rjfd
         zhiA==
X-Gm-Message-State: AAQBX9dKCTWsJrXhgxFGIPvhKX+4Z9ikubTTLF4un9Ma0za/kY3wfA9n
	cjpVcvjJIdSAnfbbYJ7oDeOiLg==
X-Google-Smtp-Source: AKy350YTSR8X1/RiTJ1meCrfQSilvlZ5ZdA39iG6PqjvRZxaJwRfrUJGIdyjXbE9qVKd8aeYas4npg==
X-Received: by 2002:a2e:884b:0:b0:2a6:13c:30c8 with SMTP id z11-20020a2e884b000000b002a6013c30c8mr1972059ljj.33.1680078924640;
        Wed, 29 Mar 2023 01:35:24 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l18-20020a2e9092000000b002986d9bdecesm5427078ljg.129.2023.03.29.01.35.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 01:35:24 -0700 (PDT)
Message-ID: <80e926e1-28aa-eb9b-9ab4-9bc3b349a5e4@linaro.org>
Date: Wed, 29 Mar 2023 10:35:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: watchdog: rockchip: Add
 rockchip,rk3588-wdt string
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, wim@linux-watchdog.org,
 linux@roeck-us.net, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jamie@jamieiles.com, heiko@sntech.de
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20230328210048.195124-1-shreeya.patel@collabora.com>
 <20230328210048.195124-3-shreeya.patel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328210048.195124-3-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_013526_773019_3F3A3856 
X-CRM114-Status: UNSURE (   6.63  )
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

On 28/03/2023 23:00, Shreeya Patel wrote:
> Add rockchip,rk3588-wdt compatible string.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
