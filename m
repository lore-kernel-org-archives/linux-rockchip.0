Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54047CA5FC5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 15:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kmk3Vd+PEN7/YYQ6sA8tEc2B/R5706my3mJpp+GLeXE=; b=Qh4uaXtZ9khrHv
	Y3ePVIMjJV7Crqi5Keb2kEm9oGdgcAgm4VXJxypulb+Yx6d1wBSg+H1oVtxIA5GY6mlEtVUGNJ/jd
	Czw9LC6PZ2o+sH7wvwpwqJZOM9rXBT8xvC2cwD+orqq0e6t8FKQU1lKzT/Np0M4wV+io26PWVgMGS
	+QVQjUBiFfeb1tYALsAtTzE9klvHGugyLyWQ2NJ/E8q9/xlvl3dP4Fm7HD8HdZAlMiFtqXgxRYHs5
	WUvdqy8a/7kfP/xn9FTxsy4hCff1+nX8OXs/tJ0QgA6NuQ73WnfPSQdXFVOvoilzNsxDlTtehUCs4
	UzhO181ys6M5/Q+b6yoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBvzJ-00000006Rll-2u3H;
	Wed, 30 Sep 2026 15:12:53 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBvzG-00000006RjR-2XBV;
	Wed, 30 Sep 2026 15:12:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1790781167;
	bh=8hOdfVeO8+152V43moBjalksfRu9BZTZ/UwSBkHEa34=;
	h=From:To:Cc:Subject:Date:From;
	b=mrdRqwYdhim45pl+JV/YxBn4Xzx5Ka/ecDUgYj42T7mov6MENrN0V8XZEi9XSkoUY
	 rxlZDsPb1wIERJVxJarhrcsl8HVlMt/6rXmoqzXfNc1bpf/TDEICJ5u3k218XHKHmB
	 HA9BSOUNEs88z/m79P4eetNNwlvPc959jadHXHNytuj8hk6N+lUuPzVJZ+LDNofFs5
	 sVV1OnTgFC+PH1GzvWI1RUx8UYrZg8v1BvPNTL/aVZx8azFoY7ACXV2ginzfZDxqFO
	 soYRIq1PDg/6jVUCv3nqJneJV/SuahbcPkfZXNi5uvIFxSrc1WJZN89TU0SR3ZiocY
	 2OLzjPrIxqHJQ==
Received: from benjamin-XPS-13-9310.home (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A1D2B17E0074;
	Wed, 30 Sep 2026 17:12:46 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	conor@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v6 0/3] media: verisilicon: remove unused variant and code clean up
Date: Wed, 30 Sep 2026 17:12:38 +0200
Message-ID: <20260930151241.58233-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_081250_913107_6757387B 
X-CRM114-Status: UNSURE (   9.05  )
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

"nxp,imx8mq-vpu" variant has been tagged as deprecated since 4 years
now. This series remove it and make some context's fields useless so
remove them too.

changes in v6:
- rework patch 1 commit message
- remove pw-bot tag from commit messsage 2

changes in v5:
- add more details in commit message
- add Conor Dooley accked-by tag

changes in v4:
- rework commits messages
- add r-b tag

changes in v3:
- remove more dead code

changes in v2:
- have a separate patch for documentation
- fix dt-bindings
- rebased on v7.3-rc1


Benjamin Gaignard (3):
  media: verisilicon: Remove deprecated nxp,imx8mp-vpu variant
  media: dt-bindings: media: nxp, imx8mq-vpu: Remove nxp,imx8mq-vpu
  media: verisilicon: Remove useless internal fields

 .../bindings/media/nxp,imx8mq-vpu.yaml        |  10 +-
 drivers/media/platform/verisilicon/hantro.h   |  10 +-
 .../media/platform/verisilicon/hantro_drv.c   |  30 +----
 .../media/platform/verisilicon/hantro_hw.h    |   1 -
 .../media/platform/verisilicon/imx8m_vpu_hw.c | 117 ------------------
 5 files changed, 11 insertions(+), 157 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
