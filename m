Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A083EF4613D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 15:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/6vhZ16NNzUA564vt+hrZMLAUTc4xsVR26EYq0UVKo=; b=F+dNa8Qv47vQDD
	ZIjPF2a9dsunmUvVBju4+O94vAtv0rE2htbpqUgu5v4e6ue/0FenXPhQin0/c0b2w2DM52XnT+c9F
	ZkkF3kemhAiMHA+3B3A3x5I8kj0i17WvQKsP836RFv44e4Nl3ykRvOU+a/mb2IMe4w/hklJUBWkQU
	X1/Wvyo1Zt2IKogAO9ivg/Dn1lFU3kAQlXwvak8NX+d9/qLzMP8UktKR2PxuF2Q1VR3d2NMJ1yrCD
	l0IRVeFm7aS+NRKmt9K6uUn/78ZifB2WZWIHIcbhqmURWemIatYSfb7SGQC7NgTiKW5qYjb63zv1A
	J8CYpIzyAvJJg0vQUCyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4h4R-0000000H1HO-3BQy;
	Mon, 23 Mar 2026 15:19:59 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4h4P-0000000H1GQ-1J1t
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Mar 2026 15:19:58 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-59e4a04f059so2571303e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Mar 2026 08:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774279195; cv=none;
        d=google.com; s=arc-20240605;
        b=dHC5crNFwytt14tOL7sZ1S3uHOCX2xWqswAjbZORQvWji9xo+dr6/1WpIDw3Y3jXNl
         s+wb5lizNwnTFBWCfhVAZgytSshrwyMfuRgHC68tQTgttw8N5b0XZL+Ix1xgH17cOE1K
         bOGy70uBBdkTpI0+XqeZxWSv8G0cHG5lUv6FH62+QkbJl8iwEg833RGpO9JIHQdatoDY
         4w+e1wCiMg1izBKvSIVdyFHYjrkWWMSFSZp1zW8Vh2MKw6V07HGki2gVAAZ2D+7FITMF
         AcObScsqqxDI+fSbJ+pzY3rC+o5k3p79+f0CWJO4H7bgNMoZpNf6O7Bzmd1EduObLhc/
         8Jpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e9m6IagqbiMUTJX23Qe4eCI6DILlg9PmVieqm1cjUqY=;
        fh=5q2XUBB4HBFVN+v3/W3oVXzfX4UVWs1ccUVnKbl+Uis=;
        b=YDKsflI+4nVcda4daupXd1ngzBD6CTV8o/M04AjqGXJcLX8YKvmeu9+i0/hNrhjV2O
         1Gc/DWeUORCSO0ynkzxNIaPsLkC0hpXAEikcewHy1+aU7KhtAIF2+13C5/+9kBz3sGn9
         KtrYjxvfC2qGcGPdHSEN12xPEm1QSKiflnyLyhZugUp7YFpFdnX4Xiq5cbEflQpBjPOo
         WAjQ7ZUe/c66CKKzTMk8tVkwBaBr0e8LTPYviDGIbchuTIIIf1Ac02BWtHdhk0j1g5uq
         OEPdvTS0l8SuVubnv0Qs164taYwPsjqc/ThAcJdG9ykVYgTpXnqrlRP9lXLkh6PYrApF
         Zwow==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774279195; x=1774883995; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e9m6IagqbiMUTJX23Qe4eCI6DILlg9PmVieqm1cjUqY=;
        b=sLOQjafbqWZH7WpLJqJDHyibjMYZkWRzVYY40vDz7KRBx33LDRg50DEevW2TLWnW+v
         pxxOt7yzzOq2d6SKw5oBZmoknttLnaoAI9th1CAFZqOuRIIDl/JpS4YoMQcnOR8A0E1l
         s185oFEfvjI6rmss34A5JVXHOhH/LTT/Y9D89hWPb4nzqgHAQbuYLwc/j7+jpyo4AH3a
         mcOyb3hSbr8S8AMDcceAs4yzNB/U9Qd75cvi4M5aRu5SbdVmav6i52eOsf5Iv7FjjWfT
         ooyw0VsqDEqDZdN++d1YzlWxJztwv0Q/o0Menf1NIbgO3xzcry8FynFdRND6tkcDZF9Q
         wi/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774279195; x=1774883995;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9m6IagqbiMUTJX23Qe4eCI6DILlg9PmVieqm1cjUqY=;
        b=J6RCMAeZELT1lIzSvVJIQyppRhzLMKE/m78ozg8ZVFCVCnx9/whUO3I9qa9tTFbdmo
         qaHZ3wPx2CZq+oB7CQVHQHc2ihwmyXe9ZNIGc8xZ933e0g2fwXbNvvd5ZfofsD6v/6lc
         xD4h37swLe+L4PvYlcsXHsGRZ4RC+CVKNM+RNZN3DH4U8XkgrVPFwBaooa9opqt5H59Y
         SB+b0E6kCnfNL+m2k+X55WTFzYwwAOFWCJ/YnW4Uyxyld5oR1okk28R+fqEFbFdVgmkh
         q2VJLbbHP+z32VTzVcZpZMrxwt/y+EK5etf9FadICONkFWrqHaQADmabibK6qxdXdDk1
         cakw==
