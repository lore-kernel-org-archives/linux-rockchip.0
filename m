Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84E16C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 12:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c6Y3vXRUf1Hgg4VeMUV2as5kFent3HY74avcQ52Jduo=; b=0+GkA9XsTsbCR6NWOkNb+Abtda
	CvtUz74bkBdgqCyzR/yYS/GtTQz3UPwDMwA8AdWcmnRU4F/hXG3Nkbey/EUqn3ps12tt7s7X2h0jp
	dsFUDaXtIN9rYcFzHp5/nAeLytUi5yvKfFnbZASMl15oQP90k9dIE2qgnEp9HDiWXTbLr0FfG9t9i
	tuT1BFBmPZYDRaKij3UWKKzPv+alENSj4/BBc4DfuvdPKI7i+FW1t6RdineghCnIPOYs6hzx/qCt7
	/08ijEd5Xm3UJGDde+Hwi4lirXtAkNyc45geIphNvdvqSB4PRXlW8cTWlBCHhv3TGGxg7wwvDftqh
	wsgBGpAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCey3-004mgH-2B;
	Mon, 11 Dec 2023 12:00:59 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCext-004me4-2e
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 12:00:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version:
	Content-Type; bh=EZVVJRwESSfyxJj8cjY5o4AEGpnzdaLjkCRiW1DtUyM=;
	b=lilYDK4Rvv0jvU84xq4OPY6MN4B+MwwXJwm2cWWAM7seJv2e32u0Ug3eUOh+20
	7LIOt3WqOb0a8Zz5lYO7zWFCmR1wbAzTwiNdSOD66acS26Bd9WAw1xJ/382OmOM5
	xdwiW8X13geDiLqLrGirC9f5aL6fJLW1S9n/Skcl5xvNM=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-3 (Coremail) with SMTP id _____wDXvx3Z+XZl3Fm+Dw--.13317S2;
	Mon, 11 Dec 2023 20:00:29 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 16/16] MAINTAINERS: Add myself as a reviewer for rockchip drm
Date: Mon, 11 Dec 2023 20:00:23 +0800
Message-Id: <20231211120023.1785687-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDXvx3Z+XZl3Fm+Dw--.13317S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU-nmiDUUUU
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAtDXlghl75lJwABsZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_040050_222338_0B5FE602 
X-CRM114-Status: UNSURE (   7.41  )
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
Content-Type: multipart/mixed; boundary="===============8761046517634425363=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8761046517634425363==
Content-Type: text/plain; charset=all
Content-Transfer-Encoding: 8bit

From: Andy Yan <andy.yan@rock-chips.com>

As I am familiar with all the details of vop2 display
architecture, I can help review and test all related
changes in this subsystem, so add my email here to make
sure I get CC'd on rockchip drm changes.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e2c6187a3ac8..ef58773071fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7141,6 +7141,7 @@ F:	include/linux/platform_data/shmob_drm.h
 DRM DRIVERS FOR ROCKCHIP
 M:	Sandy Huang <hjc@rock-chips.com>
 M:	Heiko Stübner <heiko@sntech.de>
+M:	Andy Yan <andy.yan@rock-chips.com>
 L:	dri-devel@lists.freedesktop.org
 S:	Maintained
 T:	git git://anongit.freedesktop.org/drm/drm-misc
-- 
2.34.1



--===============8761046517634425363==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8761046517634425363==--
