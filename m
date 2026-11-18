Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7B7606A32F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 20:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DNXZNLWX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=I5vVE1Mh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=NDFPLN7b1bEM/7LrjrNj985vXGvgIJR3C7eb3ktCfYE=; b=DNXZNLWXWwI5ToPUScZzGaf2Eu
	KIr6spWaowmGsRvBynMk8xswGh+hMlBpFmMEWyXA+m55U8zSPYlITWhEwRhqJTYnz/etDAmhOrtlD
	VW7jnbiVOKxNqDG7wtnyoA3GUvrbYNliN5Pxnsg05FOuvpPuuYPGGCH9DV0FkTnKmQ+rP0L2XwIdH
	UDoICUsQxoA+kcKGcB5ADnCcO0/Jv70jakq8QBQnjLrxjIBbWj6o8UeDVvW85v6AiQfg3LEHS3lvT
	7GYqiLpQN0h1b0i8j9S+VGu4HtBaWG73kz1UQAsRdONFFONd37DSHewiyFp8dmOSy4cyV3pSrMLvM
	uBPvyBGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTmLo-0000000ADre-2h2D;
	Wed, 18 Nov 2026 20:33:52 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTmLk-0000000ADqQ-2VNV
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 20:33:50 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-8a73075f2f4so74259b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 12:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795034027; x=1795638827; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IZ8flJOS7vt4IlbZiE/b3qc9/s7rsTbEqNnieP1+rFo=;
        b=I5vVE1MhdKL7Vqs5GwD32ixStK3D94JZu9wxLMeKO1VJVtaNIq1hBPv4ZSvV/Ds9zV
         +PSMBSv6AlYsC46UC2W2g4KpcPLRPzdwaz8tI6n8PN1dXbxlzdfxGCOUbdBYPD1oappv
         P8wjnx6fZp9/oeI3AbWP4udXBVMnqMsKxtYWXxx8zSrH9NKEvcXaWR59jwdFij3WP507
         iyZ1U4eS3AWoH14rdMtxT8O6dq9sZnxrRuye5suCSK3ishz+k6SJIl43h+FxjiAJ9vfL
         seMVmETKxUiKxTMR5LyQl+trcxKrw7269u/sRe8w4tCJgNeQnGYTAbxcY3bZLwQqScno
         l07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795034027; x=1795638827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IZ8flJOS7vt4IlbZiE/b3qc9/s7rsTbEqNnieP1+rFo=;
        b=VnMD+VYCB4vtwvfEBN6CpJCEsn/zBx58DLwa8h9cS4SCTJ8ptqUCS5SWUlqJ8jmNUP
         wA0O1jnm3jDbus1TzUtmuJpr5twWci/tG9sazbqH/qKl3aT3y45sjrlEv14zE9MhTPcd
         PYxCVCXS3hshM0rQDOqP/4/+sshI2vijp3PHNkOxdjcM8SXpp/eJL4W38EXC6gmbb2N/
         JJ/rOQcw9stGx2psAtG32TPnqXtqVzdJBjuguZQpljCyx43EFvsfMZJHzPgKwTRAwkqo
         B7waYL6+59GES9LlbgG3htU4Lmt0VW4Xkvj8VoKU0qrudfakQbFiV5TpyemAspJ0OhKb
         mTHA==
X-Forwarded-Encrypted: i=1; AL+hErFfZYHCSB1Hsyoj+d55wSzMdG5L9FRMYfXxd+/STWMBCc483diFminrkp2IaewyKAHcLshJt2fgDhor6Ib4SA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8SDIwR+kSKS6+A72QM9WTlikMgTSMHdt3EWRh0dVwyDBptM/nw
	CUMJf0jzsru+5ZNdqTOdY1p4kLv1LP66sXXoqxwYfuocH2WPoX6LnbdZ
