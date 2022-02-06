Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7157FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Feb 2022 12:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:From:To:MIME-Version:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cQhho5uu8LsExXKM3R0/P8Vi9IcxWU5d7WkmSxJ/xb8=; b=FTBEMatUrqlRDA
	uQshj1vSHBV1IhBJhvp3BKot46VUehiFHk6aBH7DYdTz9taF89vJy8qhjFOH1N04ew9QgpRke2Pa2
	jvhB1As96YsxX6OGXkVt0HNuZSNwQmtQy2qKGpIGqAlIeXf0Jv6ad8vI72ZP7E76PLznQh9mmQvKi
	7l10ALZl9sRy9LrB133JWaCzlNbc0UpjrsyjBqDuEkB4ENXPUTRWvmwKurlc8ZWC1WbYaTuiJxVtZ
	1HC9bZ8i+WUmR4ZNymJTfTH/vvKkRczf4b9CBDx/GePPdt+6yqdfQlF1SuJPuU0EgEtU5IXhl++QH
	9dH+88xQx9Bsnaba0IsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGgy3-008BR5-3u; Sun, 06 Feb 2022 12:48:35 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGgy0-008BQP-Dv
 for linux-rockchip@lists.infradead.org; Sun, 06 Feb 2022 12:48:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
 s=2016050301; h=Content-Transfer-Encoding:Content-Type:Subject:From:To:
 MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yUR1G+G65gLkJOfNohwINHoLIefyL55aO9aWt4dYB7U=; b=gJjPZk+4qIZZAsXpBqN0Nllw5n
 5GRLlUNpSYkoFXmOcpJKlw/wME079Ofp3dYkZnHMWVAasoMUiSMF9moT+iw1AcEJ2SEuwXDkTr0ZO
 gk25ebTmuGRnrvQedUswc1LOxPk0MBD5XphKJpE/3oxWTqvUf5nHo+16hlKbYJHl0VSk=;
Received: from host86-151-200-4.range86-151.btcentralplus.com ([86.151.200.4]
 helo=[192.168.1.77])
 by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
 (Exim 4.94.2 (FreeBSD)) (envelope-from <subs@pscan.uk>)
 id 1nGfuK-000Cxh-OE
 for linux-rockchip@lists.infradead.org; Sun, 06 Feb 2022 11:40:40 +0000
Message-ID: <d33c78f6-2f27-35d2-4ac1-2124edf8cd66@pscan.uk>
Date: Sun, 6 Feb 2022 12:48:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
To: linux-rockchip@lists.infradead.org
From: Philip C <subs@pscan.uk>
Subject: how to cross compile 4.19 BSP?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_044832_514520_AB811AA5 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

I am sorry if this list is not exactly the right place for this 
question, but I don't know where to ask.

Until mainline supports the DSI/LCD output I need something that I can 
use for my project based on an RK3566 with an LCD screen.

So I have been trying (and failing) to compile the 4.19-develop branch 
of https://github.com/rockchip-linux/kernel

I have been using this cross compiler:-
gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu

using these commands:-
export ARCH=arm64
export 
CROSS_COMPILE=/home/philip/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-
make Image modules
make dtbs

This works on other kernels, but with the official kernel source I get 
many, many errors which are probably beyond my abilities to fix.  For 
example I can compile Radxa Team 4.19 kernels, but my project isn't a 
Radxa product.

Three questions:-

1. Should I be using branch 4.19-develop? or 4.19-develop-rt87?
2. Is there a particular OS/version and cross compiler that I should be 
using?  Currently I am on ubuntu hirsute but I have no problem to change 
it to something else.
3. If this isn't the right place to ask then please where is?

thanks, Philip



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
