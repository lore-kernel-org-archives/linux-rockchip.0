Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66969C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 09:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7PmkKxVg8Pc5oeJ8XfKYab5pC4TTIg1bReySptl3pc=; b=C153O9bJXpoXgV
	bCabx/kMfu8eDQmvrjiFsJnJLx3wFzANFsj8D6ExRv5SLUCQL4mFK7VzAoXsYGBvQiUDUR72Bxsh8
	kqJBAcW722abXDnmDlpeHRXbQehshvgfF+ZnbIqxHYdB5KEwG0f7THQsJo95CAC6eu7gMfT9DcKWy
	JRNrFLLWnFO2KBp0JXxi0VKTDlrWaIm5kNXpLo6+x/krsUJlbptsmdsYxUFD/ucuXuTrEKgRcinDa
	bjGNtQ/6sBnyXUsKGTciWP5VH16jFwlaErncu33/k8IPKNJdXMVTmq8zaEFSpRg01iov/TQhabWpz
	A/v17hef+QjBDtI0ojvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQfh-0000000G8Ie-3nuB;
	Fri, 23 Aug 2024 09:33:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQev-0000000G8A6-3E70;
	Fri, 23 Aug 2024 09:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=STCtJF6ksMDJc9r4V5RenQAnmshiLEKgWukA/TDxI+Q=; b=NSO0xx32oSKBFoxpyROPEILbee
	9BsJRY93er3AbDRFKuOgbBiBEG5zu+lQXoIgx5hF1PHf12kBfexkkr6gDug9kk8WYKziN9xKLExIL
	SgtnCBcmMg6m7UugasbfcIzu47jfYMCAQsc0V0YRYaXi1tIqHZ+PGvTK4oqloF6B/YPhaMQ7VKomj
	Nz9+tRSGNTmihPo0kSDKmrwwNgDWUQ6jFtVaApDL+9/4ouAsN3PkoHmgoJjvBv3FJXEBuiq+RZChj
	Q1mGKgdP2qeGYyxZ7r6/2ATKWrF1wtw51XCP7nqywh2fiDBEK8akOGvAcwMPsJB6G3eTizbZJMYB9
	DCnTAUIg==;
Received: from i5e861933.versanet.de ([94.134.25.51] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1shQet-0003qS-FC; Fri, 23 Aug 2024 11:32:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, brgl@bgdev.pl, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ye Zhang <ye.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 mika.westerberg@linux.intel.com, andriy.shevchenko@linux.intel.com,
 tao.huang@rock-chips.com, finley.xiao@rock-chips.com,
 tim.chen@rock-chips.com, elaine.zhang@rock-chips.com,
 Ye Zhang <ye.zhang@rock-chips.com>
Subject: Re: [PATCH v2] gpio: rockchip: Update the GPIO driver
Date: Fri, 23 Aug 2024 11:33:20 +0200
Message-ID: <11200017.BaYr0rKQ5T@diego>
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_023241_843136_653B858E 
X-CRM114-Status: GOOD (  12.64  )
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

Hi Ye Zhang,

Am Freitag, 23. August 2024, 05:43:03 CEST schrieb Ye Zhang:
> GPIO driver support acpi and new version, set input direction in
> irq_request_resources, fix division error and debounce config error.
> 
> Changes since v1:
> - Split commits with multiple changes into separate commits.
> - Adjust backportable fix to the forefront.
> - Modify messages of some commits. 
> 
> Ye Zhang (11):
>   gpio: rockchip: avoid division by zero
>   gpio: rockchip: release reference to device node
>   gpio: rockchip: resolve overflow issues
>   gpio: rockchip: resolve underflow issue
>   gpio: rockchip: fix debounce calculate
>   gpio: rockchip: Update debounce config function
>   gpio: rockchip: support 'clock-names' from dt nodes
>   gpio: rockchip: support new version gpio
>   gpio: rockchip: Set input direction when request irq
>   gpio: rockchip: support ACPI
>   gpio: rockchip: driver works without pinctrl device

this is a patch series, so in theory 

	git format-patch --11 --cover-letter

should have generated subjects like
	[PATCH v2 00/11] ....
	[PATCH v2 01/11] gpio: rockchip: avoid division by zero
and so on.

As you've seen in the replies people get confused, but also kernel patch-
handling tools get confused :-) .


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
