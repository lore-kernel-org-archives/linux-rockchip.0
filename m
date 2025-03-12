Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E63C28B2F
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 12:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bor/fa9javG0F93SZ0yA65PWB39pIodc6Zl9CzkmBDc=; b=YTE5S2DBAb4rMN
	dP85VevtwWuY7ADgc/aG3aO3a1BPdCUq88JbkztMI1NTluVrij0pujFmpr04iDeB3Dj8T+pwJashj
	B0PHs7Pkt/oXUX0MvaNLnWYquTYCkhDIxaLz9zhu2Hdu7NQNeieiO8ulcnapcjhagEJECFDkjaDWM
	IWy2EFtwg4bnzUZ0mXLxPL9VmIVoN8JaFuqHW+0CBt8d6N7HS1cfmNOc/D/7Ly1PyOa8No8i2XvPK
	H8wTHsau2ryYEZ79+MeqmFbKN/SLhgP2OSxyfYgyCE/9Qiz5DYtNHOBsshBfBSAgYXldNCXNOvH6s
	NbDQMuFZo6MUEJ6MupPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0p-00000008NWX-0CTn;
	Wed, 12 Mar 2025 12:16:39 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKDC-00000008FNZ-2sGq
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 11:25:23 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6f754678c29so65615327b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 04:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778722; x=1742383522; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/EF0zDFUflzONesty7VuCi7dpM8v0C1RgMUVQ/Huc38=;
        b=OdSvUm2+S1NXkynaWCPxPFsFwZQ26l9t0iavsLerFwg7h8ziNaEKwHLjMszg9QYUQ1
         tI8IzTGVGumsvFDzbO3Uf8AETJOmwTMmjT+bWaRmCD9WO2FZwQ/EqQfq9vbdJYo0TdV8
         eWIFXNvEdzihF84Ef7pBx05mXiB4eGSEywvSMUcLRmk6kn83fLm4Z7zFRNDcRsHRRIE6
         xwKWr73jJd6azjIZT+whtQEhPyxywWC0aLCCfhQ/zZmPcZ+vyCwIKtT/xxrbigNHsR5R
         hVuOwPbbKSbrZ7WBXXYo9UO63k8rfsRSmDhiYtaqjet30/F4hEtp7VFbTmls8PHZt3Hr
         nWfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778722; x=1742383522;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/EF0zDFUflzONesty7VuCi7dpM8v0C1RgMUVQ/Huc38=;
        b=h774qmv3/cdi21DcRgm0O39DKil1bUJOSrqVMS5A23umX1PdvLpnXd6trCzMl7w5Rl
         rJfaWKJwuEu/oBvu7Q5pR1kVkbUSbtHMk5GMp6d9NdJ7EyXkbPe9ZTpKwJXIJkS13Qd1
         Ywo8uFVMNlimoNwX+5qlDiCihGNHjzjEp64S9aHxqCPWElwWTlzE3Lm7YS8w9QiJXlmN
         ZmYR1zPZGhatZqr+qfd1bOQr94t149hdxXAtxisgMjyo5TohSgJrW3USi2P59LDKGNxV
         +/eEoLMhRu/+1Dd3LyVh6+hKx+FCTP2jH73wNI8QzZwJwhbvgS8rq5wp8TxHUPgAXXJ2
         23fg==
X-Forwarded-Encrypted: i=1; AJvYcCVSbmp0oo1o/bpZOwe0Xev5Sfm1TZwf76TgZXF7A3QXbG3++oHCeydjyXiphqlFvJyii6OczpN0+x7cYXy+xA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzlIcjVG+rk6PE8buh6+PLJFKSRuw8j52Jdewq93XPJJtSegge6
	X60DN+HiHKTFxrQFAF/ICkgFvLrXyKipmuQt6kP/zvqJEmGkZqapZ750KCgsfo/I41Mcrd6qlow
	3JKHhbW1oc8q2FCWzxaVtvjk+pg7uf9r9+jlqiw==
X-Gm-Gg: ASbGncsocwP6gYGeWBxKkVCLaMuyQDko0HP9kjJebB2jI5/gYOEayHAikH0IQHJlZqT
	SzwaoPk8Y9lY+O6fZOh4QZFTLVuSg8aLZdHk4uSOuLnUDOco+b0QM6d9q3THy4rZqrjeXd7s2bM
	UZgQd/aafKOFTR2laKaHpgGStrdFk=
X-Google-Smtp-Source: AGHT+IFqygKUb22qwAr7SdPFa0reMvPuoDMxSiqht7LJBAA6dNVB//vX5+hUcQlzt9SsFOYTACa28ZoSjTZLQK0COho=
X-Received: by 2002:a05:690c:7441:b0:6fd:385d:5f10 with SMTP id
 00721157ae682-6febf3b354bmr296734367b3.35.1741778722003; Wed, 12 Mar 2025
 04:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <20250227111913.2344207-1-kever.yang@rock-chips.com> <20250227111913.2344207-4-kever.yang@rock-chips.com>
In-Reply-To: <20250227111913.2344207-4-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:45 +0100
X-Gm-Features: AQ5f1Jo1-FHRoh7DeYJjPWlq5FRe7dVaoDojoDTMYnsv82KnWlepC9mm2gadUoA
Message-ID: <CAPDyKFqZeup0hKqeHFV6qOMpFYZLQOdj3xT_6PdSNWJiW48fsw@mail.gmail.com>
Subject: Re: [PATCH v3 03/15] dt-bindings: mmc: rockchip-dw-mshc: Add support
 for rk3562
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042522_726602_68ADBA9A 
X-CRM114-Status: GOOD (  14.34  )
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

On Thu, 27 Feb 2025 at 12:19, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> The dw-mshc core on Rockchip's RK3562 is the same as the one already
> included in RK3288. Extend the binding accordingly to allow
>
>         compatible = "rockchip,rk3562-dw-mshc", "rockchip,rk3288-dw-mshc";
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3:
> - update commit msg
>
> Changes in v2: None
>
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 06df1269f247..772f592291bf 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -38,6 +38,7 @@ properties:
>                - rockchip,rk3328-dw-mshc
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
> +              - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
>                - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
