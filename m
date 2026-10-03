Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B7C8CA5FE3
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 10:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=itl2wBuHJ4LRaw06aTcF8s1A4WX3wJvFS0wkwxURHho=; b=DPA+qp1RkxlD6n
	HdW5d7StwqEZGD+XTPiC5vCjsQm2CJE8z7Wk8BajnMlX7c24c59I/8zYmFQ5Iz66p/Vmv0ErjjmKC
	ZkUW1pZTHb/i1pzDAP5THi9malZOBrwsnImNEsqReZ2uIkyYV/7AJHkZUABZKrrpGPOzH53SgyuF6
	UNNH8k+Dlq23tI+CHSMKAJ2nPlr90BDJeILoDckzonvVRcaoIX8xXYKGiAuQ1kQd0vNkCHzMuRxtq
	ZgXhoDCoqpULcYcO2srrYutkU5pgUCsTvGmCS4fDnfmtbCVkLFgWaZyAbtKECKgWo7bFzC0MT/Bxm
	dscOJfx5z/x7l07CI/rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxFj-0000000DNs5-03Ce;
	Sat, 03 Oct 2026 10:46:03 +0000
Received: from mail-ej2-x0d.google.com ([2a00:1450:4864:34::d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxFe-0000000DNq3-3SqX
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Oct 2026 10:46:02 +0000
Received: by mail-ej2-x0d.google.com with SMTP id a640c23a62f3a-c2e320322edso75772066b.3
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Oct 2026 03:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791024357; x=1791629157; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ezx4xzy/gAlLbYrRv684J3BP0hR2VYyaFcE+9qMDACQ=;
        b=HNtFM2hjkKVvwekJppAOaEfCPRzfQ1E/MABiWIbgMmHQ3w4//897LBhDnAiLLmV3Ix
         MCMOIfMII7vfZ0V/8APovr9DyXXyyPSO8MGGdJ7Oo8dwaG3Q+fVzFoGNdgIVWau1+ejt
         S3T7hXdt8onFjp8uqVWKb1qFUkwKHMBbLgMjmAoveyvKE6J2Vp78rGht07bnAKT4FHP9
         dQbOJ4qWMxXQrOm4Lth6AcwWo6RDmBeOIGGzPWPC0db6uRoluSKiXzJ9VdlmHbjR1B2e
         Nq6N/rB209twwmQQTjt41BQc8uRf+AJ5LfNpfzM2ejDX1HMv0Wf/iagBZcIeQcSxIRo1
         zDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791024357; x=1791629157;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ezx4xzy/gAlLbYrRv684J3BP0hR2VYyaFcE+9qMDACQ=;
        b=mSoxBmUMA91auB9phDiee7L1wSapDI3lU8bFycGE6rksDZ5QQ8VzslwAG6cZMMhaHm
         jgN4Va159zAfEWRAlYcrPfFUjo507rflff/OjaLRy4Bh69Te28t8Qxdqy7N6qn2xxZxj
         5r/A5GvmykVE2U/Yk7N20ivrJoI/CkueJsfMBIRb+1uSHa9YqUNTASlNOfWtSMYOYUrh
         8up3e9w8XUjk2qbDGlmZU7dMmnjQYIUPVnwlj2LPhm2p6eGuw/esf3rtbiEpcBrfoH/j
         6jYATIHAAVqGxhAotRKvpyNHpyjvlW8/7QdrKWcsaTNDzLyDn9n11mj7Oj3NJbJ+tUog
         cLww==
X-Forwarded-Encrypted: i=1; AKwUvByPAeaB/SysDh8h54Q5stCZxFJMa+Ss0ff5WaPDc79hnxYAZZnQQGif45bnrOoWMftCKwg3u9T/gokLFflUMQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJBVXjyCkx6HDhkB3zRXG8Q2pJMgm/TJIPV4/h/Yc7mJ6mL6BvE
	5hAylpM2yOuxKrbamFle46YtZTcnEEv4rq1ee4Kmsz8xZJ0wSQeFbj68gZw01wG8fVM=
X-Gm-Gg: AYBFou327ArGZdsKoVnVlqlVWjmuDdo+r9QN9GEieHPA4vVOyNpkuhOXrqAgbP/F7hQ
	IxutTy5T0MuLXFc328Eo3Kmriz1EGzcsSUn0QgTqpfrofGyl4cudNUIp+8d25z62I2Sr2eGMhNt
	Gu5yIpXl9kD5XrmxssIfUrd0BiNK6d+gbQcbA3mEiCloTMhXHPZGVE5/e90ytp0aGlCngfzPLtm
	wEe0YX6uXcM1ga1vk6qVcG/x7kLyuV2YJsTmw9NldnJIsZVk2Ty9gCmDTbY7Zvoj+gPMAbHwYm2
	1olksnesubyTnACpuCT8eGcyFTSmAObPdnm082BNc4cr/jFtS5m3EE9HiElXU2oBvSLEXQho9mO
	NQvZF3rM/r1Nom4hWSdOfHqoVkZFM6rnM11wpdS9sLxmdMaFXSaZwTgpvH1wKIU+/XtUOvVrhkl
	cBHN6U0kvnRlv6oWKl1hx3NdTHHaZmhUQ4UQ8SEdyxqLWOTMrfZ34QQoe9pwrIuBX1gCN3zYZGx
	NEg9IU+IQ8=
X-Received: by 2002:a17:907:6d24:b0:c2d:ca8d:435a with SMTP id a640c23a62f3a-c2e4af80457mr432580266b.38.1791024356730;
        Sat, 03 Oct 2026 03:45:56 -0700 (PDT)
Received: from [192.168.0.167] ([109.77.86.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2e4cd26bedsm186675466b.34.2026.10.03.03.45.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2026 03:45:56 -0700 (PDT)
Message-ID: <80d0d390-a0ca-452f-b8fd-a7da85bdde92@linaro.org>
Date: Sat, 3 Oct 2026 11:45:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: rockchip: add rk3576 csidphy grf
 syscon
To: Amin Gattout <amin.gattout@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
 <rtlQmJQ4ykTc4dV6nFJIqsjY7h9hUEOCFQETkvIiKG5GSaRI0L45Rmi2FuzpULqJC8hFjPE_3D4kyuRqgJNOdA==@protonmail.internalid>
 <20260915-rk3576-dphy-v2-1-b56e68b54b8c@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260915-rk3576-dphy-v2-1-b56e68b54b8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_034559_776523_DAF56DE6 
X-CRM114-Status: GOOD (  12.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15/09/2026 11:42, Amin Gattout wrote:
> Document the syscon compatible for the General Register Files of the
> RK3576 MIPI CSI-2 DPHYs.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
> ---
>   Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 7bcb4e2f47ec..e94c83d7c138 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -32,6 +32,7 @@ properties:
>                 - rockchip,rk3568-usb2phy-grf
>                 - rockchip,rk3576-bigcore-grf
>                 - rockchip,rk3576-cci-grf
> +              - rockchip,rk3576-csidphy-grf
>                 - rockchip,rk3576-dcphy-grf
>                 - rockchip,rk3576-gpu-grf
>                 - rockchip,rk3576-hdptxphy-grf
> 
> --
> 2.43.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
