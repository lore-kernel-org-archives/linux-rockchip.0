Return-Path: <SRS0=kwzO=MI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C28C12002
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 12:57:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B0402613F2
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 12:57:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B0402613F2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LJ70ORztjt2CZGmmmw6bQ71P2p69GnLDNbsHbnJTl9I=; b=V/hii7VnfNZqIT
	Uf/ObaZtSrYP/Lq54NO5Z6JwZAbvDGTgsl+LJ9SLb1ghUHbIeDSUP+1gOkXxS/z5iP9LsqEKi0E3D
	neCOfGhHzi+AQhlZj5NlGDwL5fSn2Q29eVNnTpSueKdc7jti6RwE8a23fvGDrnTN0VtFSYNBfpmey
	zC71u80bX3ln9GkAdLPBUP7CH9OoKJbncyYB8KaQip4v/0Cv/M8wG8mqUlyujFjxBz9uT3Q9EccXq
	ZwlP94NGq6QvhWmxfmXnROlhNtBr8P/jiJRj21xLuh07O3Y8JA8SbYktw2qaDnnkmISl3DjO0RY6W
	ZrxnxRbxlgY7fKG2zXAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4NP3-004PMD-9K; Fri, 16 Jul 2021 12:57:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4NP0-004PJJ-5E
 for linux-rockchip@lists.infradead.org; Fri, 16 Jul 2021 12:57:15 +0000
Received: from guri.fritz.box (unknown
 [IPv6:2a02:810a:880:f54:f07d:7270:7174:27c4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6A08F1F44041;
 Fri, 16 Jul 2021 13:57:10 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
Subject: [patch v4l-utils 0/2] Fix bugs found with dmabuf
Date: Fri, 16 Jul 2021 14:57:01 +0200
Message-Id: <20210716125703.699-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_055714_387641_4A9B40C2 
X-CRM114-Status: UNSURE (   6.11  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1. first patch improve debugging
2. second patch fixes some bugs found when exporting buffers
from capture device to output device


Dafna Hirschfeld (2):
  v4l2-ctl: print specific error upon failure
  v4l2-ctl: fix bugs found in streaming_set_cap2out

 utils/v4l2-ctl/v4l2-ctl-streaming.cpp | 40 +++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 6 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
