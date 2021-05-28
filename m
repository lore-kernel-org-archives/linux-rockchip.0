Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77F57C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:57:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6F33610FC
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:57:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6F33610FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KT5wxb+lxBbrCQXhuRU/w3U9FWLVMRqKETTEXztbxHc=; b=pzKZroQhrVJoDU
	YZDizJihrhTeaBGMZ6AweAx6stLQwxpRjrNXQ1dKH03hdXoIuOas9TjxZSgpLLrkx+gQDJV38yglU
	TS3NY4x3BawbnD8UGAIwygaNHNkBzbNbq9CD8K3QoLIYALreRqW/dFyzf/PtG0L2cCUsnhHN7lOPH
	m9QKPuVsnnBGKwccdRq6XGiAW6ZrXkBFCldUClnCEZZi6KXxNOjX1v5kYLttiEDhfFaHUhqsOV+TJ
	A7HYndXS27HSj6C2SSJdXHNAsyqqyaxHA6ZQdwQeoiqotQQV/MH/WpZU6TycoOF7IkECQ1aMOZD3E
	AMWtZTxjZe/GSgOGpS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmhfL-000Siz-00; Fri, 28 May 2021 18:57:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmheK-000SDZ-VH; Fri, 28 May 2021 18:56:03 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmheG-0006hU-5i; Fri, 28 May 2021 20:55:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: daniel@ffwll.ch, Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 miquel.raynal@bootlin.com, airlied@linux.ie, hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-janitors@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Fix an error handling path
Date: Fri, 28 May 2021 20:55:52 +0200
Message-Id: <162222814865.2904787.11303263150056915377.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <248220d4815dc8c8088cebfab7d6df5f70518438.1619881852.git.christophe.jaillet@wanadoo.fr>
References: <248220d4815dc8c8088cebfab7d6df5f70518438.1619881852.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_115601_098536_B1D7BF9B 
X-CRM114-Status: GOOD (  10.19  )
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

On Sat, 1 May 2021 17:13:16 +0200, Christophe JAILLET wrote:
> 'ret' is know to be 0 a this point. Checking the return value of
> 'phy_init()' and 'phy_set_mode()' was intended instead.
> 
> So add the missing assignments.

Applied, thanks!

[1/1] drm/rockchip: Fix an error handling path
      commit: 3dfa159f6b0c054eb63673fbf643a5f2cc862e63

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
