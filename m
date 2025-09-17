Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C18CAC59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Sep 2025 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq64jYEyekwtgsG+hLAmCi7HGaNkXkFhmy8rbOJlebQ=; b=dfKYYgrf2ZkBzA
	fDWB0fr7MinrFOkpzuEApTc93Us/kdL+CeBhoh7Ar2dBipc/GTU3jjelS6k5qG0+Pdv1dOFx49mkg
	I+dann6VHiog7vRc4zmr7lU4VYABfiNB3xGYetA1gfyLGjaHDEN0l8Jw9FPDXUQsDWeg7zPw/GF4j
	4w4o/MjU6PJgP5TADUWZo9rLE+uVutaDaeWvTv4CJTxLSD+O/3hzubpMssrpJxgENlGX48X4R+5CZ
	s8wfHo1ZL41Cn8njG+b/6I1u7j09gvO+Lw4NIi95nbcM3O8+2ewT1qcqYl26kcyw+XSFHuz+UuJGL
	N6z7kYYaTfzFOlTlruqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uytDQ-0000000CFqq-1qYU;
	Wed, 17 Sep 2025 14:33:00 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uytDN-0000000CFn1-2cee
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Sep 2025 14:32:58 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-ea41621f73fso3568925276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Sep 2025 07:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758119577; x=1758724377; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dCz4bFinyR1BieLUIHZQZV0TDdidYv9V2bEcGI7xH7o=;
        b=dS38sl9jjM8pCb7gOpPvArFE+v9RYHQcz1Th9rRzVEukTSTsS+yNnBLqjMY0hsDDkZ
         7RvAH6+gO1Rt4aZm9tY9Fx6KTjevNTqQuE7LUFdeP4gplui/eE9bsRxVtiy3L/L4f3n1
         uSnP7fSaJz9B2hLWLBfSFqxmwyOQpp02uFY1H4tNlaiVzU8nOumnxe6RoJDs25+wAtMJ
         4xgxVyBZmCINGrHcWTGYxAGS+5oJ558fRUmqU+nMRstXCN84RLqqc8YUBQOhkhoBYnxU
         WeHbNTNSfSEJ2yaIsaX6Z1H0b24te8yoWtJTqX3Xq69azSMLNjG/gk+W4K1LeMDZSRBX
         ykeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758119577; x=1758724377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dCz4bFinyR1BieLUIHZQZV0TDdidYv9V2bEcGI7xH7o=;
        b=QwxlhJEQXzVXVJ71jEdnhAdm5GjMDQq5xQi0ilw5OD+4v7WFTyys1KuGBOg9V/QX58
         uN7bbPfEU7QbNXc2IrnBVf5YEkxomHt0rAPjLd1/FRzb4xR0N7zgDlRkL31pp+Uy1BFw
         pXDgQKWhzrYY0G+DUMcDTZKhB19T75sDy5RLxo7TqOwJiej/ksjIEPuGblkoSftjzDkT
         8fhKcqNbq6Dq6PoA9Z0hQ3+A5y4ZtZv0CF3BvS4JCTf5RFvcgkdpr9MvUaDGeMya3TVK
         ZliRYb/h3wGTmpn2gt3/POCyn32GTLByP/Wk/F6e76Oe8+ENCpTpsF1vhGc5+/y09WNO
         JeJg==
X-Forwarded-Encrypted: i=1; AJvYcCVRDc28LBA7PhAf3sXadrNaApsvX++1Nt4E2ThKDvcCiqR/zTzvXkmeLflZ+Z4K2swwxgIYyFOicr3b3ldEXw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBaSHLwz1H2RLyoxxbJw8z4pAhAol/da5udqxtQHMsW7/9nb9w
	yjJq1yS8HgzsffIAOHJnfEr+EsxaMEExU25MSUz+/4y28B20UFPEsxifePV5XNeJC/LITzF+Eka
	4IS8YI6CIxHRrGMISytanuIHaFwl9ilHm7nrU/N5d2A==
