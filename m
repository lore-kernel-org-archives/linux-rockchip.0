Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F6F1C46CD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 12:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTohJ5zGVxSy5+hMuHfugfIYt0Z3ZdLwlnu48hJX0aA=; b=QhaRILfuNCN1AL
	dxSRGdUG0Mo9Df/1MK3tbzSwhIvX/OqojGgkJlzKDfQkDMxMA3GcWOPBsjQzFigay/Y2vyJw5zb6G
	4u+YkW8DiIACLuaBdDQRHXd4zrHFZyGur3ZaFJhEdgaaB4HXdZZRd26JTVWYERZTtCckSMBVTV11k
	ZAl4ZlOlxhqX3Q03f9U4vI26uRBpspwW31Y50FJvej2DhTukx1TkjkrCMwUZnTmzameAq8QKvhaLa
	2kv5z0tK4SNqiaQZSxIDDUdUzWBpOLsT60M1/ta9AG7U374w54c/5lLFD2dsSw242tuOIxcBQwHIG
	n9XuV2GI9Vt3Imlq1wpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvQn-00HJZ4-2c;
	Wed, 20 Dec 2023 12:12:09 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvQj-00HJUc-3C;
	Wed, 20 Dec 2023 12:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1703074324;
	bh=o5VygW2F7/dS/7MDJfHNbT3yI/+OvM90k1Msadpf4uk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eWwyjF15SvtXp/ZxTBm2Nsl7Jwjq0tr2ptKcIRwgyNUAHJDcx96FAbQX9FW1EPjzV
	 UO4qPeKpcr7cIAu9Z+d2CiM4X3MBHWjY5t1LThv6Upybpqpk06F+DiMJVjWh8ehLZr
	 lDgrP8vH6CWxGsq4cgtgkN8v8Ci6EkRhQQYCdxSd9awlbnWJsEYMpugAOmvlcou+E0
	 G6L/ZgaKI8j4Ch1yd0aS4cGv+pYDg3qWm+avQGWN8QC/zKyOQee3+e05y6s0nHrpwE
	 LFLLzc/nzKxyQPn28SaAKmGKBJNhxolKGkzPFQrw0OLqBIPt8jkh0kJrfP4K8BPCIY
	 k12gasUBKmZPw==
Received: from localhost.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BB48C3781FD5;
	Wed, 20 Dec 2023 12:11:59 +0000 (UTC)
From: Vignesh Raman <vignesh.raman@collabora.com>
To: helen.koike@collabora.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	daniels@collabora.com
Cc: david.heidelberg@collabora.com,
	guilherme.gallo@collabora.com,
	sergi.blanch.torne@collabora.com,
	emma@anholt.net,
	robdclark@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 6/8] MAINTAINERS: drm/ci: xfails: add entry for panfrost
Date: Wed, 20 Dec 2023 17:41:08 +0530
Message-Id: <20231220121110.1441160-7-vignesh.raman@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231220121110.1441160-1-vignesh.raman@collabora.com>
References: <20231220121110.1441160-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_041206_159471_35CF453E 
X-CRM114-Status: UNSURE (   8.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

DRM CI tests panfrost drivers, and track of which tests
are failing, flaking or being skipped by the ci in the
expectations files. So add entry for these files, so
that the corresponding driver maintainer can be notified
when they change.

Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9d959a6881f7..bcdc17d1aa26 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1645,6 +1645,7 @@ L:	dri-devel@lists.freedesktop.org
 S:	Supported
 T:	git git://anongit.freedesktop.org/drm/drm-misc
 F:	Documentation/gpu/panfrost.rst
+F:	drivers/gpu/drm/ci/xfails/panfrost*
 F:	drivers/gpu/drm/panfrost/
 F:	include/uapi/drm/panfrost_drm.h
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
