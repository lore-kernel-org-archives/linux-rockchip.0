Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B95CAC77B7D
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 07:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ny6xIPRfXNgR00h0YwM/92uMrsoK1DlcwfjdYXjCuo=; b=b+GAmcUdetKUNk
	zVqMjZTg2jrmKknZSZOC9pfb+0x30IVpP8J5qy3htijBf3fp7WAZX4H+yt/auEMm8Q7VCAFuSZg3V
	hPqFvyVnStS7LnByhm+LZD+AoXdX5JeC2Tf6bN8kQAvDbU08utZi7j+R1irQGwCAVBZWaRSEo9WD4
	iMa9N7da+fLJI5wGeH4ICT2VstM9c/Med6yKM7pYdOhPPYhNaoH58LSMRvabIZF4Xqw9moR8SI60F
	CKVMFrQx8LLxDK7XjUSrkCnZs1rsCYaey/RQlUeovcPczqMsYyqkj2BLEJ2ANXAReYHkk6ppvch2N
	S8PjUGw1SjrDvdsye05Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pupWL-009t9r-0x;
	Fri, 05 May 2023 07:06:25 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pupWF-009t8K-2F
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 07:06:23 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-94ef0a8546fso224175066b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 May 2023 00:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683270376; x=1685862376;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NrbFUAyVFD9qLriRvueXfcJuV6FSCnnUKcC6aUkxYOw=;
        b=RQOQvDrJz/SNjW6J4N8CmM92+IQtZ35EFC0xoDe/GJy1brFyTDOFZdA8sPGC9RuyE3
         /3Sj8ZnYc8BOtUB6m5f24zYqRu+y4mUN5QXl3E5wt3EQ0S9s2EVKIBAkiNSwOmlPdyGG
         o2ggCdVjErcsjN+/KJSfzQplsRyiYgxAaaWnfFmUq0g6jd/TsVgdr5ayOPcjTI3AFLo5
         FTZZh8GhnIAH0BdqveukEC4ROJ+pBepuKgHseuIZj25fhhf2evgWir9t4ziLdD+azaQn
         38st9CD8c3e7K+ikOZRQx///3DVyP2aOyEP0u5AO4hHXE9xtfSeWerILSYqeUoCJK5FM
         gImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683270376; x=1685862376;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NrbFUAyVFD9qLriRvueXfcJuV6FSCnnUKcC6aUkxYOw=;
        b=cGNNCvn1PkjDI0SgA6HMmz4qbwERrftBPi6ds4YSyIPAamJpmhyGfNG80figPQyyU+
         PhCYJKqQaN69sRDRM52km2QupgZDovsd3zM4aTs5u/zkRJvKRvC9RQBo9LW0pnRMhWEP
         +mSEsuAQomBVkqd7Mupq/zioeHCJD9F8UKoCtkyE3/LB/aD0munbeLnS2/fbCDreYNBm
         pMSEVHyxl+9mp/aGhmo2RFlBI4dD8fQNbVYNRvKNEpJ/ahJN+hl2n4bYOcXpvAj2lYPk
         wD3Fjz1FGhWKTqk3UrTw55wTk6RN7jqE3iPpjquwnuQeQVqisiaan3XzeqGQWWneFil9
         N9XA==
X-Gm-Message-State: AC+VfDzZE0XfZHw3nLXpQPVPaVXqZdGBpHG5ZuymmFBdfZr0YNHNikev
	JqQPGUauk5eNiqy3RuyyjcHWNg==
X-Google-Smtp-Source: ACHHUZ7p9ft6sj/mqQm2oCbqXxlMIqrnhl6gNXYEI7Ld3xj7KL3CDGYRlCBhJ4O+rZyUA6L/Kkmupw==
X-Received: by 2002:a17:907:8a07:b0:94f:695e:b0c9 with SMTP id sc7-20020a1709078a0700b0094f695eb0c9mr287881ejc.5.1683270375812;
        Fri, 05 May 2023 00:06:15 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id q26-20020a1709066ada00b00965b8a72535sm558682ejs.97.2023.05.05.00.06.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 00:06:15 -0700 (PDT)
Message-ID: <7fff6a7a-0b4b-e5a9-6da5-6411c0943c5c@linaro.org>
Date: Fri, 5 May 2023 09:06:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/8] dt-bindings: nvmem: Convert rockchip-otp.txt to
 dt-schema
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
 <20230504200648.1119866-2-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504200648.1119866-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_000619_750661_22FC6405 
X-CRM114-Status: UNSURE (   7.80  )
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

On 04/05/2023 22:06, Cristian Ciocaltea wrote:
> Convert the Rockchip OTP memory bindings to dt-schema.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
