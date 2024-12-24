Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 893BDE7718D
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 15:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMrQGHJE5PPcHam8OVXFSAxRp2tZ0n7XQJL8RhShwqc=; b=1E9tYJ6z3Bxec7
	3xj7+ULGBGvcbCAKSjepxRrI6JSkkcATd85Zk7s23mBI6CvdAjxyiVmj7IJZaUdSh/KRdCu9mFAqK
	3nDNAXG7xddNj8UtmPs9QRJNbNQZnX8JhGQ+JgRxdp4QWWsh5B3PPA2zc+1aChjb1HZYhyw2rk88R
	g9vc/s+jFv3zdXyorgQpa912cpxR6e69NtSo92X8M867T1ued+yFTns8ng6lo2xxfFdzNTHiSiY+v
	dFHxXBD23zZpQvQ9Tn7GRSH004pVd5VePydISvgTZlTxxe560eMctJsgTbvQqNoNM2v47e5ZxmM3t
	kfmROuQtJXe0BmsFyR6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mu-0000000CD53-1HGr;
	Tue, 24 Dec 2024 15:25:36 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mr-0000000CD36-055f;
	Tue, 24 Dec 2024 15:25:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A11585C5E2A;
	Tue, 24 Dec 2024 15:24:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC6C1C4CEDF;
	Tue, 24 Dec 2024 15:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053932;
	bh=RSkzd0SNW/JvMzzuOeMN5MmbRAQ1qU4chgW0i+aVIb8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SdWu/F+n7VxS1NDRqUHV5ByP6N7QxhrGRc98iV3+c/qLcvxeG7z3qsax5XxYumz5V
	 isO2O57ta8cOqWB5NA+RegHKx3m6jlz7AHxffRKlijzWTWIZsKtbZAPSKie+L/m1KQ
	 RiJtTCX0MHZ3nloRd7dOEH5v6vdHaXpskD10GZ6Djzt8awCSjezM4QU3Y/uzj+WP3C
	 PIT5a58sQtxkkEFGuiD4lNCKpS3BVkJ8pknXBT2nnecGf17RqqllQkhViJnsT5H/nY
	 4NRm7BErqG73BwJvtlBwVJMh77KvMo9axC0REsd9Rw6TSQcYnLIpyJfALcS61tmsCo
	 u4j+yAV948pxw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, linux-phy@lists.infradead.org, 
 Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, kever.yang@rock-chips.com, 
 sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20241216100739.3726293-1-andyshrk@163.com>
References: <20241216100739.3726293-1-andyshrk@163.com>
Subject: Re: [PATCH v2] phy: rockchip: phy-rockchip-typec: Fix Copyright
 description
Message-Id: <173505392932.950293.13695128793449791084.b4-ty@kernel.org>
Date: Tue, 24 Dec 2024 20:55:29 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_072533_112385_C293407D 
X-CRM114-Status: UNSURE (   4.34  )
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


On Mon, 16 Dec 2024 18:07:24 +0800, Andy Yan wrote:
> The company name has update to Rockchip Electronics Co., Ltd.
> since 2021.
> And change Co.Ltd to Co., Ltd. to fix mail server warning:
> DBL_SPAM(6.50)[co.ltd:url];
> 
> 

Applied, thanks!

[1/1] phy: rockchip: phy-rockchip-typec: Fix Copyright description
      commit: 5e8357d45ada1065d5482b843f39f7a37c1db9e1

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
