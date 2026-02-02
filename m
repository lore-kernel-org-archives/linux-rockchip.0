Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F88FE7314E
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 10:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U++xcAD+Af6bRFfo5EuUOkMCrvZgH0Gapp6i5D2Wcj4=; b=vZ6mVKPBL8BwOZ
	dsuwwO8Cao5CSYtxfIu72Xmt9dzPEgLvxr2XV3YYQuHK/8y3t3e7BfchIk6rq08wVI8mMnIYZAVfd
	735PPrpJ5baZIB6sCsBAWprfck39x01mirUBuGK3mGG0PQZeqY3kPzDtZibDhhOkNNkyN4hi60y/q
	kXIzV64ZV8UKSJsE9nHe4fT3Y/aOBTD4C6MT8ReqtYLEG9CZDrwSSfk98+4HTrGpxAZtbPzkFPHGb
	HOrJd96WVYmCkI1hE9Y+lWZ7Fuh+GBkRL4d8anl8JuJoDOJgI5HWFVOskO0TuEe879BeaQWDcViRv
	/ws8WC5TeHx3UztUZsSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqlF-00000004lU6-0obt;
	Mon, 02 Feb 2026 10:02:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmqlC-00000004lSk-17uf;
	Mon, 02 Feb 2026 10:02:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2AC8C42E0B;
	Mon,  2 Feb 2026 10:02:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89750C116D0;
	Mon,  2 Feb 2026 10:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770026535;
	bh=J5BGzuN2ty2qBHUEoZnjE5Et++MOWK6EDUcZfLtgETA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=izUCAWIaKJ/T/MeoqThDFIpU9m/ilQsmhgs5NRtAHvYODSJah93V/vr51/RY57sL8
	 dcs9cd2JoKMRfduTEtDpIeuB7tzFn6RTbKeIQYQ08io5rp08F9rWlCat9YuV+uqkCd
	 oUNoKGhUeEuyBDhrsO6aOhi6WKD1EW+Ac60QUNrsXxZhGGl3wvBpmPTdSOBrtG0vbz
	 HBAkR4YaYch/E3rC6woFF227/LxDn7prPwo+f0KmIfA17U4pEEtu0JYvxJsd2NTPNh
	 RLfhJTcMycPZdGg/aMpwM9oFtR7OPxsZDxkme2ZBuagt2hVBM3Nvz4SFxjnwBj1qcE
	 ceg0Lo7O7EAAQ==
Date: Mon, 2 Feb 2026 11:02:09 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Grimmauld <grimmauld@grimmauld.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <aYB2IVdh_kth1wtn@ryzen>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <aXtpg0V_sifQEWHJ@grimm-nixos-ssd-2>
 <aXyHITrZ89Mmn8_J@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXyHITrZ89Mmn8_J@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_020222_340443_B625227C 
X-CRM114-Status: GOOD (  11.50  )
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

On Fri, Jan 30, 2026 at 11:25:37AM +0100, Niklas Cassel wrote:
> Note that I've built the network PHY driver that phylib wants to load
> (CONFIG_REALTEK_PHY=y) as built-in. As long as the PHY driver is built
> as built-in, I don't think that the problem the modules code is warning
> about can happen. (But I also don't understand why it is trying to load
> a module when the driver is built as built-in in the first place...)

FWIW, the reason why PHYLIB tries to load the module even though it is built
as built-in (i.e. is already loaded) is explained by the following comment:
https://github.com/torvalds/linux/blob/v6.19-rc8/drivers/net/phy/phy_device.c#L852-L855


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
