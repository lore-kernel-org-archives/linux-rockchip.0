Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F34B3C3A59F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 14:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrnnTrOf3JEnosDx3OnKn8Y7Iq4UiV7lY4ulxJtwQf4=; b=QJTy52xGRDxJPn
	72iFaE6WnmqB3VZncXJ/GtxUGa0Gi1YGyv/sh9sPLLoQK+zhx8Yjbns63j7wdBWnV4KDlmRCtkS8y
	1EnMUWIDlxb9e6O59VCZzZKY/mmjPG0qtTGQRibbvQaj0JzdMVuLxxCazuQfoxGiDM12UQVtU5RyD
	xPu13OYWvA6kMKui2Q/fYCaYAijWd+WtwwdFZ2um0BoV2/nKpoXPqP8omSao0mxjHdwpEXZTXnDCt
	1PxsYbrvxgCXNsX/uvY5KvB4hl3+y+zv9yN+5ShLK+mcAY0NtY0hoD5tD9lTB2Yr/Nxs2uNMNmSj5
	lOJKAn1Rhn8pp6y/IhMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqKD-00HSza-8S; Wed, 23 Nov 2022 14:02:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqJx-00HSus-V1; Wed, 23 Nov 2022 14:01:54 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxqJq-0008O9-Qm; Wed, 23 Nov 2022 15:01:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Xiu Jianfeng <xiujianfeng@huawei.com>,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	mturquette@linaro.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2] clk: rockchip: Fix memory leak in rockchip_clk_register_pll()
Date: Wed, 23 Nov 2022 15:01:41 +0100
Message-Id: <166921209718.1733563.10543357754581908332.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123091201.199819-1-xiujianfeng@huawei.com>
References: <20221123091201.199819-1-xiujianfeng@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_060150_010840_E81ECDFC 
X-CRM114-Status: GOOD (  10.12  )
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

On Wed, 23 Nov 2022 17:12:01 +0800, Xiu Jianfeng wrote:
> If clk_register() fails, @pll->rate_table may have allocated memory by
> kmemdup(), so it needs to be freed, otherwise will cause memory leak
> issue, this patch fixes it.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: Fix memory leak in rockchip_clk_register_pll()
      commit: 739a6a6bbdb793bd57938cb24aa5a6df89983546

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
