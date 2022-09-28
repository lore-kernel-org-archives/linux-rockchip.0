Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C46DFC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 07:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=raPKiysOE/DYqFZMIH1qYIxCnZPa/kA1SYaVy7bOU50=; b=d1IZY6vO7ocXEe
	0jZXDiXq0DNUZNsG+EvVJdwAKWdWDL+mS0rzv5ENKwKsdqM7G3Idi4VHG2s1T2aNPBvEqorxxKf/2
	QqXdGHRVf6K1grpVPdr8N5Yr+RDNN8XfG2vvDTxus/tbD5liyHPE4bteI/pxb33x0hw+YvBw5GTBR
	VREPdIvippSrAGIELWcJkeBXxfXi7g2neb1NgD4sw7ZHyB75qvFZLXRm24yfba7tMi9tK60fwo4HQ
	KHooW5S91Ohlm+9Tx41vCyedgN7pVxt7f8g9jLSAbsmNZssDPZSks5jBMwhm3IBfF7wkh9ObiKi21
	Cvfo0HhXTjRLdEIdfPCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRbS-00EYy8-J1; Wed, 28 Sep 2022 07:35:34 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRaL-00EYB5-0d
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 07:34:26 +0000
Received: by mail-lf1-x129.google.com with SMTP id g1so1457968lfu.12
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 00:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=n4jnpdb4dLSy7UExnnmpIHxtyt/nMjkUaIB/M2U4YT4=;
        b=k+Hmzx18WjUq3RZttCHCeIfDQ2BwCdr1TaGaGSjYIQhQ5DW0bD2jX+0khiBVTAOnM4
         XwHYXHZlFIe4U8FYbsyO5dcG7S+FuTkKPPJxHhUxlb2CQDDZzRRv+HmKUCALLmUW69eq
         FaxNNqP3dzaQs9THyzznnOUo/Cyo21e+RKKGrEo6zpDCDlPnPt9/NG9SdgiQ6CoweFmv
         aYUHnxCIF/oWPOxqdRdrGX0PKRD8tDDi+vm9zc3XaRy2ze+Y7sZ9Lo3AUZf7dLI9nfm4
         wY22pCkWyn96i7ze0AXj11oclQABXIk8nAfMev7AtitKAtAFMZ6VdLnXXp8kP62QP8kb
         fjpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=n4jnpdb4dLSy7UExnnmpIHxtyt/nMjkUaIB/M2U4YT4=;
        b=RmTRFJqpegKBllSuJHQFhk6vnXOMXtvTypo3d1oPCKYBR5uRDTHkfsgQg7XtKx/fU4
         mB5HCCCxUiRBAWwe7XpCZ/KF8+69zeOM4Zu03t1Bp3vP44VOFbblxKHkaI+k49+Yl2bE
         audLAkFP6DPqGR3HeR7MCs41U6Mf8oYRsCKJ8c/YmlGfmBiS13RszoVjXgEEECvsWet7
         4ixtVgvm5QDWvcoRLhEJOSCtdrfDpCItkjoiBtDNDjwK9bxrpT284gZ9/MYV8L/3Nib7
         Hon348gjng0WOc3UTaKqXLjS7MYscuqGSV0DWUtmX2InTNhq98LmNGarko8exC3XDuSi
         1pMg==
X-Gm-Message-State: ACrzQf0798O16hk1UKA3/zAxGVMMSKFAzSG/rXOkyN+mF5GeWQZnyRqE
	3GCs5sXt8nGSplGtp4GoEaUUzrfWGXUEbw==
X-Google-Smtp-Source: AMsMyM4vZBm/NzbFStl4PS4xXjJmr9t7TU1u2VA3RwodqI1RQNR6U5ltgGVh11/d5SXQ82dldG6kwQ==
X-Received: by 2002:a05:6512:22d2:b0:498:f68b:6cab with SMTP id g18-20020a05651222d200b00498f68b6cabmr12619861lfu.548.1664350464533;
        Wed, 28 Sep 2022 00:34:24 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q16-20020a194310000000b004946bb30469sm396465lfa.82.2022.09.28.00.34.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:34:23 -0700 (PDT)
Message-ID: <1e2df247-c0ce-ab7e-3017-fadd963e1a8d@linaro.org>
Date: Wed, 28 Sep 2022 09:34:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 01/13] dt-bindings: rockchip: Add Hardkernel ODROID-M1
 board
Content-Language: en-US
To: Aurelien Jarno <aurelien@aurel32.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Cc: Dongjin Kim <tobetter@gmail.com>, Rob Herring <robh@kernel.org>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
 <20220926183727.1893566-2-aurelien@aurel32.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220926183727.1893566-2-aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_003425_106613_46ACD20C 
X-CRM114-Status: UNSURE (   9.37  )
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

On 26/09/2022 20:37, Aurelien Jarno wrote:
> From: Dongjin Kim <tobetter@gmail.com>
> 
> Add device tree binding for Hardkernel ODROID-M1 board based on RK3568
> SoC.
> 
> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
> Acked-by: Rob Herring <robh@kernel.org>

And second issue - your SoB is missing here.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
