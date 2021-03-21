Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00F89C433C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 686C861944
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:15:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 686C861944
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/8maWv0PfDuc49whbN+V8Xirlq3Nz0xA0flyC/Hzyzc=; b=Ql5rul3vj2iNVOhrqI3QdAz4B
	Vdz2CHRi5M1jrAl2qiivcr1w8bE958Z7umQ5LdavyCmb8CZ3ddgoykzjRkzwkVbzDhVUDS7o+8am6
	o1PiyWfFwzC6G4YyYHIlYDvCExm1ZxhSOwuMsmgvsftphW+hyW4GbS6lada+IZSEnsiDSugdr2FtC
	j+qQs2x0qN2Dg4RlLhk22tYM8yBtnHCbnlOTwPkwxZp1W/T+acgsZ0LAFKE4f9GiCNC0q8H6ntJS2
	2f5if3rCQu0AdiHqQ1MCcb6aXqCAiHB4Lafmsx/LIL02kzcR54w/OXtYrkX4duUOBCE2O0KykWik0
	gIlS/7DKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO4Tg-00AKqs-4G; Sun, 21 Mar 2021 20:15:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO4T9-00AKmU-7v
 for linux-rockchip@lists.infradead.org; Sun, 21 Mar 2021 20:14:46 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO4T7-0007Oi-L3; Sun, 21 Mar 2021 21:14:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, sboyd@kernel.org,
 zhangqing@rock-chips.com, linux-clk@vger.kernel.org,
 mturquette@baylibre.com
Subject: Re: [PATCH 1/2] clk: rockchip: drop parenthesis from ARM ||
 COMPILE_TEST depends
Date: Sun, 21 Mar 2021 21:14:30 +0100
Message-Id: <161635763247.767241.6758144246841811873.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315112502.343699-1-heiko@sntech.de>
References: <20210315112502.343699-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_201442_752561_64DFA759 
X-CRM114-Status: UNSURE (   7.44  )
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

On Mon, 15 Mar 2021 12:25:01 +0100, Heiko Stuebner wrote:
> As suggested by Stephen in the series adding the rk3568 clock controller
> the depends works just as well without the parenthesis around the depends.
> 
> So to make everything look the same, drop them from existing entries too.

Applied, thanks!

[1/2] clk: rockchip: drop parenthesis from ARM || COMPILE_TEST depends
      commit: e8c51b90f22031bf3f24d1f06d23bafac250bb62
[2/2] clk: rockchip: drop MODULE_ALIAS from rk3399 clock controller
      commit: 40f29839d8bef5aecaa772afa8e5f2ff8434b49f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
