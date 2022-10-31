Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8CE8FA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsapRLhCEgwBkLf1i1cw8Pn+mVI4FaSQrgoAxlwEcUY=; b=xlcXZeWHlKEB2w
	iiwS8/BCCb7b4TlvLtPJr6ZxLAUJ8lX+1WQ5YbKyeiRMqn0qaIlTd0/RkUsO0KkQS/ge26BEJ0940
	i/2G/lswh+X87rzDfM65BVNuvAhMSyVT5oX4RD/PFkrYTs7Ec2JdC3w+8uEz+Str42u/lSGjdsjx2
	3696vftE4Reru1JRaTf+293qkNaRB3tj5EX1H0UHuqQqifFKZoyhBTJiRSuzarnP7Xb2TsnqIbysZ
	tSG6ntwQQax2VecYU5bnTK4w/XQNTniXwKBBv5XDzjr1oDs9uwye2Qz/T9Qyqd1hB6UCK0mAV/WZ3
	zYMmSFc1r829ICdyZ3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2l-00Ckz4-0J; Mon, 31 Oct 2022 15:49:43 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2h-00Ckw8-9f
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231379; x=1698767379;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=G0KoPUscGMdCw8ZkNDHuXvBeYtGOoIEmnjk1OnrBALo=;
  b=bK0R/uzpEH2vhJs5gjrZ51z+Nr6au0hFAS/zqUdaskLPCC5RSHDh7m2w
   RBmpuWriSQmP3sPFkJplk3LtvvDjFJ10cr6yh0koN2EIOu5UEmXRPIih5
   4N5qOQePeQ60dN9w0pxyVXWLrrwCXgWHHw1VNNTJ0lSdIclDbO0so0em+
   W3TGIkfOm0/EzlgxJYo1AkGYSdkGl5lvTbSgdi7Nz19amG021FIlx9U57
   OlTuEHIqjDbGxKD9ap2IPnqHUWNng2x36LPcs8gRotYIxVKW+pkXh01LP
   g73FfrlixFIvUQU4IBBfYT8vimL2M6cpn7+Wa3FyTGgD4gt8qWBlX9aDl
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645071"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645071"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178879"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178879"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:32 -0700
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org
Cc: tiwai@suse.com,
	perex@perex.cz,
	amadeuszx.slawinski@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	hdegoede@redhat.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Syed.SabaKareem@amd.com,
	Vijendar.Mukunda@amd.com,
	AjitKumar.Pandey@amd.com,
	jiaxin.yu@mediatek.com,
	trevor.wu@mediatek.com,
	Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 0/7] ASoC: codecs: da7219: Do not export da7219_aad_jack_det()
Date: Mon, 31 Oct 2022 17:02:20 +0100
Message-Id: <20221031160227.2352630-1-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084939_385911_A4B34D08 
X-CRM114-Status: UNSURE (   8.56  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

R29hbCBvZiB0aGUgc2VyaWVzIGlzIHRvIGRyb3AgYW55IHVzYWdlIG9mIHRoZSBpbnRlcm5hbCBm
dW5jdGlvbi4KCkZpcnN0LCB1cGRhdGUgYWxsIHVzZXJzIHRvIHV0aWxpemUgY29tcG9uZW50LT5z
ZXRfamFjaygpIGFuZCB0aGVuIHJlbW92ZQp0aGUgcmVsZXZhbnQgRVhQT1JUX1NZTUJPTF9HUEwu
CgpBbWFkZXVzeiBTxYJhd2nFhHNraSAoMik6CiAgQVNvQzogY29kZWNzOiBkYTcyMTk6IEludHJv
ZHVjZSBzZXRfamFjaygpIGNhbGxiYWNrCiAgQVNvQzogY29kZWNzOiBkYTcyMTk6IERvIG5vdCBl
eHBvcnQgaW50ZXJuYWwgc3ltYm9scwoKQ2V6YXJ5IFJvamV3c2tpICg1KToKICBBU29DOiBJbnRl
bDogRHJvcCBkYTcyMTlfYWFkX2phY2tfZGV0KCkgdXNhZ2UKICBBU29DOiBtZWRpYXRlazogRHJv
cCBkYTcyMTlfYWFkX2phY2tfZGV0KCkgdXNhZ2UKICBBU29DOiByb2NrY2hpcDogRHJvcCBkYTcy
MTlfYWFkX2phY2tfZGV0KCkgdXNhZ2UKICBBU29DOiBhbWQ6IERyb3AgZGE3MjE5X2FhZF9qYWNr
X2RldCgpIHVzYWdlCiAgQVNvQzogSW50ZWw6IGF2czogRHJvcCBkYTcyMTlfYWFkX2phY2tfZGV0
KCkgdXNhZ2UKCiBzb3VuZC9zb2MvYW1kL2FjcC1kYTcyMTktbWF4OTgzNTdhLmMgICAgICAgICAg
ICAgICAgICAgICB8IDMgKy0tCiBzb3VuZC9zb2MvY29kZWNzL2RhNzIxOS1hYWQuYyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDQgLS0tLQogc291bmQvc29jL2NvZGVjcy9kYTcyMTkuYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA5ICsrKysrKysrKwogc291bmQvc29jL2lu
dGVsL2F2cy9ib2FyZHMvZGE3MjE5LmMgICAgICAgICAgICAgICAgICAgICAgfCAzICstLQogc291
bmQvc29jL2ludGVsL2JvYXJkcy9ieHRfZGE3MjE5X21heDk4MzU3YS5jICAgICAgICAgICAgfCAz
ICstLQogc291bmQvc29jL2ludGVsL2JvYXJkcy9rYmxfZGE3MjE5X21heDk4MzU3YS5jICAgICAg
ICAgICAgfCAzICstLQogc291bmQvc29jL2ludGVsL2JvYXJkcy9rYmxfZGE3MjE5X21heDk4OTI3
LmMgICAgICAgICAgICAgfCAzICstLQogc291bmQvc29jL2ludGVsL2JvYXJkcy9zb2ZfZGE3MjE5
X21heDk4MzczLmMgICAgICAgICAgICAgfCA0ICsrLS0KIHNvdW5kL3NvYy9tZWRpYXRlay9tdDgx
ODMvbXQ4MTgzLWRhNzIxOS1tYXg5ODM1Ny5jICAgICAgIHwgMyArLS0KIC4uLi9zb2MvbWVkaWF0
ZWsvbXQ4MTg2L210ODE4Ni1tdDYzNjYtZGE3MjE5LW1heDk4MzU3LmMgIHwgNCArKy0tCiBzb3Vu
ZC9zb2Mvcm9ja2NoaXAvcmszMzk5X2dydV9zb3VuZC5jICAgICAgICAgICAgICAgICAgICB8IDMg
Ky0tCiAxMSBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkK
Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
