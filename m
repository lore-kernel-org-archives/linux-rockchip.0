Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F2F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 08:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vv9wJap8d6G9dwnRI8S7Uvom+C3IAVr5TPQ0rcL4iCE=; b=DNB3EudfiG8hG3
	57X+MSij7UnoyOrAO/yzrbrWsvLx7AXG4n5BkTb8zIeQIdJXvC3xyREi3ZxvAvVSN6SGBiVGBJ6Jq
	oOcN15Ip1wf7dQiG7czTNQGfhpNeChoITzVNYiJnS7v2wvTKXMhgtA5K8rfcvc1C8CW3ahZppU4jh
	kzEgx6Rk1+569EQH6ZWKk0RYNv0ymoyrHKjiIxcuZ5ugxzPRbZVoIQbf4ETpew0pyZm+oBKUFb2YX
	oRaRXm/lg0IPl5x9KyNPwTZ/sNgO9HqyEHJM/ivhvmb328zZTx9gu7SIEDis/1RrYs0G1ZqjMBLqU
	/YN7kPknr4tiaR1bxS3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl4hm-00Fsr9-4q; Sun, 01 May 2022 08:13:22 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl4hb-00FspY-ER
 for linux-rockchip@lists.infradead.org; Sun, 01 May 2022 08:13:13 +0000
Received: by mail-ej1-x631.google.com with SMTP id m20so22724696ejj.10
 for <linux-rockchip@lists.infradead.org>; Sun, 01 May 2022 01:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=XrKlK/wlEuAV8r4Uf6E1ukYjJx77nczax1aunKH5Q+4=;
 b=YXINqYqsI0H9E96YUKV9+Mjzm52tkYI1g7ZqF8iLgJkMSH9V6NboFQLX3+U09VaasC
 1Cis79Ded3Ql2O3zeNDUdojx0Lryo2uqklTYBces9JIway60hBgeHf0G7HNFSEt4RTgp
 gCxNhm2+SZSmmsiSd6Xe3OXN6pleuh9F8IywWLaGMoKLJBl+7sUdYSx/9jzHA/lxnrH+
 ZWN8pAKLurFJ0gg/ayepSUraNgr8/zPGPWQQeNr3OxdDhaW4EVfD4rsjiw/8qyAKDJ3G
 tSqSTe8ey/7N+6DEAEFV4b71o382zMgdXAqxyZQ9Mo0rDLaIwGFLoDHx2dCm3K/01bt2
 m7cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=XrKlK/wlEuAV8r4Uf6E1ukYjJx77nczax1aunKH5Q+4=;
 b=Q4kH2qHzBwIKV6aoF53GuK2zPb2Rnv8bjE69INKJ/Mnq/pUIZrF+ni1Oly1af+PPQk
 bB3hD1dtOSMHiQ3aHHqj8hf1PN2pUpFvR2Nek/KiutmchXzg68NNof9hbTjO44HSRzcM
 XNdBQyZwWkOGiAp39NfU0kJdaq3BRALGwhMe+r5LdObPghvJMscBXUP70ucUplwgHVMZ
 mfov9/8mVM8D+mgJVpgZAjgN5w6937GdTGpVE1GJ6ORPDlJ0j10XviVb35Jo1qA3Q+bq
 iipwdhdnj2H3EoSRblNH/7Q12YPx2ZyiLNlfwZTj2Bxj1mMBAmgCzvxsPoVC9lIFZE79
 eJBQ==
X-Gm-Message-State: AOAM530sNrQG9+hOq9SIHy2vvuJRv9ZrmvPx5/WdUcIHWkOH71pPVLDG
 HUScnc0+JPlE5lNQM1JTVrd9WA==
X-Google-Smtp-Source: ABdhPJwXuUt0sftDa1TvYqXx+d7cm+eB/BhcX08Oq5n1MDafYYfJxDamHA1BTbHyE/MfVzuLR/AHJw==
X-Received: by 2002:a17:906:2319:b0:6f3:ad55:8fee with SMTP id
 l25-20020a170906231900b006f3ad558feemr6692397eja.26.1651392786726; 
 Sun, 01 May 2022 01:13:06 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 j12-20020aa7c40c000000b0042617ba63cbsm5047785edq.85.2022.05.01.01.13.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 May 2022 01:13:06 -0700 (PDT)
Message-ID: <c58c2d00-2b07-8873-2146-738199855492@linaro.org>
Date: Sun, 1 May 2022 10:13:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/7] dt-bindings: arm: rockchip: Add Pine64 Quartz64
 Model B
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
 <20220429115252.2360496-2-pgwipeout@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220429115252.2360496-2-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_011311_550554_2BC4EBE7 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 29/04/2022 13:52, Peter Geis wrote:
> The Quartz64 Model B is a compact single board computer from Pine64
> based on the rk3566 SoC. It outputs on uart2 for the debug console.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
