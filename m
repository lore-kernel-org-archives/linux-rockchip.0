Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99799C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgZcIFfADbXC1bLi9I9gz2zCJz6R5wgjq1L4IrQr0Po=; b=tQd4+jVmj1jEvU
	PJLyQ+CPOUY04e1n5KHVvlTJDeRrMTczg9N1ekKE0AoW83ObtyCIgGZEGKxZcZ6wOJwh4J7u6S350
	c1DeIrfRTMdNHP8MGYsvc28iIyjQD7z2kV/Y8zNW11bTmgrRSWc2E1oI6KmIIXHPRDMt4dsyGd9wC
	KQsQt9CQtFXeodwD/QvrhHq/5JFDt4qx5qTp/ajXPIKhiXPTDKRR6s0OSch4xuSy76T2u0brzFTyW
	xeVFd26AKxcOs/ge+CHpJfo8p35LnOQ/ehop3faCt+h4PF8d/5DSsW5NoWw7tsGdtNGwYCVOs3CWA
	TU+jkXrJcgSnx79t7lmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDpz-00ChW2-Kr; Tue, 29 Mar 2022 15:32:51 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDmh-00CflV-UB
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:29:30 +0000
Received: by mail-ed1-x530.google.com with SMTP id h1so21152327edj.1
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Mar 2022 08:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=IUZG8nVH/wwzYSRFhBM6Bw4xy9hGVC/KLREG9NrMP4M=;
 b=cjr33Kje+O/AXpHjsptuzskdm1/lrSk4O8oxogTwxmCCnv3srHLJbgdFoAdFwcrvfg
 +CBRCdDzPr6JsMufOO3PDmQ2Jmr2VCABDSyBC6z4jxSgjCXWTZoWnzT0Y+g8GCvMqG2M
 LQtwPKK67c/vQy0lL5B+Kq47R2uDWSXb1+PhtaSRsSggZ9aDqX8QE9x2SmgBqS7SJCSq
 3UFjnhuhd1POy4590PYxAq6ML3PPZeoUjCio3Zb7oynhuk7WNWCSniyExEVjWXRMTh69
 u8nVnY3OBbyl46z6Oqa2A7SuRZqf6KkMJ8ADI+sTaCzaNrhhjHedvL/lv43jnxrjuvxW
 JdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=IUZG8nVH/wwzYSRFhBM6Bw4xy9hGVC/KLREG9NrMP4M=;
 b=Ou/L/q/RThNgCrFUCLxKqvlt8TRDclx1Ob2SDpxdHDDdo0PDyORngFIcvnff6qOQn4
 ilWHAHuc0sTWVyfm4VcULW2Tknk7xsPeK+XlElRmJGFzUncoBRrx6LJledB9YjKFYHKZ
 J3jfxyPK8pnWN3iq/44WGI6t/ElMZ2JXYsYQKgga4ywcOT583at32D2sY+R602vDRxfQ
 WKsglzCSdLkLSZeKgY54ixrBx1S1a0bbIRtlbdVIzhsOWfDhtZ4DBlM0kG5qxHfL/3dz
 66oRTNDB1TUe7wjEVbBP53dYuy9G3WHPHoov/F0DkBmLrDRC8EtpJH5kQRnzLeh5VUs2
 5XEQ==
X-Gm-Message-State: AOAM530v5UISZpNYmdR2slRl4tKCr76PbP9A2wDtII2SysNq7qGDBMpn
 9B9JecmDIYqjwwlasiT/A6Jdzg==
X-Google-Smtp-Source: ABdhPJywjEH0hsTU2NFaukN9gPTvHZyJD2A7VAfgfWBig+OglKPC+QC42f4rDU+hm0oRiKkJ9d+IWg==
X-Received: by 2002:a50:c307:0:b0:418:ec3b:2242 with SMTP id
 a7-20020a50c307000000b00418ec3b2242mr5095016edb.229.1648567765601; 
 Tue, 29 Mar 2022 08:29:25 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 l9-20020a1709060cc900b006ce04bb8668sm7138848ejh.184.2022.03.29.08.29.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Mar 2022 08:29:25 -0700 (PDT)
Message-ID: <c3e9fae5-8e18-a272-8a0e-9022f23903e3@linaro.org>
Date: Tue, 29 Mar 2022 17:29:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 3/6] dt-bindings: clock: use generic node name for
 pmucru example in rockchip, rk3399-cru.yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329150742.22093-1-jbx6244@gmail.com>
 <20220329150742.22093-3-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329150742.22093-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_082928_060798_D3904C52 
X-CRM114-Status: GOOD (  14.73  )
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
> The node names should be generic, so fix this for the pmucru node example
> in the rockchip,rk3399-cru.yaml file and rename it to "clock-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> index 3cc8398fd..18a009311 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> @@ -77,7 +77,7 @@ additionalProperties: false
>  


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
