Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264D5C6FA8B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Sep 2022 15:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mydiTWKkbC5b4CoXiovQofXuX8p7vhcfjJoovrC7dCU=; b=12xn2WCIBjTxDz
	K9of1FFGjDbYRQjcAES5e7MnHNcrDWDzGD+Ojik9vPPivTbWFAA8ci4YcXKu/QpmvGzw9TJ3TkfK2
	HxhdFbaV62dswwE5xLDzU8ZM56x76w8jwbizEaSuT629OrnVMvLd6v6d3Pn+W2hv/gT9MPtsyG3Fx
	vnaGCzWgF/bdSK8b5TOowcikpswUTxoq20bluehSqmiqSPeuw2kbQ7b8z2pTtexiCChZbyg6qYgOf
	iWQ6RqvBsB0e+lyXtweMuX2pLwypwVpBkRlhbLbK/XHzWjU1EPH1pO/FzsrlM/31rbdfuVKwLSHU3
	I7/P++yfu+Gppa3J3Ymw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob24B-00Br5n-9b; Wed, 21 Sep 2022 15:55:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob23P-00BqYq-FO; Wed, 21 Sep 2022 15:54:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CFAA2B830E0;
	Wed, 21 Sep 2022 15:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2129AC433D7;
	Wed, 21 Sep 2022 15:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663775665;
	bh=ayO3WIFiJihs2MM+opQbImdBIj0AnX09GvLi7XT6pkk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jfoXfDdwrZH9S0JRc7riHvmolhtGkS14Rbd4OV2nQGp9gtJkCYN9ofjQ+2bJez0Ag
	 pvYeqyDN5rmbthwlZeMLPNf5RaXhATQ40mKx6G4KKOxJWruWmALgFMayEjirUDWu9r
	 O3e6xCRwQzKFM3Yg1Nvx/8hplt3s+gPoZLvsxldOipuPVrIesn3eYds43YwRZEAyHo
	 58v3QyyIE4WfKmlDmsiF0EMMAZYgMLLOauy2wBBkjL8Mu5CM5/44l3owtYfVhhEa0N
	 RxaX/dSY7pL3+IzCUpXfTDOmRj1Fx41ljAmTNAMCkcOb7KnETywKHhsk3GylRBe4q9
	 G23pOWifo04Kg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	Dan Carpenter <error27@gmail.com>,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	hjc@rock-chips.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	ndesaulniers@google.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 10/10] drm/rockchip: Fix return type of cdn_dp_connector_mode_valid
Date: Wed, 21 Sep 2022 11:54:07 -0400
Message-Id: <20220921155407.235132-10-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921155407.235132-1-sashal@kernel.org>
References: <20220921155407.235132-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_085427_705114_C3096484 
X-CRM114-Status: GOOD (  13.12  )
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit b0b9408f132623dc88e78adb5282f74e4b64bb57 ]

The mode_valid field in drm_connector_helper_funcs is expected to be of
type:
enum drm_mode_status (* mode_valid) (struct drm_connector *connector,
				     struct drm_display_mode *mode);

The mismatched return type breaks forward edge kCFI since the underlying
function definition does not match the function hook definition.

The return type of cdn_dp_connector_mode_valid should be changed from
int to enum drm_mode_status.

Reported-by: Dan Carpenter <error27@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1703
Cc: llvm@lists.linux.dev
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20220913205555.155149-1-nhuck@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 13c6b857158f..6b5d0722afa6 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -277,8 +277,9 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
 	return ret;
 }
 
-static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
-				       struct drm_display_mode *mode)
+static enum drm_mode_status
+cdn_dp_connector_mode_valid(struct drm_connector *connector,
+			    struct drm_display_mode *mode)
 {
 	struct cdn_dp_device *dp = connector_to_dp(connector);
 	struct drm_display_info *display_info = &dp->connector.display_info;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
