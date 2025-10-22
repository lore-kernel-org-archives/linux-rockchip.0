Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B197CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 09:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uRy/rkd2Rx34vImQvUt29UGeIq/9IttrLWx7zR1M6k=; b=qwmcZ1wjoJZKBQ
	yCDRonWBT7HCdK3+Nco48qCZ6Ec2sotjwe/nSy22uEFB1S5e1qHAkWhtoB1Ux8+YX5mfB6+mpdnXf
	qfVFznXUs2V1H1D1ypXvIzfNzvqg+Cp5eNPrOOVyY3UrKFI5mjeAXGE2907gZ35vtxaLyIetDfma3
	pFoJQT9vxUMT755TzMLaswVDcpniUG22nBa11Mxbo2DAd108AvEM//F+3Pe50CcBexIwnsOBLL3cf
	eWC7SOakSqoO2DE5okmefanGyVoKawXmj9+GD29ubRwVRyrT3hlaR3pMc2njYWeaeeMahBBKQoMhM
	yRhfhrAYo/0cvVrh5OLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVYR-00000002KaP-3e0Z;
	Wed, 22 Oct 2025 09:54:51 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVYL-00000002KY1-1K3R
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 09:54:49 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-63c4b41b38cso9552061a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Oct 2025 02:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761126883; x=1761731683; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/BE3p8f/tb4AmnzEBEYSIcdIiv74xFJHBlZnCilZ3pE=;
        b=V/XgdkPAnvgYnaRd+q/BnulTftZdgT6vr6dhBk4scmcvppP3ct5XABhjxde0wlJBTj
         0BDKeCbSMKg3cJe09k/Vs9J75uGM5Y3A1Sbb3cKqswF+s4kBs2SPiL8Xc3Lrji+QYS5g
         OPB+gRgr8ex9wkoCODcSEeqMWxxmf99JE1WBifr1d7idv2DbIbkPeLJ5Mw4jUYF18mqU
         wYKS4f7UqwQcaoM3uS4gu3x6ntsoIoUxXHtDUQg0OC8lbVuhYbBoHg0z9jKKi7ySgtXm
         5feEUvOGTziVcJe7EGJNJOR0qZ2iIE2GocZHH4uR9ZOYxTTAynffoqhCzRiTrM1rYoIq
         Jb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761126883; x=1761731683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BE3p8f/tb4AmnzEBEYSIcdIiv74xFJHBlZnCilZ3pE=;
        b=IHdlW937SBygOmd9182YCx4HwIzT4WGChUFwFWf92H4sUanV0u7jKUvZtPVzqYGRWZ
         MlbZ6F50snXJJPUKdyQpCpMxrvDlTchaPeWEJlNpIBFm8A2KRZBFCPQQaEaga+5w4Xcg
         fn9LWYFPzCURd8qrfmQf0w1SyMq3eStayP39Hudj+M9n2ocsO/fXLCkD0U9r4w3cplDh
         C/46xWlCwmM48dLgA60ocYwylPeKmxga7a/5eMSh1sV2RkA4yZ8mYo0CXUw+hsDFFj4/
         6XIyOyqrCECX7zfPw//KaPr6qlmIVcF1mXmLTpCUQ9PIzsIKneyUYaRpgdu5CqyceVPa
         a4hw==
X-Forwarded-Encrypted: i=1; AJvYcCWES97UYMcWF2SajxbMke/2YDdpsaomvhuJVBK/+YT2Wnr+UCXVcjLS0T5XYC8Jv0k+KmHemrCRKktPwMKllA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzWxmbYhbAEkrBAX6u/kmFxlSUlydYhnbPjCLrG6m1cLbccXUOS
	9kG1O51aCTzyaWU1i0+bW7qG+kcha1gpWhoL5YVeje7nHcIPPVBvA/ivqb40e5B3goFYZCrohig
	Isb3wCa6OfAHTGHyOtNV/nDY//xI8Qo6s4QjdF8d1PQ==
X-Gm-Gg: ASbGnct6+e4rO5s2nfY8TB4mLlDbj1onOCBQCaFra0AKvbsadI5p+MV+0AFAhZrBz8K
	ixI6vMbsTMGJtlqHIPjn7fXeI7+mKNVJEQReBDMQP4/tTMNda8G1o56qe7ka3+KEc1T8/zgmWyr
	ejBKgsFpHQvCXD6RBUyueOXwyj9DW5H1Wlpv43YULc20NBf5hCmKLrTvn65SzW2gdQsyrq9pMSl
	Sn51fs+BMAFiD0TjDu5hWGYnGBULtEO6BhUwrAdNrgdVWgbzvhmG3apbu545iY5Ah13b3Iv
X-Google-Smtp-Source: AGHT+IGxvyYJRi71ypaY/f+2tvs/h/Gx3CtsJRVjqydJdRQpedqCN+n+dBFxLmYoHUas/Vv3sBj08NYXtnVui6clXA8=
X-Received: by 2002:a05:6402:5212:b0:639:dbe7:37b6 with SMTP id
 4fb4d7f45d1cf-63c1f63081dmr20417683a12.3.1761126883450; Wed, 22 Oct 2025
 02:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <20251021222955.193323-1-heiko@sntech.de>
In-Reply-To: <20251021222955.193323-1-heiko@sntech.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 11:54:05 +0200
X-Gm-Features: AS18NWAUdMZHC3UmuDzl3MkQoA2Eup4bT1W9-ZX5g9xcPcRU8J3IcH9rg1TAlQY
Message-ID: <CAPDyKFpGC292uOpWh542_=yS2XP5tAUWiJhj6tp_CPVrZ5VKkw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Add compatible string
 for RK3506
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_025445_508542_6E15E7FE 
X-CRM114-Status: GOOD (  13.92  )
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

On Wed, 22 Oct 2025 at 00:30, Heiko Stuebner <heiko@sntech.de> wrote:
>
> The dw-mshc controller in the RK3506 is compatible to the one first found
> in the RK3288 SoC, so add the RK3506 to the variant list.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index bf273115235b..acb9fb9a92cd 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -38,6 +38,7 @@ properties:
>                - rockchip,rk3328-dw-mshc
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
> +              - rockchip,rk3506-dw-mshc
>                - rockchip,rk3528-dw-mshc
>                - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
> --
> 2.47.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
