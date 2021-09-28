Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33EAFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:36:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 041E161361
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:36:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 041E161361
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wgHJMeumc48v48L4OnM/e8OoWNLiVBlOiTrwu83cPCE=; b=U4eICuu+RPl4rT
	fn3nF4BeCqYosfYkaewObaAwpmE/NxqvOscWaGZy+nKmWiz/iIzf1u2h37FqksoDD3/nn6P3WzDg7
	9wK5RV51GX0CLnzCQcwullOdzB65WhNWSPp4t/a1lngLOs5QStJe88B+QknEHI3zcF+UItLALk7aM
	fAaMTeulBFcXagpzfmjmtyskETOqiOrKj3SFGw3bg9D8j0I2vjLQgceQD2Sp1pOuOYTvTnrnx5xvc
	sumbWeLNIgHLmDNlBHjLGgwffoamAHxC+TPRmVWU8stf5gawn1hbHKbDvu6SZarcLr1FHXVXLmBE/
	ly5i69zLA/q1MLYDaUUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVKll-008syj-BO; Tue, 28 Sep 2021 21:36:09 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVKlh-008swy-Ag
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 21:36:07 +0000
Received: by mail-pg1-x529.google.com with SMTP id r2so438312pgl.10
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 14:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5lAhEZS11LpnIzc7KynPjRxiAb+PLMH/7bgGJPagJjE=;
 b=QdcmfJ/qSoowWbOPbMWVW/bQNIsR4/5kP2vt1OphFKkG11kzG4kPRJldG1S2xUqt4G
 4J5Hga2V7YSQwxs2qS+93eWwf2ot5DXO7ROHAwVwifmu7ZUjA/pZAMDpzIrJWfVQIDGL
 1y2rm2Wiu89koEtTmWthN1Q1lK2gqElQoX830=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5lAhEZS11LpnIzc7KynPjRxiAb+PLMH/7bgGJPagJjE=;
 b=EMbxC+KXK6QXpIUv9r+ihz2FkFs0avLOiTML+6kM6/yhTSuizHaE25yAx627gZdkaJ
 9ctTiDVsdqnqg3AY0SRsai3rqn7DBcRLX8YVQNIa9FUSFCsLx4oBmzYAHQvXSJnYMcya
 H0QXnZ/hhzNeHg2NM+GlnB68Jr7kEotw8qEFOn2fRkV8Ere2dE1/sDum+imCxrUh2hIO
 7cvU1QW2YXOgjAhAHbSV2aBmVpZ0es3ogqqkfbnmUi9Z4hByvSC8foQElBjbCYOit+++
 CAqFZVmflmbIM4ybSlacoK1SD3lLZiyIT+p+qgRj0yHf/IFURC4ubnCfJSNeR1KGykzH
 td/A==
X-Gm-Message-State: AOAM531xTrdavAzgRv38foMPOCpXL7GHGPSG6dmSUt92oiPo4fBGOIxH
 fkWJP0+FueilsIFv24P7hvcjkw==
X-Google-Smtp-Source: ABdhPJywInmIIvWE43lWuKer/3uSKHLxj/LfTYQvFzSRtg3uj2Dg+SYa1UT9GlC6jKYZR1llpkUCcQ==
X-Received: by 2002:a65:5c85:: with SMTP id a5mr6559490pgt.126.1632864964181; 
 Tue, 28 Sep 2021 14:36:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d7ca:580:94ab:8af8])
 by smtp.gmail.com with UTF8SMTPSA id z4sm108545pfz.99.2021.09.28.14.36.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Sep 2021 14:36:03 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Thomas Hebb <tommyhebb@gmail.com>,
 Brian Norris <briannorris@chromium.org>, aleksandr.o.makarov@gmail.com
Subject: [PATCH v3 0/4] Fix Rockchip MIPI DSI display init timeouts
Date: Tue, 28 Sep 2021 14:35:48 -0700
Message-Id: <20210928213552.1001939-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_143605_430590_F742657F 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Rockchip DSI driver has had a number of bugs over time and has
usually only worked by chance. A number of users have noticed that
things regressed with commit 43c2de1002d2 ("drm/rockchip: dsi: move all
lane config except LCDC mux to bind()"), although it was fixing several
real issues of its own that had been present forever in the upstream
driver (but notably, not in the downstream/BSP driver).

Patch 1 and 2 are the most important fixes here. See their description
for more info.

While I'm at it, fix a few error handling and cleanup issues too.

Changes in v3:
 - New patch, to fix related PM issue discovered after patch 1

Changes in v2:
- Clean up pm-runtime state in error cases.
- Correct git hash for Fixes.

Brian Norris (4):
  drm/rockchip: dsi: Hold pm-runtime across bind/unbind
  drm/rockchip: dsi: Reconfigure hardware on resume()
  drm/rockchip: dsi: Fix unbalanced clock on probe error
  drm/rockchip: dsi: Disable PLL clock on bind error

 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 82 +++++++++++++------
 1 file changed, 59 insertions(+), 23 deletions(-)

-- 
2.33.0.685.g46640cef36-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
