Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A5ECC64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 12:47:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E843D206C1
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 12:47:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NfC91gFF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E843D206C1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BmdTOrme4kwxLrEJtWAS82WEIyPA0qEK5yQ3hrKzifI=; b=NfC91gFFaMUNEdqc/ceYYfQOFd
	8VqXP+FvE3nTWOAHKGMCzpK3mTKrKGn4EIJ5QcbJuBx4d4UiIKMsyZtYKECFdH9bXcS5mgjaiC480
	S54CK8hWnFIrjLiD9l0BJnxtddBXqmJQwpz9A/k9etVjrMSOlRfyNWW1qIXdiGPDsrjYBxjKeD7bj
	T/pouokfniwB2/puheG6x6UkMGT/KFnFoqD3PA6t0DfferSh1TywHvt2aN5PTwQb0+LfToxc2+jxX
	nrId2elt+KF3Hjm3mf8Fla1XmchG1eIm3lkpcXAEgiAsrhHs+vKzMZqhzZjzQaczBvenUA7OMMaz2
	NLcWOIHw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk53x-0004Bg-CW; Tue, 01 Dec 2020 12:47:21 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk53r-00049Q-CJ; Tue, 01 Dec 2020 12:47:16 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4ClhgP6VQszhl3X;
 Tue,  1 Dec 2020 20:46:41 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 1 Dec 2020 20:47:01 +0800
From: Qinglang Miao <miaoqinglang@huawei.com>
To: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?q?Heiko=20St=C3=BCbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
Subject: [PATCH 0/3] drm/rockchip: fix reference leak when pm_runtime_get_sync
 fails
Date: Tue, 1 Dec 2020 20:54:56 +0800
Message-ID: <20201201125459.142178-1-miaoqinglang@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_074716_259075_87E2DAFC 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: linux-rockchip@lists.infradead.org, Qinglang Miao <miaoqinglang@huawei.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

pm_runtime_get_sync will increment the PM reference count
even failed. Forgetting to putting operation will result
in a reference leak here. 

Replace it with pm_runtime_resume_and_get to keep usage
counter balanced. 

BTW, pm_runtime_resume_and_get is introduced in v5.10-rc5 as
dd8088d5a896 ("PM: runtime: Add  pm_runtime_resume_and_get
to dealwith usage counter")

Qinglang Miao (3):
  drm/rockchip: cdn-dp: fix reference leak when pm_runtime_get_sync
    fails
  drm/rockchip: vop: fix reference leak when pm_runtime_get_sync fails
  drm/rockchip: lvds: fix reference leak when pm_runtime_get_sync fails

 drivers/gpu/drm/rockchip/cdn-dp-core.c      | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++--
 drivers/gpu/drm/rockchip/rockchip_lvds.c    | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.23.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
