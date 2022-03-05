Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8521C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 17:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XubCh+6E6x0lmSmsFVfbcDmEhabTCDaB0zTrana6tpc=; b=1xOafIAqALoFRr
	42waj/Wjw/bitlKBsIC9B6Pw02aRiUfJZOILtOobEQ8GrRVF3bagoLZvTP6/xJhLPLXieqbgyQzG1
	V6mZ+dzLeZ8nELZMO2MjK5YJ0M90SlNJKBAjz3sF7McDX4LtwX/SOYRABt6p35J+kskUjS3xMhILi
	KxQL8Y3GuUCUFEyDyAF8MMNv/0dNLWZVzFHkh5nzVMtdSv4A6pfDwGzKvsApWIj7EFQNxjWT0birW
	19NGPMLM6/4cwvoX0CVpJRlTeFvCqkY9UMD2tz+jDLle9TZhnjp6C1NeW8LskdshG3is+crR+6IEH
	aLML4lVOwrkqNXmwUaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQYRR-00DbMf-Ts; Sat, 05 Mar 2022 17:43:41 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQYRP-00DbKR-Fw
 for linux-rockchip@lists.infradead.org; Sat, 05 Mar 2022 17:43:40 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 921643F629
 for <linux-rockchip@lists.infradead.org>; Sat,  5 Mar 2022 17:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646502216;
 bh=WA79imcrFseqVS1ZTUJxkEP0srNHgX016w3iNaOE7Z8=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=ABb5C+7PUmNBvA5jrxfCGPVHWOYZ0WTMnEDnUYgGZVzgvt49rvli6km5OUPMMi1Kg
 5yyE8YbsPgTqlVYRaLwPrYYe36KDHTeSssFMNYR4y/CbEdQNY5Pi2QXgk0jcAckEZB
 smKkqissJrXsBgfRWfDkoCoXsvjVRfLlAc3nY235LlabRciJXtBk2ssxhg1slcXeFU
 K17dVlXZ7SqQRA367s0YkdrVDQg4HmXTMwUFxz8QaET1TNm9XuxiG4qI96Q+h2pCOk
 dtPeo2JCis+rvyWZHFzaiQt3QmtWjKDyx37UBBMpitfIucZMhTJwgf88T/6T9LSUyQ
 mdsK5QdCcLaeQ==
Received: by mail-ed1-f69.google.com with SMTP id
 r9-20020a05640251c900b00412d54ea618so5900880edd.3
 for <linux-rockchip@lists.infradead.org>; Sat, 05 Mar 2022 09:43:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=WA79imcrFseqVS1ZTUJxkEP0srNHgX016w3iNaOE7Z8=;
 b=HdADxP8O6YwbHtd8i25gg1hBtf8a/u/NT5DbhMytZtWh/0er1rc5Bk4URDeHNvord/
 kp/loU2Kunv7temJxw9r/ChyaKgph23IcxGIfBFgI009CmYTLkspqC2cshjs8DIQGbPo
 JhWdHFyZcGyaU5c+VRtYE5SiIix61qrr62p859oJQAMxOuQLA3XG1n9FTo4+BVg59lNc
 DkdjzS4PpSMc1ddmfzYRUiyylIHsODlkFDZl73SA6KArzLDCBmIOL3Zbb4Lx2nTe88az
 Od3aOZLBuojFdHe/0AvlFXySoHLwZZ3L7Lx8z8GbTf9KsqaaouxUHTPDKRCf0JI549iH
 SlMA==
X-Gm-Message-State: AOAM532m+1pupl+NWC+wYnLV53ohzSN7+Er4jG1/nWB5IjncMAdtie4K
 jy2IWidEPNr8WAAPI6bjdq7FvapCj89+hGFnmGAyPbNGceTaiOmGsHuy7wobAoLk241ZP39Mmti
 Oxzc4uQ4kCmtxo7U+6D5uyq+aZI6ZhYutP/b83QjkguWk3nTTOg==
X-Received: by 2002:a17:906:2ad5:b0:6cf:9cca:d9db with SMTP id
 m21-20020a1709062ad500b006cf9ccad9dbmr3386005eje.252.1646502215376; 
 Sat, 05 Mar 2022 09:43:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIoUZqNCcsdZ2Op7qGi5D5yjHkt6TIjLgpzimg5j17lHULbjvbmu/5AWjYb7Q0rRjqNiVaDQ==
X-Received: by 2002:a17:906:2ad5:b0:6cf:9cca:d9db with SMTP id
 m21-20020a1709062ad500b006cf9ccad9dbmr3385999eje.252.1646502215198; 
 Sat, 05 Mar 2022 09:43:35 -0800 (PST)
Received: from [192.168.0.139] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 r29-20020a50c01d000000b00415fb0dc793sm2441837edb.47.2022.03.05.09.43.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Mar 2022 09:43:34 -0800 (PST)
Message-ID: <8255610f-82a8-80f1-8f63-88c7f944303e@canonical.com>
Date: Sat, 5 Mar 2022 18:43:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 4/5] dt-bindings: ata: ahci-platform: Add
 rk3568-dwc3-ahci compatible
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-5-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220305112607.257734-5-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_094339_674013_C48D47EE 
X-CRM114-Status: GOOD (  11.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 05/03/2022 12:26, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add SoC specific compatible for rk3568 ahci controller
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
