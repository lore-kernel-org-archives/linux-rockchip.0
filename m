Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E179CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=te+ch0xeKDTth9Ppi8S2iFYGo0sZDTmAsMDTJiUCkQM=; b=Oi7B8OQTmQEvYp
	k6nNXKbxC01RqCGlGi5iLNnwH5GHQvhOPzP3scNVV1jvCDOWLiZpqUhBOSivLK3WRDsnRF5kviqWw
	5VZeLpj1j2EPseXuLd0WU1/JQHpou5P1G2r7X9N8n5bP37Ae54v4w1D6o7GvrdF7Oqpoytswi7cGS
	/AtXJiHW4M4HgtKCg8qO79A+5ZVboMgcCiGnB+Aka9PVe2FkLRK+nSCb7AzdjPJMX4IS62eKAerlT
	yC3PgzD9FLmZOyEY3/sny+UWCbhgQNC25/mUPczmhNtG4WJI1TIbJqwp7iBarPhZvf8l6oHJlk9Aj
	Td48UVQc6oOjqAp+JFHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIZX-00Dznz-JS; Mon, 04 Apr 2022 09:00:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZJ-00Dzcn-Mt; Mon, 04 Apr 2022 09:00:15 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZC-0008Ew-9Q; Mon, 04 Apr 2022 11:00:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, Johan Jonker <jbx6244@gmail.com>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] soc: rockchip: pm_domains: Fix typo in comment
Date: Mon,  4 Apr 2022 11:00:01 +0200
Message-Id: <164906273050.1398682.14077881523760006890.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220326183451.66115-1-sebastian.fricke@collabora.com>
References: <20220326183451.66115-1-sebastian.fricke@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_020013_841102_0A489E9E 
X-CRM114-Status: UNSURE (   6.80  )
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

On Sat, 26 Mar 2022 19:34:50 +0100, Sebastian Fricke wrote:
> s/eject devices form power domain/eject devices from the power domain/

Applied, thanks!

[1/1] soc: rockchip: pm_domains: Fix typo in comment
      commit: dc08a6884dfbd2974f681c8fc1211d7284273bfc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
