Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8651ECE58C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 23:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QmqPcBxOMf4w8Hg9LI5gZv6us3WCv2wrb6K5ESKjrg=; b=RLrc8g6xJQ5VeR
	Kv2YXooY2ExXq+NZZPb3DrJBqDWau986qm7ey2Z5z3hz9hMCFnMUxiPz1Y1iITz1lai9gLqnuoVIq
	lhvUyXc0BbZp1jkLEZEUcVyIcn6ir/v8T6NkBv4l5ZvUcingJ6TrQQKMBkfCjQhYfou/X8vr4z1WT
	XxRgaay4VE+o5wEvOQ4sLOvSua4HRfiNOoh1Yu38J9vPRsEoF92Gzyyt63b+q3yBDI7Ao2pWqzym0
	8c2QTOfRDCo9EDOZeN9fLzimIlHpD0Z5SdXqoeuhZjJLu4O4wyjiXAvY6fDs8tnLz4iDVo+n08ZBG
	gY7iCaVVOTJpFfFa8eVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snnao-00000003YJp-3Zas;
	Mon, 09 Sep 2024 23:14:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snnZm-00000003YCu-2kLl;
	Mon, 09 Sep 2024 23:13:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 18B0D5C0206;
	Mon,  9 Sep 2024 23:13:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 307E9C4CEC5;
	Mon,  9 Sep 2024 23:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725923621;
	bh=voaRQexsgqi637UtNBzxG1lAcobf7Q89NWHna/VDy5o=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=W1KU08Rz+KgB/ZGt0GC5+VPolQeXAcl7fzBaeHap0puKt0F5R7cWI3NsA2wxA1uWt
	 hEMf5yojJyxPtInNVFTEl4ju4KvWbSQNHPRzg6vo9ofzcxcRp/MIOqKtti/o91zTI1
	 nRiQeldT+znzjECXxu+autpEac14gQpDIbwhuu6fSrShFITWcQif+uZsjaenG8yVn9
	 hMVcKkpdZ5HoMI9qhRJ+x1XOWmsDvs6oIpCpIm0JZbG13HRjEOTfolV1q9wNcOyxgY
	 rFRhtvCl4GjTKcqA3i0lAqO2Qe43A4QutP5bnoIF7W6JdfhpuZ1zKy541aCXxQbnQf
	 AxshmVz9E+ViA==
Message-ID: <8073f2546b0395bb11113650f15dca79.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240909223149.85364-1-heiko@sntech.de>
References: <20240909223149.85364-1-heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: clock, reset: fix top-comment indentation rk3576 headers
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, detlev.casanova@collabora.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Mon, 09 Sep 2024 16:13:39 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_161342_779440_8B9E7D7A 
X-CRM114-Status: UNSURE (   7.28  )
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

Quoting Heiko Stuebner (2024-09-09 15:31:49)
> Block comments should align the * on each line, as checkpatch rightfully
> pointed out, so fix that style issue on the newly added rk3576 headers.
> 
> Fixes: 49c04453db81 ("dt-bindings: clock, reset: Add support for rk3576")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
