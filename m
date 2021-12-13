Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F54C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 10:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DpmAGCVdCGVJ4bszh+tVz1WkyztX82eFbRz+touNv2E=; b=oM80hzB8QxsTKO
	m6mKZJquSu4eJcFbsvvjjdraU/s44RkM4udB1jkoo+jWj64Myk5KVziApbu4HIAX+ZRw9AoYsH8Hd
	Xgym71lXWpWzVgYdgVttyiEWApcEJtmMN+MTzgDStIXZxL0ngb0xgoFeIsOfS4f8USg+Wg+DzHYQY
	J0A6YnOgruXzd7ErGLAHVozGNZPy7iE3HN5OA6YFnDgELem96F6HLJmMzWqlJOHR0VVFLAnJ7q0Fn
	g7LLct/gbs0qcWv1UfTkSFovBrLPc6O7p6JRK1U1MpQJFtqxxiuy8x4sYhx/jueZJsYYpq3N2HDCu
	28PAnRVU+GRHoei/QXKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwiaN-0091Km-NW; Mon, 13 Dec 2021 10:29:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwiDP-008rlO-MI; Mon, 13 Dec 2021 10:05:52 +0000
Received: from p5b127e39.dip0.t-ipconnect.de ([91.18.126.57]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwiDO-0000rY-Gs; Mon, 13 Dec 2021 11:05:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip soc fix for 5.16
Date: Mon, 13 Dec 2021 11:05:51 +0100
Message-ID: <1827929.9bfCS3lLB7@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_020551_842010_CD78C4AE 
X-CRM114-Status: UNSURE (   7.98  )
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

The following changes since commit fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf:

  Linux 5.16-rc1 (2021-11-14 13:56:52 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.16-rockchip-socfixes1

for you to fetch changes up to 423e85e97aaf69e5198bbec6811e3825c8b5019a:

  ARM: rockchip: Use memcpy_toio instead of memcpy on smp bring-up (2021-11-21 18:24:31 +0100)

----------------------------------------------------------------
Prevent panic with FORTIFY_SOURCE in smp bringup.

----------------------------------------------------------------
Ivan T. Ivanov (1):
      ARM: rockchip: Use memcpy_toio instead of memcpy on smp bring-up

 arch/arm/mach-rockchip/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
