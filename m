Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 174F5CDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 02:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=le0YT477LXZKIlBmF6CXEU39IjI3xYy7UeLbYc7qw94=; b=1AVgmOnTwLfTlX
	4oKvvqcAH2A9m7qL3oHQZmOicGAwJIToaMgqQ7NeWMR7dDeHE4A6ss3sv8UE2t4fw5KaSNdWjR6Tr
	sRQrID17rzEis870jiHC+AOa6caX3tUWtvfGzfBI+vh1957er1IVNZRaf2mQySsIc6tP9NraNHngw
	bqv3VO4Qg8bam2gr6pKnq+JBpbR2KRIMX2xygAWZ0PcadOQ+Efcl2CUtnh1FOcR9freiTBPHn6i/2
	y6QWC9eTH7kL/TE/C903sQy3JmZaA3qoxbsotAzVAaYB55f6bg98LFfkaF0bQE6BwNRtO7JyHnK68
	12cWg6LpRxPGPIpH2OPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlXa-00HCOu-1k;
	Thu, 12 Oct 2023 02:35:10 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlXX-00HCNs-0Q
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Oct 2023 02:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=FM/51
	lprc62FftfFgEkfdi8Uf1+NtYbM/Ep3GchyGRA=; b=EzS2j/Csc1e/WcDfNZDpK
	1LIgRBTZflP5fyaI+5IaYheCKp0SNNNqKsEOgv7wo4ScrlUns+mQvz4I423ffBrK
	XlZ0I4/ERL73hJ5ylOUjWdDtPx+yjteBCEkREvdESpohLj6RxiR+RQaqOcChHq9U
	Qx8Ul2VPLK4YVJH9uKGFLA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-4 (Coremail) with SMTP id _____wD3PyRBWydlz+ZEAQ--.58711S2;
	Thu, 12 Oct 2023 10:34:45 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 0/3] Some cleanup of vop2 driver
Date: Thu, 12 Oct 2023 10:34:39 +0800
Message-Id: <20231012023439.1497304-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3PyRBWydlz+ZEAQ--.58711S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gry5urW7tr4DCr45ZFyxZrb_yoWxuwbEvF
	y2q345WFs7WF98J3WkGw4xGFZrtay29Fn5Kay0yF4kAr92ywn7X3WSy3yxWa4YvF129r1D
	GayUXFy0kFnxCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUn7PEDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw0HXlXmHAJABAABsP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_193507_696578_F00D6BDB 
X-CRM114-Status: UNSURE (   5.63  )
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

From: Andy Yan <andy.yan@rock-chips.com>

This is a preparation for the upcoming support for rk3588 vop.

Patch 1 remove unused struct
Patch 2 remove NR_LAYERS macro to support more layers on rk3588
Patch 3 are plane format fix and rename to support more format on rk3588


Andy Yan (3):
  drm/rockchip: remove unused struct in vop2
  drm/rockchip: remove NR_LAYERS macro on vop2
  drm/rockchip: fix the plane format defination of rk3568/6

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  6 +--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  3 --
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 53 +++++++++++---------
 3 files changed, 31 insertions(+), 31 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
