Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F206DE748F0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Sep 2023 23:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QSkLlIm2gU1zJHWd6t9156OpEFFPstFINoeGB6Q6zR0=; b=klIKYaYm/nkKy6
	8gvfguD4LXdACT/QJvTbNFyT6Lzibw7ZQtBgoof1RhGI51CWwa7USAtIuXROk2nva3aZKz06aRGFg
	Wy3OqvTyYfHMv/qAF6ufn01AFK6u/twwuU53UEzfXEykstBAteWMkhDh63e5QJ//l3RA8w5+MPV0b
	kyU8e0X2a7vBjNPF0t5KEW+A0kDArUZzXd5tDQownqPheHe+sxcqP0gnqFDIpp9N8moj1X2ERRtcz
	bfZMaha+4a9apgqHSZ0odb2ovudi47V6nrJOsWUfHCbLsiA/aN5E7eYLapnoln5x3SVyeVKWgXU6r
	EqFoiEG/YWvEg2tttigw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmjc1-00AEiV-07;
	Sat, 30 Sep 2023 23:43:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmjbx-00AEhF-0S;
	Sat, 30 Sep 2023 23:43:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7A8A160B10;
	Sat, 30 Sep 2023 23:42:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 381EBC433C7;
	Sat, 30 Sep 2023 23:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696117376;
	bh=CsxBwJVm1bZHCwijbrh6IQBWuJt6PpsEf/jvmsVNvRY=;
	h=From:Date:Subject:To:Cc:From;
	b=MBl1S22Ey5vJOpMt7MZmO4cFGeksYRtpYNKfp4e0/UJIklgc59TlVV8s4N9KGAUJ8
	 P7naw0vpFvKtfjSPNOObAHytteAOkn7Ft5Y3EkoOez6bGDm4SNmYqOloHuAxRLyVzc
	 UYTBD/sfqipCoRN55LcP8vVz2kxr9O9mw3KiMz9oYpjDUDoP1nl926bb/mOXU1zHdF
	 YW+NsAP6C3G1/3POpDz10OyM0Y+3OxQXtqXKvap67v6ZA8jxeonf54biNUPfYrUnA4
	 7H50wNtBR60ESmh7ljQax//71B8AvT8V4iVSur8vekkEc1cWG4jpdQs3BSFJvbBng9
	 BjpECuPVqjD5g==
From: Mark Brown <broonie@kernel.org>
Date: Sun, 01 Oct 2023 01:42:50 +0200
Subject: [PATCH] drm/rockchip: vop2: Convert to use maple tree register
 cache
MIME-Version: 1.0
Message-Id: <20231001-drm-rockchip-maple-v1-1-ca396ab75be7@kernel.org>
X-B4-Tracking: v=1; b=H4sIAHmyGGUC/x3MSQqAMAxA0atI1gZqHECvIi5KG21wKimIIN7d4
 vIt/n8gsQonGIoHlC9Jch4ZVVmAC/ZYGMVnAxmqTU89et1RT7e6IBF3GzfGuaO29p1tiBhyGJV
 nuf/pOL3vBxyQm81kAAAA
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Mark Brown <broonie@kernel.org>
X-Mailer: b4 0.13-dev-0438c
X-Developer-Signature: v=1; a=openpgp-sha256; l=1127; i=broonie@kernel.org;
 h=from:subject:message-id; bh=CsxBwJVm1bZHCwijbrh6IQBWuJt6PpsEf/jvmsVNvRY=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBlGLJ8Jjc9oOR/vpaDIbuwyZK0zdfJwcMVH3fC4
 iKZdLtuhZiJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCZRiyfAAKCRAk1otyXVSH
 0Gm2B/4o4oxx5OVAaCiOxtwlofHIC0BmPsGKG6uszu0m+fL9D/qQkzplaxJFgi/p463XzlxQ0dV
 jlGa9ezoe9nSuDtunTGpDbtfUNmCL/62eBa9mTWxrXr7rl/bjBihDHtOj2I5oCMEAhHVGj/GOeV
 fRnmMPXwL30YQeh25JsSdauTXobdV+j0Rz07UtoYc1cbYM9uNkEeQdbPZVsTdsmwlUdn9fclCm3
 RKMdkxCzP5qJtr8+rLSDnfIUn34iOL7HQuaEJh9QojpnNZ51T4ih5qZDBraX/VYXSWXizCa73Ng
 egbcCbalJvzMbnAZPkeiLK1y+0np28+i2iIPTKsJKtdtherZ
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_164301_242035_6714DF15 
X-CRM114-Status: GOOD (  11.80  )
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

The maple tree register cache is based on a much more modern data structure
than the rbtree cache and makes optimisation choices which are probably
more appropriate for modern systems than those made by the rbtree cache.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 583df4d22f7e..9f4470171cf4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2641,7 +2641,7 @@ static const struct regmap_config vop2_regmap_config = {
 	.max_register	= 0x3000,
 	.name		= "vop2",
 	.volatile_table	= &vop2_volatile_table,
-	.cache_type	= REGCACHE_RBTREE,
+	.cache_type	= REGCACHE_MAPLE,
 };
 
 static int vop2_bind(struct device *dev, struct device *master, void *data)

---
base-commit: 6465e260f48790807eef06b583b38ca9789b6072
change-id: 20230929-drm-rockchip-maple-f6253d6a422e

Best regards,
-- 
Mark Brown <broonie@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
