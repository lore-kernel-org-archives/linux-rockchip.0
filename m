Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79A5BECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 20:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:From:Subject:Message-ID:Mime-Version
	:Date:Reply-To:To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hE5Xqz1uXSuX2dyVP9Ki3gYpxnnkx9ntLEjZ7dJfxMY=; b=fGyD1ftjRyIU5c
	j9j85ihLneR8nsTOv8Y/ipSxUmu2zjNyXDizAKGb5CXWqRHh1kcBGRHXfYIRqA/zJGA2MdgLVBESt
	FF5xgzXAJZK/QZCKI/4ez0Xw123HWBNAPlloMnsBQKCbpcGpaygD/XhDbojikTLexOHXSnFK+Om4D
	VrGZqfiZC0wl/wsajj6zZQAfXyZWPNv6YAAoixcLeBr4JqMznD548XjMC2Mpe3sH6XrgsismwvLKR
	UHMMoQKf2ZSlQHOBFLvUgHnZltWtq9MDgxXKY5KkyNpAod5P/5SizTipBweYwlpJcsHLqEA9Uc0Dv
	D8i9ZmJ3Mg12jPNfHUHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYCx7-00GgfE-Pd; Tue, 13 Sep 2022 20:56:17 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYCwq-00GgQP-Em
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 20:56:01 +0000
Received: by mail-ua1-x94a.google.com with SMTP id k12-20020ab0538c000000b0039f64f6d1e2so3850694uaa.15
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Sep 2022 13:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date;
        bh=uR2BlBWxNwDXVN8KePRFZ054d83TeFIdqVCYAABhYhE=;
        b=KNxgHGMC5WX5o28iqf/s0dskwm5mmsxJ0wZRSSxynx4xdtWEgEz4Flo8Cw99zS5s5s
         KAgUjuccBs2bLOd+3qcCyeG9WsVLDIBdnmLU4P4jHYoMtXT6Phl4Z4EUd4Dvui5ye1K7
         XDHlIbQoqA3IcdUsiiZKKxznchTLyYiYmaH5m2Vpp0C5T47szsZiVlY0XKyreM127+RP
         vUY8sBQZx279lJcP8CQYOAXLV3rSP1srdtBWVGET+LZpJPkv0Mg+V7WNt997ptz2QJLh
         9kDaguBL6H0iTkRLN4T0gz+ptaMbOH5YcxaupcZmV+Vox7o6ANx6jw7gZsCWJSBZ4lMQ
         ZFwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=uR2BlBWxNwDXVN8KePRFZ054d83TeFIdqVCYAABhYhE=;
        b=5pX5gf6zxu7mq8jCTBsFCqIAMc/YW2bnsabyFn8Vo4Jo62+RE+1W3/vlzt3gJxQ6PQ
         j5rTLY+0t2HToK2cxbkZtDQu0mHaeWSTyQYXxrxt/5YYOCmQT8DWyfb/iu+pVpG2Clh4
         80pnXzTCKQ/pdmj7k6noBux4MijvhiyZZJbZL5MsQEcMd0LLNW4HsKbxdH/wp8jOrIow
         x8bofdoZN6aAOEK5aoEcQU9sBKLQCZ49SPWB3croK1bqjgYfx6lOabhY3JQeK2+LGZPo
         ziwnGZr9ubXI8SthyOnZbEVnpi1l9Qe2hVOMjmu3n/v+9POr77XThsAXlP0VCFl5Z1e7
         z/3w==
X-Gm-Message-State: ACgBeo0yhsxIVQFeaZcJvG/A1ESyRZuajdbnFGbAIvriLt/qhEPOV4X5
	ZvEhi6s7UKtZwIclFsPA/ZJluOMwbg==
X-Google-Smtp-Source: AA6agR6BKp9O4/iCA7qsoXlt+ctid4gFcnrvB+lLTtzXiws1cBAzJPZ8bBFJc6NV4pZunK7Q1bkvTIRxbQ==
X-Received: from nhuck.c.googlers.com ([fda3:e722:ac3:cc00:14:4d90:c0a8:39cc])
 (user=nhuck job=sendgmr) by 2002:a1f:b40a:0:b0:3a2:5af2:4750 with SMTP id
 d10-20020a1fb40a000000b003a25af24750mr3582947vkf.0.1663102558921; Tue, 13 Sep
 2022 13:55:58 -0700 (PDT)
Date: Tue, 13 Sep 2022 13:55:55 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
Message-ID: <20220913205555.155149-1-nhuck@google.com>
Subject: [PATCH] drm/rockchip: Fix return type of cdn_dp_connector_mode_valid
From: Nathan Huckleberry <nhuck@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Dan Carpenter <error27@gmail.com>, llvm@lists.linux.dev, 
	Sandy Huang <hjc@rock-chips.com>, "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, David Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel@ffwll.ch>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Tom Rix <trix@redhat.com>, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_135600_535099_81C77F1B 
X-CRM114-Status: GOOD (  10.89  )
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
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index c204e9b95c1f..518ee13b1d6f 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -283,8 +283,9 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
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
2.37.2.789.g6183377224-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
