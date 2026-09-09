Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C19BEC79FAD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 11:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nO1lCCUhPIoFo4/d49PlDDrp/7xYMlcqrV9QjLLDK2E=; b=4DKWKZqYEOPpNc
	uky4DkDwu+CkAhDTa2YVJvakThZyl1WP1x22uJQtHNWR9MTPf3rKr1qdHv8nJj01S8TlOkoC4lPvH
	X2lyblMhX0h75plfTxD3Jsx8kWp08tk0MGx6KUJW9b6AxNswtTWGtgX0NpJUfelCE+PAKTr5IvnN9
	UhvMt661iQbZ6xy1uVTe7Zdj519Vjq4/BRRPWnCI8kNbPDac/egi1sRK38IlgHEYXjQP5OiJ1xN+y
	U+Z0coDEBEoCkP7cYz80d5eYCL7Y4f0EyxZdp9JIPIBCKeeUBbZisEwbG6o6P0+jNAeTg6QpA3wgS
	RrzmJUH+GD88H7UCENtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GZO-0000000Baej-3XOv;
	Wed, 09 Sep 2026 11:34:26 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GZL-0000000Bacc-2xJe
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 11:34:25 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-485843116d2so467632f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 04:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788953662; x=1789558462; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BDAFJuDlghFFa//FTOTLPnlGuO3PdxiOtfn+DAJGPPw=;
        b=KeHBwie7MNX8OE9rcQPE2F3ExuQi+nkJousQuIH6QxT9tHBAVURGxkyqZi05ZsUd2L
         9uBtL8I4MXwcKXWyHTN4NwO5iZii64IxGYtjMA42vloHlaO/CRZJalS+2dt4RzpSsx0S
         G+aZDBkc4UBnAuR3f2RrKE8FRCi5KxNp7xWyM9r0VudaUNmwgDsMnrRFBA4aSN47Hmdt
         8fqnr/HNDy0UZ5IlFkcPeHc4riZrtAIGpuFejSExdfp/hGF2QN/dFRcIMu1TDrOzO9Rj
         n2NOueBxe8gue7fzA9nuip/P26hKRK/gIQ5cDWb07g9OC1Sz0ZfqSlOyHrAcAW3Ubw27
         rojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788953662; x=1789558462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BDAFJuDlghFFa//FTOTLPnlGuO3PdxiOtfn+DAJGPPw=;
        b=RVzc6HtEnqFBVohW2RWlYw9+qzztmykSIfZjy9ftMnBFu2BYxe0DmLUeLYqldcogDH
         bSSI++O7N8+3lYGj1FHQU+BuLqxtaaegr851kK9071B5QLPQhHK2kzNuJ4iuv2KLI8bI
         YE2HRoK5hZBvK7rcoyJ9N3qv/WVxB1ZTukWwO7eAjSJlJWuq9xwwnGp2l4Zyu4zAFyFP
         LZ/O7NAY8lAcOxev/4xlAqPcFC7LfYoxPRy+6W2+0i8F2jcs8mfHirbaZWPSU6DEtzfJ
         2fkiNtP9Up+Yf912vG6qeXt9ojmrqOJ+tNPP8pwXcG20rjFS+MSY8EPCi1dxcLjiRYZe
         vRZg==
X-Forwarded-Encrypted: i=1; AKwUvBw2647oUMLMgryOGYgNIwt/QfjhC/PsxpM9rJx1j7D4W/5Dj2HCkKcIldXNyIvUpHuXZG8iiFljkkwK2u9wwg==@lists.infradead.org
X-Gm-Message-State: AFuF++lZADopaTTRNaSufOxXAO0wP8etWRUTl1/Oma9TBlsuYhWjYRZ2
	ciuvp8XIhbYKnx531fPhvOI7ETz030Kel0S8BD5LKckfELpVAOYulgdd
X-Gm-Gg: AYBFou0I2ubnOslnzRM8eDmU9c5JzjQ2ZBdcPpYb02eWSPojILvHylIUbwePB9lpGyJ
	ewCAmbvlLqB+MyOy018VbThgbNvDSYNvI5knwk1+LYPZoC3wzbZhZIe8ApUh/95T5zxD/v1REYg
	9Rw5TuMPLLzmjZiiZ7wq5WlT8y3LP4o3PVI3KgR7DtXkW1uTh10cOuiGguJ4sfnHc/ObXeAudSN
	QfbDMl+vu4Es5FAt5Aov4lJlFriFLQMsRKdrHUZr8+dlDSimwdGqSH+hTcFGxaDgwOxspGRJIVy
	DuHkl4PCTmO8gialyJonklw9e8WEDP7PJ29OGPxULkzkOEh+jXy7p30h5z2C8nbpO5AlBHMUt3y
	LfASav3KZmyLYY2DFnp2D0JiIEx01QFKEYi01ZyXvodKdKMJw+ncK6bssYdgE0dqaoISOyocp4K
	6uoo/J5czBPza9F1xbZ7pX3h+jlxUxjE47vG4nNzseqJ7Vrm+64N2kdlcDaKKI4y6b0gLw2v1vB
	ls776p7lLH4/lxmcKiPlEM7ziwHpxFgjOE5w7OqnJYvobrMPG2rGIWiPHriuHrkd0JxI+l0LSwn
	9wUntk+5BWxtuA==
X-Received: by 2002:a05:600c:8485:b0:499:5b0f:72b with SMTP id 5b1f17b1804b1-49d01dcc32cmr238211625e9.1.1788953661666;
        Wed, 09 Sep 2026 04:34:21 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900E58FC5516AABB3E4.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:e58f:c551:6aab:b3e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d057f4778sm364624455e9.8.2026.09.09.04.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 04:34:21 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: add COLOR_ENCODING and COLOR_RANGE plane properties
Date: Wed,  9 Sep 2026 13:33:59 +0200
Message-ID: <20260909113400.8295-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260716113024.15357-1-royalnet026@gmail.com>
References: <20260716113024.15357-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_043423_795937_9A520EE6 
X-CRM114-Status: GOOD (  11.52  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Gentle ping on this one - it has had no review since July.

I re-checked it against the tree today rather than assuming it still
stands. On drm-misc-next (8ce26b09f652) all five hunks still apply at
their original line numbers, with no offset and no fuzz, and nothing
merged since exposes these properties. So the gap the patch describes is
unchanged: every YUV plane is still converted with the BT.709 limited
range matrix, which is wrong for BT.601 (SD) and BT.2020 content.

One thing worth flagging, since it decides the merge order rather than
the content. Cristian's "drm/rockchip: vop2: Switch to enum
vop_csc_format" (10/14 of the VOP2 series) touches the same two lines of
vop2_setup_csc_mode() that this patch touches. The two changes are
complementary rather than conflicting: that patch tightens the type of
csc_mode and replaces the "csc_mode = false" assignment, while this one
replaces where the value comes from - the hardcoded input_csc is dropped
in favour of the plane's COLOR_ENCODING and COLOR_RANGE. Whichever lands
second needs a small rebase.

I am happy to do that rebase in either direction. If you would rather
have this on top of the VOP2 series, say so and I will send a v2 once it
lands, with vop2_convert_color_encoding() returning enum vop_csc_format
so the two fit together properly.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
