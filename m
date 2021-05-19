Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D07C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 15:19:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76B0B610A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 15:19:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 76B0B610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fUM8a26ScR2nAzDa3Lzkx18fcetM6h4xv0Gs5+n9zPQ=; b=oGlpysZrxTZSmZO4Umx7IRTIp
	xlMkOr6YqtFT1uPK+ltplczNSkj8IqtlaEkWpGJvdkJ5m9j0MmLg7OZVqxPniz69fCOupXDgaSIL5
	JkQPxt5PZEOqkOqfxVgoSfqZPPQCUHGPNiwFTZeNj53yf7j7ujqJch+SwxJG5IlZZXBgnl2ouEB/J
	ai7kG6YDiWAwyVukJQkm2n8llR/HOlnvfM9SgMH8fiycL0HvKn7jPfvP7s0Ny3OoWOYiRHqFcZFWC
	aCGqLzkuDxpLH4KHQXeD22jVR/kJ+liDi7YZyYfPR4IW6PT+iqgW30uU+Wln4ys33v9mzaT7sitfN
	NMYnUWSUA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljNyv-004MWG-HU; Wed, 19 May 2021 15:19:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNyi-004MTP-PV; Wed, 19 May 2021 15:19:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LzxK/OQdqsV0l89wron9Vdcsrsv3pZrS02W6s0m5Ue4=; b=0bwBgGWjyNMiBIOk45HOUT63NO
 rJXQ7J96ReUuhOxsYyvAgBp6IL0sZKTCikwmYzxe6T6UWvWwNVttfkio7IvdtpppIHddHaRKTihrq
 xlNTYqlMuHpKp1hoc6hUUxde5uAvQffa9yOdStxwqN2QvF6LXM68GF1BrARyWPoZgrGuukAGNX3hG
 kR5VPmeMhHE28Yngs/wPGNdk2UdLD/d2XLG7T999XAxiBoX8sx463Zjs8o/iFggIngb56V0XTMUT1
 CRiu3RCJUp4TyqQQ8Fd1irbyWYofZVQhTknXvNmCrfgO5RpeA6nxejQuRfLigDe4syige1dVojcmZ
 OM0JbghQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljNyg-00Fa8X-Cz; Wed, 19 May 2021 15:19:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0EA1B6124C;
 Wed, 19 May 2021 15:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621437558;
 bh=ek7ca1h69ksdnof3kTbnE34ns9CTK6Kd0/3Q9dV7oCo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=caGHyOlML+2gJz5Fw3FWG2LVBgVVPhdq+fQJO8AIVBzHI9CeoxCxtzQnbwDzRVtCX
 H1+0+aeNGnPqNt1eZ9cci+AzZv0P+jxmy0Yk5wjH+3/2nyKk+BfoaWaIkh1bYa6F6s
 g6ghXC8e9UXw5IjlGtjZVmzy5q/UdrS0gOP+s6qsd/8Avjq9o5kcyHzjgsym9cwrzD
 +j4NRhxg0pp58AGt15DGVqjhPa2eT/8Tr99gKcffkOzevJ29nXjOQ6FMRX36x/qbyS
 jiOY4O5Q5sdf9lgIopIWVj8h2fUHCcEfT7SNYvIKGLxe4j8EmxZLVPfvDOttstD4qr
 /KbpvzrYyhkew==
Received: by mail-ej1-f50.google.com with SMTP id n2so20517060ejy.7;
 Wed, 19 May 2021 08:19:17 -0700 (PDT)
X-Gm-Message-State: AOAM532r9Abcnu44ugMZ5ZSUe0IT5MJB7KrGANx5cIcfPMz2zj48KXjE
 F+TOxhXq1Qrr0eBzoAQCM7GMWabhHqxRRzntqA==
X-Google-Smtp-Source: ABdhPJzEPDsTeXH9wfUOGmX1QdjLMS8b6BNkCsHTvdukqPqic12xvjdutFYNRM0Nm5ZWgqy3SvkT0ZR9ivjct617yrU=
X-Received: by 2002:a17:907:724b:: with SMTP id
 ds11mr2971920ejc.108.1621437556674; 
 Wed, 19 May 2021 08:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210518165658.12764-1-jbx6244@gmail.com>
 <20210518165658.12764-2-jbx6244@gmail.com>
In-Reply-To: <20210518165658.12764-2-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 19 May 2021 10:19:05 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Re978VJ8-2FV0zM6A0dS-jmsR8hUAV+gQWXgW7BoJtg@mail.gmail.com>
Message-ID: <CAL_Jsq+Re978VJ8-2FV0zM6A0dS-jmsR8hUAV+gQWXgW7BoJtg@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: phy: convert rockchip-usb-phy.txt to
 YAML
To: Johan Jonker <jbx6244@gmail.com>
Cc: "heiko@sntech.de" <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_081918_483017_2A20C603 
X-CRM114-Status: GOOD (  10.26  )
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

On Tue, May 18, 2021 at 11:57 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Current dts files with Rockchip 'usbphy' nodes are manually verified.
> In order to automate this process rockchip-usb-phy.txt has to be
> converted to YAML.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>
> Changed V6
>   remove some #phy-cells
> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 52 --------------
>  .../devicetree/bindings/phy/rockchip-usb-phy.yaml  | 81 ++++++++++++++++++++++
>  2 files changed, 81 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