X-Gm-Gg: ASbGncu2A/TkQVgmB2aoh/JaF7Bf9gASDWnL8pCuEC/3oGK/ZB2Qus/Doxx5mCPKK+d
	qBIvla+Ymk+FFWJLj3P7vgKFqBmdJxiM+tg12oiEC+AIGs3QFPEsMIq5lwYKrz4kZFB5EpYytHL
	/jbKOphT6YwtSq2m0vpT+s9P7fndNSr5jMYBy1pLXQ9fcB6XTT8y4QH73VCVf/i61nC2ISw5t/O
	IqihZKa
X-Google-Smtp-Source: AGHT+IGYd75X0Qf3WTxoJJzFk2/YdrBkHI2rWEVx/WssCazdqocK2S+85yiq6AsUYraILKbckm2rz5VkDvdIi7Gceg0=
X-Received: by 2002:a05:6902:124c:b0:ea5:c97c:3182 with SMTP id
 3f1490d57ef6-ea5c97c50bcmr1102726276.36.1758119576502; Wed, 17 Sep 2025
 07:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
In-Reply-To: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Sep 2025 16:32:20 +0200
X-Gm-Features: AS18NWBqAAb3pOa1iLGjs8mbJODRThiYyAWA34gbcKMC5sx254a7Jh6zE5vInCA
Message-ID: <CAPDyKFpR+uueS16P7OZi6-1NVrEyPbizuSnMHWMyROfqzPjarg@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] enable ROCKCHIP_PM_DOMAINS
To: Mikko Rapeli <mikko.rapeli@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_073257_677771_8748A3D1 
X-CRM114-Status: GOOD (  14.88  )
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

+ Heiko

On Mon, 15 Sept 2025 at 10:33, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
>
> Hi,
>
> MMC_DW_ROCKCHIP needs ROCKCHIP_PM_DOMAINS before MMC is detected
> on Rockchip rk3399 rockpi4b and similar devices. Make this dependency
> more visible, or the default with ARCH_ROCKCHIP if possible.
>
> v4: fixed Kconfig whitespace, added select REGMAP_MMIO to MMC_LOONGSON2
>     instead of disabling COMPILE_TEST
>
> v3: use "default ARCH_ROCKCHIP" in ROCKCHIP_PM_DOMAINS as suggested
>     by Arnd Bergmann <arnd@arndb.de>, enable more MMC drivers for
>     COMPILE_TEST and remove MMC_LOONGSON2 which doesn't link,
>     remove PM dependency as suggested by
>     Geert Uytterhoeven <geert@linux-m68k.org>
>     https://lore.kernel.org/linux-mmc/aMQv1V49xa_MThGq@nuoska/T/#md2b3252f9dce14f3f79a493c426f2761cba1dc25
>
> v2: changed from "depend on" in MMC driver to "select" as default
>     on ARCH_ROCKCHIP as suggested by Ulf and Heiko
>     https://marc.info/?i=20250912084112.2795848-1-mikko.rapeli%20()%20linaro%20!%20org
>
> v1: https://lore.kernel.org/linux-mmc/20250911144313.2774171-1-mikko.rapeli@linaro.org/
>
> Mikko Rapeli (4):
>   pmdomain: rockchip: enable ROCKCHIP_PM_DOMAINS with ARCH_ROCKCHIP
>   mmc: add COMPILE_TEST to multiple drivers
>   mmc: select REGMAP_MMIO with MMC_LOONGSON2
>   ARM: rockchip: remove REGULATOR conditional to PM
>
>  arch/arm/mach-rockchip/Kconfig    |  2 +-
>  drivers/mmc/host/Kconfig          | 10 ++++++----
>  drivers/pmdomain/rockchip/Kconfig |  1 +
>  3 files changed, 8 insertions(+), 5 deletions(-)
>

Patch 1 applied for next to my pmdomain tree. Patch 2 and 3 applied
for next on my mmc tree. Thanks!

Heiko, can you pick up patch 4 via your Rockchip tree? Or if you
prefer me to pick it, I can funnel it via my pmdomain tree. Let me
know please.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
