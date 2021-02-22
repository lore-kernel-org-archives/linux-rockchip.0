Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EFB5C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 02:38:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6832064E44
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 02:38:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6832064E44
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=krWWnIVhJGSjWHeBKaBcFPcjKPOzQEPGgbiNf2V0PPU=; b=h9VQpDHt3dUMNUaoB+hVquPLg
	p/6WYdoCic9PaePp6fdCUO4QoU3sv+CjYKptI2Vear5jUTG8V2xjnlQtSoC8F4fNHaZaN4eXqfDJ8
	KitUXcfcLNX91TNts8tEoK+aLyt6iZ7DynPnzjkd2an2EuJMVt6xL/sxuiOoEmNsoRaHeS/ZLpRGP
	IaXDXfsOwyRpkDM3+Azq8Z2+fJPhoeJ8lEsOLMZxqdOFfTux+gqIfxmrTOXSWhpqJCgB5RZLsDQ02
	4keYICI8F7h9I8ZPaIHwIUhFfT57LSsYCQtE0XlAYdZfPrJt/pACZ0vv2zm5s2q8I1jPDue5QXQiQ
	JWFG0exNw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lE16r-000152-9S; Mon, 22 Feb 2021 02:38:05 +0000
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE16o-00014k-Bw
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 02:38:03 +0000
Received: by mail-wm1-f51.google.com with SMTP id i9so2150685wml.5
 for <linux-rockchip@lists.infradead.org>; Sun, 21 Feb 2021 18:38:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WQh8VCQevRvNmuRhsDtQ7nIEzMD2gLxTk3f4V+L1aEc=;
 b=CSaQgvYu1AE1ekG6xCXWQ8mF+9CvsH2ikAgUpNrXyZ83B22DpFEqSMZasw5Ayc1A+p
 egpo3ZDOEvOjPousQhFvaW1LCuHwmOK+/s8PddI5ZC/FqZrMGDG/q0hAPNSL41Cdi3cD
 zDzbo+FQhkML4nqBKoPTWlaM15b6gsMoRH18aZBwkgxZ/DOoPkeb4xfTbdEqmCQu0ONN
 AuiAsqXsZtsefuj1mKASatp07Rj6GEC37BZ/if829Fk21bfz9RWhAPv8V0NbeF7wmqkM
 EqUkciX8ms0LtuPHs0+WoMN65MelKwCGXcc5QPMbcGsW7ZlGP8SWDmYDr/BNvh0M3U7y
 TiPQ==
X-Gm-Message-State: AOAM532x5Hwj65U8Jc0ESyowOBVtUGXRBOE+0/mB5XXtJAKUsRj3Laip
 ftk3GFqzoyeyQCMbtbMbJ7g=
X-Google-Smtp-Source: ABdhPJyYa0OSAEf9Hv486ErFQ9KxIaLDKDhIt9gQZs03ZhTS6GCiMeEAtagI9mrNDmC8zYJNgQcF6g==
X-Received: by 2002:a1c:7301:: with SMTP id d1mr17923444wmb.33.1613961480554; 
 Sun, 21 Feb 2021 18:38:00 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id f2sm26344434wrt.7.2021.02.21.18.37.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 18:38:00 -0800 (PST)
Date: Mon, 22 Feb 2021 03:37:59 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <YDMZB94qMkpOx38Q@rocinante>
References: <20210127022406.820975-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127022406.820975-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210221_213802_423093_9597BAF3 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>, Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

[...]
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)

The driver is only based on GPL v2.0, should this be the same, or is
there a reason for dual-license?

[...]
> +title: DesignWare based PCIe RC controller on Rockchip SoCs
[...]

What does the "RC" here stands for?  Would it be "Rockchip"?  If so,
then perhaps dropping it would be fine to do, as rest of the title
mentions "Rockchip SoCs"."  What do you think?

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
