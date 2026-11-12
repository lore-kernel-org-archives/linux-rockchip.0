Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD3B60A2628
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 18:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BjNJ3nFw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=IX+cIp+H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ktQ2cXWHcCLHCf6PA4YkHnzj9kJ1vhwsFBdaWWeqQRA=; b=BjNJ3nFwgjKgg3LtwzBkiBQpZg
	MjfJy6FofrjODHPbCPgVI+lII8lyV7Oplw8AGTpFsw4R3yMnd/QInRdTboaiY8af+tKiOYDN03GOd
	p8YTJIqlW8ymqGzP+9kVDWx29f6V2fbevFJZesGAnu3h+lqg/iicw8h18pOPhn9hTvoIp3P8ivAy+
	1dPVU1J9LMoT2abI2PmS3y1JzMbWbiQL2pX7U/WA7vTyYWinbf8tR5v4vFyWS8ia0oCVCihHHAnus
	eFSE10cbxAfbK3ppVb49lzjjjrt5HRwUKvpdDXFrvG6WVzbbaKSffy67wG0SkdPWsBg63XErxEy2e
	xqucU+Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZav-0000000As8p-09gZ;
	Thu, 12 Nov 2026 18:32:21 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZas-0000000As8E-1tX5
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 18:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794508339; x=1826044339;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=hznyfIiura6IcOL4I9PqSnSq+HTGbpzE/IfezIbsoto=;
  b=IX+cIp+H8+c7mMvXezx+R7VNT7coBoj0Ushrq1tz0pVuBphukSroDeSG
   YeuBfKJpy6NrQlgBUdlDrflQs1t65X0+ZvZWaaOzGuhqGbujkMyV0vwdu
   05b412BYdFPw2rw781dci9Lvaaj01EVsVd6bJpRqbUyeqne8rk+qt/N0f
   VT6b2iIRZVV6QK2p/9IaqytBA5+lvhQd7BFvS/VTRohbv/EqyLdPZhhsK
   ouxI4TCKRs4wr1XmnlMn71MgXI1pIEE2tjxJLYPfs8MgCZje0ImUb35H1
   LKqbCfBLJ9rN6uIArbFvTWS5n6ly2CoZo8F2HSQvrU5Jttwr8vdHKbOdn
   w==;
X-CSE-ConnectionGUID: HQK7YwiBQEu9+p0SaXr8fw==
X-CSE-MsgGUID: CjzGW1I3SlmanC0Q4Zyabw==
X-IronPort-AV: E=McAfee;i="6800,10657,11964"; a="3347777"
X-IronPort-AV: E=Sophos;i="6.27,210,1787036400"; 
   d="scan'208";a="3347777"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2026 10:32:18 -0800
X-CSE-ConnectionGUID: vBw9BV6xT1uvh6hObXU/vw==
X-CSE-MsgGUID: AS9LdM2+RAKJKihV6F9uvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,210,1787036400"; 
   d="scan'208";a="8618132"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO mdjait-mobl.intel.com) ([10.245.244.103])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2026 10:32:16 -0800
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: michael.riesch@collabora.com
Cc: linux-media@vger.kernel.org,
	paul.elder@ideasonboard.com,
	daniel@makrotopia.org,
	linux-rockchip@lists.infradead.org,
	Mehdi Djait <mehdi.djait@linux.intel.com>
Subject: [PATCH v1 0/2] media: rockchip: rkcif: Fix a system hang and validate the pixel format
Date: Thu, 12 Nov 2026 19:32:06 +0100
Message-ID: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_103218_570209_2D071588 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -4.2 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello Michael :)

Sorry for the additional work with this flood of patches...

This series fixes two issues in the rkcif driver that stayed long enough on
my TODO list.

I am using an RK3588 ROCK 5B with an IMX415 sensor.

Patch 1 drops the reset from the runtime suspend. The reset also resets
the VICAP IOMMU and hangs the system when the IOMMU driver accesses the
IOMMU registers at the same time. This was reproduced by repeatedly
starting and stopping the stream with runtime PM enabled.

Steps to reproduce the issue:
* configure the media pipeline
* You can use this script here:
--------------------------------------------------------------------------------
$ cat stream-loop.sh
#!/bin/bash
# Start and stop yavta in a loop: stream for a random 0.1-1 s
# Usage: ./stream-loop.sh [device]

DEV=${1:-/dev/video0}

trap 'echo; echo "stopped after $i iterations"; exit 0' INT

i=0
while true; do
	i=$((i + 1))
	stream=$(printf "0.%03d" $((100 + RANDOM % 900)))

	echo "=== iteration $i: stream ${stream}s"
	timeout -s INT "$stream" yavta -c -f SGBRG10 -s 3864x2192 "$DEV"
done
--------------------------------------------------------------------------------

Patch 2 rejects pipelines where the pixel format does not match the
media bus code on the source pad.

Steps to reproduce the issue:
* configure the media pipeline to use SGBRG10
* try to capture with yavta using the format SGBRG12

Fyi:
Another patch is also needed to not get the timeout everytime the
streaming is stopped but some of the work on that patch is already done
in Daniel's 4th patch:
https://lore.kernel.org/linux-media/cover.1793702189.git.daniel@makrotopia.org/


Mehdi Djait (2):
  media: rockchip: rkcif: Don't reset the hardware in runtime suspend
  media: rockchip: rkcif: Validate the pixel format against the media
    bus code

 .../media/platform/rockchip/rkcif/rkcif-common.h  |  1 -
 drivers/media/platform/rockchip/rkcif/rkcif-dev.c | 15 ---------------
 .../media/platform/rockchip/rkcif/rkcif-stream.c  | 12 ++++++++++++
 3 files changed, 12 insertions(+), 16 deletions(-)

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
