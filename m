Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A9CFD6B6CE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Oct 2024 19:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cyuD0n0rmw7UIIkSTPbCq3b4GiySNmZ/NUWOIbTUTFo=; b=3A2tm6KPTN2Qnc
	g0dnEZAbdeHximOc83awda5/+bqY7nOKAlPCbgT5773lukaUCpbVvSEcyQVRsts8GqNxk43eLawEv
	zx50Tyz/GAlwbe2IrpWWD7ofVBFlNGnf9qxRVfITtN/hCy6bbRYGAo98ajgVZNhvt2AOsOC8IZTC/
	h8tnUzGRD2gIzU+3upSVIjxR33wuVVu4x21eaMWig4XXHriFzl4SElrvGm1Aht0jLvUv6XrlDOA9e
	lwpBH2pR78HmsV8CLOUgEC9ygfZ1L6JMixR7+12RbM9IRVCM5aywMHS0Phd4oVEkADOLjFZvmOUvg
	ddFVm2C51AEzmN+rjfig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJT-00000001XW8-3bCd;
	Wed, 30 Oct 2024 19:25:03 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6EJQ-00000001XU3-0g50
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Oct 2024 19:25:01 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3e6104701ffso169103b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2024 12:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316298; x=1730921098; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HLeVcpMs22RhQ9P+S+WzLz2UKXz7BVsEnqwj5SzCpTs=;
        b=JHobrK0A8Qek7wGZ3fO8A5bhR3hJvr9LhpqmL0s0dVwHhqOfUjQld91XpJnsQTiwF2
         xKcNObprANr98abipEt6zPVo69qMDYBMhm3TMnygIwJTT5vYE/hfZGaobwSIWGr2srJQ
         OnUovEUy6F5RICRZAdwzGQtFKMgw1XA8vCN/bwu/eooYPI9Noih4aBvR4ve6zS1+G8K5
         gM2WJILGLoqE8hvBVci+43panYcmIO5sjmwMgFERZd4500cKqF2IGLOYVyz58OOhulrQ
         AE/CO5RId28Uvr2QXUalmALsy+AEl3f2AVt1Ooha+Eu1eF7IDnIQ/ESqtaSYXeRjDA6H
         hzjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316298; x=1730921098;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HLeVcpMs22RhQ9P+S+WzLz2UKXz7BVsEnqwj5SzCpTs=;
        b=wazlA/wi191f7FkQCKaunrzPkIKGChVzQNZbP082FbCVzZwbKQBfyzsLlq+y9pvX0K
         fK+HYvUwbW0A+nF5y5Ys17j4YDterhVMCrDBWQ/lZhiQm0JhykHt6dDnNbBBq8wBdeQL
         P0RjQGxtS2vEvoM9/jd9U4g1MRzAeoBiIP8dPxWMS1nZ+iJBoin6hZKDCgCsaKXgGsVa
         sFlLpjkef7OSy+xGqiMGMuCNONZIzE6Zw3Kqo+oBFQSUZSQRbO+oy8ZN1zR0MoLvSGCb
         s8p6Pwuw7Pff+2FnJrN7ToAsoo1MGm1KKWoNuoaPVXWoqJFTTj96NGAX6jWc7ICFVTEu
         pryA==
X-Gm-Message-State: AOJu0YyAbSGJJJY6BHRCrAfXhtTKLkzXDZhVpGq7KendDqVIRbgWIkEE
	86fVAS+DBbjlU0PBz+HdglBFruZdbzTD3rMLwI2BzpM8HXy4YpwmSZcJsA==
X-Google-Smtp-Source: AGHT+IFSK9dQOa/K/bFoWGtT3qo0L6EWNVL9/zH0xG+ffRsMPAJrOCCHCSDJLTSDPQkU5cUNth0V6w==
X-Received: by 2002:a05:6808:2117:b0:3e6:1513:4c04 with SMTP id 5614622812f47-3e63845ad6cmr16077828b6e.20.1730316298576;
        Wed, 30 Oct 2024 12:24:58 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:24:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Indiedroid Nova Audio/HDMI Updates
Date: Wed, 30 Oct 2024 14:22:33 -0500
Message-ID: <20241030192236.839105-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_122500_227483_11ED10B2 
X-CRM114-Status: GOOD (  10.11  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This series is for a handful of fixes and updates for the Indiedroid
Nova. This series corrects the device name of the audio card to stop
a kernel log error, and adds support for both the HDMI and GPU (now
that HDMI support has been queued for linux-next).

Changes since v1:
 - Corrected HDMI port from mini HDMI (c) to micro HDMI (d).
 - Explained why I enable hdmim0_rx_hpdin in contrast to the other
   rk3588 boards.
 - Split HDMI0 and GPU patches into different patches.

Chris Morgan (3):
  arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
  arm64: dts: rockchip: Enable GPU on Indiedroid Nova
  arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova

 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 58 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 1 deletion(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
