Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A6CC77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3E0Eo9RpkCutFYr0qHFkHaCVC89E/UN0IFXMwC8xc4=; b=EDB33dg6KxXL4p
	EPT9KXtzjvXEiw0Vi1JbvS0n0jVgVQEpddmaGkE+07YaMuBWhZSNJ0N2yP/hb/TIxx48HI4snYUZj
	JUh/9ngCi3ASdwvj8ZDfNy22XpB48/xiiWOtzLQfw2jhz7BFQDSNDx3MxJ4E4LK1Ej2ZVXaHosDLC
	AEQAhFTZMG7iOGgYIwsHsLyb7atvBh7nZxY3SLFSaeqqzh4jlSjvN7/7SYSBjTBt62wbQMSAuIS7h
	gasNh5xWuFlXedRhtpvU3hdMr+4TYCjFZ/rO81A2y0yAe8e+lIYYKFbOYAFRk9P7TGi7w0kqNiTwB
	qo+dKoNsJtozFBn3dWqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYi6-000RhR-1X;
	Mon, 17 Apr 2023 23:56:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYi2-000Rg1-2R;
	Mon, 17 Apr 2023 23:56:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1F5CB62B44;
	Mon, 17 Apr 2023 23:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ED88C433D2;
	Mon, 17 Apr 2023 23:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681775793;
	bh=PGgTtILCYnLtdEs+1dge80PZEeOVNXxB1Mp2goVVWBU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=U/iWFNH+L08ZbmtVqtvGe3vwYUVDrmI+tTXOJr/M9nBRnClsCRrhcBQtu1pD7Nn9D
	 0xjHrND9YWAVXp983k6ublL//L60Aib3NsfXWPDalH1AeyS2wTSeOPKZSyziCG87HP
	 g7ekDdlntegrEj3qTUb2WGLA2Wpb+Kmnj+83knvyGinUKzy1YXmDmU3HvZPUEI13U1
	 R/g/CgTmloJt0PGKcSmrAgZeKh480w2YxwYcXPIaBzimLzwgeGtiesCaneGtejzRMz
	 v3OYBI8SC4y9J/QX6ZFQ0PPbRUCft2BueTrwCUH4ymKPAYvbp01Z7EGzUbSEIiA7VF
	 UrnqD1lKXRRXQ==
Message-ID: <473b7647-58ee-9a4c-b910-f22f778a058e@kernel.org>
Date: Tue, 18 Apr 2023 08:56:29 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 09/11] PCI: rockchip: Use u32 variable to access 32-bit
 registers
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, stable@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Caleb Connolly <kc@postmarketos.org>,
 Johan Jonker <jbx6244@gmail.com>, Brian Norris <briannorris@chromium.org>,
 Corentin Labbe <clabbe@baylibre.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Judy Hsiao <judyhsiao@chromium.org>,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
 <20230417092631.347976-10-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230417092631.347976-10-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_165634_829409_6EB246A0 
X-CRM114-Status: GOOD (  11.87  )
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

On 4/17/23 18:26, Rick Wertenbroek wrote:
> Previously u16 variables were used to access 32-bit registers, this
> resulted in not all of the data being read from the registers. Also
> the left shift of more than 16-bits would result in moving data out
> of the variable. Use u32 variables to access 32-bit registers
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Tested-by: Damien Le Moal <dlemoal@kernel.org>

Looks good.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
