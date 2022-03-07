Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAC9DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 23:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V77XxLnZFuh/Gup/xYY9jq0sVOJO9v1pFEk2xciE2Y4=; b=b1ExLC9w9Wi0vL
	9aTHpQZvNl9xbzQyj0vpvE/Y5s1Tl9rZnyXIa5WWQO5nkRoRY7W6qH7VWzWiTnKF7YdEu+Kqb4ij2
	ZN5e1czibMGxsmJ5MstMQ/T70OOZrd+C1E66Sh8ky41MuAEoV5Cer4vm+fVQSjt+15tNmViDjZIPf
	3P1AqLE88OAvs+9TjoIle74cl+LzfJNM06aJwe4RAhFSZKIjJZvcvtxolqgKSZoMpULo65KHDeckB
	iCsg7JZmkaQG4OH3V8GlFc/GiDoYHCeNy3sh3jJM/s9FTfMH5US5V5MNDDiZ7MQJEIrxoWvvBOR8j
	z5nDokg5ak4lj8RLlEjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRMVV-001v7x-Vx; Mon, 07 Mar 2022 23:11:14 +0000
Received: from mail-oo1-f50.google.com ([209.85.161.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRMVD-001uyB-C0; Mon, 07 Mar 2022 23:10:56 +0000
Received: by mail-oo1-f50.google.com with SMTP id
 k13-20020a4a948d000000b003172f2f6bdfso19880965ooi.1; 
 Mon, 07 Mar 2022 15:10:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nkBLO48gzCNvI+IBClU5RK+7CoWNVNFHz100H8oEGdo=;
 b=nuXzlK6f3x8e+r3da5HnnijCfkiJMy12yQKG4lkVjm9LmiCoKIRh0KzEty1/VjAsvc
 ZkVBnieYTq40BUaLi0lS18ymxDcBTt54aE5uv8fcPAKxyuS9M/sYMOXF1JQ+OM3dirrw
 aYlkkAtEkldhEyznjQRTzvvzngT075BM4si5OhxRgv4QdAzckAqGhEjLkhY3OVGXjwok
 mTPAmKWcm2JDnSAycLzH+7wpRvKDKm2A+CztCBClwWbtZIenXXcedXqWSAmWiQlyKqFJ
 MzmBuSsMFrbvRYTfsDobuWL82XXAa/FietndSgJf4WsWi+x5APK0xXUjrfKz+TAFF6kT
 +Z3g==
X-Gm-Message-State: AOAM530d1pQd4NykTCw+dqcjAUn/Gbq/XEqZPVjikgAvLUyx5fsT92ke
 k9dNG3rWTuKO6MjHxrAoVg==
X-Google-Smtp-Source: ABdhPJxrx7Hu4lAbfCKCKJ+t3ikxlnN3bhxU5XMx/wSCqgQ4Orqy580XHAv9NV5wA7tJvI0Q+ACOHA==
X-Received: by 2002:a05:6870:b016:b0:da:b3f:324a with SMTP id
 y22-20020a056870b01600b000da0b3f324amr755404oae.250.1646694654501; 
 Mon, 07 Mar 2022 15:10:54 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 125-20020a4a1483000000b003175bffb677sm6309138ood.2.2022.03.07.15.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 15:10:53 -0800 (PST)
Received: (nullmailer pid 3435491 invoked by uid 1000);
 Mon, 07 Mar 2022 23:10:52 -0000
Date: Mon, 7 Mar 2022 17:10:52 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: jbx6244@gmail.com, Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/8] dt-bindings: soc: grf: add rk3566-pipe-grf
 compatible
Message-ID: <YiaQ/DbBp+Ljwx7a@robh.at.kernel.org>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-3-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228135700.1089526-3-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_151055_443292_699E68B9 
X-CRM114-Status: GOOD (  12.57  )
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

On Mon, 28 Feb 2022 08:56:53 -0500, Peter Geis wrote:
> The rk3566 requires special handling for the dwc3-otg clock in order for
> the port to function correctly.
> Add a binding for the rk3566-pipe-grf so we can handle setup with the
> grf driver.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
