Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B4F8C77B75
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 05:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5bApu1cpL+Oe+tz3xe9FyhjSHfM6Ddj+KcFpqY0lEQ=; b=HdM42XVzBQMxYd
	Vvh9aL9mETgGcDrx3zGtoSOqbNfexF4pn+tB1hIM7WDoVIiTMqCD0RBFAMWqLLj3IY2osvHGA6dFn
	Tek9hA9qzqq+TNoZJziCykn+L6/mqUhDuSpvWmlTdzhc+pym4HoWy7x4f/VNTQ/4hi07VLlQkG1my
	6Ix7BCRDxxeiu9hXqmsITN8HPdymVwPLMFLxmnO5u9YS+FnfEGQBOGJiQp84COPv9V/oLZZdkHrGR
	Zq55QXbgvkbiZuubpws/9Kg0g+jsO7CUx6sSqfPDHF53djlr7n9L+yBqZCCUROpaPGiYVwD9AxjKP
	ORh8NEJUO4CNJnz1TFZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu5Ux-003QmT-0l;
	Wed, 03 May 2023 05:57:55 +0000
Received: from muru.com ([72.249.23.125])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu5Ur-003QkZ-22;
	Wed, 03 May 2023 05:57:50 +0000
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 228BC80EB;
	Wed,  3 May 2023 05:57:45 +0000 (UTC)
Date: Wed, 3 May 2023 08:57:43 +0300
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Olof Johansson <olof@lixom.net>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Linux-OMAP <linux-omap@vger.kernel.org>,
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com,
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com,
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org,
	linux-tegra@vger.kernel.org,
	"linux-oxnas@groups.io" <linux-oxnas@groups.io>,
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-realtek-soc@lists.infradead.org
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
Message-ID: <20230503055743.GK14287@atomide.com>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_225749_731548_1EF306F9 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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

* Rob Herring <robh+dt@kernel.org> [230502 19:40]:
> I've dusted off my script and made a branch[1] with the result.
> There's just a couple of fixes needed after the script is run (see the
> top commit). The cross arch includes are all fixed up by the script.
> dtbs_install maintains a flat install. I compared the number of .dtbs
> before and after to check the script.
...

> [1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git arm-dts-move-v2

Looks good to me, thanks for doing this.

Regards,

Tony

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
