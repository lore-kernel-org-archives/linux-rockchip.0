Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B106CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 12:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cV2o5erkdxQkHX5IZPSXRdeBsYdr53qcKGER9zMRKyE=; b=sQ2diyHzqbD6aA
	eeoDjlQHd3LutqVdbJgUWb1MYdOexTO0wW4DxRM42RCLdFJA3RgEROvLYwu7oV7m7uK3ZBDP82g8a
	5nxzsXQk46ry6Ncamo7HxTHEvy+gpz5T5Rmta/nnxcbPmTb/wyRALVboXCOsukhoSmY6wGksPgLtv
	jgNIr3gfllETGX2dFvAvXGXmzUG89xJqJKe23tUyL+jjqwWBdxX4d2i3Lf9Q7XkkpH/KNVBRMWO4j
	VijUfJBc8QyIoIWzqj9lDCJs68NzOo41SCfv2H6Xo7tHRvG0mlW0b8TmBNGuQ/Q+lLCyJY5zHrlDD
	wvGdzgSHt7P5pgVl89Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiDBP-00FP6G-2h;
	Mon, 18 Sep 2023 12:16:55 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiDBM-00FP5Q-1O
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Sep 2023 12:16:53 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-52bcd4db4e6so5467714a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Sep 2023 05:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695039410; x=1695644210; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pNv1FDwVT3hMnnPhWO3xcQr1aUeDgxmwwA9dkUiq1gI=;
        b=hKARBq7KM+hvlZSaJs2HGuHX1C+gotriOp0jpWmd+I4ZBck5SMIWkLpSJVrR64i1BE
         rgv5vqpHZlfN83dC8SLTtnn7dPZrNdevbWJyXnFiT83zTJz7RB11FdDII6phpJUKUVLx
         CWJGWxvGW5QeXN31318dGQRJncyRFDW4NCj227x0jnHmY8Ohgx0IXZAfaAQJbTeoPfaa
         27j/OO3NGTN+aJfoLZwqIzIIqSqyEdPm1XiA39YXZU/qpHzlgaWLyni1SFAF/tKNbQFE
         Slhr6cOK+OlJsjkTXj7CfBvqB9aiz83oPyoSt33PxVOL6x4KOARgQYDZW7p4L4k6jELa
         I4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695039410; x=1695644210;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pNv1FDwVT3hMnnPhWO3xcQr1aUeDgxmwwA9dkUiq1gI=;
        b=HDjAp457/mh5NvNEehLuYXvGY54ciFgtrZBaodHAG6QPJM3wqRrhLFOgABlP1hXjgw
         o5LUM3m8OKbWpV9aP4BTAKzPrxYaAz0ZnRbCWrn6Mh45x+irMYbfvYnmgFhSq7XR8ILc
         piTF0O3chJuL0q0SKBFPXV8K7V4a5/SuY3an/JVMNnIld9ZGpEZgVZZNc9tG1tR/4LOs
         Sc07zTgBUqEHbdDiGlziRKbtkQi429ZZ/4eSYabGP/3+UPsT2htt/up7Q3LVWLlWP4xv
         vt1MwMRPdN9RnXKcTrD5gIBzJQFTvapd5w2FHVVAcBMIFhEVMVP0oCWhbzENYkJVN5Gy
         vPUQ==
X-Gm-Message-State: AOJu0YwulRu64DoJwtZK0EE5ZOEUd2npbtV6Yw3czoZbZAPi5G8suVIv
	zCXnCUBbtODThZwhq8r/V9PhMA==
X-Google-Smtp-Source: AGHT+IHjEzmDf8sH8wfhuBGiqE680D7tr59P6K14bIMYabWiXD52tF+e9xu/8MVoljBZIxA6w9Tptw==
X-Received: by 2002:aa7:d394:0:b0:525:691c:cd50 with SMTP id x20-20020aa7d394000000b00525691ccd50mr8530961edq.24.1695039409909;
        Mon, 18 Sep 2023 05:16:49 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id a3-20020aa7cf03000000b0052e1959db1csm5962284edy.20.2023.09.18.05.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:16:49 -0700 (PDT)
Message-ID: <1f9cfc55-bb63-92f2-7e22-26d31ad16e96@linaro.org>
Date: Mon, 18 Sep 2023 14:16:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 3/8] dt-bindings: clock: rk3188: Add binding id for
 ACLK_CPU_PRE
Content-Language: en-US
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com, xxx@rock-chips.com,
 xf@rock-chips.com
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
 <20230918073151.7660-4-zhangqing@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918073151.7660-4-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_051652_475771_04264F3F 
X-CRM114-Status: UNSURE (   6.25  )
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

On 18/09/2023 09:31, Elaine Zhang wrote:
> export clk id ACLK_CPU_PRE.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
