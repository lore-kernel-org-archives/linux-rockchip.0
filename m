Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6244EC3DA70
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 19:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/tin+Ku+h3i8WM1ibYVkmvaPQuqKj3o7xkRDEI15jY=; b=FHGByhlBkpiufT
	bh3ucEBM6eDUhT56cUGH3eCBnuPgMcR1B57sxu5CBau9SyEon4QHbMpZTMoUDa16S/9/I3/NHGz2K
	kLnjGMdNxWjN24xdBke5jWiwW8Q8vf52y73+IJIZyguhWWhqMtL/oBxFl5lMWLL7vsDyDoP3aWX5D
	BDDUgcD6NrRu6cxhAoiIEY+dcbAfhic4g4zH1UgO2VzvojfJAaNQA/IFsyeNAXWUfjBMRfsVMP2LN
	hpJ7jvc92lRdAFaM/uyJj6jqAViYNKPIbSvCzV9vNnYVvT5g9Mk6DAfdBSrWuuho47odrzRN+uJhQ
	+FFH0CTeLanhvzV9MpaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYsCS-0000000GEGi-0CxJ;
	Tue, 30 Jul 2024 19:07:56 +0000
Received: from mail-4022.proton.ch ([185.70.40.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYsCO-0000000GEG6-3xLg
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 19:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=urja.dev;
	s=protonmail2; t=1722366468; x=1722625668;
	bh=saWhBVeizg0sVdQ6Vyt/B9QfErmZv7ysjEY0xq8TAOE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=aUFxCHV5ErqO3t7yUec1AfkzKBfaFOwLT82kEXZZrP7LeW8bxa6e0Sd/5pGIstwbp
	 38uzczgEbnprMAOobCU8H16XypQucvojDavpe/Di2dVSsWbwrZWuNYbkC/nDmg4IVA
	 DTHyAtNY4gisw7thO38HFgC92/taDGBZeXpWt/9ZUlZQCo8EB320A9kuyWeRMTNbjl
	 GxRvPUlvjY7jFIBOrlMy85Ps/A2o+UTbGMR60qaCCpu/iRr8wh2hVBHCzsn9SkQwf6
	 l96gFluuMUMEk8xOFbQpZXIIv9FveJ7ennssyZgZ+E1p9Rw0Rn6owlMDdGXtiGtICW
	 bnZIbMi1ZEtjA==
Date: Tue, 30 Jul 2024 19:07:44 +0000
To: Sebastian Reichel <sebastian.reichel@collabora.com>
From: Urja <urja@urja.dev>
Cc: Lee Jones <lee@kernel.org>, Dmitrii Osipenko <dmitry.osipenko@collabora.com>, Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
Message-ID: <lJ87fvo0QzsVinjBdNVA7jnCEFm0-GBVJhFpFwKWCIS1M-kiuXP_mefSzm8G2Iplic1LlekmwUD6OODDJAtiDOPuDZ08HT965Tkmibgn6fE=@urja.dev>
In-Reply-To: <20240730180903.81688-1-sebastian.reichel@collabora.com>
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
Feedback-ID: 82529409:user:proton
X-Pm-Message-ID: 6ad94b037d6329c541045aad68e64fee5a4c1d46
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_120753_381041_AA33B4FB 
X-CRM114-Status: GOOD (  10.55  )
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

Hi,

On Tuesday, 30 July 2024 at 9:05 PM, Sebastian Reichel <sebastian.reichel@collabora.com> wrote:

> To avoid this we keep the SYS_OFF_MODE_POWER_OFF_PREPARE handler for the
> SPI backend. This is not great, but at least avoids regressions and the
> fix should be small enough to allow backporting.
> 
> As a side-effect this also works around a shutdown problem on the Asus
> C201. For reasons unknown that skips calling the prepare handler and
> directly calls the final shutdown handler.

I can clarify that bit a little - basically, when the handler is registered
as a poweroff prepare handler, the kernel thinks that the C201 cannot poweroff
and converts the poweroff into a halt, so I assume the
power_off_handler_list is empty - which makes sense, the C201 has no firmware
to call or other poweroff methods that I'd be aware of.
(See kernel/reboot.c line 746 and 683.) 

Anyways, this patch works on the C201 (tested on top of 6.11-rc1).
Tested-by: Urja <urja@urja.dev>

Thank you
--
Urja Rannikko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
