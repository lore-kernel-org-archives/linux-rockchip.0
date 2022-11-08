Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4268CC43219
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 18:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DazIeSUfBby5t3Czbu3RONV23seTqNJZqP7SeLQUhBo=; b=mVvwTxvb06ERcp
	gg8EsJ74d0BsrukKsNdCyfJ12N9cDlAYRrxi0hp3ktbf9Pcr064p4NSc6qbEpWAHZKjyhtcpFpuFu
	0nru/3Svj+YHN8yt+5g97IFnnw2qtPD2LmO6lYsH7D6XK8G9d4xluNlaCVmhqCy/bt4BmMthNzdhX
	RP7uOuobnF6kVeEkF0wDsorOr3rFccV0vIoQlzueQiE0LoppCL0ZefhpJuOeM1zFXul9DPkJ9oa+J
	0P53Ha17F4xXQSqz14UCENBJDplcPfCZs8j2ycvtBsKpkuVAVEjR8WMw6eQ9jPUOIDPwibvMtuHET
	zFT0CnEPj7B6E9aUF0WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT2k-007MUC-3L; Tue, 08 Nov 2022 18:09:50 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT2h-007MSW-VM
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 18:09:49 +0000
Received: by mail-lj1-x22b.google.com with SMTP id a15so22306085ljb.7
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Nov 2022 10:09:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+x1FdVd4adc3EY13/UzrLzs2WTM948TTM95bI0vEfoo=;
        b=Fk6AECuBA4Om35QqLARiCBedezNZr8K0aaCXsDjAyLu2Vtf9nDBsQfSUDJZO0qdL7U
         +TXpoDd5j+jJE1O2rJK1c161vN9JXaMD1fFDu4GYYqWJKGxHJHE0uP5OpQSV/9J5uy0t
         z0KP8JGiTaRTrgwzDr+QEjd3SVydSMTDWszZijQEmTXazyk/Ud/qoUj8KOjdcDFY8nXT
         BPodWiqmBjGSh59w/jfqMmxIfATD/XOdAsWmmM7t7EIXpTBvQ56eyr4KTozo3CUko47R
         0ZIumYndDm5ua1LBA2CqjVjI7NsT7l5pXypp/4fgfrWBV9UZ1m4Ui96EfKesqBLxp03F
         ngMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+x1FdVd4adc3EY13/UzrLzs2WTM948TTM95bI0vEfoo=;
        b=lXF2LfFtb3CN96NRiYrxN1G3PGa1udZw4TJYBpPFmMQeY9SbnTquhNSRCb6zU+HShd
         wcsw1/9Nj4f07DHy/1DZMHRqkoJLi5cbHEnWOd2CCtKlfivZL5m4trdA6XbIFoQY5By9
         AVJQXke+CNm0z0zh6O1Y9SYeTdm+aa7W7E3a3t3RmQ7G1Jnqns5pK2CNIrSvCHXboXm8
         Y/3ZlAbYLc8Urs8skSS/IKtFD1Y4VDRt9jQfhn3iC94zKMow3Ulfw6PZwBaSC4nGZnog
         XP09VoiTnj0QB4KharWJwfoXT/L8Y/eE4yPwt7a9RPU2++GuJ8UaMxzANrk4jF5eBiDQ
         L3Xw==
X-Gm-Message-State: ACrzQf33gnKdltnQRDFRFtYrf3ewBMZo3Qy0C3twVnnH5Rh14caqLrKh
	LtTWcJCja7tbuVQge+Uc37h0Yg==
X-Google-Smtp-Source: AMsMyM5EqvvKEDSenVf4Y1ruiX0sj1E9hzX6W6GUwN1OuqwyLvUuaaTpQdEFLiM4c91kLf7eAUGSQg==
X-Received: by 2002:a05:651c:551:b0:277:8a70:62d2 with SMTP id q17-20020a05651c055100b002778a7062d2mr8107319ljp.407.1667930986575;
        Tue, 08 Nov 2022 10:09:46 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id b6-20020a056512070600b00492ceda336fsm1881922lfs.278.2022.11.08.10.09.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:09:46 -0800 (PST)
Message-ID: <58ee258e-8708-abcc-077b-c6b4a1a4185a@linaro.org>
Date: Tue, 8 Nov 2022 19:09:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 03/10] dt-bindings: iio: adc: rockchip-saradc: Add
 saradc for rv1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 linux-iio@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-4-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-4-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_100948_046323_62ED5B6B 
X-CRM114-Status: UNSURE (   6.96  )
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

On 08/11/2022 05:13, Jagan Teki wrote:
> Add saradc compatible string for rockchip rv1126.
> 
> Cc: linux-iio@vger.kernel.org


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
