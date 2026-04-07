Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CED1FB517E
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Apr 2026 07:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZiL6Q3arK7Bun7j5j2rJBnxYOLTp7FBCHuplT94tcw=; b=eVjVO7zSlaz6aP
	g/sB7FKJaM9XSOKmkhb7GS0RjUL55VHuUk0GGz+ojwz+mQGeRQi7FLgQXFnbzPIY0weXVuz8zr8xT
	fY2bJ+cbl8jD5EYhwufl9E27qWSupFvz8EVYFbKsF97cq0f7jWHz1R4fy//qyPAAACF950J06o0gb
	GRumcsln/3f7MuB1bl4R5mQ741WX8eH2daoE2+fy9D3Dp91BnsHswF5ZZ1GFdhOjH4Z7awVl0WYu7
	CYOtPL8CBfPLj7F/X0nr9aTfGWCzh9qI5lShrD3I4MqQiUT3y/befo6IbSieT9JD08CYNKnMz9+Me
	yEx+egz+u48p7SWh9UFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA0ar-0000000637M-1Tu0;
	Tue, 07 Apr 2026 07:11:25 +0000
Received: from fr5000-r.dnsiaas.com ([92.42.104.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA0am-0000000636Q-0Upv
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Apr 2026 07:11:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XsOec6Hdyz9yZOVLnyQeVGGV7sb0eWBIKC1Iabb4xRg=; b=g3qwpRmcE4Tu+1nF83CXg+E62r
	t6kYFb9LyUciaHHhcCH6Apxp+VDlW9e3vjjN+5VGOtF6itxkrZkAFh61f8L3OxYbmMYFZPLEmdtjz
	wxrUNQhvWfjDjVC4+qHY/PB8gTxd8X+L27lyBC3HW4bY+hyvj5yjPf7pbTI/2WQHTmWFTnMwYNWDr
	4yO9nnJBA1DG5r7G2eOoK0528YOJaXj4qilijpkVFfnLawk1C6EKzD3Mh1J7WV/R8yQkqPl76lTnP
	Zn29d4ZF4HgmiYxD664BAT9KKwEOfDgG+08RrQ3ab72s9fOh9PbYqMTY3JLUbQyVeLoyc+/A/iTwD
	omqvfobA==;
Received: from [2a0d:52c0:500f:0:1bb:1e6d:23ac:ccd4] (port=59567 helo=localhost.localdomain)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_CHACHA20_POLY1305_SHA256
	(Exim 4.99.1)
	(envelope-from <hello@superkali.me>)
	id 1wA0a3-0000000Amwp-3rsq;
	Tue, 07 Apr 2026 09:10:35 +0200
From: Daniele Briguglio <hello@superkali.me>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniele Briguglio <hello@superkali.me>
Subject: Re: [PATCH v3 0/4] clk: rockchip: rk3588: add I2S MCLK output gate clocks
Date: Tue,  7 Apr 2026 09:10:31 +0200
Message-ID: <20260407071031.69465-1-hello@superkali.me>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260320-rk3588-mclk-gate-grf-v3-0-980338eacd2c@superkali.me>
References: <20260320-rk3588-mclk-gate-grf-v3-0-980338eacd2c@superkali.me>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_001120_364489_4D2C5404 
X-CRM114-Status: UNSURE (   0.55  )
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

Hi Heiko,

Gentle ping on this series. It has collected the following tags:

  Patch 1: Acked-by: Krzysztof Kozlowski
  Patch 2: Reviewed-by: Nicolas Frattaroli
  Patch 4: Reviewed-by: Nicolas Frattaroli
  Patch 4: Tested-by: Ricardo Pardini

Please let me know if anything else is needed.

Thanks,
Daniele

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
