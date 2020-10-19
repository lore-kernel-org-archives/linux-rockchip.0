Return-Path: <SRS0=ZzQ+=D2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D182EC43467
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 458C121741
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 21:00:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZntCl23f"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 458C121741
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PkeF/cwnQiHUkqOiJK068Gk9imWsYRY8YXLjH+BNsuM=; b=ZntCl23fsSdwBseiVNt9Yq2KZp
	QHBZ3y/eL2kUnIKQ2OZDGRxHVEa8dl3ttuwCg9imd4fiBrL2FFnze9/ReqHMbrMDJYarYyGwgGfG3
	K+/tEsoP9EYHWLHnWX1j3/tzX1GDhtlCPnt2axueec6ZWgXbJbFY8iPn7b0sYcPpTUc57UmZIjXsO
	3uV3Qf/AwuPK4c2C/E8FgncEF736ligJvzJCUGirBZyYWzZq71733cwH7OSrTyna2uv3dGpOHmDdg
	FAsPIcvOcFNuZRu6Nn6hx6piaPTTXTRDjklKnkIlSVScEnXDWnQyG2Ut0dlWYjLBqeFSeAOcG4JQj
	pGFYKPSA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUcGJ-00072U-Rl; Mon, 19 Oct 2020 21:00:11 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUcGE-0006zP-Oz
 for linux-rockchip@lists.infradead.org; Mon, 19 Oct 2020 21:00:08 +0000
Received: from guri.fritz.box
 (p200300c7cf435b00546912335c7d1654.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:5469:1233:5c7d:1654])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A57821F44FBE;
 Mon, 19 Oct 2020 22:00:03 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/4] media: staging: rkisp1: send cleanups and checkpatch fixes
Date: Mon, 19 Oct 2020 22:59:52 +0200
Message-Id: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201019_170006_946502_E942FBEA 
X-CRM114-Status: GOOD (  11.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patchset aims to remove the TODO item "Fix checkpatch errors."

Some cleanups to the rkisp1-params.c code are also sent.

The following false positiv issues are still generated:
* "line length of * exceeds 100 columns" for the topology diagram in rkisp1-dev.c
* "DT compatible string "rockchip,rk3399-cif-isp" appears un-documented" - this will be
solved once the driver will be destaged and the file rockchip-isp1.yaml will move
to the global documentation
* "Prefer using the BIT macro" - in the uapi header 'rkisp1-config.h The BIT() macro is not
available to userspace


Dafna Hirschfeld (4):
  media: staging: rkisp1: fix coding style issues
  media: staging: rkisp1: params: remove unnecessary "!!"
  media: staging: rkisp1: params: remove unnecessary parentheses
  media: staging: rkisp1: params: remove extra 'if' conditions

 drivers/staging/media/rkisp1/TODO             |   1 -
 drivers/staging/media/rkisp1/rkisp1-dev.c     |   4 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c     |   1 -
 drivers/staging/media/rkisp1/rkisp1-params.c  | 420 ++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |   4 +-
 5 files changed, 179 insertions(+), 251 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
