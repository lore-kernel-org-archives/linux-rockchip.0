Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26467C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 17:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6ETjvjjgzifYoLyWb4YEEmTd3oA/Tcot6W37xY49y0=; b=XtZ3ST99mCm7Gy
	0jKY5dqRd3RCSr1k+LjCQDjUyoa6zPcZbpl5vthcjfA2maw0lWOIY4BE8bUUmUmHGz7LaJz6ywta3
	R+T92Jo14MiQ2bEBT1f4avNhEIbrfLCsnk2MmAkfyJcIpw7vISndPeJBuM8NbUv5vmm1xWO/KnMKL
	FwJxTPUiESmNxd0BnMw5VB2oPpKdG+3uWSkWbLBkORutaXqcLn8OD0dGciYsDv4JkKGwHcXN9E56H
	6qade78IhIROzZt5OwhZWuSPsd8VggXR9YtUWg/YjNn2b3o2vFRKDwtmvtRV8bKoKE9g8ukDe8vhm
	k3f7apHDcfrMPs/hTYHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2FUp-008NqM-2w; Fri, 17 Jun 2022 17:10:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2FUV-008Nl8-Pq; Fri, 17 Jun 2022 17:10:40 +0000
Received: from [213.70.33.226] (helo=phil.intern)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o2FUN-00063w-0p; Fri, 17 Jun 2022 19:10:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux@armlinux.org.uk,
	Liang He <windhl@126.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm: mach-rockchip: (pm) Add missing of_node_put()
Date: Fri, 17 Jun 2022 19:10:28 +0200
Message-Id: <165548567344.3407211.15518569345867067474.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220616021713.3973472-1-windhl@126.com>
References: <20220616021713.3973472-1-windhl@126.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_101039_883722_03EFFB9E 
X-CRM114-Status: UNSURE (   9.48  )
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

On Thu, 16 Jun 2022 10:17:13 +0800, Liang He wrote:
> In rockchip_suspend_init(), of_find_matching_node_and_match() will
> return a node pointer with refcount incremented. We should use
> of_node_put() in fail path or when it is not used anymore.

Applied, thanks!

[1/1] arm: mach-rockchip: (pm) Add missing of_node_put()
      commit f4470dbfb5ff92804650bc71d115c3f150d430f6

There was an unneeded tab in the blank line above out_put
and a completely unneeded blank line added at the end of
the function. I dropped both.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
