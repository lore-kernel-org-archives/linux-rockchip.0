Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD782C7EE24
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jun 2023 13:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkbDUGWGoWnx9CO1I20AK3qKUK5TNKaMO8Oa6aN1nBY=; b=wDmtCTOEP7pvFg
	afnlERcqhREszVJACiD9vIG/jxcUHtakzpt0WYrEQgIBu3rQlwmpMbcUo0AvqWbu36yaODpVUOAqS
	gyxJBi+jASH0E6YhUKV3KR9XOtXskB3VE9TYeaSIuPeBEZB2p9mVd5or3OFobtkjvUZKpQvJN8L8y
	HKEO9KNcfnVgo8NCS/dgKyTo5hYWeYWyZ2BXoA5gD6C3S1mqE0ehjfSeIze5De+MIQ80y4SXd0lMh
	7Vm3ugujV7wVND8d+Rqgq0gRPQC/cFr72kLO2wpmiOZ/Rd40WYXjeRbOoLgmzjGPPfdSBrp77qa0Q
	j6i4G4UkNa8esTC547EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q54eK-006ylG-2Y;
	Fri, 02 Jun 2023 13:17:00 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q54eI-006yjh-0E
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Jun 2023 13:16:59 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96fbc74fbf1so312798266b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jun 2023 06:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685711814; x=1688303814;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OWKKScIs76KUhUju57F1WBq/kEE/WaubIYmlIJkcXeM=;
        b=djg1I3aMWrXwh42gt+Z1jP8HZRSPHKiD/O7q572NXS2NstJBFkf74hP1hqDpFvm93Y
         S6rtZ0hSvDt36ie3UCI0m9WQnXbsNumG6nSch+IYQuOtC7w8PCiKzpzcbZ22OA8qj4NH
         D5ZimQPwP1o+5OTH5SX93sFAvP4kx0FLlkLxgZSiRVeiVWd429YmS9Jr2yRZNUlqRpWr
         XDbnj7tWmzvagBl1nQOMkWYJVN9WEPIyp2VQcp+vgJxHzdafj3yIWjekFqcnGfcrVcXy
         oWeHsdXPttjn29t/JHXr+i6tuTUAP2mJV5ZlR9/PDl9IpawjmQQwb6SYJJad2ovGmOlP
         Ds/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685711814; x=1688303814;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OWKKScIs76KUhUju57F1WBq/kEE/WaubIYmlIJkcXeM=;
        b=fDZ97GpZsj2rfAizzpG3CAhYehlgbbHBuMIQ5s6VycMcvHUBgC1zhHtvsYGJbwD3Fl
         QoFrWTbbmEvpDpYFbWzMa8YSHpN9oHozSi9XYR4WJ6B6vyE1DwrBzghnKa5P249EDzaE
         GG/RQd7cbqaoKEYi6/hw9G8UClQmEhWh9HemrQ7Vj2qm0OrZTLdoYh0SjT+1tuOIDPQ0
         C6EFOWCGPhcJioQsHaic61LQCw57wv4PebF6T+vCVGZfW1iqmFk2+rVFc30RYtj/KGOH
         f03ca8dMYAy/GXhzO5NRTqlsEEZtCVw6+eZF6Gd/4lO8U7Ioz1EMdT5U5/tIr12U9bnx
         05MQ==
X-Gm-Message-State: AC+VfDzlit20wFsidLfnpC+dMmuS7hGc/L1xKdSmyJo5NRI4VRkeR5B/
	oJGonUh6qNQPmOwj28pkkIOftg==
X-Google-Smtp-Source: ACHHUZ7MMAyTZGii1bYOWthzbVZRd2pV1jULI1a2xgUG69SJwoyDeW8SFaGdCjP8JrcL40Z/J/mbOA==
X-Received: by 2002:a17:907:94c7:b0:96f:aed9:2535 with SMTP id dn7-20020a17090794c700b0096faed92535mr10956707ejc.9.1685711814507;
        Fri, 02 Jun 2023 06:16:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id o12-20020a170906358c00b00966447c76f3sm766394ejb.39.2023.06.02.06.16.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 06:16:54 -0700 (PDT)
Message-ID: <7c431f4c-3212-c297-8cc4-9280124f4746@linaro.org>
Date: Fri, 2 Jun 2023 15:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH V2 3/5] dt-bindings: vendor-prefixes: add Indiedroid
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, lucas.tanure@collabora.com,
 kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
 sebastian.reichel@collabora.com, andyshrk@163.com,
 jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, broonie@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
 <20230531161220.280744-4-macroalpha82@gmail.com>
Content-Language: en-US
In-Reply-To: <20230531161220.280744-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_061658_114969_45226350 
X-CRM114-Status: UNSURE (   6.40  )
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

Resending as my previous email probably got lost. If you got it twice,
apologies.

On 31/05/2023 18:12, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Indiedroid is a sub-brand of Ameridroid for their line of single board
> computers.
> https://indiedroid.us/
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
