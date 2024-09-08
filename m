Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA60CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 14:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjhJLvGMwrGnlauhKdvJtFTe45wm1YU+X05HBoYlPUg=; b=0MQff3U/++4bT0
	c3TAyx7DKJe9ZsivkeSr8yaVbvBPatIinyHTpeD+KDK01maRsyyXAHU8X1GPQZtkbK7riQVAMUWK0
	WNaqA/vkbqm8L64MYTBhAjaVXV1+EPxy39biiB/RT3Ym9MBZKMQqiWShnDaF/H0adr83AA13iovGq
	xZ1MoVtLrNtFU8ZjlR7YnqxqMww66CCnw91J9r8z+kmrPbFzp7d7JfIXzk1tZvDiBP0CXk5R8ZNod
	TODGkMW6XgHnfEJZzE2n11CJGc+f3tB+7BX+SqYv+SPD9xSOgoXcmtSzfnCSHD8i3Tr+jJLAljUmf
	Y8/ay3EuppcJd1GpjHOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJMO-0000000GzjS-142C;
	Sun, 08 Sep 2024 14:57:52 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJKO-0000000Gz5z-2aRr
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 14:55:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725807332; bh=ctgViwAoHsdszvG54A8azRGdEh0njwBKxxYrSAjOB98=;
 b=cKDElm8hkD5z4aDRmrjf1JCNcgRL4B5pCSs5R0UJigy1xpP45jYyDXBkE1nFaYhrYUs/2FKWA
 L+HlkMoh6YbZhuoHrmwJVurpAmo3teK3NvylohUiM6c8xYZ2kYc8xwOI19K/YOQUQ/QilKDn4b6
 BZtF+DqgGwoTkm/GFo0vPOJ0ZNMb7YHWjRUf36CBF9/FEywtBbvL/q/SGTw7PORtSjIU1axCQml
 GEWtk4VViZ/vrXBYPmeuP79/7Iecsv6LM3wEXjt6gn/qVHwTre7M3+6360b2rwa75eDyJRgA9pG
 GJxJdXUxKZtD+3en6+sVA/flh8HTI6qSPAqG9x3wsg7g==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Nickey Yang <nickey.yang@rock-chips.com>
Subject: [PATCH v2 3/7] drm/rockchip: dw_hdmi: Add phy_config for 594Mhz pixel clock
Date: Sun,  8 Sep 2024 14:55:00 +0000
Message-ID: <20240908145511.3331451-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240908145511.3331451-1-jonas@kwiboo.se>
References: <20240908145511.3331451-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ddbae33c9877b459588eac
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_075549_486108_7E70B56A 
X-CRM114-Status: UNSURE (   7.75  )
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

From: Nickey Yang <nickey.yang@rock-chips.com>

Add phy_config for 594Mhz pixel clock used for HDMI2.0 display modes.

Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fc5e87285a91..dffbae005a96 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -204,6 +204,7 @@ static const struct dw_hdmi_phy_config rockchip_phy_config[] = {
 	{ 74250000,  0x8009, 0x0004, 0x0272},
 	{ 165000000, 0x802b, 0x0004, 0x0209},
 	{ 297000000, 0x8039, 0x0005, 0x028d},
+	{ 594000000, 0x8039, 0x0000, 0x019d},
 	{ ~0UL,	     0x0000, 0x0000, 0x0000}
 };
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
