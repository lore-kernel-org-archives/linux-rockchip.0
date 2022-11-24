Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CA3C46467
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 11:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlD9kfR7QqvZja9RFIXm4JOdIjRl0gHygxHcKdNKcIM=; b=AB0CsXfg1hbIMx
	ypaO4aqhsdxAAS9C47lcpbtFIIZY/4pNe7pyFdT25+FBwugK4iShUh52YGbJXhX397QzVE90VshUT
	J5BvHdHOWn/VHxIKtfBdyfRn1FVW1NLdmlgmbcNQPtAqMZCPpPvi1QzXs0egoZlRzKD1la7HdKq1v
	/0YNHCkNUSi6j05wfvtXsZhWznQ83CUUPlyFgcmndWfJJA6k+sIH3bd9yEYt+eMhr1/RFYhmyi0Dn
	f440G/vB/3JcWMW3zehAVwe9Rjr9B8X9dZKpwWx/vUxaw1X4y7EAv8w+Wv/4oOyBM/gia+F+ZxCZm
	IXki3p9dOe8GUwQLrQ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyAJl-0081cY-Nm; Thu, 24 Nov 2022 11:22:57 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyAJS-0081St-Jf
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 11:22:40 +0000
Received: by mail-lj1-x233.google.com with SMTP id s24so1625390ljs.11
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Nov 2022 03:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8+cj6UQ7LN+Ky9R0eZIQB58xP67HWLXBq+iNNjkXTo8=;
        b=B68erQZs5QUzFsysngKLpWreeOybSHkqNpRrg5yd409xD3gxY8Cxj9jBZhDvbeth6V
         NM7K5ZVlUV1R7Ntd3Lh676iigj/jWgcQVgBy0Lb6JmImMzNjtgqcvHqpD2djB5Z8GgBQ
         XqStNCey8YB0Zt0DHsQ5sT4zoD/GyE2ySX0JRFTtlt0bLdOYphH/cuvQ84s5roS323T4
         ne9R9A1sZddpT5JafMRiUq3R9foL0/PxS8gs+gMb8562NWmEQFSh0B5U4zDh2IxcR1Vb
         C5IInCsKNVQjb7q4YKrgZ0eU/uoxKKAmziu30kuR/CbBvdGIR2eVQqI2JlVi+Sswh7Nh
         XCPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8+cj6UQ7LN+Ky9R0eZIQB58xP67HWLXBq+iNNjkXTo8=;
        b=violLwwsPEhpCQvdOGP+Y/qAyjns+WtGg0k2XuFOmNiXR5RUfP+hAw/Hbg6343zBgk
         1fS+lQ/0V9twIvTvB4+48iqpAiRrDWbV6w+c5Ty4yGCTUx2fLBH8N2/HOpnv9A21N+qu
         S2G+shw764ohwCqtrRnbpAJ4tTE7kjNp6tSjxrAy6hIrV9m96aF2kBs09jQzbmmvqUGM
         g6r6jyRRljbzNH7LNcxIzoMfaKF1ttjQQzBFdqTW/DDmPQg1EYZHnK4SvOFTGnzgyt1P
         E4eXHzfSudi30YgRjxr1m+0/aGZ4eOOcMz12y5wUUJ1cuO4153TSeIOAbzlJGebwqfAU
         W0zQ==
X-Gm-Message-State: ANoB5pkDDNFHVHgLCoPi32TM+1cLXmjtMij5oeRuHYvdQuYrGA8QjUxP
	vCv1VxVCdpcNnfTXs8q2baqZi0yBWAcQ7Y9d
X-Google-Smtp-Source: AA0mqf4y/FJMl46TjVTTvWIot3f0zrc/aKiyh8AORhiv4ocwxXwR4jdUF70O0w4hYlYg1SvG/sZylg==
X-Received: by 2002:a2e:3217:0:b0:279:7ece:b6b2 with SMTP id y23-20020a2e3217000000b002797eceb6b2mr1663959ljy.128.1669288955222;
        Thu, 24 Nov 2022 03:22:35 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d26-20020a19385a000000b00498f3ebffb2sm95170lfj.25.2022.11.24.03.22.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 03:22:34 -0800 (PST)
Message-ID: <9de56bba-1df8-3504-0b9a-f5617517b327@linaro.org>
Date: Thu, 24 Nov 2022 12:22:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for
 rv1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
References: <20221123183124.6911-1-jagan@edgeble.ai>
 <20221123183124.6911-3-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123183124.6911-3-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_032238_708605_0970D0DF 
X-CRM114-Status: UNSURE (   7.02  )
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

On 23/11/2022 19:31, Jagan Teki wrote:
> Add rockchip timer compatible string for rockchip rv1126.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