X-Gm-Gg: AZFdTZfbaVkmtzFl4ENZcGASyrPgQecWyTyAtBFW7qLD6MVv0g+jv4RAQe3nUk0OJgk
	OjRvhbm2dSBXJsdt+ZAfVbRaBB/4HLIysGvpsjswbuWZmBznzyTlIv/7W9LiJcAxlrCHu5okDRJ
	Qyr88/Yru0ptCtkW2UApJZnKNevqEArZTdDvuZWaum0glqUIBPWdp0N3CZLptKrO7bVzA37a1gw
	R6s7D0jNQqs5QU1lMKEiXO9cpZnkrGgVVsB60PI0VvjlKbKmvbPdzCj0Q4lDPm7Xp3jQ6D5acYn
	N6HyAcvLDwZOwxFb4IjovH9EWKCmrW+DgFy+bKcqHRRXkanfdV3lctttRbw3gqHeYRNspiMuUHl
	2vzzMRko/56O/VKXoPV/buQ1X/qRTTEMDak8Lv0qaehJP3hcb8j9iix7+xi6LKnHvQDXUU1f9Vb
	FBqZVPE+Vy6EiCFk9/IbqhtBpdFxEdHp7Mkw39FVBlKCROshnvtdzEP6X3O1H4CXwgaSmxL1QB7
	0n4CxIjV+hfjpCFd9HElGjjWeUu4f9gD+TJUtXtpDURl6whv25TxD4zF6/xIClAEgmTRnUf4enm
	0EFoRzE/nTWv1iHNiRjEuqcKNZ7iPi8bdfRHBcpHvs4bBZoyaG0lgcTyONsFAA==
X-Received: by 2002:a17:903:90f:b0:2ef:da10:beaa with SMTP id d9443c01a7336-2eff71f59acmr62060055ad.1.1795034027132;
        Wed, 18 Nov 2026 12:33:47 -0800 (PST)
Received: from FAIZEL-KB.. ([2001:569:52f5:4b00:cfaf:4885:b023:6316])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2eff6116331sm19166825ad.22.2026.11.18.12.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 12:33:46 -0800 (PST)
From: Faizel K B <faizel.kb@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	libcamera-devel@lists.libcamera.org,
	Robert Mader <robert.mader@collabora.com>,
	Faizel K B <faizel.kb@gmail.com>
Subject: [PATCH v2 0/2] media: rockchip: rkcif: ENUM_FMT and bytesperline fixes
Date: Wed, 18 Nov 2026 13:31:32 -0700
Message-ID: <20261118203134.315591-1-faizel.kb@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_123348_995388_385D112E 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Two fixes for rkcif capture.

Patch 1 filters VIDIOC_ENUM_FMT by the media bus code, as the video
devices set V4L2_CAP_IO_MC.

Patch 2 aligns bytesperline to 8 bytes and honours a larger value
requested by userspace, so DMA-BUF importers that need a larger stride
alignment can use the buffers directly.

Tested on RK3588 (Radxa ROCK 5B+) with an IMX415 sensor, using libcamera
with the GPU software ISP. The DVP part is compile-tested only.

Changes in v2:
- Patch 1: don't filter the DVP output formats, which have no media bus
  code (Mehdi)
- Patch 2: handle all planes and the DVP interface, and limit the stride
  to the line width register of each interface (Michael)
- Patch 2: drop "on MIPI" from the subject

v1: https://lore.kernel.org/linux-media/20261105232310.385463-1-faizel.kb@gmail.com

Faizel K B (2):
  media: rockchip: rkcif: Filter enumerated formats by media bus code
  media: rockchip: rkcif: Honour the requested bytesperline

 .../rockchip/rkcif/rkcif-capture-dvp.c        |  4 ++
 .../rockchip/rkcif/rkcif-capture-mipi.c       |  3 +
 .../platform/rockchip/rkcif/rkcif-common.h    |  1 +
 .../platform/rockchip/rkcif/rkcif-stream.c    | 66 +++++++++++++++++--
 4 files changed, 68 insertions(+), 6 deletions(-)

base-commit: 7969a6f407cf55b5254c824c87875452655ef11e
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
