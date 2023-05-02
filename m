Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A1A6C77B7E
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 09:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkD9I6n+YvA0bs9eiEf9ERd/w+J0v25xfLkxj9UUitQ=; b=VqeyfDgjQ7lZ5i
	lt98ZEWsi+pkUmgMV+oeiYgumpWhEYeiZL7E1dpclE8251dXOpDdTa0ydjfy4HYv2onLL8m4nz3cd
	D5KYMtjUhN8uY9THuOgXesDUDD68Lkfq9tAU1Bkwz5X6bd/3vrPvIpegRi1eZ3RqtanKYT9B3DUdc
	cYhWIE1MIsCBZiVYWvjgdeZ4gN5bQZjzulkt3S+zU5hCwZA6krB8AtyZVe/i7fJ/HpsdgVImzqA27
	5eztvo/h7mPd5yiA/xdipUT1lyX71NTKU00HabyGs2x0adRamY7NSVWLG0AHXo0OMZ0Y/FtbCDEVO
	6LeLCABkUxcU9IHbBtHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm8A-000kXX-24;
	Tue, 02 May 2023 09:17:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm86-000kWU-2X;
	Tue, 02 May 2023 09:17:03 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptm82-0006ax-H0; Tue, 02 May 2023 11:16:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Randy Dunlap <rdunlap@infradead.org>,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	patches@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] soc/rockchip: dtpm: use C99 array init syntax
Date: Tue,  2 May 2023 11:16:57 +0200
Message-Id: <168301900415.771484.18287072014273670563.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230501024950.31518-1-rdunlap@infradead.org>
References: <20230501024950.31518-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021702_819703_FCCE58A8 
X-CRM114-Status: UNSURE (   7.58  )
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

On Sun, 30 Apr 2023 19:49:50 -0700, Randy Dunlap wrote:
> Eliminate sparse warnings in soc/rockchip/dtpm.c:
> 
> drivers/soc/rockchip/dtpm.c:15:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:17:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:20:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:23:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:26:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:29:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:32:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:35:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:38:12: sparse: warning: obsolete array initializer, use C99 syntax
> drivers/soc/rockchip/dtpm.c:41:12: sparse: warning: obsolete array initializer, use C99 syntax
> 
> [...]

Applied, thanks!

[1/1] soc/rockchip: dtpm: use C99 array init syntax
      commit: 7c8bfcf1fae4203142ac201d6ee450ac93b86269

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
