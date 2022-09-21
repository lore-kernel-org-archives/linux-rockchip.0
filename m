Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D4AEC6FA8B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Sep 2022 15:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDV8FT3fNxhCYEL3ZvG0j4WGHaGF2gAIZgFfAtaM4OE=; b=SY9jZGzr58++nn
	aL+3Udn/IxxkjKcQFVvD/Woyz1Tg2IO9mcAMjFgbwFuHW2VCu3hRu/i6+AhlZy8ccKNw7YMJV8gc0
	pp1lUuoTp+hedb22BaashcePne4+I1AWSPdZHyBxMfz1tni8RYHsUR4JvYjJnZ7xIbDh+YHl8DL0k
	/4WjmfX03Raxjk74FyPy5xDZF3lJhy3E0VMacULMVD6Xf61sUdAuQUt8e5NYpkb9nxXOTGhh2Go6L
	sRBC5YrmtrakHJi1Z/v4zy5KsBb2CGWI5XFjggdVKzBho/m3LuGO/IWmACUEM5ld1TdCeuNahJRRH
	/2JOGWcV7OOJmAoo6Cqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob24j-00BrWe-Br; Wed, 21 Sep 2022 15:55:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ob23a-00Bqee-6K; Wed, 21 Sep 2022 15:54:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BF393B830E5;
	Wed, 21 Sep 2022 15:54:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44BC2C43143;
	Wed, 21 Sep 2022 15:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663775676;
	bh=xFoYiczSMpmkPDUMzBxSpprsVJENIuKg5r3Cj61wDmo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IcKH+J2Eus6q+ZNUnO6YylwMuH8V+a4a0E5a8AKaEX1tX+r+c+o95s28x4uLHkT7x
	 U0/ejrbwyVctgsKkmilT9pg61lSX23DR+bvMT+Kzkp5Em9txwuwnLNqbWj4CdF34ey
	 feAQFP2G1uzHrupqvy2S5Q1tvfoPW7V1jDF1HOeu5FIzZeQoxwTJdDbG9RnvZx3ylo
	 +xwxH/ZHaCRgQAyMrnXhCsn0dkgQLrzIFV02SrMg7lpGl0WjjZwPudYmjW34dwav8e
	 WwaN4MDhxRzHdXBwA/dwAXsi+g5ixUbizF++KtVsogFDr/l3o1pXCfvpyMnR8YYDom
	 NfQFqt1/A9iuA==
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
Subject: [PATCH AUTOSEL 5.10 7/7] drm/rockchip: Fix return type of cdn_dp_connector_mode_valid
Date: Wed, 21 Sep 2022 11:54:25 -0400
Message-Id: <20220921155425.235273-7-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220921155425.235273-1-sashal@kernel.org>
References: <20220921155425.235273-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_085438_432891_A3DD37AE 
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
index dec54c70e008..857c47c69ef1 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -276,8 +276,9 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
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
