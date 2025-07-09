Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0BBCC8303C
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 03:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia678JSO964x+b6FEWc+GZQc2AHNp2XNhTHPG0bvkwA=; b=pFCqle707j8OM2
	qxsL6J8+OSgccjY5RORvvyquZvNdHq6N7oKjmwmVDpz/lEUehJP9y8Z/gSchCDW/u415aoSjsV/fF
	N4MfrlGSfnnupUDQ3IS43n6Z1HzR1YJQw3bUIDQJ/zM6+5bPLfDBAkBYiqNPHZYxU0pW7w3mRV5gK
	jqMIYkxDJM2NCxr0gcbVj8ZL+Jzi3dpV+YV6qhv7Qy1/EnVNp2QJaqSTWQZhSJ5AV/LWffjAyDy5s
	aeL0HCatJMHs26akxhPmCyAmhU8qkGBEaEv3TrdXzVl+QRH+J5fmZFcLcNzcfaeAFg14ZIroqRDRk
	QnC0k37npkDEXgRBOi+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZLZ0-00000007HUd-0quA;
	Wed, 09 Jul 2025 03:33:42 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZLWa-00000007H0c-44KC;
	Wed, 09 Jul 2025 03:31:14 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id B93BC25D89;
	Wed,  9 Jul 2025 05:31:09 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3EKmnVBUklPl; Wed,  9 Jul 2025 05:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1752031868; bh=VhdAlvUZfUyiLoHfSnGHdv+8Iktvv187Kvax6HkpuBo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hTJfT3i4lsyWwGvUqATGqCTf+VVuVvxScnJOqFtiKQIHJPiAQ0JIqb8BIAAlJrDZ/
	 vJ/iWyKzRyoMVyu6GmAPAVnO+BD6ZOeAwPwm1ZjL8JkRC4n0yMRmZ5yPiGtY219/OS
	 hGXSILKAhFrq98LQKfW9mQUpU90uBlFZAZLw6dnJPG8bsYwonXvd+vkEXoO/TeNIIh
	 PmUGJbeS/B24SYhFTI/cpIFruE6FbEqwjDCOlvKeIWNGMJx5WIKLLWR4KSeGQT47h8
	 yCBHRz/TTXbtxueQBRUcqiFojjukdaDQFiah5Jm3CHlOCHPEJfGS/qtsqTbKLtDJh1
	 KZEOFY/yiOtxw==
Date: Wed, 9 Jul 2025 03:30:57 +0000
From: Yao Zi <ziyao@disroot.org>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: Add FriendlyElec NanoPi Zero2
Message-ID: <aG3iceT_JbERhA4O@pie.lan>
References: <20250708224921.2254116-1-jonas@kwiboo.se>
 <20250708224921.2254116-7-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250708224921.2254116-7-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_203113_420913_238ED58B 
X-CRM114-Status: GOOD (  10.36  )
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

On Tue, Jul 08, 2025 at 10:48:56PM +0000, Jonas Karlman wrote:
> The NanoPi Zero2 is a small single board computer developed by
> FriendlyElec, based on the Rockchip RK3528A SoC.
> 
> Add initial device tree for the FriendlyElec NanoPi Zero2 board.

Tested on my NanoPi Zero 2 board, RTC could be read out, and Ethernet
and SDMMC reaches a reasonable speed.

Tested-by: Yao Zi <ziyao@disroot.org>

> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> Schematics: https://wiki.friendlyelec.com/wiki/images/3/37/NanoPi_Zero2_2407_SCH.pdf
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 341 ++++++++++++++++++
>  2 files changed, 342 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
