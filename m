Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08CA4C9832F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2026 16:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLmyYBBu7jKbqq/3ET/kF7gBGNHAs3UD3g5NCwIDOVo=; b=JvdDw+Ei5fffyq
	PLtezI2y3UROWdPiE6mpvhQqs+Tvlx09dJwYdYiKDTXv8DLomcDppj6AzBwLyD9VFUnqLK1f/WQ6o
	V/oIWbV2V55QhwncTK6TJuD+vHXy5rZpg5W9g4ajYy3szgi4waD4zsaxqn85YuHdwwpLdiTOCwFnI
	RD/KqgKdcv8KRCqYHRLVvJfiuQSa5C95ogPnB47yd9/dF1RlPhfKP957Anut5joSyeU+nQMkeVsFL
	/9Q2IGGO9EAdSPo9Tfy2mBseBJab2nK9kZlCY4bMEVLaj4BnbIb7y/VIBTU3RhRlAYiwXcpiNFkGr
	QVRWLA14/O5czFHIV21A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xArSp-0000000GYCu-2UKj;
	Sun, 27 Sep 2026 16:10:55 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xArSn-0000000GYCE-0MhQ;
	Sun, 27 Sep 2026 16:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Qkb44GxQlkJlaGvSbdXr/VqLO2OL9eSsLbx5+2uugSw=; b=QJ9NYif8+G+w6Kao0mVbEdQGg2
	ip5qdp0JOj3TqDJ6gbeys1zKRezu1GqXg0YeQAXaewSJHK15K03NVP2Nm8KX5Bk0nXr8E45Kfdfhb
	LWU51QcP+wDLt/PMs1ffXuaCjnux5t+Is5Qhmy+PKjP/7WLiIWYsjia5CYEkaputd39Q=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xArSk-007XPL-HJ; Sun, 27 Sep 2026 18:10:50 +0200
Date: Sun, 27 Sep 2026 18:10:50 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: BG9OXA <bg9oxa@163.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: add ALIENTEK QuarkPi-CA2
Message-ID: <de8c3f72-26d1-4c9a-86c6-12afb3fe97d6@lunn.ch>
References: <179051708448.31632.16350193430088134671@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179051708448.31632.16350193430088134671@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_091053_128261_D48DA38C 
X-CRM114-Status: UNSURE (   7.08  )
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

On Sun, Sep 27, 2026 at 09:51:24PM +0800, BG9OXA wrote:

> Changes in v2:

How much time was there between v1 and v2? You need to give reviewers
time to actually do a review and point out issues.

At minimum, wait 24 hours, but ideally 2-3 work days, and allow the
discussion to come to a conclusion.

	   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
