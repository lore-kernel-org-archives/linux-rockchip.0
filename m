Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A975CEA4FC7
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Feb 2026 14:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhS95YCs06bJzjVpKLgafPKS/xx3upAn2paXwUNZrAU=; b=15/DDmLL0YmPBX
	BAq0pC6x+NBTJ87XIHR1dmAB8pYuVJl47gxYRfsRDrsUqyzH0XzdSMapoIsCsKPvkmRHC2SoiIUgk
	hP8Qnl3blhaWVI4MRNRc6PhvX/CcS+sNZhHXIJbyB+9qX3+Zmej+RgpJCUMKo94VAVJTU4lsgr6vb
	2DU2BBpOH0Rqwu49V0ccgq8bcoeeqTkqAg2qNUpNCu7qgM7Q426xnsv7AHcYwwYOoCGPrMcTLp4AF
	z1UiwqV2DMy74pusEm36h1eYsXwI2GQPovCp5azFozxCgxYk64d8tTwLbT0/lIQGmn5xUfWttbu0m
	ApZonerxoPqDonsYOUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuWgr-00000000Rw5-1Nvq;
	Mon, 23 Feb 2026 14:13:37 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuWgn-00000000Rut-2thp
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Feb 2026 14:13:35 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-59e4a04f059so5622022e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Feb 2026 06:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771856012; cv=none;
        d=google.com; s=arc-20240605;
        b=EhsYYz9L7hgZzqwXK6BtDbEZ0YXmAW8MFJ/xFFjcSYw09qzsiQFLdeH5KU3TzO0xW6
         HzvYDDGJhtw1jKPCUELF76AHTi01B/woEWbf9s46WoajXG+nrmnxdmg0KoU1hx/el91z
         GbwnAfA/LBaq55xkEioCJa0xDFfr443+BxiH/esfMnzWbImgKeoggoKJU8V8tL4p1Ode
         2KaQSnmKFCFzAYpE1oxuhtCQrusUDfeOKLEX/8pyxJq+6HvFKv/rAtr3Y4hfHzBVB2JI
         lqJPbT9xVZbARdni783zlDGbLw5XjZeyd8k9ftnj4b8zMnF5cqTpsbkDyeP5oWRDddBC
         BtxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=597mQmEUNbkIDS8qk+5/zMm26WxivzZ2OThkmt6poH8=;
        fh=RmYg1WkI/jfP4oRnRdsMhF+yjJWza4187wm9SWqwMNI=;
        b=a5ztOWT4v3CkpbgMvVKhyP75X88EQLquL5JdOMGkCYPn+ReL6l+v/fRodhwtazHOyz
         NX7sG4FLQ5mg1y4snOKphmFYFFc7b+2KjZyu/3lFWuI5w01Zu93BW4pVsBCMiULYhKAT
         aK4jxPvLW29sU5yNOGKZCymxlWaD3awAcvVt1kO2k1rFsssiIlWbBcU9nyIwc74CLCyp
         CDwGWsX4V6WGP6qm4+I86vqwpLnSyONMjT4o6Bp6MHeU9oV6HNRHWsAMSveQYoBYgHY/
         tRjB3TLEeVuQ145kh/ZvnkuXTOqHepqiYnJaRu3SVeAancWLlb4D4MSvruSrqADU3JfG
         RQnQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771856012; x=1772460812; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=597mQmEUNbkIDS8qk+5/zMm26WxivzZ2OThkmt6poH8=;
        b=Qf0tutqW/Kr8TsMMo6/BG23XE4ico1d5EdY7a6uuZmsV6NBMnWcXrSmYFCamlMaRy6
         75pIX/RJWJ7NimHcAOTha0ASEZ4UlYskylkWXlP0fPdtb1bn6uc0osyigK15PlB+G3NT
         rz8S1LKzlX16C1VKw3uGhU7tGT0Ng5YDWlv7zDV40u+1D/CbomMYnjcQqFjl88DKb+xJ
         iPzXJaiYrDGHcL7HzQVwEH+Z8nKxfpxNqQmQQcWTFueAUblP0FBUD0tLMCs5lCvVzsxd
         l2mQdh+qaziVe5VEFGVv09zZH0O8xfrQKu4Sb29XoOvnzGQV32xtHoymC8VQ3HFb0LN0
         NsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856012; x=1772460812;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=597mQmEUNbkIDS8qk+5/zMm26WxivzZ2OThkmt6poH8=;
        b=t+KKdEeikM0OMei1V1Ixv5VMi7K7+EOp6w/stYDMlXMtCToo7JPcqmDMM2pkQF9mHG
         NBpauxAKxJntMfbx4zutmUc1dXeBhTUPf5j5+U8pe8pBIw6EpuK7gl4ZBEPz2yMvrej3
         CHyV72eQOQpEP9IPz0PfZtzwTAb9fJO2qaTxR+7jTptmzLVYdljusiHbZ+jZEO1hdATK
         JXJxZMNOU6aybutJdqNkFsz5S5C5ywk0hk9EUGBF7MKUMwyxHT5PaN2Lf3iTovbSFR7L
         3glfwaATiidhtNfSWi9SeT5b3EuVmZZ2hFN+9sIn9p5zU0Sul/7dDcs/y2ACqOAR5tNT
         Odjg==
