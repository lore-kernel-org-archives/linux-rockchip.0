Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94453D3ABEF
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Dec 2025 06:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcYTk3WiwKEtkV1cQmRltkkit8xRdKprxqqhMhtZTfM=; b=d0lIPC+G+seZnk
	LGH/3OXvuScdAWELRnRAMa+11yZBYZi30dofk6hAoacnpjeunHzdmtjDngqVVl8TG1hXmVu4IU3og
	aTktpSJMa4xjK3tFYkgQctbOXx5099jbNe8E7NpBWIY0LnaOm4MiWvsbvQHZr2lh8E4iLiQUdZgWg
	0ztw141BYn8lht+HN2Al8t+OeYju9RCPSu+hsemB4m4/T29IgbjhDf1DhjAF8GaxDaeym1Eky4k05
	1DEHGPCdAySN0tEOtWCGd4vzqknV/Gg5jme3IdzSxT6407WVParaIWGlIEdN9jv5ktapUWzhVOhiL
	zj6bU5dJapwGgpg2Ws+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSUhk-0000000CgUm-0Nuk;
	Mon, 08 Dec 2025 06:26:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSUhi-0000000CgTw-0tcm;
	Mon, 08 Dec 2025 06:26:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 26CE4438D0;
	Mon,  8 Dec 2025 06:26:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE569C4CEF1;
	Mon,  8 Dec 2025 06:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765175197;
	bh=VfRCSRSZyuEZiyiiHqC5815wiOeaBDWsPYTCQKLJ/0E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AfKJHMPFDsmEQcxLnriPrRfkvRcWTsG1BczsVXM8ICvi4aGxiaNpw4tN3WL7+yFQu
	 K5V5IOtf+QDgWJqOeTLCWCo3MgYXjjtQ3PSGH1qUDcjNIl2O+OQPMXICB79yhnmCyU
	 SzPSH63XGRbUBsTi/OXAgQ2VAdMbaNkTSrVhWcSR4lTeGPrlfq8RO+dDafpqBJgEvj
	 B4tfzH7Hl4tIyLRibD2M9bKgKQT8rPwoV9SAKiHxYNW3BWisSqIQX680lUM+lj3Axy
	 0nNnixe4CdOaI3hzqEnSrYH0aXCOYsh+gNK34b1426vXrIgH2XoAj5D6YEIXj/LWro
	 vr/8HBDasNohQ==
Date: Mon, 8 Dec 2025 07:26:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: pinctrl: Add rk3506 pinctrl support
Message-ID: <20251208-invisible-ingenious-lori-b8aeb2@quoll>
References: <20251206050844.402958-1-ye.zhang@rock-chips.com>
 <20251206050844.402958-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251206050844.402958-2-ye.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_222638_300348_A2716DF9 
X-CRM114-Status: UNSURE (   7.71  )
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

On Sat, Dec 06, 2025 at 01:08:37PM +0800, Ye Zhang wrote:
> Add the compatible string for the rk3506 SoC.
> 
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Squash it, it is really  just churn to deal with one patch per
compatible. Especially without any explanation in commit msg justyfing
it.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
