Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D86C7EE2F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 17:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOKrppfwXH9QK5pfsROgxjCGVfYTQazopHjKC/rVO7w=; b=lUSxZudRjh3nOO
	HZu5kdkNaDxCNa8jUSRVuqPcY/msswHCRQ/NFD1VU48T3cPfvRsfehbjC3wdNml+VKIBqjghKsdNd
	/5cyiJjj+6ycEPLoVXtgBFthDdGTbLYQmgEl4NWzFJ7KEyuNawLKHDeVPyRPswr5HCL2zFEiHK0Wx
	DeWndmNvMkDO5UGbd6vlspC6qIyYDGSxE2EVA2xYtKyz6PbKYBCaqiayVg4l0PzdFSk2DeaMCHv7H
	ZhAhf06PK+i6P9sJHJOfvg4FsKOok+CyQTEyNDJodeoAZroNNulpYbCFGn7/JrOONUVrxM3/vhHpj
	jylmXSNnk2B9DquTI3tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q82Tu-00Gg9F-2r;
	Sat, 10 Jun 2023 17:34:30 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q82Tr-00Gg8N-2t
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jun 2023 17:34:29 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51830f2523fso625825a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jun 2023 10:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686418466; x=1689010466;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KDwuS8ivDaXoqweaWeaVy3Yc3d6wso3xwv2Ixdl0prg=;
        b=x090GQhA4ZtVMlRRaeiyoF+aOZ9q0QqxGwFB2WJ4C6NkF48xzs3saVX7RdJIbeNSUg
         1EsjysURbpivR9Ykn1fQwHgyA/bBbxYmTQcWHupdnq+yw2QBhVZ5Wzckc7rto4jgeVpO
         gooStXFAkOeHT08lVH61GCuNaBIAFkxRL2RRarBYCPBLKcGdPe0CrBuBCfUVUXP+Je0d
         cxA5bmHkmv53AsKHs2/qIS0RxlLDSdu8zw5af+JzdoZp4lvS0oqXyhTzenH9m8BEL7QN
         ejT0ot0x1Ys8nYIdg5CcAFiq67W1gTHRwWoLlecEhlLomuYs4Uc5Q6BmNGZPZWO00cK8
         5spA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686418466; x=1689010466;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KDwuS8ivDaXoqweaWeaVy3Yc3d6wso3xwv2Ixdl0prg=;
        b=TFBNKNgwSrvAxoucqjJBg95ycXgj37cPKSJGT4aOFE3jtpFhSC6TnaDiiHwtsaST2I
         Bylon4Lq03rIJ9D7KgE0+ccwXj8wr5StyuvbwOfDSEG1LFxK8tzEeGEJCc//sFIy0uyg
         eBwt6HcrdIXz5ZZWU7kvY0/Rw8owLt16XSTWTCghKFb0YWO338tFTe961hw5aezqICqQ
         O/cgNvmgv+tS6tNBikq5Hd1YUnrzh1P5GRji19yFdO9dQ92vWoCu+hwdQINdZtK6bVxK
         TJoa7FK2f9qGihHz+vXGl6tSAQ/4sLXQ3EYpGFWdLipxKMZlkxrmSXTp7znBFeUI1S8h
         4TaA==
X-Gm-Message-State: AC+VfDxaq1SjkobSOTWSnYHvo+hhb/wEIzooNL4Rp6EZ6ynBOCHpYaMt
	1kXTwHjOmrgVMClf4tXsL5XvCg==
X-Google-Smtp-Source: ACHHUZ4QLwPV4AAHZ1nnSvlebkLfLm6hTSfz7V3skL2ZlTi3k9c5gDLsQvctQyiunCRRfDDndPgBLA==
X-Received: by 2002:a17:906:4786:b0:94f:694e:b953 with SMTP id cw6-20020a170906478600b0094f694eb953mr4758757ejc.59.1686418466379;
        Sat, 10 Jun 2023 10:34:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id g8-20020a170906348800b00977cfa6ff46sm2788903ejb.103.2023.06.10.10.34.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 10:34:25 -0700 (PDT)
Message-ID: <153ea7d7-25d5-8782-a622-ae512134161c@linaro.org>
Date: Sat, 10 Jun 2023 19:34:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, gustavo.padovan@collabora.com,
 serge.broslavsky@collabora.com
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
 <c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
 <20230610171142.dsezim4gcxr2b65u@mercury.elektranox.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230610171142.dsezim4gcxr2b65u@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_103427_943487_9E984FDE 
X-CRM114-Status: GOOD (  13.65  )
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

On 10/06/2023 19:11, Sebastian Reichel wrote:
> Hi,
> 
> On Sat, Jun 10, 2023 at 06:30:57PM +0200, Krzysztof Kozlowski wrote:
>> On 10/06/2023 16:36, Shreeya Patel wrote:
>>> rk3588-saradc isn't compatible with the rk3399-saradc variant,
>>> hence, fix the following dtbs_check warning for 'oneOf' condition
>>> failure.
>>
>> Are you sure it isn't compatible? According to your driver it is and
>> this change is not enough.
> 
> The driver changes are still in the iio testing branch and not yet
> in linux-next. RK3588 ADC is not compatible with previous
> generations. It's trivial to see in Shreeya's driver patch:
> 
> https://lore.kernel.org/all/20230603185340.13838-3-shreeya.patel@collabora.com/

I was checking the next. It's fine then.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
