Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66039C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Gp7qHbM8Ap6VxMFZjf2nhUYmFNKatLt59rSz/Xd7so=; b=lRtv+RnM8Z82Nd
	wFSU/C1ZFLXp7vx/rKH9BiZxIXzGMpFbBkqVRlJgQQRrPOX5sAYpBE5WDsN6UziWFBMLGqpaciOdq
	o95AWlspUhmalGPtbQh2CEm6S4URUQVK/+VJBj8Bn+rWCvt/EJAJ8obL0oNWGi3Ws2fDqBOFwI1n6
	7Nm2fy9AGGHdwsrGBtDU1jjPEwmohrvSrm65zPdwZrZwX0D8pZTwxcvFvrNOfanj8iNyvQPyZqnfN
	G6qCwUaVuvNWKEJK1b7sAT2o5J9Q05rbPWmzemgMM24faHjh50jv1q9e2Pw9n6oG59zjoLm5NhTn2
	tEHHuaLnIbzx2qO+Krvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80fz-00G0A2-Tz; Wed, 21 Dec 2022 15:06:36 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80fx-00G04D-3F
	for linux-rockchip@lists.infradead.org; Wed, 21 Dec 2022 15:06:34 +0000
Received: by mail-lf1-x12b.google.com with SMTP id p36so23860395lfa.12
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Dec 2022 07:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ubvr28/+nbrlzq2tH+BDAbtPZ6+thGRVV4LTQxz5gTQ=;
        b=LaqAzs5/sYibTYizBl1Qgzo1Zia0Fix0tx27T6a6X6Ye2r+/ckIodI+v/Q5ZrBQylC
         oG/CXxgOLc5ZiS0bx2nZSZ2HEbd1DBBIqLkKLolkiO8wJgZj36cN9cQuwGPeq4u5CDte
         Kq9RaxfM164mYp3cWafS8EBvTrzMLazlJ20iupuoLJcWVzN/nruq+iyO5v08wCHOKZBV
         dSWbmtGGXyHGv12zBbJaTMerEe3re0IHziSqEmFWrk6COOGETvdI3E+mh68jai11y/9T
         1ezY/xLRk+Oj7ACuJ8LFdxFQN7v7OBuRvTy6/e44X8/HU9CVQuYxrMfuQc6ahe64ZLWj
         isIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ubvr28/+nbrlzq2tH+BDAbtPZ6+thGRVV4LTQxz5gTQ=;
        b=BD/p5lFyrQlUiYJfowuJS+xn93+wP1pSA2WfmRJrTzbIsP0SZUc32jF5a9Tb6e0acM
         LtQsvCvsQeVIDqng9ng2afCP//KCjOiqkaccTcFiqk0htYhPfWgkBZwF6SYIqejZQkqA
         xvl/kJV+ShKzxWehNl9cMW1wJkfvRtDdW6kOdo8Gh4NqYCN9c5BAcBVzuHOVMglzalj8
         ZDuVqFtjk+5s3vdtHeUwd+n6++o51ZK+q1m7ZAlcEAwXhUexxKYBeOTi/U/Ch+YOwc/j
         bFYaDCPsHSULV9+iimkvHbQbaxYlktA4yznvJWN7R0XbXk5i/samvJhiRCa3n80iAhAx
         M1PQ==
X-Gm-Message-State: AFqh2kpVIvSAwBEIwk59heCuI9dYkdrIBE1j0eDd6pCnxAr3ZRP6Ikxc
	4u5Q6GPDZgzqXmmPBMFrMkrGNg==
X-Google-Smtp-Source: AMrXdXt+ZOwykqlelHux/xLhDhuRfzyrojLar4zCv78pPdtuapTCz2QBY88SMECPZnsZkenjpl+KhA==
X-Received: by 2002:ac2:5dce:0:b0:4b5:b988:b409 with SMTP id x14-20020ac25dce000000b004b5b988b409mr660702lfq.21.1671635188786;
        Wed, 21 Dec 2022 07:06:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a21-20020a056512201500b00499aefcf68esm1853539lfb.292.2022.12.21.07.06.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 07:06:28 -0800 (PST)
Message-ID: <0dda49c1-2162-d473-0c4c-591519096008@linaro.org>
Date: Wed, 21 Dec 2022 16:06:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To: Yuteng Zhong <zonyitoo@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
References: <Y6MQ2b8JyST6fPVE@VM-66-53-centos>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6MQ2b8JyST6fPVE@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_070633_200337_91C5C2C3 
X-CRM114-Status: UNSURE (   8.13  )
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

On 21/12/2022 14:57, Yuteng Zhong wrote:
> From: DHDAXCW <lasstp5011@gmail.com>
> 
> Add devicetree binding documentation for the EmbedFire LubanCat 1.
> 
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
> ---

Thanks for the changes. The SoB chain is not correct - wrong order.
"DHDAXCW" does not look person's name and we need real names.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
