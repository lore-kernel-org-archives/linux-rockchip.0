Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE917C4332B
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 11:05:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 17815223E4
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 11:05:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 17815223E4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bMXHFpNWAXx95EYcm+PIcNiTAs/w8AQQrAnHJyvvNF4=; b=wPI9r3QBrwbNCaI7XBLqMPjUyr
	QO5HoNWGNIwvIADMFVgVRH1erat9TY4W8n6WyFZ4wkSPd8j5hTv8HAwHA/T7k5o3Cgccc1b8INDvB
	GvcM+ru2JZI0Hbl3uu1dKtU8NYMF11XBVyQAx4ymtd2oikA9hLu9nbPjua7bJh2DpFg0wzYqYMdsE
	wCwmf2mQHZLTqExc01eoqtqnZ7l/Ssef5ZarmFX/p71ZcPOZ9F7kUE4K5oltNjciLlAqtS8JRBaUR
	beEA5Uqww66mmvf3IzhNwBTRxsab2kgX56BbmzdB2nDPOyoNGwaoyF9a5b+iAPv0PCMHUzKCyRAHZ
	EqDm3V+Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1SLO-0002sm-B0; Mon, 18 Jan 2021 11:05:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1SLG-0002qS-3P
 for linux-rockchip@lists.infradead.org; Mon, 18 Jan 2021 11:05:07 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l1SL4-0003HM-5g; Mon, 18 Jan 2021 12:04:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
Subject: [PATCH v6 0/4] Fix the rkisp1 userspace API for later IP versions
Date: Mon, 18 Jan 2021 12:04:44 +0100
Message-Id: <20210118110448.275389-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_060502_181990_AC5CA7D4 
X-CRM114-Status: GOOD (  12.26  )
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
Cc: linux-rockchip@lists.infradead.org, tfiga@chromium.org,
 ezequiel@collabora.com, heiko@sntech.de,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This NEEDs to go into 5.11 while we can still adapt the uapi
during its RC-cycle.


When looking into supporting the rkisp1 of the px30 I noticed that
some fields got bigger in the uapi, caused by bigger number of samples
for example for histograms or gamma values.

The rkisp1 was destaged with 5.11-rc1 so we have still time during
the 5.11 cycle to fix that without big hassles.

This was discussed previously in a mail [0] and a rfc series [1]
and this two-part series now splits out the important parts that
really should become part of a 5.11-rc and thus the final 5.11.

changes since v5:
- move grid reduction for V10 to separate patch (Hans)
- fix commit message (histogram size 28 -> 25) in patch4 (Hans)

changes since v4:
- set GAMMA_OUT to the real 25 instead of the 28 with 3 spares (Dafna)
- start RKISP_Vxx enum with 10 for RKISP_V10 to make output
  easier and also allow userspace to differentiate between old (= 0)
  and newer driver variants (Dafna, Laurent)

changes since v3:
- add patch fixing the original histogram size comment
- make comments in uapi more verbose (Hans)
- fix wording in admin guide (Hans)
- document version <-> soc in uapi as well (easier for people) (Dafna)

changes since v2:
- actually zero the correct sizes for u16 values (hist-bins)
  (kernel-test-robot)

changes since v1:
- drop duplicate isp_ver storage, hw_revision is enough (Dafna)
- document multiple maximum sizes in uapi (Hans)
- document usage of hw_revision field (Hans)
- zero fields transmitted to userspace before adding data (Hans)
- use _V10 field sizes when filling fields, as there is only v10 for now

changes since rfc:
- move rkisp1_version enum into uapo
- show version in media-api hw_revision
- introduce constants for versions and make max use the biggest


Heiko Stuebner (4):
  media: rockchip: rkisp1: fix comment about number of histogram
    sub-windows
  media: rockchip: rkisp1: reduce number of histogram grid elements in
    uapi
  media: rockchip: rkisp1: carry ip version information
  media: rockchip: rkisp1: extend uapi array sizes

 Documentation/admin-guide/media/rkisp1.rst    | 16 ++++
 .../platform/rockchip/rkisp1/rkisp1-dev.c     | 21 +++---
 .../platform/rockchip/rkisp1/rkisp1-params.c  |  2 +-
 .../platform/rockchip/rkisp1/rkisp1-stats.c   | 12 ++-
 include/uapi/linux/rkisp1-config.h            | 75 +++++++++++++++++--
 5 files changed, 106 insertions(+), 20 deletions(-)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
