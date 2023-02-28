Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BCFAC6FA8E
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 15:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6HPmYYGVb3cjMkdisemr5yhL5fwI8q5lC29f9tMRb8=; b=n5LmQPWLfhC1T9
	5qu4YEC79K1leYu6zgM1SzDyAUWnzfvMPK870uIwvVGijaOwSiA6TF3T/1DyZyPOJNt54LzDRaNnS
	83MI0k1jaR4h45XLPx3r0jCqhR827aK4r2kpWf6iUqBvILq8AmkQv/c1rm69+ehkLf7UTxlxs/Onk
	mufApN3nBvNYD9T38wwQr1dkg8GisvyGqjAg5VOq5mrSlkEIH33FCnOCDyppnwvUv4TmU3SAvdfpI
	iVVMPVtzeFOla6X3DefoMwWmODasUoby6/W/EWO/DmRB5t6KFry5n5v1amnd8nCrryL1+u+rhKuPo
	rCLqzAJ8lXpTGAmzADuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1rA-00De6L-8L; Tue, 28 Feb 2023 15:25:32 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1r8-00De4y-4E
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 15:25:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id o38-20020a05600c512600b003e8320d1c11so1054591wms.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 07:25:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677597925;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gIFCjFemZc/gnj7ICZYhdDftYGP5figYg0g5fTPNeTw=;
        b=LIVWIyTGzTBjBpwDGxSOtz2Y7+CLoKbkR1x2Gbj4+Ij0RxmXMzoyMMslo0RdfXodZ/
         3r8hass89maPnpLnUnd4LF5uMN5V6ka6UXghDmocE9Lc9olsNfMPX11R1ivIShCiAHj2
         TY3Gs+k+wiGK40DAvmYoD3KNDx9FA84ZYZBknICVEYctQjLR6UVSPXK0pPumRBY0r0xm
         IIiH7Mo4hmrbpcZDw21Jz6LA0dsLeA2dJ6yd5FaibLtOJSOzy2vdaPTvZf8vBRE12Co9
         UR5FvvoIFsZWT2NTXR4Dn5Xgdj3wWcw3O3JxEuL0V9GRIW3YIgQCQp4TFvrbseMG87jg
         iG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677597925;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gIFCjFemZc/gnj7ICZYhdDftYGP5figYg0g5fTPNeTw=;
        b=x5iJrYnXEoOW0BLTKcMcOkKFDyPrZghTHLmzkZtd2YJGj0LoQMWT9+ZDqWBdfAu53a
         w5vzmjq+xSAuIS2bgPEqwjPbSW7H6z0QjCqMMs5rqaUmHNuvupMXCqm/Bw4JRVRvXC6F
         pQIogf9aadEuReOVaWMWhWFNHExM86TxmWUJagdACeoLVpQjuxKOoLE7TAUZ+KKsoN3U
         IU2ifybBkd2yDuMlD5V9nniNhk32KYBUw9QXt6G6DbuhaTKdQN6u/eyXqxXIUR5E3Ypr
         HrnbBxLVTT2QKVf0PZR7lPf7pcI5bQmCzrx8q+Lu5pn4CuCx/8nzhQxBw4KyqfSrN7yz
         tBWA==
X-Gm-Message-State: AO0yUKU7t7OpdhVkyvsywxAsBV8GaeSUtkMHDT7WuSQtS2jydeqZ4cD+
	yTdo96fGLDnj4E1acAQ0MFY/2w==
X-Google-Smtp-Source: AK7set/K4l+xYcE5378bcbvSHyaphz8hiqb+3QqaW38tDT0j7mqQBm0kpoUx1ZkQgB0shFS5bdO8Qw==
X-Received: by 2002:a05:600c:491d:b0:3e2:6ec:7fb7 with SMTP id f29-20020a05600c491d00b003e206ec7fb7mr2453066wmp.0.1677597924827;
        Tue, 28 Feb 2023 07:25:24 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c379300b003e2052bad94sm16134455wmr.33.2023.02.28.07.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 07:25:24 -0800 (PST)
Message-ID: <9f03c575-a11e-3125-cb07-e0434c517e25@linaro.org>
Date: Tue, 28 Feb 2023 16:25:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V4] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
 johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230228152205.133582-1-macroalpha82@gmail.com>
 <20230228152205.133582-2-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230228152205.133582-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_072530_194258_DCC0028A 
X-CRM114-Status: UNSURE (   7.09  )
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

On 28/02/2023 16:22, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
