Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A315C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 07:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJJ40lVodFpZZZ/ac2u7HV0CTRbsKh4Xigl/g2x/Gk0=; b=KltXRvdNwQ+guK
	6Nop6OAkIimTT2yclDvHUgWOPO7d2sDcJUqS32ykUFxkeBULYdeXkBUsLEbO0QZ+WqPYFRLOfzc9d
	pDMSkUIGFxOqoMhbKaiSRnE5nT5mEi/cyICqGAjJEZ8vW45ZVxKe7wUWtKGQ3w0OdqzS+NcxsQgOV
	adOLP179FwzHsuAPmTA1M8T9vzJsVtnjFz8xhcJNcm+e5ZAY/eeF+xOhsQFdooqqdsPJXTj50c4Fv
	zbwWfJvOZahp1s+uNNidGJTd3PRjIDWiZfta12ttKe2l1yoN7Je9hQ0vbdwMNnA1lDYoQhInAVefO
	k53Os72rMEEl7YHqzv8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRZH-00EXwa-Jf; Wed, 28 Sep 2022 07:33:19 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odRZ6-00EXuY-My
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 07:33:11 +0000
Received: by mail-lj1-x233.google.com with SMTP id b24so13373299ljk.6
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 00:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Fnvc6r6j9p2Uw/maOlbdTsHQYeM4YFHUi6N23GCgfiE=;
        b=Trxrl5FOcBfTyPyqjdwgGv1onqzcBiIgrzeFGhQANno1ZAMGpy9Rnvi+Qn+QmLpLi+
         RB3E3B/Qrb9aE8NYowptIPSgui7tl/0Na0XhwjhnRa/YKqZKbbDinKZ90seqRCiGFLcC
         1F1BlEqXorjYS0bxSpTdGbH4YigFAbS4LFp74iKR9IZi3AVuO+mRK3IJDTj/2733ZX1Z
         AMca4V1uSeTuwPl592enNFfqTA22NtbZ5Sx3rNNXe6XOi2ox2yV8tjdN0/36VDUDLnyv
         Cimfhn+UuCIpIofe0/hXlxifR5l1DQ+PD0VaNU4OKpqUCXIgi1SCxEGrE8W7roDS9Xv6
         rZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Fnvc6r6j9p2Uw/maOlbdTsHQYeM4YFHUi6N23GCgfiE=;
        b=jt0jIqi8qynr8oRwFFN9d2TgLeuXDrZZ2el46iX08Y6QWyOR0CrnCIovaRDrFYSmJD
         57UtEEiCOflaS3f1UYKadu5zSe5P8xYnBO6T2mNVqV73GCf/mV5iw0pvbtrue5pyJEbq
         wjNVwLSbmpvVV7gj4tLP+KXLW1E7nakEppTWy72D5DRzqJ+8Jk5J3ro29UUA0+aX/dHE
         DC6wZmyFHx506GLQzdoNZVuce9uiv3f2ctr/GQmTji8Qr0j0xplwvwIcP7ik9lFRg9xM
         Hj91zbXAh+Cnirkp8BdqOFltVLXoxpsHIksrRVpU/t3qWpWRzODSTnuF/L0xIvfg0Orx
         TptQ==
X-Gm-Message-State: ACrzQf0aYmuPw58dqHySd0k315GrHc06qcXRFZYBtZ48Eh5ifWfWSVXJ
	YlN//4cVSkzTx1MHrGvAUxdOKA==
X-Google-Smtp-Source: AMsMyM7Uc4iRNgLZGgIceGXd9cHAFSN8cYdcmMGhloG1FMIuZ7RUyiFPSHFJVcBvHdjHiefjvibdVQ==
X-Received: by 2002:a05:651c:211:b0:26b:e743:b4b0 with SMTP id y17-20020a05651c021100b0026be743b4b0mr11252543ljn.527.1664350387148;
        Wed, 28 Sep 2022 00:33:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a5-20020ac25e65000000b00499b57032c1sm393141lfr.144.2022.09.28.00.33.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:33:06 -0700 (PDT)
Message-ID: <61b52536-ddd9-bf2f-5a06-f083a39c34b3@linaro.org>
Date: Wed, 28 Sep 2022 09:33:04 +0200
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
X-CRM114-CacheID: sfid-20220928_003308_778636_C254E68C 
X-CRM114-Status: GOOD (  14.24  )
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
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 7811ba64149c..d25a8a0bb2b5 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -688,6 +688,11 @@ properties:
>            - const: rockchip,rk3568-bpi-r2pro
>            - const: rockchip,rk3568
>  
> +      - description: Rockchip RK3568 Hardkernel ODROID-M1

Description should be just "Hardkernel ODROID-M1" and then put in
alphabetical order - before to other Rockchip boards.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
