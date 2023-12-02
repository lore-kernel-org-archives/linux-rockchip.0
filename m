Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DEC0C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 04:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXw2n88RhVLLZVXQgAVDRxhgNyPYNcv7vVf0p5KgfKY=; b=tE8E3geJYIMmXi
	StvEP8aKAdzGA2XpAV4mC+fUurr8/YhPuJiW6GLe5VF67q5spkpy6rEqmFDK1JR/8O15t8YwhPr+S
	cy1LD1V1mZphNzyHPNvCakzINn8Ia40wALIbxADKb99lOtKrAzag7pfYYQzr9YDID3sIZ5FpIb2FD
	AQ5EihvcdRZmspfDVYrnMrq9YIISFu9wIXFW+2iu1u3gcp7vyNBetMj9PZ5h5+JJ+5C/Y496B68z4
	8zRNGuLZX0LgIIwpLz4OtyNFx0H7Ihzp14bq+RzsEjk6TR8SJQdlS7ygKcJ0+/kq9az566Nq/7eUp
	E7qdMIxRRKPyzL8WY8gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9HMA-00F8NG-2L;
	Sat, 02 Dec 2023 04:11:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9HM6-00F8Mi-34;
	Sat, 02 Dec 2023 04:11:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id D78B4B8243F;
	Sat,  2 Dec 2023 04:11:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E470C433C9;
	Sat,  2 Dec 2023 04:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701490307;
	bh=1+nNWFO5K984/3PjlBg4MbMZtLgdAePl/arFcHZyCBA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=antRZhyW9OJFc8PJ7MCSBpl6Dv69m+q310z41f5BZ/8TllOiIJ62hf3xpm+XMpn+h
	 47BwXTTORiE9/QXFF8aCeCV6KhfJ6Xy0bh9mj4zVjh8kqeKEODT94iwqph+tuX9zyq
	 6/O4dDG/hVM4Y06aH4THs12QwoToJGi3fnOI2kkTuDZM7asYag+tr0TZdt+oDn0M/A
	 TPl0W+piJh+vojH5+VC+MFBWZCuDBQjg3X4oVYp8qlgr5PevF7YMB5xel3ZLvF23Rq
	 INA9XYXS5/kS+CXxkUjC2L1jNojvnAJ6XoRcpQ6i6Y8Ms52bPyvbyC/Pj68upurhtD
	 9uV4BuIuqvocg==
Date: Fri, 1 Dec 2023 20:11:46 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Haoran Liu <liuhaoran14@163.com>
Cc: davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 heiko@sntech.de, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] [net/ethernet] arc_emac: Add error handling in
 emac_rockchip_probe
Message-ID: <20231201201146.12aa16df@kernel.org>
In-Reply-To: <20231130031318.35850-1-liuhaoran14@163.com>
References: <20231130031318.35850-1-liuhaoran14@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_201151_144645_78DD939D 
X-CRM114-Status: GOOD (  12.54  )
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

On Wed, 29 Nov 2023 19:13:18 -0800 Haoran Liu wrote:
> Although the error addressed by this patch may not occur in the current
> environment, I still suggest implementing these error handling routines
> if the function is not highly time-sensitive. As the environment evolves
> or the code gets reused in different contexts, there's a possibility that
> these errors might occur. Addressing them now can prevent potential
> debugging efforts in the future, which could be quite resource-intensive.

Please skip this pointless boilerplate.

>  	match = of_match_node(emac_rockchip_dt_ids, dev->of_node);
> +	if (!match) {
> +		dev_err(dev, "No matching device found\n");
> +		return -ENODEV;

"device" and ENODEV are not right here.
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
