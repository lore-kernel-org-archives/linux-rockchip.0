Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE03EB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 17:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GBriLnJ4YmPo6YJPVd6JPXxY4JtT2O7AXx0Cd71owo=; b=WjTihiPPrW7YHA
	zIfZYo2xfZXIZGEN6eiX2q9y+JY7rlCl1Y8NxHPytRXyHUaaQOhAsvftjQLSM3BcJaeUh0qG1ER6w
	TjoC9CCYhf4IGVEcLrX+mZsB5Sv5j30P/z/yWQG361Tlq2C8nPKc9NlIdZwpJuBRDlpQ007/yPRia
	+t8Ae6jevfeNlu1wyBbOddgcqGLXFdY+14qxsA3HK25ojkdqWpzQIjiBXGRYjk6iZ2Pj1P21IDgbm
	qVfRp4HpXumGIwysBFWSZJfGtQaqDRo4k1NVxhwSKiDW/axqVFj5++WfVcLWgUVaQo3PXV5wSpAKI
	vfgOEx+Op2JMU6p0Mvjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeqU-00BtKp-0S;
	Tue, 20 Jun 2023 17:08:46 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeqR-00BtJd-0n;
	Tue, 20 Jun 2023 17:08:44 +0000
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-77e394b3cfbso123252439f.2;
        Tue, 20 Jun 2023 10:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687280917; x=1689872917;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJcsNw9M8GOd71NQMFbyfiNslmnbg2Ev97OtD/n6IA8=;
        b=Eq6+JMVqEACpdkHd9LI1dIlMwVCEQq8aDoWiNfqOh6NKkS2P36jwkzUj+b64sV9c2D
         tzGzvGCM7iCxnjrRIjrFjZADsqZg+NkxuYPxcAbaLCzbEnLTiR1DX9OmcZ5WpIlWoGwa
         FsihWWFz1xoacJSXGFb4Tzxob88d+7Oh1locP/VT7jZtZk42f8kIUJAYIiCrgE4XHd5W
         3CEyGNbf42cNjPYjsbPdbAa70M+p3rY/hloSS6m50FJbxyWsxr9Y3DC8nCqbj30DMMK1
         YLOfpnBFy6Cp72ZS8hW/ygA8AAgwj6MuT+8cnV5KgMfrKjbsixvrh/EpD6oCuUYT+21W
         LgDw==
X-Gm-Message-State: AC+VfDxvtic75e/Psfz+5OuG96Wtq1nvMYs0bOpbOiKOPCWDoetuHMUc
	PRcDChRXrwZr8tzO9jtmyQ==
X-Google-Smtp-Source: ACHHUZ4LW3ZZ/cBYhYhRQFPFEU1u8KrW05QGpnRnMNVV6p1GfqQBCDIZtWRbIiboQdX+bfk3YUT6Jw==
X-Received: by 2002:a5e:db05:0:b0:778:82d1:39a3 with SMTP id q5-20020a5edb05000000b0077882d139a3mr12005610iop.13.1687280916907;
        Tue, 20 Jun 2023 10:08:36 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id w17-20020a02cf91000000b00422e02bff00sm764914jar.84.2023.06.20.10.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 10:08:36 -0700 (PDT)
Received: (nullmailer pid 3833675 invoked by uid 1000);
	Tue, 20 Jun 2023 17:08:34 -0000
Date: Tue, 20 Jun 2023 11:08:34 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, Lorenzo Pieralisi <lpieralisi@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Simon Xue <xxm@rock-chips.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v1 1/4] dt-bindings: PCI: dwc: rockchip: Fix
 interrupt-names issue
Message-ID: <168728091385.3833618.8845528184695868032.robh@kernel.org>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_100843_288918_FFA8070F 
X-CRM114-Status: GOOD (  12.46  )
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


On Fri, 16 Jun 2023 19:00:19 +0200, Sebastian Reichel wrote:
> The RK356x (and RK3588) have 5 ganged interrupts. For example the
> "legacy" interrupt combines "inta/intb/intc/intd" with a register
> providing the details.
> 
> Currently the binding is not specifying these interrupts resulting
> in a bunch of errors for all rk356x boards using PCIe.
> 
> Fix this by specifying the interrupts and add them to the example
> to prevent regressions.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml         | 18 ++++++++++++++++++
>  .../devicetree/bindings/pci/snps,dw-pcie.yaml  | 15 ++++++++++++++-
>  2 files changed, 32 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
