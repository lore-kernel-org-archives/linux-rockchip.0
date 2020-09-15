Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 017EDC43461
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 00:42:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84C60212CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 00:42:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="g4GBx/L6";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmmTSex8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84C60212CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:References:
	In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LFx04ticWNPPPmBQHiA8VIVc06OE1AzBfcHm5gklaDI=; b=g4GBx/L6t26QnJr/JbxMu38pI
	DIIUdS5Ou5Dt5eNeKH+VUyCzW8YxF8itDy249xXVkAphzmvbLmbOJl0hZRQvY1og/WuTV4rZS2ffj
	EWKSJy7uoAusvimH6A954jiIjtpYIXdyFKoMCQ6QrARnZhhQrJx+eeaJnu03nCQi4gN45aHNAW+uP
	YP2bEWvTUSiq9Nr8YLI8FZ83odYeckndK/obZun9GHpRDwW6hOVpZ89eTYOHphFa1oCTo3HEYvJzu
	oDc22MKmZT9zM39HUVN6u4/v9bg0AnnlWaZVQ963coVvpcv18hWAkfJswDhy6Kiw39f9vLx30El7s
	QPJuNTQ/Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHz31-0006nu-S7; Tue, 15 Sep 2020 00:42:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHz2z-0006n2-SN
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 00:42:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2EDEC21741;
 Tue, 15 Sep 2020 00:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600130533;
 bh=Qi+wZBAQJfjFjzNK36VfjuDr2/YFCbpYm+oub6MDfM4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=mmmTSex8slsEgWeV3Wa9fiGtWNAWoMzbbOtA939NOCGpVgIBslx7Q2T7HrXDATMQp
 qhD7Yugzw+BULgoWPhMbWkeAhVLU5Z6u1rA5CWUjlk5RBqZ6QCYV3o9jeOgqgyF7YV
 QAgNsQFP2MkLD+YRDJvDBOi+xtAsebWBSUlhdDd8=
MIME-Version: 1.0
In-Reply-To: <20200914022225.23613-5-zhangqing@rock-chips.com>
References: <20200914022225.23613-1-zhangqing@rock-chips.com>
 <20200914022225.23613-5-zhangqing@rock-chips.com>
Subject: Re: [PATCH v4 4/6] clk: rockchip: Export some clock common APIs for
 module drivers
From: Stephen Boyd <sboyd@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
Date: Mon, 14 Sep 2020 17:42:12 -0700
Message-ID: <160013053207.4188128.5102937681760998236@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_204213_971193_32081150 
X-CRM114-Status: UNSURE (   9.49  )
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

Quoting Elaine Zhang (2020-09-13 19:22:23)
> This is used by the Rockchip clk driver, export it to allow that
> driver to be compiled as a module.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
