Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F784FF885E
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XC5UUrstA5TEWBc2geisr4QdG3umv4q1uIezGI6ry2U=; b=pwGbMO4+L0vkkB
	QMkXlQA8zm14bLiiuY/7mAvmGV25NR3tEyCqa+jZ8dmBHYLQtmVuGJH/kiL4wHnkzEKjXgLj5OJk0
	UDJ5GINxNEdhpP+J3W65E+bkiX4+3vyp6GDzBhg2/xLvs41QJ5dTXsLfCXnzmSDAmKVp5K9jQVUwh
	6+SyDlxdrBTRzZ7VTb+HJjOYCbSrtqYWvqrWrMYtLGigDNXQn7CVooP9VAeUHyGCvb7OUjdIljvfv
	2Ax5kQezjK36umO7ZIZfZrO9GtcIa377H1ZmtPwduz8ZJ6kQgbtz6OaRQGMyUN+NbWjHjzX/FzY91
	Ud2wJItc1p+URpMXY0yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL0O-0000000GtK4-0g9h;
	Mon, 27 Apr 2026 12:24:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKzw-0000000Gt80-0Z0q;
	Mon, 27 Apr 2026 12:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=zeFeA8nEaH9kZMfpZm5xXYFixMSDmpxZ1xCx9TDqN/E=; b=xVqKCCv0kMcDlK/inDVgAbW1YR
	20JvsPAQYBkVM7N5YR0qQPvhtes7iF0iIWlVgns9h7P/1LjmTqkGesWUyzLYbDQf2BpX8F5tBmjPI
	wCF94ze3RmwhTUAs5cEnkd+9e6Jx1WYKMhiqEJVyDBVuqSyY2LtjntQa8qjOnI1rKUAwfBTniQV+C
	MZN1JATxA5l/uT0iMzOQfko3Sbpejn3KBOEP+E7oFTxWW2/tB0UySMaq9p86xztSGOMZSAkVoRqG2
	JTYn8if6oy9n1D4YkE3ik2wn/HuYAfvnPGrSgYJ8CS6IeKD3Wb2/cvpi4wrPExY/mK4Rk0SF8+Xkk
	dIcw3fMg==;
From: Heiko Stuebner <heiko@sntech.de>
To: MidG971 <midgy971@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	jonas@kwiboo.se
Subject: Re: [PATCH v6] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
Date: Mon, 27 Apr 2026 14:23:22 +0200
Message-ID: <177729258234.1866089.15459100278998354452.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260327091128.2458-1-midgy971@gmail.com>
References: <20260327091128.2458-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052336_360720_E4933F63 
X-CRM114-Status: UNSURE (   9.29  )
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


On Fri, 27 Mar 2026 10:11:28 +0100, MidG971 wrote:
> The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
> provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
> This chip is currently modeled only as a fixed regulator
> (vcc3v3_pi6c_03), with no clock output representation.
> 
> The PI6C20100 is a clock generator, not a power supply. Model it
> properly as a gated-fixed-clock, following the pattern established
> for the Rock 5 ITX and other boards with similar PCIe clock buffer
> chips.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
      commit: 8df9160f6a50dbdae8ec287d429efc9d2d9001bd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