X-Forwarded-Encrypted: i=1; AJvYcCXCbz9XL3V7yUHQt3lYDLsqFjCub0l7IM5uGkQNkPfwrkks9peBjoEEzbyn6WvP+kSwgm+hwTiGV3YAG00F+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyDViMMsBGM3zrg4t9l6HWfCsYWkgu0X+i8158gKhyc2sh3eJj6
	5JqLWoF8NxkoO5K5SZ+4KDoPqoPQQ7ftiiCv8tdcbccJpmxC023NHx+wqP2PV0KWsd8P5c/Kk1Y
	GegkeXLsm/tXmPQoI6Js+3HAZcg0GjywUuWmhYRbxJw==
X-Gm-Gg: ATEYQzzG6bC3Mpz6G6cIEtO5HgL6ChnAXVW2uuoyJE9jqSJ3CO++EIQ/LEC8KzTt6sP
	IN0ngXL4Yx5wRtcJkE2QuFX6wVKTeuYyrlEH7+XH+gxiW5HJRT5QXOPH3c7IXhVK0QvKJbAxwMw
	ps/axZmey8OnKKV7qelVmxAZWs1xNpBbeZ3pkOim3WMLrnVUOd9oR2xlzG0aJmHLLegG0O+6fka
	CAPZX5LcrynXIk78Xaa+CasPbpCDy07Q4uterscAKkEpSKtFmRbYOulvDUjWjFHCuYUrl492p6o
	54MDIzI3
X-Received: by 2002:a05:6512:1288:b0:5a1:4017:18d1 with SMTP id
 2adb3069b0e04-5a285b54ea6mr4675867e87.37.1774279195001; Mon, 23 Mar 2026
 08:19:55 -0700 (PDT)
MIME-Version: 1.0
References: <20260313130835.708066-1-festevam@gmail.com>
In-Reply-To: <20260313130835.708066-1-festevam@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Mar 2026 16:19:18 +0100
X-Gm-Features: AQROBzCNP8s-Y9NKf75E5i7SXfCEWFK3Iny8BNioMSMMiWmWo13eeXGEDAPT9OU
Message-ID: <CAPDyKFpGo6aHh3qjT-cTT3SbLF8F1Y6voKEmj3aT-KqK3yHYQA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Fix the RV1103B compatible
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_081957_376213_86329ABC 
X-CRM114-Status: GOOD (  16.06  )
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

On Fri, 13 Mar 2026 at 14:08, Fabio Estevam <festevam@gmail.com> wrote:
>
> From: Fabio Estevam <festevam@nabladev.com>
>
> RV1103B uses the same DesignWare MSHC controller IP version as RK3576.
>
> They have no "ciu-drive" nor "ciu-sample" clocks and use the phase
> tuning inside the controller.
>
> Fix it accordingly.
>
> Fixes: 517b1e3c9455 ("dt-bindings: mmc: rockchip-dw-mshc: Add RV1103B compatible")
> Suggested-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>

Applied for next, thanks!

Kind regards
Uffe



> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index a75209bd2710..4965bb518c54 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -43,11 +43,14 @@ properties:
>                - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
> -              - rockchip,rv1103b-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
>        # for Rockchip RK3576 with phase tuning inside the controller
> +      - items:
> +          - enum:
> +              - rockchip,rv1103b-dw-mshc
> +          - const: rockchip,rk3576-dw-mshc
>        - const: rockchip,rk3576-dw-mshc
>
>    reg:
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
