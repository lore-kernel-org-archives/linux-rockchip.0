Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C0AC67871
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 20:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9EIwg9DbCBKSwwHSAonJE4pGSMv+QF0Vg8Qy+Ku3tg=; b=PgTCYXu+cbOojz
	V7aXcvusXoXjgnfXrLRDkC3K+9KjpdKN0ez42Hl0medXh2jsIngF+L2vbnYrYwycVTz1PHw/chuA7
	CatjY2SlJr1lyPuywPMmZPhBgJsMtGhcU+8JxJ1rHtCTJTYmCCiKdRlLDnnsptxNlian1TB45166k
	UMRUYyIY7EgH0Hp2AwPIJHrUWNg3vCG5EEs/v1mcE+ZY6c1wyFa1iTbN8bi4ZxM6TftUDYocmzj4s
	YqN+M3159Or06MKhk0Br/tPPe5c0mVg52mcCoIL9d8WmW7SCy2qED6wiRAykufxNhY7g0p6l2xAms
	SmYDGfDbU0flds0CwFbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on4VN-0031gS-Uq; Mon, 24 Oct 2022 20:57:05 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on4VK-0031ed-KD
	for linux-rockchip@lists.infradead.org; Mon, 24 Oct 2022 20:57:04 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id i12so7303325qvs.2
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Oct 2022 13:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GgCiMRv4/zA0qfKFUypWEY5U/CHGoAGbHObmkG9bAjU=;
        b=nI8mYyv168AhumzkCxoWILqL2HSCDNPlZXOLGgbH+tsFoUAG6CstXdbpn9kTGqLSXX
         I7jJznF8AqNwuu/9zC4niHv3s29DeysGaYvQzKzLIhpSrW8LdEZjzxQxDo0C7VAxRBOP
         rOmcUbjrQXSTr1h4Glx2Ia/Bn5PsGho3PIGKjrQ5qptZGIqlGmk6KrA9eOPo7Wbx4K9C
         9x8JeVYnsCvUA7amY9rb7AMo+prVNMn0XHIHrb0XBVaxYnvriA0/kQ3AYYmjRKcJJCPh
         u3gJvCyfUfwZ6D5+SKOfnHo5YfDcuVol/5+7a4UzXB4sZc7gjYUjOzocv49OEnLSakDP
         r9bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GgCiMRv4/zA0qfKFUypWEY5U/CHGoAGbHObmkG9bAjU=;
        b=NVEIhIM8X7oGPNEKlMu4lU/lpnMalGMab8nOMyL+XLEc1oITuFV9v1vFgATNCYMBKC
         4fQqzJxMtckYzbyC28kqeyJTyfZ6EqvBL4iarcVElxyP2oguOB+o8VxcqWgacWfDWFXm
         Ly0wsBz0CE4gx2pd3sb9R3PC9P5pzX+hGWeI1vpBpij/DDEgErYI1A9LnEdLMnZ/oo4T
         dJJXoMz91y5vomWP64x2FvIdYT1RGhLqxXunXYwdh6ytAffB4Ysus7w9kzRGESCBQ/9q
         0ZGnGmFrGgIsX4p47kNw0PAdw509Wi7lrwXMS8ukBRSmwJdRWefYUZszbFKcEtoXoSiY
         dO1g==
X-Gm-Message-State: ACrzQf0Rk58UrrJ9K0xdDhjJv5+L+PSJHQQf9SlSqbqMV8mRlLYB1tR6
	hfQ9Q+jKDLR03ZjFILIvdrWEyQ==
X-Google-Smtp-Source: AMsMyM676vm0ry2ES6d7HLo9qrJwI5HY6Xf3UVXvmpUkNow7rbtrRLf/0gml2w0gx85djKs/FMJQCg==
X-Received: by 2002:ad4:5ba1:0:b0:4b1:9a15:4766 with SMTP id 1-20020ad45ba1000000b004b19a154766mr29127446qvq.6.1666645013219;
        Mon, 24 Oct 2022 13:56:53 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w7-20020ac86b07000000b00398a7c860c2sm550226qts.4.2022.10.24.13.56.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 13:56:52 -0700 (PDT)
Message-ID: <90bfa1ad-8404-2da9-4235-b7d87dbadbe3@linaro.org>
Date: Mon, 24 Oct 2022 16:56:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCHv2 6/6] dt-bindings: rtc: convert hym8563 bindings to
 json-schema
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
 <20221024165549.74574-7-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024165549.74574-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_135702_692913_0EDD5738 
X-CRM114-Status: UNSURE (   6.14  )
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

On 24/10/2022 12:55, Sebastian Reichel wrote:
> Convert RTC binding for Haoyu Microelectronics HYM8563 to Device Tree
> Schema format.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
