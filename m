Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DE7CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 03:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzQqZlmBs8z6fSTvZNWSRBTCl3B4sex+uYiLfmMgXzY=; b=tc43ut17bMkJO2
	Qm2V47UzBqPzvyp5glwsnC0M7TwrCdTYyuXCsEYZTzPycfslAXK2xz5ppbarhhSnbxFLzM6iqxCWG
	xDhe0WnA/YfaMSzbm3yns5C21ghChm6ECmZtGWNXUq92Mls8hLoCrAwoSuiO4tklzJVD1pBEFJAiX
	W+7LLx8nPiSfSH5VHe0diCj36yS/+HSTzt2U1ilIjKnmSkziucmR0b0nwg58Q7Xn8USP7rlPqUPjm
	PCmH8H36OeiPA/8b+7eMQuaCeKpO4SuizQVx1yJc9AaI91tU0cXzFTMX0lHa+axolISnwZzYqAxtx
	ZwaQgnUe68tD/ip7Lv4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUckW-0000000EDim-3aLe;
	Wed, 03 Jun 2026 03:58:36 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUckU-0000000EDi4-0RXi
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jun 2026 03:58:35 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2c0c3543590so22643325ad.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 20:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780459113; x=1781063913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n5ygFXPwsJQO8ymWnjVkYNZg4lOorcqeH1A5jF0msXE=;
        b=GvEuC/Dl1RVMH+9R9AJe+i9F4wNF9MAkHlDm06KevCTHf58KRLvLrQfWyDc2eZmdtO
         WQY8hwguBDKdo44di3cgpGBCa6O3bklASJMac0/9Y9tSejHdjjwokLFxMAdPsbuq5ynB
         8/q5Q5Qg7qEs5hasZgnZJNlaH9hP7DLUqthgWRbzzgpJrcx1rDo/AuqXq0UVWwKQggF1
         ekbPl5Vx/Yh8CkKdnpbANqukjv4jlXWchcPlt5wKw1KYcKEp5+fQFTGccZ5QOFdBDyCP
         zIuv9dIony6RzpyXq9tMzWrs//6SuaRPu0Y0VacdgIjYE4r6bOhSRbvfEWYIgSIEP5PP
         zI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780459113; x=1781063913;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n5ygFXPwsJQO8ymWnjVkYNZg4lOorcqeH1A5jF0msXE=;
        b=K9oX7PtPbwgOSMIuZF6n4HP4m+v4SMRiEO8Dua1EJUsckfrZ5OFZ8Y5W5/gfbOHt3S
         8/lnVTsRvXQ1yKPncjt/Is/Eb+mbYsz3/GPVJdylV9CgjXsVxTz04sPl7sE6mlc/Elsx
         Xw1Qh/PYPPkbhX4mIBxHGsAowLkGBImPzJuGwCkJYzFjPfSCkE+YUbWnAu/8JQwJUoeN
         EXPOJpY0DgEZ7dNORSPm3y2dVaFVr4stWG9tv5vxmtiyhSzTHD0JkIfETwo2Vr0NYv86
         y4dBHs1dHtQfoPdtHUQ2UK7B8eehPzfBVn8sWYj0dcXXt+HhXYnxADIcYD8E+hGF5mc1
         dPIA==
X-Forwarded-Encrypted: i=1; AFNElJ/RytUN0yXXvoFkwaQStmbLIRynAwkE6d/z3AnEpEIIDw3blorLw93Ii3jGhkgr7P7LyTnfX0ZbhHuWWlCgNw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyReUzo9FLzk/mcmk5iUghb9avl7B3jGPQTvuASUhCqaIRyB+n+
	r8aaUJhhCEq+nOp0zbsgjZP+XV3MKuDqxIIzZDL6HguqJBCdnI1+z30Z
X-Gm-Gg: Acq92OHDT2icmde47ilcBgMOoi5FNKaf+MIPe1bN5u8hsUZ5Nu6vHlKI8mXHHs3QdOZ
	82aac+eDt5F0nJmp+x8n5K21ePASY1AVnpvkueqHWSeB6GYA+5zbIA87uF4i1d4vptHay/g23ne
	yQnc7TbwKv5ltEuH4dFzL0s7SZb47KUyCVugjmEOtYhaaIjpIC0D85vCQOyR/HDXjwjD6xiJcWQ
	ACG7ps880Oe1uD7jl5DsajDkuHmk8tz5gs3q/FWklVyet61S1z9F6/SljVrlkHU3S++bOq9ThGr
	B5z0f4MbmhJchTSJ23OaaFWlAxH3Rb/u+ZIiEOmqUbnp2lpoxXDb55TpYAs5qSwQJHbDLnOQSju
	vw6VNpAzHaEXsS2mVtRo0hB9wMIYVNH+TLBUoT+3cKB8XiXQ02AYaNXgagY2t5wTJqcNhUdd11X
	hErQOQSv7puHtQEy6mGPWO7QCXSnBAxlbhdkzRjhZq015xhi/MP395r7p/gkctzvbSJgsP
X-Received: by 2002:a17:902:f785:b0:2bc:b80f:677e with SMTP id d9443c01a7336-2c163d8ebccmr16632755ad.25.1780459113142;
        Tue, 02 Jun 2026 20:58:33 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6e294sm8461085ad.6.2026.06.02.20.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 20:58:32 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 0/3] ASoC: rockchip: Use guard() for spin locks
Date: Wed,  3 Jun 2026 10:57:38 +0700
Message-ID: <20260603035741.68893-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_205834_153265_4584ABC5 
X-CRM114-Status: UNSURE (   7.50  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

This series converts spinlock handling in the Rockchip sound drivers
to use guard() helpers.
The changes are code cleanup only and should have no functional impact.
Compile tested only.

Best regards,
Phuc

bui duc phuc (3):
  ASoC: rockchip: rockchip_i2s: Use guard() for spin locks
  ASoC: rockchip: i2s-tdm: Use guard() for spin locks
  ASoC: rockchip: rockchip_sai: Use guard() for spin locks

 sound/soc/rockchip/rockchip_i2s.c     | 160 ++++++++--------
 sound/soc/rockchip/rockchip_i2s_tdm.c |   8 +-
 sound/soc/rockchip/rockchip_sai.c     | 258 +++++++++++++-------------
 3 files changed, 209 insertions(+), 217 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
