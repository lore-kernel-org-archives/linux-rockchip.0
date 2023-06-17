Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FDA7EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 07:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKhhpRjG1JUmSmMCjuq9Z6CNgb5ip4XtYWD3ZRFeFrA=; b=1BMrEoPLJk/xyd
	MuW81cfr6GdE0YGxSPK+fsk+pRqdgEDb8YAFzF29c5IoBq3mHeAi+CIIra0KlnCho198aZi4VM3fv
	2Eq45pEYVxNrLN4Yjg/jQF7nBCIq8bg3mO/psgHsEGVEDGF3ldjwP/Tx2YK7jyCp84gi9uy+8Adyy
	JHnsDsLrQqZwQ1G+XKrtH5Ja1jONtkESHCT2eR9glya7Nn6hiEIzpMm3+EyEcZIt9zP9kEe+r9iRo
	vq7F8a2QruXWkYtw3xj1QLV7vNxDIYyNOLKawFXRVLMFbYaO0IVXzBp/4PmQ0PBXs8ABUMfQWQKAv
	sc4wi6L1AskzJczF4S4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQWu-0030Y2-2t;
	Sat, 17 Jun 2023 07:39:28 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQWs-0030XU-0X;
	Sat, 17 Jun 2023 07:39:27 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b466073e19so5754161fa.1;
        Sat, 17 Jun 2023 00:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686987563; x=1689579563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gIdeMrV7gyutB60slM5F7S1vImka4WwXs93FAbGE1gQ=;
        b=VLEX0Ab5PVUEKm2nBbAf9tQBNzkFwn9nHLx6ZI4C+mhrJh0xkzWPvdyC5swD+uj3oc
         yg+xhvrzRj9TV7s/bn5+li772Jf1DfclMVSxYW4oRZMPMTktD9/5llLAilETurC+2TcF
         d7ess5UNH52sbLptLD37Y5y7aXasKsumccGZF4gETCLJpPPP+MGGvH5cenFuiRCyM920
         i+P/rB/ar+PeQrn7+7n8+lGHYzM8urcYghc53u7H4YlR4tRpyVrA5IH8J9TgEfJynJ/R
         sF5Hxjp0VNDX/gaXJtQznMdtsI71TdFvCdu9s5fIj0GuAHIvl31VxZJsURNTbjJ7UZlk
         NwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686987563; x=1689579563;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gIdeMrV7gyutB60slM5F7S1vImka4WwXs93FAbGE1gQ=;
        b=lfiJSk0swqZtmK4lItWi6QCT2iHwkrL2FsKqQk5RMAbXgBTPMQBV+2MD+IuMicgh/T
         F6czYYeuK06M34N8gf01xfZEExtjht5U56o0j7D3l5LWxZ+gIt3b18onUUKI5uxxy1dC
         e1Gy2knw6E25W4JTSNv+ljvnVJpI3rrOSDc7q+OJRuGO3b0D+/gTuXgtfTfOwO8Yg6Ej
         g97jDRKaomT43WpGsJwY7TBXNBpGIw1z6QZIK46Bm3RtJcuJXmVA3yMoWuzXtbEymtSk
         ADtZDUDoW1j3YSp39JC3+dHwoRYoyOEFWqPjo1sfr9T0+Dh9tBbMrZL70q7D+38EHDw6
         7k0Q==
X-Gm-Message-State: AC+VfDxb0wwFpMGrOSFuW4/vVOEQQjOr2qMGchvj0I6Vwa8S71YY/Cm5
	c6SVRKHAWcdvwoeCwQ329No=
X-Google-Smtp-Source: ACHHUZ5e3rWd2nxvAUXXdflunP1MwQCYxZ+76Ew7b+IyosbqAsuEl9s4HN4NgZkCl+9TAQsWHwhoKg==
X-Received: by 2002:a2e:9b5a:0:b0:2b4:6b1f:9a6b with SMTP id o26-20020a2e9b5a000000b002b46b1f9a6bmr247903ljj.23.1686987563033;
        Sat, 17 Jun 2023 00:39:23 -0700 (PDT)
Received: from mobilestation ([109.194.233.141])
        by smtp.gmail.com with ESMTPSA id o19-20020a2e9b53000000b002b45b90385asm585830ljj.55.2023.06.17.00.39.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 00:39:22 -0700 (PDT)
Date: Sat, 17 Jun 2023 10:39:19 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v1 0/4] RK3588 PCIe2 support
Message-ID: <20230617073919.h6x32caeznx4q6cp@mobilestation>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_003926_202289_BD7E2C6E 
X-CRM114-Status: GOOD (  15.13  )
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

Hi Sebastian

On Fri, Jun 16, 2023 at 07:00:18PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> This adds PCIe2 support for RK3588. The series has been tested with the
> onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1) and
> Radxa Rock 5B (&pcie2x1l2). The final patch in this series depends on
> the combo PHY support added by the SATA series [0].

Thanks for submitting the patchset. I'll have a closer look at it on
the next week.

-Sergey(y)

> 
> [0] https://lore.kernel.org/all/20230612171337.74576-1-sebastian.reichel@collabora.com/
> 
> Thanks,
> 
> -- Sebastian
> 
> Sebastian Reichel (4):
>   dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
>   dt-bindings: PCI: dwc: rockchip: Add missing
>     legacy-interrupt-controller
>   dt-bindings: PCI: dwc: rockchip: Update for RK3588
>   arm64: dts: rockchip: rk3588: add PCIe2 support
> 
>  .../bindings/pci/rockchip-dw-pcie.yaml        |  58 +++++++++-
>  .../devicetree/bindings/pci/snps,dw-pcie.yaml |  15 ++-
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi      |  54 +++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 108 ++++++++++++++++++
>  4 files changed, 231 insertions(+), 4 deletions(-)
> 
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
