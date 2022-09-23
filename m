Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB218ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 16:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EJtJssQCKzYd/fTDsQMgRbPzgE7SoCf1cl4hQC8/igo=; b=wk2bccSugJGTUv
	tx395/lz8qozse307VXVrD2R8XgvStb9bAGoJlSN0P4vTqerfPzaBNFsUd5Kglj+MWgkI1+xmIuBS
	W5wUwTPAGp9mjpDkjoEUnRWcY5Nbj4Z74DHugreV55AocQkRkeqP/crHqTHWgR0N+qHp1fHl46WqD
	pTdZl1n1t+D+0bJzPHfkiMtkU0oJqO8UIkf3Ubn1u7UYd/DlpwN1vzaz9RMuXynKJ0PwyMHHM5GnK
	yUMt9J/blC7ASkrfCcUayMV8ynuicCOzHtE0xY9L6XnHChkpzhht/EkWARGSYz87B0jSHSm+I6cZ2
	WvQcC+BHc6IuSlOoFU9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7S-004uon-Fw; Fri, 23 Sep 2022 16:01:38 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7P-004uns-Mk
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 16:01:36 +0000
Received: by mail-lj1-x22c.google.com with SMTP id s10so574714ljp.5
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 09:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=TAxhomyfG5Riy3i7DiepBXGLe6PCxMcqDR4hk3OXgUI=;
        b=LIHMmaARN9uBjHM76oyinQfZ29R4tB5t1HVtaW3WOnwOKObxc0XtnhJ+JXqXHmD3xf
         kKpNSGmXYJ6H+2TPJpfsdPRrE94t2x6lSEp+PZIO+qWtQjhxoxwgHwy46QY/yAbnrMrb
         SIZF6cwwJmX697HpykwxOi4NJPhrkj3dVe1sxSCn1ICWpTVEAEhcV17/PdpGyQSWjBh1
         tvszMo8HfKkf/tKNC0NIWEMtoAhlGGN61ZmaIx+mDDIVWCiLj7NZ44TilpnjZNRfcTkM
         BPL48qTvYHhJj4Ql8RLgtE0/khQS3QMyPrHVhS6N+EKrpKGh6jm6IX6AhqKNGyKIVjW8
         wQSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=TAxhomyfG5Riy3i7DiepBXGLe6PCxMcqDR4hk3OXgUI=;
        b=66tL7Q0+Nm85M+D5Dy8G2I0tH8M/Ytl5An9WYfRP9fRXgwh2nxgP5U7BimHZmn8uVO
         EUVVeS5h9zKH9yn+dSWMyqrmv9hjeKTMDvewL162H/W/yPAt0iMFn3sdfLl9uNi5hDkf
         KPvvzMvc9l+gdk3Xid2qswOxFz7Mewg+vrvGuoofJSsfZA5vtjcWJFWR99sC1RoJAriX
         lrmjqcEhxlxFJi7Ocbw5a1xGHLG1u8V7CO9AzJr4CCcFgrpw0CQEeTqutyJR8QJAHhRB
         YD4GNKQ2glDPXdovqR5KtNqeFXkgknvDQS+1gYzungw2tSb6mRQB9gY3qXg03zB2KHNH
         pdhg==
X-Gm-Message-State: ACrzQf2H5qTRMrqbT4xg8ALDOKItYmbcYxJCvOlBBiHBLBcNaiws6S8u
	u0sQK+VOEcUajG/mGKyA5WRW5hm8+gMaYA==
X-Google-Smtp-Source: AMsMyM5f6JDX9e98wOEInChkVV4hQk576hkhVm5pQmZx6w1pC360nIK2OkewGIlT93SdEkh9y/Jrow==
X-Received: by 2002:a2e:50b:0:b0:26a:b7ec:59ea with SMTP id 11-20020a2e050b000000b0026ab7ec59eamr3284921ljf.312.1663948889945;
        Fri, 23 Sep 2022 09:01:29 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b00494792ea34esm1498611lfq.273.2022.09.23.09.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:01:29 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Alibek Omarov <a1ba.omarov@gmail.com>
Subject: [RFC PATCH 0/3] rockchip-lvds for rk3568
Date: Fri, 23 Sep 2022 19:01:12 +0300
Message-Id: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_090135_776744_FBCBB229 
X-CRM114-Status: UNSURE (   7.54  )
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

This series adds support for the LVDS controller on the Rockchip RK3566 and
RK3568.

Tested on Autogramma Monitor RockChip, custom board based on Radxa Rock 3
Computing Module Plus.

Requires applied DSI DPHY patches by Chris Morgan, as LVDS controller
does share PHY controller with MIPI DSI.

Alibek Omarov (3):
  drm/rockchip: lvds: add rk3568 support
  arm64: dts: rockchip: rk356x: add LVDS bindings
  dt-bindings: display: rockchip-lvds: add compatible string for RK3568

 .../display/rockchip/rockchip-lvds.txt        |   1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  25 +++
 drivers/gpu/drm/rockchip/rockchip_lvds.c      | 144 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_lvds.h      |  10 ++
 4 files changed, 173 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
