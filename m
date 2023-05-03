Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F74AC77B78
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 20:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muvrsnhjWZT7D2yYwU5FWv/AJ5Tl/REYG43uzRDAv6Y=; b=Y/lhtuIjEeSYgs
	vcelmqzYSg3TCOV3EJWQmi8QJz4Bn9EEYltgNOygVMa21miGVcOuqVWIjM3J4yout2SoeaUdE8ETh
	dOs02MkEqI4FC467WZmMhBoSOfY0ZYRJmG6rViybqtl7clK84Ju201s98hi6WnbxTUFJUn5gn63QV
	nytaD44Qddni65LT6/SfipVoXmbtJVPngT4t5tlLi/GLhsXTSKZQX4WcQY4zeIA4ojOdcuLGuGIQ3
	NW9/SkU8MU/r7CUwBDVHlk4tOMNoUkaA3cdyhRp6vhZ1R1FE34pAQ37dAD0s6N2/v1wCGPM2EESdw
	pqIhEKw+j/EDj6+YCllg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puJEV-005kfH-1C;
	Wed, 03 May 2023 20:37:51 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puJEP-005kb2-3D;
	Wed, 03 May 2023 20:37:47 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.nyi.internal (Postfix) with ESMTP id 204E5580DD5;
	Wed,  3 May 2023 16:37:39 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Wed, 03 May 2023 16:37:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1683146259; x=1683153459; bh=de
	sv6xluCw6O+vvGUBE1D2AER9o0GCpP/5poLPXyM/I=; b=dPT1qww92IzHVup5HD
	dBW4pJtCc3mO7+suvORGzU/mum6k7BRdyBFP9vj/V9pcUMTlLsRq9Dfyf0TxPKx5
	YGLrHzHgERFVrr/5nu2PocVjYM1XBfwv/aA56y5g4hroK4QZ3jk4TPPcP6mrUoEb
	JMYYqfpFBP/Rxd6Gt6rgRn2NW9becs5c7yab13WTXd5j/To6bkYC0EOiRxnie1Jx
	bC5Zt0xB4/42BHh+ZwrEeMB/vd+Qtr/ZcDv9W6thTdAfYf5ORSaL/sDo/ovkzvBM
	GLy4HMODldsz9Q4mT0NlweDGFgHqLam/KNavBuQzHtXODRk2aokvO9HUK4cbH3o3
	5Xrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1683146259; x=1683153459; bh=desv6xluCw6O+
	vvGUBE1D2AER9o0GCpP/5poLPXyM/I=; b=d48yA3SILCVW3LXBTHIbLeHd3/55J
	lqCOnfsbA/LldPyygh9jh5J28/dsd8VUhXAFP/EkNp/lobLda1F5PT14Ev6GN+ew
	G6LOsplfleF40FEUspzQcMJugBF8TRJqAJ8qI9YYSeRqysA8B112xhztSrLb8Elq
	vr9P1xezH88OAe5nH5P6aD1C7C630mNeOvhLxIqL4Rd6LysBSZPPQuneer/bRja0
	vJqvuj0S+ddloNWFG95dqwNyXOUnF550OTdcmkQjKkD80XI9dKNFUou/FnylDupT
	7QT1q75XDl9Tkw/5rEEeDO+E2qgfKGHNkZcBi4wrIPv1kHUXuwfyNqmZA==
X-ME-Sender: <xms:EsZSZB5kJ0GrHR853zsjReTXCKVzZZoOEsZUrLM9Ii19_fMe7QEyIg>
    <xme:EsZSZO6wVrnO6sfVpVMYHV-p9-4TDkFZOjWwoen4Pv4_WkwrEpvS1M4ci3zIanwDm
    iUGKsSgwu187PEcA7k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvkedgudegkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgesthdtredtreertdenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeffheeugeetiefhgeethfejgfdtuefggeejleehjeeutefhfeeggefhkedt
    keetffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grrhhnugesrghrnhgusgdruggv
X-ME-Proxy: <xmx:EsZSZIeBp0ONVV8TVGAY_CZg0aGNjOO37JGCfetCDzJCfsVOWHoHeA>
    <xmx:EsZSZKLcCAxw1z1MpswPdC09DGpopJXBLGfDzf3ZMawPn9MBk-esNw>
    <xmx:EsZSZFJBmzNloya5zTwIRkajH22JwQIMIb5cn4Bc3yIvQGmJ9q_Iog>
    <xmx:E8ZSZAITCL8EImpKlG0FYkRLfsze_wfBG8B-LvTI8Bca_uFWRtmTrA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 0094FB60086; Wed,  3 May 2023 16:37:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-386-g2404815117-fm-20230425.001-g24048151
Mime-Version: 1.0
Message-Id: <4d9b4159-88b2-48cf-84d9-34169928c8e4@app.fastmail.com>
In-Reply-To:  <CAL_JsqJEdZBS231TvkmmipaXEqzvDjz+A32V6uJ4zfSMAJHn2w@mail.gmail.com>
References: <20220328000915.15041-1-ansuelsmth@gmail.com>
 <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain>
 <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com>
 <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org>
 <CAL_JsqJXd_EpOQwwNEAn25mzFfkhEvqzur6ui5Ca+dbt2kA8-Q@mail.gmail.com>
 <5e318b02-8f33-4e2d-a956-5660e1c60619@app.fastmail.com>
 <CAA8EJpq8x5wQa3fMebaSP3hCdMiCsZRaF+B4Y3N3royW_CeXCA@mail.gmail.com>
 <4e1e70a9-9b28-410b-bd29-fb5f5805798f@app.fastmail.com>
 <CAL_JsqJEdZBS231TvkmmipaXEqzvDjz+A32V6uJ4zfSMAJHn2w@mail.gmail.com>
Date: Wed, 03 May 2023 22:37:17 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Rob Herring" <robh+dt@kernel.org>
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>,
 "Geert Uytterhoeven" <geert@linux-m68k.org>,
 "Olof Johansson" <olof@lixom.net>,
 "Christian Marangi" <ansuelsmth@gmail.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>,
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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_133746_418821_B2EFE975 
X-CRM114-Status: UNSURE (   6.77  )
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

On Wed, May 3, 2023, at 15:16, Rob Herring wrote:

> We could do a second level of directories here:

Works for me, but at that point, I'd really also want to do it
for nxp with its five or more product lines (mxs, imx, lpc,
s32, layerscape, vybrid)

> intel/pxa/
> intel/ixp/
> intel/socfpga/

and intel/axxia I guess.

     Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
