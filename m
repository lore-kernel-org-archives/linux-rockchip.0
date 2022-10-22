Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0320CC04A95
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 16:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lE5CI2yuEpDyixiSF4sPEZVvjFd1Y3X6Ty2vnjZ3jxM=; b=f+2QvQTbTnQjP+
	snPHbutFC0yAL6K5HlFN5kug9CLHoj68L8ob9OudHhEODqIrIHVXdoNkufAdHCYHvKuidcaLeMqmU
	Fqu5Mu7/WAzNWVLUvK3mJY86SFjv6VhWOoT3vbDOUCZaUXDgAfcmjRknFn34TlYVfybDu3erf1iTW
	kTuJTsDgtLkE+Q0IGZ2wwD7eH7djhqBqE+wbtlUlua1qKijDbeh7A0JxRWgTc7618VX2twEZsoGh4
	TCnm+vsCxlwRV5xyI6DNQ86NQSqEjZ5Z7NxdsQUpFVb7B5//fobGnEDs4X+quYuRpPuYsZEFKbg7f
	iCwB4ig4G+ytaynh32Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omHIR-00DEVg-RF; Sat, 22 Oct 2022 16:24:27 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omHIP-00DEV0-QC
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 16:24:27 +0000
Received: by mail-oi1-x232.google.com with SMTP id r204so3801648oie.5
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Oct 2022 09:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UzLyt5KfVsh3C7/6psv5Axae2ZfgYzJFYNPQgsCwAN8=;
        b=LdemYcLSDbSaXNV/CjOK/zFEEfU+FnjOmzQvaW5igezJetDTDh1c/ltQ1d5TxPSD6Q
         KMyH94CfzBVhND9YZTyWT/2GugBos82fuLDwZCc4ObnLahqa1eA5eryaIEe7YxtDep09
         mGV2p7UIxom18re8/dFcoVaPxtCDR2TTPo4l3lHgDMDehSP8PgK0CdNaCqv4Ay1IXGqK
         0WdjZwTRu4962MkskdEgvf0YZbyGkdETnim3vh4PX5ot/bKidVVRLS8CQCQNn6f7m+um
         P/a3eBNCfGrqKwxWEHUTwF9MibTzgBSpo1b0RvrJO93Xbze56admw1ZuQl+Lg6XXLJBW
         L7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UzLyt5KfVsh3C7/6psv5Axae2ZfgYzJFYNPQgsCwAN8=;
        b=6dXcZtJYaT2LRQ4tEsS2KhBbvDMSjsSRcN15nY0MogDY4POcim0JDBVZTUuP4hBSfs
         XqsK0gK78vqDdN+OjLVzesIOLYLZMCRUs+b+hzziVHgnj7NsHDJ2tj46Ygyvl2kN352Z
         jYZ9wrOGDaUq7WU03nqPQgchBcblKnfyawqO0rx9yZ2ofe+ytxhKF1a3PfEYj7SK6TTK
         IjSjLA+FqIgOu5erxazpzUwQjh7z2744duAnCxFNJIdhxQIwrcyv0mm0iIGtiryxNaqK
         ox/4kpUjDsTCVlUj0gCQQRXjOj9qSj8vxzxotMHJDh2b+C854zK55vTEroKSRPX5AB3C
         PFBQ==
X-Gm-Message-State: ACrzQf1dkd7X25cVpFp2OAW01u/9OLk12s/WpPZ5/YrFYopusJ/ZnB4x
	4mDnYUh+wuETl+mBLh9tvqG2Og==
X-Google-Smtp-Source: AMsMyM6G/qBQ5q+e3exrCCY2O2Iwx3RvA6R1ab3lI2MiOifZwLs0NLsdCDsaszoZddt7PqF/v0GliQ==
X-Received: by 2002:a05:6808:b31:b0:354:9436:2e52 with SMTP id t17-20020a0568080b3100b0035494362e52mr26858262oij.1.1666455864517;
        Sat, 22 Oct 2022 09:24:24 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id ce5-20020a056830628500b006619dd066fbsm2421041otb.5.2022.10.22.09.24.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:24:23 -0700 (PDT)
Message-ID: <dfd381b7-bfb1-732e-d3ca-9ed463c55bb6@linaro.org>
Date: Sat, 22 Oct 2022 12:24:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 2/2] dt-bindings: rockchip-thermal: Support the RK3588 SoC
 compatible
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20221021174721.92468-1-sebastian.reichel@collabora.com>
 <20221021174721.92468-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021174721.92468-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_092425_891626_1E7F2594 
X-CRM114-Status: UNSURE (   7.39  )
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

On 21/10/2022 13:47, Sebastian Reichel wrote:
> Add a new compatible for the thermal sensor device on RK3588 SoCs.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
