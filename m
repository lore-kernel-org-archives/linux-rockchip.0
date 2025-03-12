Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADD14C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 12:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uy/fFXBwzpmVS3onBaj0xSSfem5vq2XYwyoWtpMb6VI=; b=PAODH6G5ImCKnU
	HjYBwbCrAexHQgZJMz7QsHz6QDj4o2vpvknYMD+SMK/3/jvMt+W3pwWmhp+uaPcz7P/gAqyWKt/vu
	SMqsEbQ3Vih/5lPIfFBokmMMvPJEeM4XWS+LlNddvIwNa7yHK3crSoVKp32TuVxT5nEIk0STejPQP
	29QGxbyDpdlOr/78yBdMYvqYfNeE6iGukVocb6DSYKW6eI+kolV8htOlBSJhc2bK8fcaftLFUWBro
	x5z+5kx04QaVfoAUnbLGjhVgDVB3sWEuYL8MpBsSms7ZTh2vQDbk2EuJsHSPNU8mkH/BUgkVArNDh
	uMH7AkvzaG+p76BPCcRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0o-00000008NWS-2xH7;
	Wed, 12 Mar 2025 12:16:38 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsKD9-00000008FMu-1BNt
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 11:25:20 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-6fed0620395so38671687b3.3
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Mar 2025 04:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778718; x=1742383518; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eq7CbEnzO7luGgtEaDN5nrJnBFu8hWWVpatVuYHiagc=;
        b=dPy/vT8XTk9S79x9+nzvTxKcqEuyi7edIfm3gmCJTbHvvJTHE6zErmpn8NzNY/+xXk
         URe++m3wHzif/QVBv7Z5IeT2ynNQPwkMuFyqmraifssTT+o/BHboVtoFr+s9Dv1xaXdZ
         axw0m9pMXbViy2YdGvnAY3Ol5TX8omw7lvmWhSJWuh3HYh7M8Qt3MOThj8AXngPa6MV+
         K2wyllh9i0gED9flicxw3sc+itbNrJ8c7nQNY2vrwduNWqmvZ5vtV3n8eDec88jE8SzE
         imNWj8S2chHsHnIv1ZinS+ImXzOcYsFACHoESLN/A/hqe/TpkYjUpC41BYZpQcLaU7/q
         FyxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778718; x=1742383518;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eq7CbEnzO7luGgtEaDN5nrJnBFu8hWWVpatVuYHiagc=;
        b=HNIQtlYYK6798KZIpjy6DcTYe8QL4hg9w95fqpQY3makZCEiOxP0YuGXO+2k4jFHi+
         XJysEX+ERobyN2zrvb1s2ZV17Q4HF2hhcGOf59olrS8zXn4YyHlGGnrABmW/aa2YIFrL
         fOx66/dAn5dytpEuLZS0Emnrap9/UeJS7DhmCph/JquGjzhSMne/xHW4R7i+DTAjcAek
         PA6be5DbLWdKjt5EqaxTUaq7rq7ZYGgUeJs/XaYW6h3QLoCSzoVlqrmyuzmzzNoSKykT
         p+wVWL7/LNmOO1Sk3DJbLiBrPIXMLbrnsVqwDKM7bf5+9yAuE3Lf2qbMI0RapMLwLfu4
         XlnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoV0aD3dl2+5oh/N7Tt2fbbrPNLwJUaBjc+EJyTLbXVUeVqERqpr+Bdjmq+3RcHhraRbF6ym7bH+qOCF2Svw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzFZQjgb5PHtvZMAQkg51+mNjo3d/XuXKmtKsKLDgC+aZBXg5fE
	vL3CkI5Z9ZXM2IMhVQrLJzgvXDcm7fVAFeXNeXAZXDAuW1AMaz5VuLgCe7vnwu+vYYUngG9P+ZD
	LbSBBFg1ijHa1HbQdclXU2+ECdyDtpgQsdX7x0cinrMNvzCL9
X-Gm-Gg: ASbGncvBmoKZyNVYB290Jtu1t590cfJbxx7lLZFbpDRJNpGVX6sL4ie7Fr7wQNPotMj
	Y1ze+7Nd+uhKrj2zk1xrGx5tlXaB/ytv3fcDw94nA4EYm40orkA4o/AuC/HX6vkqHVd9/watHnu
	fKJFmONgkBFeZxI3+e1XsFp3iJr2E=
X-Google-Smtp-Source: AGHT+IF6eG8PozRnESEd+R3ZnvGLnXtUo4BkvfgZwwoCUSGgHtU5TC7KInrEna3NWKS8wRzqC2uVDFF7ZV4wfbroPfU=
X-Received: by 2002:a05:690c:6f12:b0:6fd:9f44:f3ab with SMTP id
 00721157ae682-6febf2f2438mr302004087b3.13.1741778718231; Wed, 12 Mar 2025
 04:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <20250227111913.2344207-1-kever.yang@rock-chips.com> <20250227111913.2344207-3-kever.yang@rock-chips.com>
In-Reply-To: <20250227111913.2344207-3-kever.yang@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:42 +0100
X-Gm-Features: AQ5f1JpJoF0WsaJEsGs8Ev2GK1W0qmOLgd16kceh61tUecpXUlKoJF3fFSj3-Bg
Message-ID: <CAPDyKFqmODGkWPA5Doc_6HsfihxnoABzu_1QvR=03dqXZRFmpg@mail.gmail.com>
Subject: Re: [PATCH v3 02/15] dt-bindings: mmc: Add support for rk3562 eMMC
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_042519_321751_C9C855D8 
X-CRM114-Status: GOOD (  15.62  )
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
> The eMMC core on Rockchip's RK3562 is the same as the one already
> included in RK3588. Extend the binding accordingly to allow
>
>         compatible = "rockchip,rk3562-dwcmshc", "rockchip,rk3588-dwcmshc";
>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v3:
> - Updae to fix dt_binding_check fail
>
> Changes in v2: None
>
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index c3d5e0230af1..2d5c9931f623 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -14,7 +14,9 @@ properties:
>    compatible:
>      oneOf:
>        - items:
> -          - const: rockchip,rk3576-dwcmshc
> +          - enum:
> +              - rockchip,rk3562-dwcmshc
> +              - rockchip,rk3576-dwcmshc
>            - const: rockchip,rk3588-dwcmshc
>        - enum:
>            - rockchip,rk3568-dwcmshc
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
