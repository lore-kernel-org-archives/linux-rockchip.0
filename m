Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C6F0C05027
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 23:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMv8pbFdUAbxK9zEhc64TEeuZNkT0elvaEfm84joCq0=; b=PLFiz+bGY7Esc2
	/PMAgp02iJ4H3FP4phdtXaC2xIFfx6g/+8U4EhoVjJRZu+AQdEIGL1M4cnJC9StvOkA8UZQANns1c
	h4jwUFYIXW3VESJHM6m23DPch/GImrrDyGFZl3b7p2H18e5QxNMkwzex1Ekg6EKYeo/RxBPFY/g0G
	hX/wxs8UcRPu3HP6cc7ph0U+N7ER33b2PIfGmfzl3ytSo10s2rLhhj6Pzr67lllGppbvdlb0asbME
	h4080yoy66E4bCL+OQeTT0vEGUu99Oyfxejnch2z3ecN132e9BHwtPH/yZrB4tfyuO5VwolCoqtVg
	OrJgaGEHuNcpR9rJyVNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPuGO-00HGvU-MP; Wed, 08 Feb 2023 23:54:08 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPuGL-00HGuC-9r; Wed, 08 Feb 2023 23:54:06 +0000
Received: by mail-oi1-f180.google.com with SMTP id t5so300360oiw.1;
        Wed, 08 Feb 2023 15:54:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WKshMAIjCQCZcUfxR5Hv9kCFKizrcIjGHgXak5rGdyM=;
        b=DT8MC32VWCZaaofRH31N916ueiZHq2xTKaMMoIKYIMSZY4636Zv34v5vFP6BrtoX4H
         pB8NuBPiWSAj6LSha/ep0o7bne+8wxCHB+a7uG8Uh2ZEmIhWArF19FXpDbqJRgB2FtwH
         qIRSQ7zl6A5YKJGeTbUJgeVQMR6jle4i70SKLGmHqCgRTcTdEbBG0r/NuoH8+fI3wHbX
         /xz5DHMWFeToZJqRzXYL+ZUyKQ2/QpwxTECChB0jghuGP05p4KyTgMeGhpw6DTYP0n5f
         Yzb722IFiPx9pjES+0SgznP1Vou8YwTuqq5c+i7CYdYNN8W6f+wwkiW0+BdnP2V+ECsP
         /8zQ==
X-Gm-Message-State: AO0yUKX4iQxmZ8U/L4l8pAXPtVBmrUkKZ4p0gmmDyxqWwV3BkJxHfo2I
	hkC/0Nvr3qL0PpGCGHE2UA==
X-Google-Smtp-Source: AK7set+4DuSlqvRBTvMTKw1U2Bwerb5K7w9NF4Oq99nh9XWA6g7YAl0/1wcx7qoQVStLY3kS6go8wg==
X-Received: by 2002:a05:6808:309:b0:35e:c8d9:5946 with SMTP id i9-20020a056808030900b0035ec8d95946mr3792717oie.46.1675900443087;
        Wed, 08 Feb 2023 15:54:03 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l20-20020a056830155400b006729fab72f0sm8798165otp.3.2023.02.08.15.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 15:54:02 -0800 (PST)
Received: (nullmailer pid 2943902 invoked by uid 1000);
	Wed, 08 Feb 2023 23:54:01 -0000
Date: Wed, 8 Feb 2023 17:54:01 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, kernel@pengutronix.de, Mark Rutland <mark.rutland@arm.com>, Kyungmin Park <kyungmin.park@samsung.com>, Will Deacon <will@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>, linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: Re: [PATCH v2 19/19] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3568 support
Message-ID: <167590044132.2943843.12824203100309803175.robh@kernel.org>
References: <20230208093830.143284-1-s.hauer@pengutronix.de>
 <20230208093830.143284-20-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230208093830.143284-20-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_155405_359324_C0A99DDC 
X-CRM114-Status: GOOD (  12.60  )
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


On Wed, 08 Feb 2023 10:38:30 +0100, Sascha Hauer wrote:
> This adds rockchip,rk3568-dfi compatible to the binding. Make clocks
> optional for this SoC as the RK3568 doesn't have a kernel controllable
> PCLK.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml      | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