X-Forwarded-Encrypted: i=1; AJvYcCVo+FDXZmgdeskye5OgQSUCJtGawEX7GPPRwuhMcqb6z0D0zaDEwN9XcqRECmMz9xAnpU5RVVh+hK1LlODbKQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcZRunmHYoccsu7TvUKGiDC8PRVTg2J5Fli+sG7lU2FFgdULnM
	Jc+Q/DX/n0drJwwPwp/M1CigWAywgi/R320qqQZK/HtV4EH1JDxo4++WR+hCc1zlJSRg8vAmngn
	dYG95RrA10eNtlLggVrVWHNxsq6dnHdu/FXMHvZ22TyIPv5rT11+f
X-Gm-Gg: AZuq6aIa4HowvMCzRmCpuQuyZnkCcoCSfa4q4u25OLMTkOy22ZoLVUeOWGAicJzzZHY
	29HKp3OpzFA2UBxxVJ4WieDQhr3vminH6eXULwP1DcMZKgZleaABcEvGNhkxYN/+d9hov8M4p3T
	+8tB045copZAbW33iFPLin+cunV1ZM10si5RZvSC76iXo3QTY3Ff+lZfCoR8PyyIISKE6uXDN4w
	nJHH2PqfvVM7nDvh7+wPj9bwanwcOJBxYzD63Rji13CsnXBLdnMM1R3nuBF3gJCBesvUa/tj7Ho
	m8LNfX7c
X-Received: by 2002:a05:6512:64c1:b0:5a0:ee0b:c263 with SMTP id
 2adb3069b0e04-5a0ee0bc30emr1881073e87.3.1771856011225; Mon, 23 Feb 2026
 06:13:31 -0800 (PST)
MIME-Version: 1.0
References: <20260207131041.2833840-1-festevam@gmail.com>
In-Reply-To: <20260207131041.2833840-1-festevam@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Feb 2026 15:12:55 +0100
X-Gm-Features: AaiRm51IoOEGcQThAZL7Wz9Wjj3_Ac4tq7Xg58f_oxy_-Jx4aKch58W-NfM592A
Message-ID: <CAPDyKFqmO0DEnmYO4uZEYjDErk+sjH1D8S-djvc83KCETf+ooA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_061334_973276_20456378 
X-CRM114-Status: GOOD (  12.38  )
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

On Sat, 7 Feb 2026 at 14:10, Fabio Estevam <festevam@gmail.com> wrote:
>
> From: Fabio Estevam <festevam@nabladev.com>
>
> The RV1103B uses the DesignWare MSHC controller compatible with the
> existing Rockchip RK3288 variant. Add the rockchip,rv1103b-dw-mshc
> compatible string.
>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes since v1:
> - Make commit log more concise.
>
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index acb9fb9a92cd..a75209bd2710 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -43,6 +43,7 @@ properties:
>                - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
> +              - rockchip,rv1103b-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
> --
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
