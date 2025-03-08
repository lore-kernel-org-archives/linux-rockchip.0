Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F371C282EC
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 18:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UBNpk1BmWBBk23UQQOzREfYhg7Rc7tq8Ns4VkZRMPmM=; b=Q4vheut1nX/bwS
	BS/q1iVQAbCiIEzb5Qlw9X8KB6BpwX4XrHz0WAnNFtWIEF4JHheXUbFIsaJkJ9FprAXW1D+YP0muB
	f/qyC+B4ud+dzOxvYtktJ9dS61homR0jeQeBihZFi5QZA8zTRZoH1N5J1x7GmZ2D/ML3C0TwDXj1X
	xus1lrS7LNZNqCrqTTjKM9WaEirITFmQDMZdJ/qhgjdgQ6KAvSb9t06l0FwWHVoz2GIVI5S3+qKv/
	JOMUgeebUnHTA/wAjZe6Un2yMBhd3FAJaQ0gOroWrIav/kUlFL++iY2lbD2oV7EuLBOZFMbbt6RQE
	nRdFaSoNU2PAsqdrAwVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqypr-0000000GzOK-3GO5;
	Sat, 08 Mar 2025 18:23:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqyol-0000000GzK0-3WMO;
	Sat, 08 Mar 2025 18:22:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2+NrzuFCdvnACFuokn4CvLf7895pJLH7rN7vroqZjKg=; b=xeofRJmuaHiuOdrvK4mjZsWKWW
	ab94xaSGIsS8txIctODOXck4L8YBpEDf1pVW87MKCTh0E/kqQNSAnNi27C+ImygkUFQp0WyQPzuFl
	5AlrpX/MrRfCYOhaPebkSmiOqxMSe7iWyxV1O58Lqc+3MKwajpT2VPSqsQpecGpsS6EXM6FC+Kj64
	jjiTi5v4FEitN0+8Cvy385DyuGuo+nG7a5SGG23W2k/hDBx61xeexXscyd1Xf9HMzBBDykdHLWf6k
	V5ThFp+r1V9Ipb0sGE+/FYtFMdd4I3MGCAleGqnEtzuP6QKk0ebzcuRXjbMmjuwzSBWGmsomVf96M
	ybYIqNOw==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqyok-00050e-J0; Sat, 08 Mar 2025 19:22:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip defconfig64 changes for 6.15 #1
Date: Sat, 08 Mar 2025 19:22:34 +0100
Message-ID: <3415370.aeNJFYEL58@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_102235_881372_74783234 
X-CRM114-Status: UNSURE (   7.18  )
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

The following changes since commit 2014c95afecee3e76ca4a56956a936e23283f05b:

  Linux 6.14-rc1 (2025-02-02 15:39:26 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.15-rockchip-defconfig64-1

for you to fetch changes up to 97d8fe4b7722104b9abdb9cbeb0e884f864c6477:

  arm64: defconfig: Enable Synopsys HDMI receiver (2025-03-06 14:08:26 +0100)

----------------------------------------------------------------
Enabling of the HDMI-receiver driver and new UFS storage driver.

----------------------------------------------------------------
Sebastian Reichel (1):
      arm64: defconfig: Enable Synopsys HDMI receiver

Shawn Lin (1):
      arm64: defconfig: Enable Rockchip UFS host driver

 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
