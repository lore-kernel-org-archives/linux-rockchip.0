Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D2E5C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 20:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oQswaEfxIu0U1qytCmQA2b7Muji2y4NTh/k1+rCpNE8=; b=Xl+Z8Gyp+E4XkU
	mGJHJvSjSdmVxlgSJkVhnSNqu29ZdqIOXCQrWz9th+tEh/GNhB6g5Fh11yOh0MAMbeQSPTBnE4dGP
	r/xKAaWtaqph+WcSy0SatZpLnBYEXYOrJj3SEgEt8FQITqJsMxVZnhM2DXJBMHU/jcP0X4vEkTINh
	v6YJN4rTNErLIE0gGAxqUcHMe4RINZlVAhReCDpPXpucOKBzj0B+Xy8FS1lS0IdJfId0AJmpC52oZ
	G4a+uE4JuNuYHPPH3abnec5qOvbHznr/izj7jjw/miGoNZbiD/XGE+mDCGb7h6wvT6qwDuxoOVpHQ
	GkXg0WQzh21AUkygzxvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiHre-00000005iA0-2uDy;
	Fri, 10 Jul 2026 20:30:26 +0000
Received: from cvsmtppost102.wmail.worksmobile.com ([125.209.209.51])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiHrZ-00000005i6a-3g8A
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 20:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=worksmobile.com;
	s=s20171120; t=1783715419;
	bh=u04zFavuYLvwHTm35ic5NAbzjGnp0TqATPQNqu4zp1s=;
	h=From:To:Subject:Date:Message-Id:From:Subject:Feedback-ID:
	 X-Works-Security;
	b=DCbJuL2kyifsB8VHhQeeowvSNCIoljNueeYLB66cZDgx0lGZ4+gTPLd4w1ynoqzrH
	 lAGn7kz0wWy2Mi3fH2sb2zmjQilr/XQTvL8eoYg1vRZ+77HFwRWglg6GTf60MmKsZc
	 ATUrP7POriBNilvGwlOUo8MNS79NQVQATorqcof1MroY+TrwGr8DiWnA5ddTU6NQob
	 Fx4Cw+X3RjAvRCYbY4WZS3VP+9dy3lVGkMW7QkuM2S0Wv85dY3TjUB7yV88auRyyaC
	 60VdImm7KeY5M6fALl6j3K41KWN3ptKXS5uIXF4SGkg66Opn3sbnfRgSqRG6CVKp9r
	 Nsdhl0nhQ91oQ==
X-Originating-IP: 163.152.163.130
Received: from cvsendbo001.wmail ([10.113.20.163])
  by cvsmtppost102.wmail.worksmobile.com with ESMTP id DY4cylW3SN+GVisLHp0vWQ
  for <linux-rockchip@lists.infradead.org>;
  Fri, 10 Jul 2026 20:30:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=korea.ac.kr;
	s=naverworks; t=1783715419;
	bh=u04zFavuYLvwHTm35ic5NAbzjGnp0TqATPQNqu4zp1s=;
	h=From:To:Subject:Date:Message-Id:From:Subject:Feedback-ID:
	 X-Works-Security;
	b=VZ02bPB+MW+9x09dprEHbgoycRxIRNAskpTw5Nw3qlYBBnMnLrJYZZo8aQH3Xf7E3
	 Wdl2WvDxkqGCfNU9Mq2XfUcsJvwkYtwFuA0Jaij+Gbx2mKH88oIspRkUEC35Z43Ynu
	 CobeTmc5ErHzvqqnzSIdBNDg3AjWSzF+tX6y+Ee8=
X-Session-ID: CvxIstBYSTqLhD9WR40Ghg
X-Originating-IP: 163.152.163.130
X-Works-Send-Opt: 5Yn/KqgmKAKmKAFYFqMXKAK/FqMXjAumKAgmKxEmFxudKoMqKNmmjACYKxb9Fob/FxMqFNwYjAg=
X-Works-Smtp-Source: IZK/FoK/FqJZ+Hm/Kxgq+6E=
Received: from s2lab05.. ([163.152.163.130])
  by jvnsmtp401.gwmail.worksmobile.com with ESMTP id CvxIstBYSTqLhD9WR40Ghg
  for <multiple recipients>
  (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
  Fri, 10 Jul 2026 20:30:18 -0000
From: Jang Ingyu <ingyujang25@korea.ac.kr>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] media: rockchip: rkcif: Use IS_ERR() check for media_entity_remote_source_pad_unique()
Date: Sat, 11 Jul 2026 05:30:16 +0900
Message-Id: <20260710203016.2250058-1-ingyujang25@korea.ac.kr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_133022_533156_76CCB338 
X-CRM114-Status: GOOD (  11.17  )
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

From: Ingyu Jang <ingyujang25@korea.ac.kr>

media_entity_remote_source_pad_unique() returns either a valid struct
media_pad pointer or an error pointer (ERR_PTR(-ENOTUNIQ) or
ERR_PTR(-ENOLINK)); it never returns NULL. The current NULL check
therefore never triggers, and the "pad not connected" error path is
unreachable.

Replace the NULL check with an IS_ERR() check so the validation
actually detects malformed media graphs.

Signed-off-by: Ingyu Jang <ingyujang25@korea.ac.kr>
---
 drivers/media/platform/rockchip/rkcif/rkcif-stream.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
index 3130d420ad559..542aa877919df 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
@@ -466,7 +466,7 @@ static int rkcif_stream_link_validate(struct media_link *link)
 	struct rkcif_stream *stream = to_rkcif_stream(vdev);
 	int ret = -EINVAL;
 
-	if (!media_entity_remote_source_pad_unique(link->sink->entity))
+	if (IS_ERR(media_entity_remote_source_pad_unique(link->sink->entity)))
 		return -ENOTCONN;
 
 	sd = media_entity_to_v4l2_subdev(link->source->entity);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
