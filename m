Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 782DDD2CE12
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 17:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFKIfYCSjjsJlCTCwQKkoR0FXHwYBjn7VA7spK92Sq0=; b=RUhsrKACXp0NUJ
	3vqNKXmDPD/q9yxwSTd2EwFVyNcvteHlhYn4TzyPr688HvZGJGrpfRb4vIaNEXu/XA9h/az+UPkGG
	u9ekbdxT7ZnfrNUkvTSXiZuJf3rBzUNfgUois6Egit1b9frdTEi1K0JHrvV8cYpPWtGaIesWhfEbg
	GK47lbq7SgjdvyVxB99peQrhLPpoZMJBiazAsj3inocB/AKfPAGBu8PAvhTpRuE8IFtUsZyPLWywZ
	DfsNguM/w3zWLoJ51+/t5I6UPEWkA2dOggQgwWmJvehTagVpVP1zf27+ABUnndh00Wr4Hav8pxG6a
	FsHwrRBdHr7l8h40iYoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3J2X-0000000BjIi-0SaP;
	Tue, 22 Oct 2024 17:51:29 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Iut-0000000BhI0-2OQ8
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 17:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1729619012;
 bh=Cko+J094pa09qis/IPFfAwUwxH+yIqcbrXJUtNYDkrI=;
 b=L8MbITeDqddiEA+pMLC3OVOGmmIRppHVucktO/a0kfhKBWnGGXnn6zDbi0iKnZPNvZEp/ym/5
 OhUHXf+6qWcRnSYltA+GVDnd4PM8LVXowO5mk+5ECxmFyWM7cs3la9a2RyBn1JfI9p10o9c9ugG
 7Quvu3rBo+9IcM7FgAgRTjtEjDD0Nev24m+JaArCdtQj1/qNP5MHRRyrQHigF8TLEfe7ZjQ20sr
 0U0qrlaC64gJrNbIYbci6QF1SbAwoNpTsk629/t6eUxnG2HQXNt32/M/F05AiJTaXaV1yPoyjqM
 nZ+jncs8I10RqwG3jQMqHw3D7n+2aVJQKPyfsPN4vzvw==
Message-ID: <04e2e389-ba45-4d77-a152-6705b0d92ba1@kwiboo.se>
Date: Tue, 22 Oct 2024 19:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Thinking about firmware and hardware description for latest
 Rockchip platforms
To: Shimrra Shai <shimrrashai@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241022165413.2156-1-shimrrashai@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20241022165413.2156-1-shimrrashai@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 6717e442289888ca1b5a3b18
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_104335_786559_BF70D036 
X-CRM114-Status: GOOD (  10.27  )
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

On 2024-10-22 18:53, Shimrra Shai wrote:

[snip]

> However, because
> of the need to have a specific device tree blob file for each board
> along with the kernel, one cannot just use the typical USB stick and
> install process at least with the commonly used bootloaders assuming
> a PC architecture.

U-Boot now use latest Linux device tree for all RK35xx boards (and older
Rockchip aarch64 SoCs). With the EFI feature of U-Boot you can already
boot any distro raw aarch64 image, as long as the kernel is new enough.

E.g. for RK356x you can use latest debian, ubuntu, opensuse and freebsd
aarch64 raw/uefi image and boot into the installer from a USB stick.

However, there is no display support in U-Boot for RK35xx so you will
have to use serial console to do the installation, and be sure to leave
around 16 MiB of space on SD-card/eMMC before first partition to not
overwrite any existing bootloader.

Btw, regarding the EDK2 RK35xx port, please consider to update to use
mainline U-Boot SPL and not a vendor SPL blob, you could also benefit
from using binman to generate the final firmware image, bundling the
ddr init blob, U-Boot SPL and EDK2 in a firmware package.

Regards,
Jonas

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
