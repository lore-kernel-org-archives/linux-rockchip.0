Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E488ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 16:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zG40qqsM0D7zeBR5phOXl+RANmoL72lBPkUs778xFJM=; b=3YXzZm7SiY69Ee
	10AasHnD9yTY1v3IMqX5ogRsiY7CeKugS3vrj5e/0F9hYJqkJcF/WEwPEsWpHOucg9Iw4owTJ0HeC
	NrBiqUmg9k/Rw9HjDGkzgLIt3A2yj2f4ojWCmrG4iiz67t2J3vo9xREARyT5lRIqcDMCweYJwGj1t
	aKo58G1gDXfYDQtDdv8Pey5xNksYSUmwI1gw3vP9bBwT5iZlW96tM6U612yNpYkY3IRE6lDPkn3Te
	cVslNtSd7nGBAZHl1HXVm5IxPgW0bJhwIkdrs6Zy09eobjChYZatFAHSOJZBx1kL/ZMirrKEagfWQ
	mLhD5XCwlt7xCeo+nIsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZatd-007HEH-Bl; Sat, 17 Sep 2022 16:42:25 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZatQ-007H5x-Gq
	for linux-rockchip@lists.infradead.org; Sat, 17 Sep 2022 16:42:14 +0000
Received: by mail-lf1-x12b.google.com with SMTP id s6so29079322lfo.7
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Sep 2022 09:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=oTecJiLB56B6E9ueALCW3lfKOsCEvfZ+jsa5kvZovMM=;
        b=OfumhtGlzFA4y8Q9G67Hfdcte5V7N5pc6g8ryVjpiAk8VSrJRWZotC3hAEaCRXR2/g
         umfsS5lgLFkBsUZG4lH+X+kwcKhDQCUmFv8DFIOcQD2lTB/2yU5PxNN7M8gqpRMkJJfQ
         vEiqBynWuAbVCAYtGbcV4i10TqQ/mHY+/gWDMshTjnER6b1YG2Jf8yOBpSi2Tg0Qy4Iq
         apV5DEcPU2C8zQclLQbqUZpZkLI4ZcgBRCWvvCr/nKh2KWJpeP91p/c8hj3PGOi2Qw4p
         KdIXL5XLvbVaPsnsg4DcfGvcuhwNPPCufjjbTE2zcowQ8MwECswf0tLMl5RqJMZOc402
         ZjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=oTecJiLB56B6E9ueALCW3lfKOsCEvfZ+jsa5kvZovMM=;
        b=jy/Q/wj287F4Ekl40MoixLHoxeKpB2lCWG8WtCEVvxbYZbmODEKUUHRnlwPnu8HQVR
         /R72pvsFhKEh7nL/1dNhqvAlFHZY/RvUAICXj/bvB/JtCrntRILZePBqmwrb0auQM+2E
         gBJ6KyreR2wZnSxrJIY7wz5v/GMjJUPobMLfnQXFJI2ygwQMKKddfb2HrwDAtokWX+2v
         FPBtWys/5+JhqeEB4Ry9hC3ZU8N16qSTvlwFY19mIeTMAPbMiK0g7j5/SWt5QQH8pLlN
         rYYJImL1+eYeVpFn4ovb1QcNtAxEQD9gwgvHe2awMOgR/sGVKns41xAOMLUUtDaU1DQI
         S50Q==
X-Gm-Message-State: ACrzQf1ZGpq3jQOGnUNEL9zK0uh8QxUveLl/2sSMMSHiuO/d8FBF1PYH
	KHuvFz3sZkVVpi4MbKoeRrDDaw==
X-Google-Smtp-Source: AMsMyM6T5ywBAi9Qf0Y6xvBC/bUxH0JRti0oRAQ5O9WWhvRnnNyxBqzCKyUIyW5AuTia7pJhgCerWg==
X-Received: by 2002:a05:6512:3b1e:b0:49b:49d9:cb9e with SMTP id f30-20020a0565123b1e00b0049b49d9cb9emr3193543lfv.201.1663432929785;
        Sat, 17 Sep 2022 09:42:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b22-20020a056512071600b0049f87fb416dsm31955lfs.12.2022.09.17.09.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 09:42:09 -0700 (PDT)
Message-ID: <19f7cad7-1a18-0f0d-3f2b-e29f88600b0f@linaro.org>
Date: Sat, 17 Sep 2022 17:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: k3566-quartz64-a: fix names
 entries, refactor
Content-Language: en-US
To: Alessandro Carminati <alessandro.carminati@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_094212_565017_CDE2B071 
X-CRM114-Status: UNSURE (   7.18  )
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

On 16/09/2022 13:52, Alessandro Carminati wrote:
> Fix esisting "No underscores in node names" general rule, and prepare for

typo - existing

> new board versions.
> 
> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>

Use subject prefixes matching the subsystem (git log --oneline -- ...).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
