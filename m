Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A256C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 16:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqSSr3/nqVSc2gghVVPqUApCCjHveGsJNapCNO2nanc=; b=tC5fU+FPT3zjHR
	V27PVHp9iVzVitumc5pK129hMcsXACwgOUdX1A3Pbn28NrO3lBIfsTBBz3kgMdw5y9eTnhCkRzGKG
	81Fp45n8WVFNBAsoRRNO2+WrZZMjFz8wcVFKl/EytyusYy9m8TL2p6s94nj7JdLnTerlWAJIVJn05
	M5a1sTBH76AIEIiuv0wmhdnXScBZiQ2siCUtvkhWc+0obFJfou8e9NI1UgB1Iq9IPjO/ZsbbbN9G/
	todC9DfxVxwRa3AipJIM0tkeqf1xabFQEvAgCmy7hW8rYaryS25w4HE00T/yELJ2zV6PolMHWAFWI
	z2mppSrrYau096Eo8dig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pooBk-002m4x-0T;
	Tue, 18 Apr 2023 16:28:16 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pooBh-002m3G-29
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Apr 2023 16:28:14 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9514ac7c8cfso71745766b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Apr 2023 09:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681835289; x=1684427289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bJlWGu+2bQtbqWA973Suq+EwkurQD+u5p2hnYjezJq8=;
        b=vv4dJ7uJKbOE+JhO+/5j8nJXF1CxEI2XsKRxzV3q+siggej4sDDk1smkZ+DmgjmiG3
         anjf3zz5wFjLrjuBZpfetK4dewEBUxHKZ9Aj26Jemf2bdfwjx6wCwM1qL1zwr8ar+56y
         Kt9IS8wPX46yvHpkFfNJp/KdANvr058YVUxAbFKW24AzORpNUD4P2aWLo0as+dkWyQgc
         h215sM45EUqr1s0cJVLRusWX/OyTzY9nFD7RMSktgvvi6lMRrpeUdMOnbaTuBvowbdVC
         hqQ1lx3cMz3y+RybL6yX8ahNQIXccfxQk18K80ra56ywXqBKV3wLnZf/EOPQHV5jsIsE
         IWWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681835289; x=1684427289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bJlWGu+2bQtbqWA973Suq+EwkurQD+u5p2hnYjezJq8=;
        b=dw+P+JpAGqv8nCsmtDO+SP2Bcs0DLzwN3xW9DD9FIdpvluQrLi+dvt0ZP6OP9SDCr1
         yiuD8sZsZs/SIAiBldEoSphwWKLiVAcb8K/fhIxQ8LyLkDWhgILPxfFCo7kihBZ86AVD
         qDlqG/zZMpBTOqLjWn79VWsvuPgylkXYVKTbHrEdtq24nIvH+o7r15G4GzMcecPLo2Zw
         6JpO1HUStS+29smimBsEz1nF94fo2UP5ai5m9+VfN/UJJGcO6phJ9L/0SrQumz2Z+ygh
         MYUxnL9Z0eV3MWxOYcIyluWNjXdlyfOqW6C3T6HCN1li5mc1o44Wv0RN3q+uj8+UzMZ5
         jniA==
X-Gm-Message-State: AAQBX9f6mgqEU7/VEJIIhc/Zw6igEND2Xtv3A6glGRiJYBSOV5ZuT/A1
	XbimnEBoVnAez7z+gk4RSURO7Q==
X-Google-Smtp-Source: AKy350Y/3IgBgDv4R48Q63JLX5Uidf6WHyS26p9iorYJyBkECnJNn3F9M9a7PLWNGg3ixsvhOmHD1w==
X-Received: by 2002:aa7:d691:0:b0:502:7d3f:1f04 with SMTP id d17-20020aa7d691000000b005027d3f1f04mr3245803edr.19.1681835288562;
        Tue, 18 Apr 2023 09:28:08 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id v26-20020aa7dbda000000b00506b0b80786sm2028340edt.36.2023.04.18.09.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 09:28:08 -0700 (PDT)
Message-ID: <c8013f4d-5567-824f-53c0-03c2816447c4@linaro.org>
Date: Tue, 18 Apr 2023 18:28:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: timer: rockchip: Drop superfluous
 rk3288 compatible
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
 <20230418120624.284551-2-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418120624.284551-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_092813_709097_9264F346 
X-CRM114-Status: GOOD (  10.15  )
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

On 18/04/2023 14:06, Cristian Ciocaltea wrote:
> The compatible string for Rockchip RK3288 is provided in both the 'enum'
> and the subsequent 'const' item. Drop the unnecessary entry from the
> enum.

It's in three places, not two. The one which you remove is actually
rk3288+rk3288 which is obviously wrong. The commit msg could be
rephrased to point actual mistake being fixed + Fixes tag.

> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
