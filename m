Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8720C4363C
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 16:11:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 629CC20679
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 16:11:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="GfbmXyVe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 629CC20679
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MjetZY6wVcucuHcwFurO7z8HcLQNnwF9SkkLzqLdDKM=; b=GfbmXyVe5MGyirc21iFfAURZpS
	P5ts0Hk5i5UNoFlzW2jPCb1VVW1tNTsdR7Wi0pPniN6jyZhnkT/OqniGhu+8KaeMZdcfi887EhOqI
	yXhGqlIN4wfhJRGw8hHHFyNnoqQnvd6TMtgecxWCJiaIq1H0Ytj0naLRrbJkFMWUSY0Vm+ztIaXmA
	2G9m97pW/jy0DBim/7w40fPj1vUJjVYMihhcXKfpsYPDZuvoq3sAC0TqmAd1ysP58Ky8Xk3oxdCz/
	x5tIIeLJiAiYZdDcTxQhPDwC0J+XgIIMCzL/PEDuUrjdx5p2zCWmwv77/HZ63u/9MUYlT/RCCpJxl
	dAXvjQ4w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kONej-00017J-S2; Fri, 02 Oct 2020 16:11:37 +0000
Received: from mail-ej1-f67.google.com ([209.85.218.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kONef-00015d-Jq; Fri, 02 Oct 2020 16:11:34 +0000
Received: by mail-ej1-f67.google.com with SMTP id md26so2719770ejb.10;
 Fri, 02 Oct 2020 09:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ksDqHk0nWP4nQljjtYaRrFAhIWD1+rfwypaFmgT3k94=;
 b=eT1av8koThiyTdDc2q5yo83n4a4jib+Y5jIBSkP2WupRUFXanrtzGCBlo5SXpRryAW
 wutDkpRoiEAX+UoPsavn07DoQwqFSGiyT6U17T8dmU8VcLsFDMQLUl+unLHuJnC9LDEf
 YqEqp05sGShkg/7FOIT2VHezhvmqVY9SiFT3HwewFC3ascQKGYqE9vxsaj+qyEO6q84Z
 0EH8yitMqRKxnOvuVdMT2OTLex3BcvXaCwPeu6CaNcf1j7PqWwVcSLLeYHL8oFb0tswp
 WRyFTNZnndPFf1k88tBv3OcjGv+UCUiSUoAONQmY4ZUT8exaL0U/5h1AqMyvXYlwWNuC
 LSGQ==
X-Gm-Message-State: AOAM531BYTVy0KQTeO9V4riOCzsC7xkrbFR41ohu+a44o0n5xgsq3dRz
 XrUt87KhmLxfR3njL6dlqvg=
X-Google-Smtp-Source: ABdhPJxaoL9cJDAS/3KTQCq9OR55V0vP40AWHy9tKAmxl6vL/n8LS8/lhHN09AET7FLTvZ3xFZ2RMg==
X-Received: by 2002:a17:906:ad5:: with SMTP id
 z21mr2873895ejf.461.1601655092107; 
 Fri, 02 Oct 2020 09:11:32 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
 by smtp.googlemail.com with ESMTPSA id t25sm1481672edt.24.2020.10.02.09.11.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 02 Oct 2020 09:11:31 -0700 (PDT)
Date: Fri, 2 Oct 2020 18:11:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Vivek Unune <npcomplete13@gmail.com>, Alexis Ballier <aballier@gentoo.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Anand Moon <linux.amoon@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: rk3188: correct interrupt flags
Message-ID: <20201002161128.GB4542@kozik-lap>
References: <20200917185211.5483-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917185211.5483-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_121133_673030_D7B2267E 
X-CRM114-Status: GOOD (  16.25  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 17, 2020 at 08:52:10PM +0200, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags without affecting the code:
>   ACTIVE_HIGH => IRQ_TYPE_NONE
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Not tested on HW.
> 
> Changes since v1:
> 1. Correct title
> ---
>  arch/arm/boot/dts/rk3188-bqedison2qc.dts | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Hi,

Any comments/review/testing from Heiko or other Rockchip folks? Shall I
cc here someone?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
