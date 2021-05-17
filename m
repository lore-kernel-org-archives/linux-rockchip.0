Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72416C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3FAAF60E09
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3FAAF60E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lt6mMrQ9vbhgWNzVofGVmjWXu2PDYKdC3dHZuF01rL4=; b=H65Pp2lv7lnVQdg1U4MTdXzd5W
	atZeWI4FwNLImhLAFgarsF4swpnOHW+D/lEfnaqDl3E4Yvh8p8vo0UF9FTDrcqhjF5PZSjPVeIqes
	cmf2K4vbptgo4kHQ1jco+pOQRzOxsKc6NkksCUCM4jF5KdRhWWAKKaCUeBuOfGmWywPoGD9BHOH2e
	NA7m424MQeT8jOq8iVIa8DZL2Bk50CRXqiUPrUIQ+DDWlocHFEx7PetpKscq9DwAsspncrEvLqKfK
	Z81+jndNX3hDuvXCcY6Mk2fnLTxqrfKhAfFm4rZlZXzxYSCrXizswborLfSMlFac5f2K82oqN4ZMM
	Xw/8pPnA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lifMY-00FRM7-Sv; Mon, 17 May 2021 15:40:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMV-00FRLK-03
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 15:40:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=7k37TxfOoBs3bvJfGzjNNqXa/z12Qd6ArBgg3u4ycyg=; b=YEVCKviosH9YV4JL8W4vlLCnXP
 rJHPngtm5oHjwcNH+ZrZjrXrGG266HIR4NLUjRQiUeyLt1LtIC0f/iW92CEHjqOUlmBtBE2wJ0EUJ
 5mO4HCd3648ZaQJ28RIHh8HDEdwNzkrUZapyXGJgBuyYXoDBd7ihpsW/SpELIaef4UNCcuA7xSH7I
 5gBTUNUnoaAOYQ2kGcfGKlcPadOTrhIFWjvxknDdYSMZ9fr7pY+IGDmIVOVV8TGGAUCzj1GxMh3q2
 P6/SwkTI2RMTN0ZDHn3ZrWjlNNYGR/lRUokLXvvepIMsgLNMjfU2gzABwUcS5ffRSM/1wQUZfOyM7
 McCCLepw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMS-00Dw0u-1e
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 15:40:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id C04171F423BA
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens213@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 net-next 0/4] net: stmmac: RK3568
Date: Mon, 17 May 2021 12:40:33 -0300
Message-Id: <20210517154037.37946-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_084052_242271_48229A6A 
X-CRM114-Status: UNSURE (   5.69  )
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

Here's the third version of this patchset, taking
the feedback from Heiko and Chen-Yu Tsai.

Although this solution is a tad ugly as it hardcodes
the register addresses, we believe it's the most robust approach.

See:

https://lore.kernel.org/netdev/CAGb2v67ZBR=XDFPeXQc429HNu_dbY__-KN50tvBW44fXMs78_w@mail.gmail.com/

This is tested on RK3566 EVB2 and seems to work well.
Once the RK3568 devicetree lands upstream, we'll post
patches to add network support for RK3566 and RK3568.

Thanks!

David Wu (2):
  net: stmmac: dwmac-rk: Check platform-specific ops
  net: stmmac: Add RK3566/RK3568 SoC support

Ezequiel Garcia (2):
  net: stmmac: Don't set has_gmac if has_gmac4 is set
  dt-bindings: net: rockchip-dwmac: add rk3568 compatible string

 .../bindings/net/rockchip-dwmac.yaml          |  30 ++--
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 158 +++++++++++++++++-
 2 files changed, 173 insertions(+), 15 deletions(-)

-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
