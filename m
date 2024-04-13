Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88910C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 06:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LvM9OO+h6HhOnZHqFHTi/bsenffOmJymvvWn9sQZfrM=; b=hbylopifim6AI88fDnNVF1hizk
	EynzzCVcvqeOfMDMMjvvu29PkcE3UuJ5vEryB3txw/ARm4p6WD6geP/QlgluyDsuhLpiBrr3M5sQI
	DCeLa1c1ymuhlGuFXm9n2hEpEod+9amRXU6JlbZZ0eQdR2RMMKiGAsUjdvEUJ4i/nCGwlk3wt7kD/
	BahY1xuxO5xXjJ3+5rQH8DdbZyO6B7jTAl5dA8PvPXbqtXLGuUw8xa6hM0WaDDzudDGYu7ISF6jDM
	1/4MSxVynDaxooilJ1WM4DBzNB1Lr8hDwxqdwUYEYBUVx3/+YsYYQCjD8QExGjiijwVAUJsF43Lo3
	FR8D0sSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX88-00000002Z1E-0Ach;
	Sat, 13 Apr 2024 06:44:52 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX83-00000002Z0A-1DUi;
	Sat, 13 Apr 2024 06:44:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712990682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=edjx4KOtZo79KyUa3xCJ0nGWFUnOAaK8oUZd/7k6jA4=;
	b=h+Kv9ugX3GvZKUIbTEx8bVBDB+8Okx1GG19VKWGu3vcaqOHibm/NkV8ZRtSVdVXgHPiKMa
	LazIEggQ5THWV9yhIOro3mZ9kdSm+sbCdEJtF06uskKcyysNUBC+gSRrv+rQd9T04Yz8MG
	VfcL9hCC6UOXI+qiNA2uSP4GMExzESsUsp+n95ZBw8BntnzkUewjZj9gysB7WiNh86nIm2
	UepkxIQ2UfY4PEExOyTDWrRBd26bIZrbH2zkx2issxmYM8A6AkbygYIcGDcG5X4hgTSat/
	7MWbp1V06V7cVoY66Z2yHboon7yKWmwvqXy64dYeClEh1WH9Gjo470p9VxtanA==
Date: Sat, 13 Apr 2024 08:44:41 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Andi Shyti
 <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
In-Reply-To: <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
 <4bcd397ec377a4932c34d62c85ef28ed@manjaro.org>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
Message-ID: <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_234447_811534_88025244 
X-CRM114-Status: UNSURE (   5.94  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-04-13 08:38, Wolfram Sang wrote:
>> Maybe it would be good to turn it into a debug message, instead of
>> simply removing it?  Maybe not all client drivers handle it correctly,
>> in which case having an easy way for debugging would be beneficial.
> 
> Hmm, but it still returns -ETIMEDOUT to distinguish cases?

Sure, but I think that having such an additional debug facility
can only help and save the people from adding temporary printk()s
while debugging.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
