Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF46C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 12:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExBibevS38n57ojCJKTvea/lxMSNC0CaE2lnw2qcv04=; b=TpgZ+6zxBxA07Q
	MvwivrTmljkJDgKw5ae8+OQUT5zsZ36NBHFehe8v+qgbtNxoBILRC731T3hQAXuPdPpGU6+HrWZ3x
	4vvL3QJsZaigja0mMoAmisRw9uZUxz3XVkT3ZVqeYZ+t8POy23XhRQ75GvLmzBD5Lq1GbZkewff97
	o49L1qbHOj7SxW56thr6zq5phY3XsEHOssyM0YGzHbVgYHYO0JidFLLKVuJs75wGqw1xlFnDsoiDO
	JmL9uq75juPDyRm31nDtbTembc82shB3pSJuqzsGTKLpZEUJAHQaHzW8+0MB+Mno3aGCR153Dgx3Z
	d1WD6a79Z43Ls2aoGV0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVuZs-006Hel-RJ; Wed, 07 Sep 2022 12:54:48 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVuZo-006Hcj-UV
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 12:54:47 +0000
Received: by mail-lf1-x12f.google.com with SMTP id q7so22291796lfu.5
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 05:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cy/trsDd8yLTVEJh558cDfunHTs2Qb/idq4sWa7wWtQ=;
        b=QiseaVKCS5hUrwI2xGuLM/GjaR8lfhJQrIIsBqcLm8+s8oHqS0PtwAmV8ReO7E1HUE
         UWVzN2lW2f8oY4uGFGT4H4xNxxMYDjDJt4dt87iK4ESQAiK3dBHBAx0tVAAra8tGmFeT
         2AM5LZbyIClWoAb+bTcLpwYa3i+7MNLHHay6eWOHtUcccntXWpLtjK/M68Qt2U3lENFR
         6rNsm9h4S83DOoqsrjFbqJQisYTzrJXkMjJz+2gIHbpJww7rVylEsinQ4BbDcT9/mWEZ
         5SK0hfZgjT6EAwdx29hg5boGYbrEj+hEdtUNOKT3sLXrgEp3Nh5K6iz95zj8DkF54xG9
         JDfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cy/trsDd8yLTVEJh558cDfunHTs2Qb/idq4sWa7wWtQ=;
        b=kvSdMIunkd85FiOnpjq7u0RiccBP0hbJOJv2vMwk3AqWnFxGngqrQ5oyFXnIiHuNUT
         SYpkSvNqGgVqvB7DtbVauGKpa6VTBwaAihvxc1a7HFoSnBeTqjcKxeH6e0k46r1vicWJ
         p4cTzUmtMlsoKkgHiBNEh+na1QPlOC9LMuy8soaUQYYb5Hetj23REmfuJsYnVhMsJbXM
         xU77KEdRvqFxliV0erzrbcxuU9iL4lgO1v91vIRcl/WUAnwHXoc4dyF8mUI2C44HRUAy
         HjVQQRWocnrVULCXekvWTlfz9z4xC5rVNEvgsVPKraIxBXE5KxRA7nJOhpEkx5sLwpVg
         ME+g==
X-Gm-Message-State: ACgBeo1IFY7GPaGV4V6I5Y56wwbVKpEyRRqIn4m3LoE6zrzjPbKSVF9Y
	QhlXrdM3eCqLSUF+/zcAJi8IAw==
X-Google-Smtp-Source: AA6agR4X82GuLVgZJmrma1mw0oOP+orTMPigc9OEMYQBmWdiVJQeXqwdqzGeABYFTlI5gKlLDikahQ==
X-Received: by 2002:a05:6512:2255:b0:492:f5b8:ef2d with SMTP id i21-20020a056512225500b00492f5b8ef2dmr1009522lfu.128.1662555283241;
        Wed, 07 Sep 2022 05:54:43 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z12-20020a056512370c00b0049465afdd38sm2470499lfr.108.2022.09.07.05.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 05:54:42 -0700 (PDT)
Message-ID: <2ae421c4-5e14-d4f5-1cd4-df227d3b85d0@linaro.org>
Date: Wed, 7 Sep 2022 14:54:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add regulator suffix to
 BPI-R2-Pro
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220906164212.84835-1-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906164212.84835-1-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_055445_025039_922289CE 
X-CRM114-Status: UNSURE (   8.97  )
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

On 06/09/2022 18:42, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add -regulator suffix to regulator names on Banana Pi R2 Pro board as
> discussed on Mailinglist
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> https://patchwork.kernel.org/project/linux-rockchip/patch/20220825193836.54262-6-linux@fw-web.de/


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
