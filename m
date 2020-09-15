Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3E37C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 00:42:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64C37212CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 00:42:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0TRXKVXx";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1e9GEM7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64C37212CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y8aW7Z5Mg5YDFVK8FO9gd2FkOhx6ksByc12X/lkCPgE=; b=0TRXKVXxz/53tY20OxVdTEZvn
	tTyFNn3nS+tvg6Inv//tDq+MiO23mufQKjy2GmI5m/V2HioaWmPYx56+sUeiZvELPP8FN3X3cmOnr
	BSphDjJALNRCuft0buMgxGeFtNAXvpFyirMUEQ1z3qO1bCWwLy75RZdwQCULieNgfAJlkjeItXFT8
	eq9/OpS5+dwWacj7wx9fpkNjWH1zgQzWrl8iDGLnRoiOPc3V4yQmt4yj5f4PZ2O3O5LvWwIn6m//5
	LpjPS0fumFmbop+d84KCo1/oVHtjjEaqdZEL0HUSXvyedQB7qjrtXM+xamTodB5MZJya5gre2mqnm
	3/fyCns8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHz2c-0006jN-R8; Tue, 15 Sep 2020 00:41:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHz2a-0006iv-IV
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 00:41:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38E61212CC;
 Tue, 15 Sep 2020 00:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600130506;
 bh=uxCPfJNVgMohbUsHKkLu93CrrC8rl/5bWo2Jsljjnso=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=A1e9GEM7+UQyGoPeKHeVcScMwYaIHNqDfSfbTd7eEpHzlVR9trnqZIJw16D4SCxZ+
 vd24TRd0YtIaquOqEcc4kfXgWzcpzRhnL61m3EXW5PIWkdPE0CRRZxMRx+tGeXl/y3
 XgVctsY13wUpy0C+IiSmkz+Xim/brzRqZYBNXAt0=
MIME-Version: 1.0
In-Reply-To: <20200914022225.23613-2-zhangqing@rock-chips.com>
References: <20200914022225.23613-1-zhangqing@rock-chips.com>
 <20200914022225.23613-2-zhangqing@rock-chips.com>
Subject: Re: [PATCH v4 1/6] clk: rockchip: Use clk_hw_register_composite
 instead of clk_register_composite calls
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Date: Mon, 14 Sep 2020 17:41:44 -0700
Message-ID: <160013050497.4188128.14223866096412684497@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_204148_735894_E5EC9FD6 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, mturquette@baylibre.com,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, xxx@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Quoting Elaine Zhang (2020-09-13 19:22:20)
> clk_hw_register_composite it's already exported.
> Preparation for compilation of rK common clock drivers into modules.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
