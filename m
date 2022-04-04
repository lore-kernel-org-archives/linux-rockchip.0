Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB81CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePLDzdVCzj21c1LGL20vplGdNRwT04SySUN7JQrwMEU=; b=o8thN8M93ylQ/G
	O7GzZRlqwuxrus7D9Ob4uUpSctezz2vN1Ka67JEk5xMR6XiMnUW650a8i1wSy0jO+VALOKFDET/lv
	2oWMnHks/6KpOjyOacm5AG8RCG2IrcfTf37ObZwh5m/nAVdoE7p4MMa/BFCm6STFBupMWhnm0Jv8J
	Nf1IwUExDdwWzeKPJHYQ1Xd+Q1JONx7ULJbmRYHWFegS0vIWBj0+B3zbEy7ZuPPBuEaq9LqCjGDY5
	++49eDwBBlcriN+s+rk1wyk/d5C+A+wnqCmrmg4SBCJ7GTWiDYT4I+NOwatV8HVglwGUxdCyMQvNz
	CGzUu52dxwAplsEKcV9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIaa-00E0bx-8N; Mon, 04 Apr 2022 09:01:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZR-00Dzir-Nx; Mon, 04 Apr 2022 09:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=9zhEaqQePvW14ewysnrzSS2pFRkD9DwnAz8WDOH0qIY=; b=i6XHPuI5+nCtXiFGTHQrzvgJTc
 7GGZ/pSGnkBVh8av9LNFroW1T5hHqBrZ+NW5xRGNiYktxEsR9SwbeXAylDivQCOwCV17YwOKltshO
 vWksMZX+EuYZdmdwf1t3pXz2W43n4Aw05zgfDm2olS2cODMMdAhmdGUHDRAjc7A3zWcUQWny635GK
 IgDn3WwDiQQiPcYIdXTa31ikdnc9IvsT/KctO3LHSkXneGCEAVCT/vjtF38coGoK52A529YGjfNIO
 /1ll19ZM8KPG+LaomK42q5eqqmI2jx5OQ3Lbtkc1B/jGd4vrismiiXBRkjGK96TpSjbGHv8au8A8f
 sQ9YNdIg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZM-001UG0-DZ; Mon, 04 Apr 2022 09:00:18 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZA-0008Ew-K0; Mon, 04 Apr 2022 11:00:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Russell King <linux@armlinux.org.uk>, Julia Lawall <Julia.Lawall@inria.fr>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] ARM: rockchip: fix typos in comments
Date: Mon,  4 Apr 2022 10:59:57 +0200
Message-Id: <164906273050.1398682.16347143203521468144.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318103729.157574-32-Julia.Lawall@inria.fr>
References: <20220318103729.157574-32-Julia.Lawall@inria.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_100016_746578_8789DD01 
X-CRM114-Status: UNSURE (   9.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 18 Mar 2022 11:37:27 +0100, Julia Lawall wrote:
> Various spelling mistakes in comments.
> Detected with the help of Coccinelle.

Applied, thanks!

[1/1] ARM: rockchip: fix typos in comments
      commit: 2946aa908bb63539b566fc3ba0b867022787602b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
