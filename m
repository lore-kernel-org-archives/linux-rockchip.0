Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 338F7C4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 21:55:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4F462068D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 21:55:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="l87H4dBk";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dely0EKL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4F462068D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SZE4BthP56L2kaR/W6pXngxQUjM4XQ7eGewxF6Lr4Ng=; b=l87H4dBkVhB890KXxDHrxJmdk1
	Kaaj2PBBJ5jMQ4mMZBMyyHMQASoBw468c3m+6Yhxrsvb2YGrp5q0/2UuKSY0w/OGlwgTvF/bYcksd
	SGA3Fx+bW6XzuXsddiNcDgkCOqvVcagWCrryAbvkd01VjZHW03RwPVtJnB5P2PM397QZOZjKGp6/h
	AHs5alz4gvWbuatLSPzW6zySjD7t1qTEXNmWs5Mw9opXypFRzjxNRrveb/iM4lP7rz4W+yHcSedRU
	VC8o+WJ9NUOsjxczS96+OLNkLgmwNfEGevO593x8gfDqU+Kl/fmBPBOxGmGXNLvSc5o0Rk1Lco50D
	raWrVS4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLvgr-0007EC-KZ; Fri, 25 Sep 2020 21:55:41 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLvgj-0007BR-NL; Fri, 25 Sep 2020 21:55:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so3612921ljp.13;
 Fri, 25 Sep 2020 14:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i6oMAURkfpsM1dUr55Vm2bufPN+8aF78G8f5BFLLR3A=;
 b=Dely0EKLau8IdL+nmqudTWOrZEDuMKsHtwbTN+Mq3/wE2V4qnSFfzqyZvmURYLANuU
 xSyUT8rfi4ZPe8YK4Uezz2oqLqzwXqT99D11x9RIVnyhCc45WjfyfpG8wCZWbW2WjG2N
 NQDXGnB9v4619n4KwHtsNwoR7N/5m1Nc6613PIJ1aVUB54m0ocrhLQTfT0QZWSqsc+mT
 jIzHDLhrM2t6QtHrm3c7DO0VzEe7ZUDozMx4uvuWJuNu6SyJlDHLlfvFoPRHasS1XqNC
 B6B0pjWRx0+rFmDjglE7D3vWINQxwAoMq5GKvtfrJcIj9R08QnRdK3qFDNKLKC02xNEA
 mWWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=i6oMAURkfpsM1dUr55Vm2bufPN+8aF78G8f5BFLLR3A=;
 b=pbatq/WHbNp1FscH2cWMaoOwP6Hqq1qleIOfZjIGkL2q58MtmoBhtvJoO81/4U7Q9b
 8zD+6XhvjodSOgUoO+jveaoLUgINSXn5NoGPXffefWUHwWbl7ya+cSd2Oq5cKbkO8ViL
 JWLWW5amy+zdaOxVfTjx52K8cl/LvqmojqFW71bOm0mX93lKQeuFUyhOZ1EYzEfiHZf1
 Gyc09sW69mcKAq4PjYHL1BaiGdqPWcDP5bzAO8yP4q4CNCq5RZI1qvWohANCTZi3+mrl
 1FlTmA2txBjiY+HEp9E7+ms2ISG4RmcnuE4m38QF78vcpkpJ1J2rR0I9AKbKKgcu7fsC
 j5hA==
X-Gm-Message-State: AOAM5333eQHhK6WcbEu6G4RQX1sTM3IiQiG/uT3H9m+y1b6jzBiHiQRa
 o1JHteF6wBK8GJVmH7h1BVc=
X-Google-Smtp-Source: ABdhPJxIf8FGzG2G3JmzwlnNX51K9ts8L4rukeGTKUh4OsuMTdytpe0dTkcn46fNV0lf5jOQyhdNww==
X-Received: by 2002:a2e:8153:: with SMTP id t19mr2079197ljg.334.1601070930792; 
 Fri, 25 Sep 2020 14:55:30 -0700 (PDT)
Received: from saturn.localdomain ([2a00:fd00:805f:db00:3926:b59a:e618:9f9c])
 by smtp.gmail.com with ESMTPSA id
 j8sm261277lfr.80.2020.09.25.14.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 14:55:30 -0700 (PDT)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Heiko Stuebner <heiko@sntech.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v1 0/2] drm/rockchip: fix build + warning
Date: Fri, 25 Sep 2020 23:55:22 +0200
Message-Id: <20200925215524.2899527-1-sam@ravnborg.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_175533_767183_C511F090 
X-CRM114-Status: GOOD (  10.93  )
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
Cc: Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix a newly introduced build breakge in drm-misc-next
Patch 1/2 should be applied to drm-misc-next

Also fix a warning in the same driver - the warning is present in v5.8
Patch 2/2 is a drm-misc-fixes candidate

	Sam

Sam Ravnborg (2):
      drm/rockchip: fix build due to undefined drm_gem_cma_vm_ops
      drm/rockchip: fix warning from cdn_dp_resume

 drivers/gpu/drm/rockchip/cdn-dp-core.c      | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
