Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA925C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8B0DPAoXCTUVqoMaU8/bCz6k0Mt3vpCB/Nty9mUC6Q8=; b=DTRl5w5ukG9UIV
	If6sKHwL34Zpv3gGqmUXNgKDlGGWvxceoG0Qc8SqQs9kxBQDMaERALOjV63ajZZQ6q3ZHVMGsKYQH
	P7FjF0NLctWLT5p/atl52rv4CSPEtVruA405vdWzV6aVy9bTXLQ+vhNbpE2g8mKE/6npEEm4yJL7J
	flwyjcQJWKRAbmCxJsWoQBOdtUmaY3ac0PqSLnVCeqL2F/aAu6rxfjyJ/Qbpssw13iQvtOIvhJ3Jy
	RbRHT7UiCfYdQLXvGH9jEOyc4LTrINzje0ZCfSG2bFYr2u83yE84VkQMStZgUkBdIaoqujTYZf/VN
	ltoFoaPl9gLDxuVfPe1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Goy-008tIC-IE; Thu, 22 Dec 2022 08:20:56 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Goa-008t8L-Uo
	for linux-rockchip@lists.infradead.org; Thu, 22 Dec 2022 08:20:34 +0000
Received: by mail-lj1-x236.google.com with SMTP id n6so1127773ljj.11
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Dec 2022 00:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GB9nooY/0032I7QDBEim1H1M5FPjYvPHgEiEZnFAGNg=;
        b=YH07lTfDGxT6wtN4QaJAAd9N/6D/HPQa3m1hJOxREFURbaCV+t7j/rqOs4fjVX2ykg
         3bCko3vyjZcz5T3gPAQAcNe5ilQz5YD3hKyvlJCVlcp+ZysgXbxAnB4crLyoHp6eU1Mw
         Jwtg3g41w65NPQaorOcwOkyf6WffOdNoIru7f7q9fO1dUvOjoGZXtHMwrCk0ri7pzOAw
         I8utGFGHKUH5+cywjEZp38ZJuuYIYQ4A1dk9U2vgk/zm/Ldv6jw5xIrqqR4C1LPW7Tjz
         Hdve7Rzhke0FA8wg//hejy8Kq+zr8FTPZsHY1hd3z+7X1U2bLbMV6oeASHPxFAD3dNCC
         q4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GB9nooY/0032I7QDBEim1H1M5FPjYvPHgEiEZnFAGNg=;
        b=3/VYayKcy0dcNe0h55caXBRi+aMFRocVjUb91c6Los4NDpIpynXXJ2ResOtXcN2Db5
         1vljQOKEsnDT+GZ7zLXSWwjnBZ81qWoMIMmbLGVnNFxwecVX4ede9ID8+SduUgJ9lIuA
         7yXBvkNic7cLRS/gdlesMCXyMX2jXPO8gX/z+OkWCbAw4E5ir7GGVaYR/4QgIRM1obK4
         zMFnxVmvnvckNrEH8Io78ejq/4XGo+plgZ3HwqduukPLJuUH2Z82bodzmVyFEdDFZ/W/
         bc7n3nP0IJmFYU1HXWr9OmOeRHG8Z/dcMjpM3CIOfnIOW4OjHoJIBiM7aqTb+c17WltC
         /tuQ==
X-Gm-Message-State: AFqh2ko/V6tncafLO7pBKB64xFp/fXSy2lNIwhtfPaQ3IFqb6eep5Br4
	4vSUnGOGCqHWOfT6qXCTm1x7XA==
X-Google-Smtp-Source: AMrXdXvYiqUilarfeeG5Coha/8Bw53Qje4MaEoZX7uWcPV3+8BALSVPlJ3LcoT+8Z9TPXUlNIL2nHQ==
X-Received: by 2002:a05:651c:c8e:b0:27f:500b:47d3 with SMTP id bz14-20020a05651c0c8e00b0027f500b47d3mr1330473ljb.46.1671697230892;
        Thu, 22 Dec 2022 00:20:30 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bj27-20020a2eaa9b000000b002797892025csm1537922ljb.137.2022.12.22.00.20.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 00:20:30 -0800 (PST)
Message-ID: <e9dc3019-af82-3848-b282-99ff0287775f@linaro.org>
Date: Thu, 22 Dec 2022 09:20:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v7 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
To: Yuteng Zhong <zonyitoo@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Wenhao Cui <lasstp5011@gmail.com>
References: <Y6MmDmbCDGtl3xQd@VM-66-53-centos>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6MmDmbCDGtl3xQd@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_002033_120511_FD691963 
X-CRM114-Status: UNSURE (   7.13  )
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

On 21/12/2022 16:28, Yuteng Zhong wrote:
> From: Wenhao Cui <lasstp5011@gmail.com>
> 
> Add devicetree binding documentation for the EmbedFire LubanCat 1.
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
