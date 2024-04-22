Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977FEC07C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 14:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZR4T8V6MfTzoTQGC7geqX6pZwIXXpb4A8+PyRzOqn8=; b=JB6XN/EOiHyq4o
	uYkwUP/MqvJ3dbtJIlTrZINbukIMY6Mjct/EEafg4iGnZo0/gn08CVJGfHJBKDyf1IHAkrlxZ5UAF
	PTHFejVvUSkk00U1taW8rjRja/a+P5qL4A2FxP8q86ynC+MsMoiJOqLVMZF8/Pv9Gin5fHhBCs7hM
	DnlCmq2HJSxU/hD7641kECTTD3GGIvoBKziiojL0fmdX+FAbaUlGJUD63/u2iaUhfSb+3oQWQV2HZ
	dfO4gGyTPx7IDeEL7jRErdNw96e7wgJuSPmkNwuXCP7StDPVY9kv2BWQrh5SIClJEAnA3F2jwDf/f
	TwQw5O8g+gSsdyyN4IJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryuiV-0000000Dveo-3Jiy;
	Mon, 22 Apr 2024 14:32:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryuiS-0000000DvdQ-0P4E;
	Mon, 22 Apr 2024 14:32:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AD39B60EAD;
	Mon, 22 Apr 2024 14:32:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21D4AC32781;
	Mon, 22 Apr 2024 14:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713796338;
	bh=UZIxVFEW74eS+zx3QNO5SuI2uGg45s9QOS50Qqh4CEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZAdGzVxkEz0GXl6OGmaEd/zSorzSR3q6hPLVkaU8f0vm5JffzM4Xnd0vifqLHhn3E
	 Zv4PP8L2+NxZ3xdtxxuezgsBKEmZ4GibOSHoCzu2A0gkKuVi9ppN58A7NQ5qbaVkWM
	 9qHzPchBo1ktsPqSDO7UYWvzywlUjPP7MPDKxdzh0dpeRsW/z41MggAGRDizSYeKAU
	 0u6KgXciKXiAUNDkThKE7Nek5zgqvgbVJ2GY4qpQz5WNfhiYDuCIOY9JZLUhtaiu8R
	 Gfmzkou7PyBq8+WPlIkLChxDxFzXZP1kbNYjVA3E2vBMDI2XvGdobNQgrhROQ3pePt
	 iAq0llisZPs0Q==
Date: Mon, 22 Apr 2024 09:32:15 -0500
From: Rob Herring <robh@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	robh+dt@kernel.org, heiko@sntech.de,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
Message-ID: <171379340485.1139142.4385224897520028554.robh@kernel.org>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_073220_195945_7A9876CA 
X-CRM114-Status: UNSURE (   9.62  )
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


On Thu, 18 Apr 2024 18:26:19 +0200, Dragan Simic wrote:
> Correct the descriptions of a few Radxa boards, according to the up-to-date
> documentation from Radxa and the detailed explanation from Naoki. [1]  To sum
> it up, the short naming, as specified by Radxa, is preferred.
> 
> [1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/
> 
> Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
