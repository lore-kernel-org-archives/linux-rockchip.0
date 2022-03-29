Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B3E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNu9BU4OpTUHbteOGCUGSVrskjg2kRGskiT1q8wPMQo=; b=F44v3KlOECw5ka
	G1sUZfi8jaF0IMqXpxezc4C5KpDbAg+npGTiIgySeCyripZpwixaYJ1A95Nz1fC9PPMel2RU7XtgX
	vr6SxFfldnvzb+C+OShzmG+2g2yzC15UFsQelPTBG1X5S7ZOhZx5CCWB4huFqnZimLZVPKTXp1B0Q
	0vnNn19plV2Qp3J1t95l2/EguyfBwNs/wak4+sgU/QxjwCuJwmB0OXGO2Vt1HZIHqKzLGumh32sKs
	Cd0upWixlUz5VvcFiT+k/TRAbu6LO5z0zF6HyTERt9/1MNl5r9vYFWHah/7w4EDA9j/wr29gE2xAE
	G31cIzLzAUDLxWyNJAZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDx1-00CkuI-Et; Tue, 29 Mar 2022 15:40:07 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDoW-00CgdS-AN
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:31:22 +0000
Received: by mail-ej1-x636.google.com with SMTP id dr20so35887400ejc.6
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 08:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=svO6+p4lvUcLP2B5A8gd9KTlZ89bA7C5UIQa69nPz94=;
 b=S7Q+7tEyKS92vmJzQdbwJTIdwM8IUJZQqVH5F4vBdWTA+Iss96J8tWXkSBxADDUrfJ
 MIV/aD22mrVCWixSz0ZY+tAddVj1ZD2+/5+cY7+pKABkqYfcr9x2TEeWsY1u5qEoI3p5
 0rO0GU6t600WtUbDmO8lViKU9N6ApTLH7pTQ+2+qSnu8CLGnkIFAn9BuU2xyVEFbnV1V
 fDb8N62cIeygJH0mIScVDbQj5lHkEno/K9WR2/v87tPyhfnU7HCyf3EGqd7ydY6STih+
 dAzq+6RgEt1E3lak7pN1y6qANgoEpLPPoxrpX/geH4Pu+Pv7IR26P7NZy+HPgIfS1dm2
 tcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=svO6+p4lvUcLP2B5A8gd9KTlZ89bA7C5UIQa69nPz94=;
 b=Jx5i3UWbqESwnq9KycCYf0DdR9NGpc+VVLGgH31BCGAOO82XFsEKELmh16wj9TXduK
 /Yz+jYj+BAF3206g2fDzB7x1FfmmYnfbY/6dcC9nMhM5RDLCJWmOAZYHyorN8GTY3WpG
 8aGwjJ/DCkfW6RCh+f3XpT5wyVYJndVqyjEsmN77+D0EvlbngJP5Kjy0GH86kQ5PpN98
 AT4jIvsaZDxxzJcmBUJ7X6Bv+lDgRIzSlXLot9FtzBzJLLotTeU5JyGBK5UgCiaiAAiV
 OaUV7Thqvu9a3k2mOX6NvmiRBGHpsYjfl3c3LaiwRyMZ2BLxGq5PDJeRtk9JYmeeqzVp
 6Hsg==
X-Gm-Message-State: AOAM531lw1ILAZYyVqmypJ+gcvPmHCpVm2YOtnGgcrhcJlSiPuoYLqpG
 mL6kR10a1uOJ29DIJn8X1yqfKA==
X-Google-Smtp-Source: ABdhPJyGbtpxFR4x01t7rTmHja9jPNp0Yhgf4v5BkuuQlt7LhCL0joyVH5KU90NB9zFEtkwk7g2rVg==
X-Received: by 2002:a17:907:62a2:b0:6e0:e201:b94e with SMTP id
 nd34-20020a17090762a200b006e0e201b94emr19225728ejc.730.1648567878997; 
 Tue, 29 Mar 2022 08:31:18 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 c2-20020aa7d602000000b0041997b3ce40sm7143124edr.86.2022.03.29.08.31.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 08:31:18 -0700 (PDT)
Message-ID: <f5bec960-3424-dd21-71fc-cab3a427cdb9@linaro.org>
Date: Tue, 29 Mar 2022 17:31:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/6] dt-bindings: clock: fix some conversion style
 issues for rockchip, rk3399-cru.yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329150742.22093-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_083120_420168_DB61E16C 
X-CRM114-Status: GOOD (  10.02  )
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

On 29/03/2022 17:07, Johan Jonker wrote:
> With the conversion of rockchip,rk3399-cru.txt a table with external clocks
> was copied. Make it a bit cleaner by aligning the columns. Also fix
> a description. Phrases start with a capital.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3399-cru.yaml        | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
