Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6165AF41808
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 09:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFWdJ6rj/s025BkspjBP30tQIfDFn0Kzbrxg/0nfKbc=; b=jMll+6gRoycPe2
	QgK8osM1F22oSAHgsjKmyoq/L88Gyp+zARrnBB/Z8uicNyOru06WTUGuGddPqQPAX3iIW3FdaAFrZ
	tbyn+NPtt9UdRJ83fAGpYNQoGIsNussIJfc5/AE4XEesFQFpL9CBBXBwizjk2R0cf5s/GlN7tk8QR
	9uvw7FszXfzZZyOxdwRyAMT79sEha5zw3Yv2XBiW/JN8jhuFDrzEzXoUcbDojCKZ1xTiUJ6lIaQj1
	RvGbs1ipIAzDihEqbWF7eTiOeGh3pdtM5r8/Ou9e2YbsoafNW03iLx6IC+kBA95NwpZQX/YkagSH/
	q+lLhWHcIvxg3CCZ9hMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPu-000000095qu-0s2U;
	Tue, 10 Mar 2026 09:30:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPs-000000095oK-2alC
	for linux-rockchip@bombadil.infradead.org;
	Tue, 10 Mar 2026 09:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=BQFB551uQxWQuLg3XRRlCuau7a6nCD7Elvt70vllWfE=; b=WiZMSUPpUWpzfRRpje2qXncVwi
	ppXhYzDakC91X1AOmAjASDn15afGXX4gc/77nRpVLvWR2kCe7YdNrWYdEWlwOw8qgL+qRK8eWPRnG
	lyrcz8cfkbzxBdc3LlAK5sAI1FygufEtfYPiSO+Uv4ULjd76WfqdTyDoPYVksXaF8xSJVChgr0XZQ
	p2p03u6lrBg55Q4o1L3IkSxfJnRdVphLEn/Pelnca/X85nRfppcO5XQlO/Tj9DWezezSX/XGmYgZ/
	tc9oIqap5uvaWXtBrrsVhD/VR0rmhDzBHl1gn7r7d4Xf3oHzTK6HPfieK5wyte/+YEVzf5NWNZtgR
	G/Z2oIEw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vztPo-0000000E7pj-3YzS
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 09:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BQFB551uQxWQuLg3XRRlCuau7a6nCD7Elvt70vllWfE=; b=hoWcc4nnibu5kfPRzlIdx5Scie
	T7YdxgowCXYrlHh818iISKD+o3IxN63Af/h72WudZuS0EyfpuhOY223oCc5XBavVu7qV5WOeH6fwE
	uTW88E+j4n/KAJsxZezjBR0q5qrsAXCXz3nYzbEJ9/iM33c509Fypzm1UuFxk4IQA8JdJEvjSIZq9
	BfVHJ1QgEt1fCaID+Be3/wh0kReQybezf2c7aDq5k8ySzhWMfsLQ3WRcjTFCaZvnn2nepiuVFk0d0
	usLUdffZ3utfzLkZfqklU9xlFlEBAp5PnjUEWlojPxDiIj3wVqig2ZpUGSY4wLiVixKVGwLkq8y1o
	VbhPW6Dg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2] clk: rockchip: rk3568: Add PCIe pipe clock gates
Date: Tue, 10 Mar 2026 10:29:55 +0100
Message-ID: <177313498967.2340533.2279759049347731335.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <1772799641-32164-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772799641-32164-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_093012_994569_CEF66556 
X-CRM114-Status: UNSURE (   8.04  )
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


On Fri, 06 Mar 2026 20:20:41 +0800, Shawn Lin wrote:
> The PCIe pipe clocks are currently left as orphan clocks and remain
> enabled indefinitely, which is suboptimal. Add the missing clock gates
> so the PCIe driver can explicitly manage them when not in use. In order
> not to break compatibility with old DTB, mark them as CLK_IGNORE_UNUSED.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: rk3568: Add PCIe pipe clock gates
      commit: 41b1a6760959017c4fa1dbc7c3cc318406ab1455

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
