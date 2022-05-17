Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31D75C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 17:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smftGIjhWOTkt89RSZbqWxN9VXRfZ3nx4MP55BYFZRg=; b=ERbJLUyy27g1BE
	lwgAvrkZAguse363cV5I4sgUv9Q1exT+qLfzC/Lr24uNJX3QSZPB+xsdIFDuC8i+gXNl3nz6cH/5m
	N8droOkyYXKJHUe+q3saRChuN+/AVk8Etk+tJLr/9v3+eve4174WhZwzlz8V5HKvU08pSGP2Y+onB
	hTJcOlbWxG7EdLoFf1JAsmeu1L1ftx+YLlACJT3UGeXjgCVKrfUpEzLWPb5OqW17/1lT3ilJNRdow
	H/QHdR3veTXKwwZt7ZJTf3AkA+gCqqst7e0rKj1Ti3MVCH1OW2Z2ZmBkpFdZlwz4KEGGU4q8mK9a8
	71lMD/GPkEB2WyPKL7Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr1GZ-00F60B-01; Tue, 17 May 2022 17:45:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr1GN-00F5xp-Mg; Tue, 17 May 2022 17:45:40 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr1GK-0003Xu-C6; Tue, 17 May 2022 19:45:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Miaoqian Lin <linmq006@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] soc: rockchip: Fix refcount leak in rockchip_grf_init
Date: Tue, 17 May 2022 19:45:34 +0200
Message-Id: <165280952595.3113166.2509300096908076477.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220516072013.19731-1-linmq006@gmail.com>
References: <20220516072013.19731-1-linmq006@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_104539_793370_C3E99509 
X-CRM114-Status: UNSURE (   9.52  )
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

On Mon, 16 May 2022 11:20:10 +0400, Miaoqian Lin wrote:
> of_find_matching_node_and_match returns a node pointer with refcount
> incremented, we should use of_node_put() on it when done.
> Add missing of_node_put() to avoid refcount leak.

Applied, thanks!

[1/1] soc: rockchip: Fix refcount leak in rockchip_grf_init
      commit: 9b59588d8be91c96bfb0371e912ceb4f16315dbf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
