Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44533C46466
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B530620795
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IBF+U38/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B530620795
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Dxtcc9tHciMo6aB2HazgDwZa2Nbwnmk631aOMnUW9d0=; b=IBF+U38//+/u67uWilPEYUmOgz
	ibDAfjCU2NMQuC4UWTQkLq/cFPG9+D3T1Wfz6o/K8hMWGmlCKck64yj7+7QQ6w18+jciRLhsgcthI
	i5hrSPNGtqWGsd+ebBxxyMgVW3LuQgd9hitOSe77KlaJSThH8D3S8EpKrd9Xr3M1EeMS5BUzePeD7
	tq4SfLVpjhmmuPoE+PE2yHGj4wlphV0AXST/WwJLoKj8GF9JP1L3akmyhONqErSdq5M/QluCJMuPz
	cO+/tahLp9tOvNPebYyghl+xIq1SDzsIugXeRce4IQolsekOLmhOT71Y7WVMNqT9TL7z2O7VMwysC
	i6u6Of+w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOQ0o-00045f-7g; Fri, 02 Oct 2020 18:42:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOQ0l-00044I-Bo
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 18:42:32 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2560A29C736;
 Fri,  2 Oct 2020 19:42:29 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 0/6] media: staging: rkisp1: improvements
Date: Fri,  2 Oct 2020 20:42:16 +0200
Message-Id: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_144231_505679_6F977835 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
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

Some improvements to the rkisp1 code, mainly
to the params and stats.
The first patch was already part of previous patchset

I tested using wrappers for 'v4l2-ctl', 'media-ctl'
and for 'cam' command from libcamera:

git clone --single-branch --branch rkisp1-oct-2 https://gitlab.collabora.com/dafna/v4l-utils.git
cd v4l-utils/contrib/test/
./rkisp1-unit-tests.sh

Dafna Hirschfeld (6):
  media: staging: rkisp1: validate links before powering and streaming
  media: staging: rkisp1: params: in stop_streaming, use
    list_splice_init to move the buffers
  media: staging: rkisp1: initialize buffer lists only on probe
  media: staging: rkisp1: remove the 'is_streaming' field from stats and
    params
  media: staging: rkisp1: params: add '__must_hold' to
    rkisp1_params_apply_params_cfg
  media: staging: rkisp1: cap: add warning when link validation fails

 drivers/staging/media/rkisp1/rkisp1-capture.c | 31 +++++++++++-------
 drivers/staging/media/rkisp1/rkisp1-common.h  | 12 +++----
 drivers/staging/media/rkisp1/rkisp1-params.c  | 32 +++----------------
 drivers/staging/media/rkisp1/rkisp1-stats.c   | 21 ------------
 4 files changed, 29 insertions(+), 67 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
