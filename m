Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46AE4C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KflotoolQXiMFHvsbZCUG/++TuKqIC35PCCpEf/2nG0=; b=Jz/bdvzLUWwWur
	EzO4Dr/G/dVBzZN9K1QtR4pJwoJeUeoZkYwgJXHxKyEIHuWihyaNW57i0NqrcklunQdYkR/xAs1pz
	K79l1uMJpEbbBxctJ1G54gwId48DmLGKRe25piwH5tVOA5UZZ9+CSCfkoP4ankpJ4BKoznrG/hv15
	dSlHVYB109Wqb/gIIZu4T7wcQQu9nx1R2NkYq6rH8A1K/A3Yeayhs8ocYoCOaqjkb9uno6a2PZpzQ
	Ks80Eq2LwKUkYiI0gzZsgdo/Q6T4mmA/FtNrkyP/kOHfS8KbyfuU1ieMr1ND8nuVfF76aER8Gz1M2
	V7l+xgo/uXSV1rTidTBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrae-0065SD-AZ; Sat, 12 Nov 2022 14:34:36 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otraV-0065PZ-4b
	for linux-rockchip@lists.infradead.org; Sat, 12 Nov 2022 14:34:30 +0000
Received: by mail-ej1-x62a.google.com with SMTP id y14so18525215ejd.9
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Nov 2022 06:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oGYukmltrvbNEHxw8KX1/YGcXWnpqfoCXyatwXZTAN8=;
        b=Wn6rcQcrq4/Ca95BtYwf0nD5ikJBjo1J4tftSYqhxdcH95dUf2/XsH+cqHJpO4nOnJ
         qDXRuTn9amxgMS0WlaUfNFieGvPM7gEgBNGmcFa748yb5lf/8DRjbGdtEoHjas9lgCSU
         p2FzX6WhxPUIdW7Xtt6KAGA0jx2yqs2w5l23ZuutrNeIt3KgL5F0v0lHKcBPxIO+QVp7
         EAA7zl1qmAsUOU1A49G++V9lGckAhYNPUGlkbe6E4HQF2N1+mkV+JcxxHmLCN2hafDHv
         g9NWtGglRsY+cGOk+MXb7bHWCRoKA/H4V+1SpSVq4viFmPbpieCdT7UEvyosWvQxeQsa
         DSDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oGYukmltrvbNEHxw8KX1/YGcXWnpqfoCXyatwXZTAN8=;
        b=KXhJGHVdTwtDV6utHD8bYIhCx/RYuUT+JyvVy6LVzF87MpKI5nth7ITgqXuBS4Mb7W
         gzHdbDmoMC8r0nlSIsBQR1JLuIELND7PrdgEwjF0qtJV5jIaAbO8ADxcXWceL08/+yjm
         wcQFpmSsblNMzFXmA9C6N8FoapVGgHeFXf/b6zHSQ7IqFZeQs1xbVwaiJW08Xf/1pAac
         6ilIU3MlzyRqO6mR6Yh2VL1W/FjZX9cLirO7Y2ojK3jV8okAnSFqa1vi7ue/8Su2pkgO
         0LVRnmmjz77bca4yNxNpnDOFmAFZQqHew5ZVZxMobEKuiC8EV2rtAraAHJ7j+2s1d8Kn
         obVQ==
X-Gm-Message-State: ANoB5pmgXGctDN8cIqaRwrD6l2Z4Ztj8tsYfzM8LC04g5aV1DLmnIbu3
	aQDCVgUuJpCWzmPC6WH0CqLO2yVh800jt9sI
X-Google-Smtp-Source: AA0mqf5Q4oezlWiZ6PMnD0c+n9z5hBlvkY4d+p9cTHJuC19p7DReW3dHp/PXkPIkL5NeATZlkqfY/g==
X-Received: by 2002:a17:907:9142:b0:78d:9c18:7307 with SMTP id l2-20020a170907914200b0078d9c187307mr5819103ejs.23.1668263663320;
        Sat, 12 Nov 2022 06:34:23 -0800 (PST)
Received: from localhost.localdomain (83.31.120.236.ipv4.supernova.orange.pl. [83.31.120.236])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0077a11b79b9bsm1974668ejf.133.2022.11.12.06.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:34:23 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: [PATCH v3 0/5] Add more RK3326 gaming handhelds
Date: Sat, 12 Nov 2022 15:34:06 +0100
Message-Id: <20221112143411.517906-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_063429_711713_3831A8E0 
X-CRM114-Status: UNSURE (   6.70  )
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

This patch series adds Odroid Go Advance, Odroid Go Super(without
display) and Anbernic RG351M.

RG351P uses almost the same motherboard, and I'm not sure how to handle
it. RG351P DTS file would look exactly the same, aside name change.

Changes from V2:
- Fixed a typo
- Added "v3" tag, sorry!
- Added the cover letter in a way that shouldn't get swallowed by gmail
  this time

Changes from V1:
- Addressed Chris Morgan's comments
- Added RG351M
- Added RG351M and Odroid Go Super



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
