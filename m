Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E023BC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 08:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hTD1AIwyihHcwwQj+yJPXpzoMuPnRvJO0MlnaOFFlk=; b=MITSBzFgyKcbWd
	SZ1fDFL0IBz6aJsEGvhjkHg9JwnRh7UV9QFbiE8SYbHnJH2/ENHehtz5EhCYUPqUdnCDoXweIbZeo
	U8es7G31WAVhteu9uqHvoi7w6nvVAGRbVnz/UOD2+/ZYM+WBDuyTwoUNldSsgN2739b4ukGnaDa0N
	KNmpx7mf3ZWYtAeummheAbDkLddfb3qaFP8RbyeMxKZuKoM/kRdXXlglYlyd3aZqCVgjQ9RhRM/Nr
	6ezHlHM1AmQxu0DNyMjetWyZEgLotc6H6TMY+ySVYqQRSDI5jMggMAiwWlp3JB3KbSKGElMIX38aY
	UT9Vr0kTPFLGQDDjGEDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOKS-0065Ne-4g; Tue, 22 Nov 2022 08:08:28 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOKQ-0065Ij-7c
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 08:08:27 +0000
Received: by mail-lj1-x22f.google.com with SMTP id h12so17053114ljg.9
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 00:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4m37A/talNp70vF+VxLy7ZtvPFBex/6NeMS3n0jrH1c=;
        b=MJDKF7emETjRP4WxOUeK+8WxHTtIFN9TRN3WN5LZSt+tHwjEe8v77uDnH3dA2vAeHn
         O3o3nFC9xT+YTQfREbF3Qc62b7n1f0DduhKAh5/dCM0I7GfqgkIXFj+msOG6kJ31/EhL
         rpxeds0cDmgjMficvEiXs+eructqToNd1kNKxQt+/Cso5I/GT6LXlK6ugCRMzxnjU/KQ
         gT6OcGlaToVvFA7v6AZdkjnhswDRvyMt/GU3PJLXJrIQr72H+8kT8WqvxXr2LEHa+2LR
         hpaNu/uX4hUIrrmCQJnFPq7wTvGzGpMwxl1Tn6nsRf0Ir4nI0K2pR2G/ExP8UuaT5Nk/
         RJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4m37A/talNp70vF+VxLy7ZtvPFBex/6NeMS3n0jrH1c=;
        b=76cbQ/xB+/iiLHW+Yr2JJE6MgM+v46XqKhus2n7l7b9w35NmtwOokIyMVb/RqRCXQm
         +yDyk4emcU5YkSqSNgbcbI6U9KklYKwzy4lfJBUidMlzaexWoKES3+aLTpZQTrAtHqwa
         6J93BpQuB304caZqruVYKhWEeR1gGW7Nmy9UYdQyE86+qWMgPrd4ViC4PFko4+x8Z42r
         VIzlOJ/G1XhzkFn+29+BmiEwj2NvvndY+D8Hvnav20T6M6OyB4j0lht7RmCoWDyfXp1y
         N7AUlSG28E9QYUaE3Tn3XX9LtjoLFMdfMpYKQVbDjdFjrd1CAZkEBEYaPFyyO90Q1zWw
         8Yjw==
X-Gm-Message-State: ANoB5plmuEO6nl+vF3VDNszeyb08lYj6Qh0Iqhs5ugMAQQrlPHVea/1r
	afFjzoQMM6Q2OhDPJKEhBLxBrw==
X-Google-Smtp-Source: AA0mqf4RQelr2ivp3d2aUuGU6ED6ob6F1q0qEAwy3uK5D9ZUOLJG1rQtMbHRUVpHb6Y2mol6tZrOJQ==
X-Received: by 2002:a2e:a374:0:b0:279:4e82:9010 with SMTP id i20-20020a2ea374000000b002794e829010mr2823296ljn.295.1669104497279;
        Tue, 22 Nov 2022 00:08:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id g24-20020a0565123b9800b0049464d89e40sm2359967lfv.72.2022.11.22.00.08.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:08:16 -0800 (PST)
Message-ID: <4f8c1ba3-f62b-136a-42da-68406dce5ab0@linaro.org>
Date: Tue, 22 Nov 2022 09:08:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCHv3 6/9] dt-bindings: arm: rockchip: add Rock 5 Model B
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
 <20221121175814.68927-7-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121175814.68927-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_000826_300399_8A52E788 
X-CRM114-Status: UNSURE (   6.78  )
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

On 21/11/2022 18:58, Sebastian Reichel wrote:
> From: Christopher Obbard <chris.obbard@collabora.com>
> 
> Add DT binding documentation for the Radxa Rock 5 Model B.

One binding change per new board is a lot. This should be rather squashed.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
