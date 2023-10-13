Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA9FCDB483
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 12:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pMfIX8i6jxf31uXvnS8AKcnh2jTsTjCaORxENUNrU3g=; b=kM5T9hSTAioTfA
	CO/yJnXje9fdsjpeG0Y9GUfSUx8vHpW4lbTrdIMxZAEIs+6w1gfWLuKEFJ+i7IxvzSpGabYJ/mPS7
	Tq6GIhtuvMLi9ZwAAYfghDr/3pH5UdjHWC35iw4I1c6P7hJaWtAYwf79QGaERa4i+j4nAEcFpOsUD
	0tvIpKntQ0uyYSVIzSXqDN6aoNpJ9YCtBpyx/FfxfTq1OgpW3rHnTj4KCvy66gJh9MruEbJTpF1Y9
	CZRmFMvHIEpAL8ZabW3vh0agzRhSEz0jsLBP3gnuIPYVNjm4ST53N6sYaVEvE8psVi2c3rAotHER5
	e809Fi71lEKr3Z4tWZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrH9X-003PC3-2p;
	Fri, 13 Oct 2023 12:20:27 +0000
Received: from m12.mail.163.com ([220.181.12.199])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrH9U-003PBN-04
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 12:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=hc+VD
	MLPcl8X3A880iKJyilzCt2EHxp8bidRUHPGSmY=; b=pjnjaazWhEmZd/vmbsO10
	sFHqIA2gvI3ibNtbrLOoa3NFn1cQtlw5Zuh4bj7pISXQ0inVS3PN7peo5BAv/mnU
	scVlI2CGD7NgyihrBitTAgfwmairYXfvPYJWU/SsMNwy5b+MuZSZnXzNQQaZdB3b
	WlxcqV93E6nj/K3JB8/ikk=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-1 (Coremail) with SMTP id _____wCX3iv0NSllozPHAQ--.18537S2;
	Fri, 13 Oct 2023 20:20:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 0/4] Some cleanup of vop2 driver
Date: Fri, 13 Oct 2023 20:20:01 +0800
Message-Id: <20231013122001.1594009-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wCX3iv0NSllozPHAQ--.18537S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gry5urW7tr4DCr45ZFyxZrb_yoW3ArbE9F
	y7X345WFs7WF98J3ZrGw4xGa9FyayI9Fn5KF4vyF4DAr9Iqw1kJa4fA3yxXa4FyF4a9r1k
	Gayjgry0kFnxCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnxgA7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiEBoIXl8YLt035gAAs5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_052024_456871_2EE965BF 
X-CRM114-Status: UNSURE (   6.52  )
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
Patch 3 are plane format fix
Patch 4 is a format rename

Changes in v2:
- split rename to another patch

Andy Yan (4):
  drm/rockchip: remove unused struct in vop2
  drm/rockchip: remove NR_LAYERS macro on vop2
  drm/rockchip: fix the plane format defination of rk3568/6
  drm/rockchip: rename windows format for vop2

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  6 +--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  3 --
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 52 +++++++++++---------
 3 files changed, 30 insertions(+), 31 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
