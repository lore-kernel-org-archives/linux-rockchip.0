Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B01AF8FA90
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Apr 2026 15:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHJXp1jeyzb+21jI5vkvYZfjSPz+kNAx7rbDY9OMopo=; b=hSGKBo9fa5ySBr
	ASm32SIHym9ozGLHjj8GBJkQ07kX1XgVYfj/h3a/hK4LWfwsH0ipQXJ24MqZqGP2s2pSSK6Kbw70d
	naTQIxvxswxgUkKtoWYlVLIbnY6uzDK37pIUEPAx1q7qLOTaBn2l+15iILPax/mUFUPOUo6idVVMt
	Vbust1kwc4enkvo0TB5ksroHQzKzbdBFFSoAZDcCgXFvaEXg37fxFyW1yW0WXOw8bf/tvrtRUUapx
	AmvE1SEQcpMgCICqyWfj9tQZxJ3vjkW82/z90Kc5eFPZysfYVaNKWF5/YCw5KDU/JrAj1GWMBVX2s
	4XI3Dw7E7NfGidbk/6LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFDTH-00000008rza-1rN5;
	Tue, 21 Apr 2026 15:57:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFDTF-00000008ryk-2WMG;
	Tue, 21 Apr 2026 15:57:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B116E600CB;
	Tue, 21 Apr 2026 15:57:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E06BFC2BCB3;
	Tue, 21 Apr 2026 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776787024;
	bh=L6jvH0KdJ/2HnktukZo98gY67hTXlHukwUOYENICdEM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PPXgxuERL7AW+4y8s76kQ7QH7zwyVD6XUCEvLOfHXtqa7ZqZ6db1DGYJ5QMECqtMt
	 qkvfPYlinLnOFalZEzrzh1e1cWV6Z6u1iUjpt/aMYPmPZbxpUknCjTWnBlf0kq1m5B
	 gzbpcwoo9pRWrq6hwwayrxAnWtTUAeCMdM/TtLTaP5b17jCDZA07EKtmxGqcNN+fCc
	 6MjHWP/o/JFOBVDlD8/VNHUm8j3ProgEMufhzRK7c/9VX2Pgp0N674ZzPO1hOzvlkY
	 SsNPZ9anUtD7OF6MVP/UxlJf95iolfVM17lw/WUXzc1ZEfvMUFBoKOgVdhs/ihjVnb
	 z4qcRK0ceAruw==
Date: Tue, 21 Apr 2026 16:56:56 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lee Jones
 <lee@kernel.org>, William Breathitt Gray <wbg@kernel.org>, Damon Ding
 <damon.ding@rock-chips.com>, kernel@collabora.com, Jonas Karlman
 <jonas@kwiboo.se>, Alexey Charkov <alchark@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, Conor Dooley
 <conor.dooley@microchip.com>
Subject: Re: [PATCH v5 0/6] Add Rockchip RK3576 PWM Support Through MFPWM
Message-ID: <20260421165656.168fe262@jic23-huawei>
In-Reply-To: <20260420-rk3576-pwm-v5-0-ae7cfbbe5427@collabora.com>
References: <20260420-rk3576-pwm-v5-0-ae7cfbbe5427@collabora.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Mon, 20 Apr 2026 15:52:37 +0200
Nicolas Frattaroli <nicolas.frattaroli@collabora.com> wrote:

> This series introduces support for some of the functions of the new PWM
> silicon found on Rockchip's RK3576 SoC. Due to the wide range of
> functionalities offered by it, including many parts which this series'
> first iteration does not attempt to implement for now. The drivers are
> modelled as an MFD, with no leakage of the MFD-ness into the binding, as
> it's a Linux implementation detail.

Just thought I'd point out that as this includes the linux-iio
list sashiko took a look at it.  Quite a few things and at least
the first one I looked at was valid (a dereference before a validity
check)

https://sashiko.dev/#/patchset/20260420-rk3576-pwm-v5-0-ae7cfbbe5427%40collabora.com

Whilst this tool does generate some false positives, it also finds
quite a few things it seems us humans fail to spot.

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
