Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AC09C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 16:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smj85BW0K4EqL33UqjGhO2jVnvlqlhPJZJKBLkdDi9o=; b=mC4f/AoEOw6HyB
	BFtQyaUqRtq0UmMsPjzL0+lofVbhBSJt8Pf0zNW4O7Ub4UCAkQrbRAMjDbzusp1wxaYYfEcD4+zDr
	J4ENdcO9WgolVlKX62nRKDGzobl9WMZPLYesS9mkW2ZU7GkoyknQVEWO6FvE3NiLeww7qiD/35eaT
	IUVcMc+JL3FLOke3u7CYkEF9P9J1YzKiSGZuhLgseQClHbo9HgB+W4ta0YP9NKkIiFjahxsDla29p
	tRCf7VrF0A4iMnUNfYOO0AWFzSssLyiD+lIjxxOUXNWcEtgAJbbs7tFleKlZ5xqnpkMVChTSs9+yH
	WKIbujvbzukCKRd4tviQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q81UY-00GYux-0Z;
	Sat, 10 Jun 2023 16:31:06 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q81UV-00GYu5-2o
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jun 2023 16:31:04 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5147f5efeb5so5032883a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jun 2023 09:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686414660; x=1689006660;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uk7ZRHzY6ZnIa35oiewUZ6JqsNNCpQsJIRIF2DGyVuo=;
        b=uzTJnk3hMjLXnmgHH535kCPcL222DsQlFUOg03NCBayB4Er0ztzmLa44+UUTpuDEgh
         4ognjT4NCy477Lpo0y0CVKrBIOf7j7MPpec6oJsDCSuPIbjxKhhrxWrqaRhHj2fAT6sy
         UA8JXM4RS/pFNU/ROOGugSfIkvQhHUAkQLMSGbNNZ+9vPA/re3BtBWquJ5EsrrDh0rZe
         kMDulhkr4TsqQTh7GG94zE7a/DmOn8KZwQ6Gy3xXrGbmMefdIT47FRXE7z9z+pmUUzoz
         VEIJg+bBrSl0ztpfvNtVXXDIqIeTLUvIBbmzlw24MK1gJe6ZI3pvu7iP7lxHE4EjDwwP
         cCXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686414660; x=1689006660;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uk7ZRHzY6ZnIa35oiewUZ6JqsNNCpQsJIRIF2DGyVuo=;
        b=aDGcnpenI0fXsNIPRVNr/+ZZd2WyvLKQVVoZH+2xrQrtYZifFwbOgFi4i24etV069T
         xLW3c0+uJKgxR0b951A9cCKLHZSwy6+4hQ8I2IdhfwqDD6ZLxkryJzvHyQf++tFD9/Ud
         90tGbEgdbYpy3u996fMpOM2Rl+ZeWUkpZSH3HsFRqCDJCzxtJhgNAu5FPAMtgu3e5zoS
         ef2mhensoPaXL0U7PZI29ipAvs9g6oyqnybWluA2psH51gX9CZtvMW0tHZPKfRT5GI8W
         bYX65EegcJvMHYu1hrNSa5Rq7t+RcJiOI5Ef7fDCq/3m9ACjswPImOltUNbiEhFAwBbY
         06Og==
X-Gm-Message-State: AC+VfDz1/qRkfm64//hSuxP9dMPF0b/eiyYIkcRaQjxE8yH4cQJd1/Mb
	inXc5LE+ER/EdS+Htl/GQRhmTg==
X-Google-Smtp-Source: ACHHUZ7vxhVCpy6NFkysiYwdjutN6KRNJcaFd3rV7LzVNTq5r9IFA4bPPfG281Asltu8fcnoNTkcMA==
X-Received: by 2002:aa7:cd95:0:b0:514:a0a7:7e7f with SMTP id x21-20020aa7cd95000000b00514a0a77e7fmr1618079edv.2.1686414660144;
        Sat, 10 Jun 2023 09:31:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b20-20020aa7d494000000b00514a3c04646sm3017914edr.73.2023.06.10.09.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:30:59 -0700 (PDT)
Message-ID: <c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
Date: Sat, 10 Jun 2023 18:30:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230610143601.173307-1-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_093103_906366_D2362CAC 
X-CRM114-Status: UNSURE (   7.95  )
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

On 10/06/2023 16:36, Shreeya Patel wrote:
> rk3588-saradc isn't compatible with the rk3399-saradc variant,
> hence, fix the following dtbs_check warning for 'oneOf' condition
> failure.
> 

Are you sure it isn't compatible? According to your driver it is and
this change is not enough.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
