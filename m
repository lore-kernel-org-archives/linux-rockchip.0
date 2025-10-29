Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA88DCCF9E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 06:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLRhed2DyHPFDhpsF2S571cyCOsUQTxdSJaxa1zPdGM=; b=s+/0NECWqJx1gU
	HIiVqUYpatcPwrJuYQ78NA96ty6C7WD/0m34Oz5OUMLYyR5ZpgSQ+YDRBidI0aVOGD0vWkuQcAr57
	jt9V6UcGwjwJzXj55+gjZSbEJKzqVuC1egsBARlTsh/Dlbg+wkYevhpb7n5VOvEeodqhzF5evizhB
	2gJeakpcv/fJ1fzBYkywvXUAZL1eyO2z7qCYy1eH4aFKsJmAipzVsCZr5221Op1k46pYFQpNtE+6p
	/3zuuc9NkTJa+42dKyRu8nmzoiWnHxX5OU04b6qI2OX162xyrO9j/FBAxFtUrnV4ekTvSG3sXDeQj
	sap1eEBK4l4XECOc3zFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzh1-0000000HTxm-2sy3;
	Wed, 29 Oct 2025 06:29:59 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDzgz-0000000HTwJ-02ps
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 06:29:58 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-63e0abe71a1so12828876a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Oct 2025 23:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761719395; x=1762324195; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uMONH+8GVOxyEjApROS3jg17q6oAv/cnPEMuimC2yEw=;
        b=Q+8GR/a8LRtXjXDpLRhNw86tMW2dzFSs30UMqZ+uInXkq4jnjeM8dNTHFZH3CefFYG
         rU70LRyF4YFQHp0BQVPcAimyZcfuTKIMkvNGdnHs+3s4xaVqpdcpMqx0duYAQBxWGkLI
         m9yc1n2m8Rg1tMy66vWQkSAowBcDvzIxMtv0pNmYmwW0/ZLaeewkxdEIHUCFwVu0k/n9
         Lv5Oxvk9mG3Vit5J89H5Ab7VCqWCGi21ff/CquVHiFEHe7bl9nmrhJzUPjG4YyaoZzfD
         jTcPIfCM8V/wtxjttlMLOz80V2MIn6Mppyuh9kw5CpNY3DamrkARpt11P+FPNniHgNTh
         W4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761719395; x=1762324195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uMONH+8GVOxyEjApROS3jg17q6oAv/cnPEMuimC2yEw=;
        b=BMe7kYJ9uqJ+ZE9Vm9QTIdvJj6ug2h/GlXsZSBJJzedtBUUorTZbf+ejAR4WFa3oD3
         KlKNKAXGPwoSvoWE1BzvABeI3JndEsKwFyAqFErqgGeWUflI5I7/VmdW33yPMh1vVDsg
         MRmsnDpX5WXKqyKu/Xu5J5//Gk/aJFfECP+pHJwxrOZgU1YcKtsHdAkOyzYR+m0NzeCx
         etBhkvpeotEXwLq3es/OSYkgRNQYK+bfh3uPVanfehmbEH21Q38rP9l7GzLSMOmofPGG
         eUabW47D5U4r09mm5BX/u+5ajed5p5eo4XU1UUNqDw0gDlMMXMlg/BTH3lG/SeJpmb7w
         6ADA==
X-Forwarded-Encrypted: i=1; AJvYcCWj3o0+ujMWKijAKhnnL0o8NDxEOUDag5pSL3FxnbAupAeSIESkL1K4aTx0N0+NuC20oHnAd67BUMRqg42BGA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8SW7erlv9xwpCA6QT0UkqmbJ5cv0CmSFTWeRoNfYCjDcl2CHX
	dxbaBM6V0Pugx6RObZUhYH+reez/+oZWZWo3bGNGiK7gzU9X3oeodKlqwPvSbvlOADTulOBGk34
	JA1OkBwvzjAEk7sgHqEfHbYlkc5SKCxo=
X-Gm-Gg: ASbGnctDz8rgiKKgbgU12zz4jmk+chsTPr1VK6I+TrdLPwgidiYEm/jARWYcnFdZn/m
	mvwhTIkrHnM2vcKGc5fxuEO+W/Us4DATMc2ifqCOALu643hpNLN7sw2q3Inf5HZLNrLeEH1UWgI
	8efQkgjC/SEqIcC8+9nntaHVZslYMNi+u57wSjoZR+Lf+7eVKhGWIngRG29JOYWPcFBUV65gYNc
	lwTD0TAfjOvQIrY0lHtCoZvYDuLKb+e7AjZAnGMDeHYhJG2WMoL0opEXk7UUPA8Gq/WRA==
X-Google-Smtp-Source: AGHT+IGkpMP2JV93jKtrqYcUv2doQVUVgTWnNctMEjS6Xs0nmKSaC8SY+NE+YO+7RTCK8H8Slnh23fd4/D0WvABiTU8=
X-Received: by 2002:a05:6402:26d3:b0:63c:1f3e:6462 with SMTP id
 4fb4d7f45d1cf-64044251e38mr1273131a12.23.1761719394933; Tue, 28 Oct 2025
 23:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20251027145602.199154-1-linux.amoon@gmail.com> <5264377.31r3eYUQgx@workhorse>
In-Reply-To: <5264377.31r3eYUQgx@workhorse>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 29 Oct 2025 11:59:38 +0530
X-Gm-Features: AWmQ_bkhkw-pZtArjJD2gcBzKDEhehQeURBZRDtuYYptEbI6fqoAKgnKeMTW7xw
Message-ID: <CANAwSgQts0B2Sq0V2psa53WzTLEdU-Z=jkqGkW1ESmvKf_6EyA@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] Add runtime PM support to Rockchip DW PCIe driver
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_232957_088979_2B7EF260 
X-CRM114-Status: GOOD (  20.44  )
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

Hi Nicolas,

On Mon, 27 Oct 2025 at 20:37, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> On Monday, 27 October 2025 15:55:28 Central European Standard Time Anand Moon wrote:
> > Introduce runtime power management support in the Rockchip DesignWare PCIe
> > controller driver.  These changes allow the PCIe controller to suspend and
> > resume dynamically, improving power efficiency on supported platforms.
> >
> > Can Patch 1 can be backpoted to stable? It helps clean shutdown of PCIe.
>
> You can do this by adding a Fixes tag to your patch. In your case, it
> might be fixing whatever introduced the clk_bulk_prepare_enable, i.e.:
>
> Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
>
> This would be put above your Signed-off-by in the first patch, after
> the empty line.
>
> To generate fixes tags like this, I use the following pretty format
> in my .git/config:
>
>     [pretty]
>         fixes = Fixes: %h (\"%s\")
>
> I can then do `git log --pretty=fixes` to show commits formatted
> the right way. To find which commit to pick, `git blame` and
> some sleuthing are helpful.
>
> With this tag, stable bots can pick the commit into any release
> that the commit it fixes is in.
>
Thanks for your input.
I will leave this to the maintainers to decide on this.
> Kind regards,
> Nicolas Frattaroli
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
