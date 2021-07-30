Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66AFC432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 16:45:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 765A160462
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 16:45:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 765A160462
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PVu/orWCiqI3SEgwrDKvm7VKG4kQ+5saxPsfHYkksdg=; b=OBqYXMRNN4Rxcn
	EcRp5l4VGXwXvTVYRn9DhgExhCeF38rryR9x5bs1N5ygRM+746T8LNaWZvmON5+JS6kn3QMJXZRVG
	E8LA/B8PnxQfYeerYLjGr7yWHjCsSwbcfnmleQI90BCCKSyWlVcnO4HiQkJdyaEY691YUoqj/wO2H
	9r1lQJwerGPBsU0J+JP9PvQ347rVdS/a9iNVA+fBcuDiGdnHsZaaeRcTJkitODUFETwuWu+2HaETv
	yQxmtoQOjs+mcB2C6psWjPzSvPok18aSCLjPQ0/WADCk7x4nYziMnM7oJzSUEe4fhTVl4Dfm3D9SQ
	KJ0zAtxfrzjME37lzocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9Vdw-009XZf-Kk; Fri, 30 Jul 2021 16:45:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9Vdu-009XYf-9g
 for linux-rockchip@lists.infradead.org; Fri, 30 Jul 2021 16:45:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DB2611F44BCB
From: Ezequiel Garcia <ezequiel@collabora.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Peter Geis <pgwipeout@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 0/4] RK3568 GPU
Date: Fri, 30 Jul 2021 13:45:11 -0300
Message-Id: <20210730164515.83044-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_094550_509111_18C5DC8B 
X-CRM114-Status: UNSURE (   9.12  )
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

I've decided to split the GPU off previous series:

https://lore.kernel.org/linux-rockchip/2147216.TLkxdtWsSY@diego/

This series now contains only the GPU support, as the VPU
needs a tiny rework.

This is compiled tested only, in this case. Similar patches
have been tested on a v5.10-based kernel, so I'd say it's good
to go.

The mesa side is merged https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10771
and can be tested without a display, using something like weston --backend=headless-backend.so,
which provides an environment for GL to work.

Ezequiel Garcia (4):
  dt-bindings: gpu: mali-bifrost: Allow up to two clocks
  dt-bindings: gpu: mali-bifrost: Add RK3568 compatible
  arm64: dts: rockchip: Add GPU node for rk3568
  arm64: dts: rockchip: Enable the GPU on Quartz64 Model A

 .../bindings/gpu/arm,mali-bifrost.yaml        |  8 +++-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  5 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 47 +++++++++++++++++++
 3 files changed, 59 insertions(+), 1 deletion(-)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
