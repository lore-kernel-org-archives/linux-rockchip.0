Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F70C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5LhZ2MN/uMLjbSVzWkgOAtGuBP/M2QhF0sLbyPu/2WM=; b=N2FaKFwbokFaJS
	UibY7SKbQJ+NpwbU1qP1veQM0htOrAzD1k6HaaC73ZSxWQ/Dk1AHIL0GKUhvGZ+Mg3arBWiiQVYU5
	teuiH74/9+7Bn9Ry8TZNP2lfXW9pL1O6GgdX3191XyThGczV9YefkcbYN1r7ox4WcWRY1x8siRoNH
	RDk6vA7DlzYRfhup3QjgCfr98lqLpIAC20BJEBrzvQ+DUSLYOavOG2W/tLSV/0QFBJ/947hROoFRe
	qR7mPLYJYMgn/nWD7nZP3C/5IHU+r6zUA58E8+fwQ/tHJHAIEJB6CYPUK1QyAgfIBl5NtkpY7ucLh
	xcpIqx72f1z1oO9AoecA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXi6-0000000HTTP-3PKn;
	Mon, 26 Feb 2024 09:55:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXht-0000000HTJ9-23Mj;
	Mon, 26 Feb 2024 09:55:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 078C060FCD;
	Mon, 26 Feb 2024 09:55:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E10FFC433F1;
	Mon, 26 Feb 2024 09:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708941332;
	bh=MWCY1AF2C8QZmQBIryattpCWG2SaqmPxREoZl4IyA1M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ECS+YnwIUKjEbwzezCsPJUILXSbLH/4qOoa5SU/95gQaBGUspjCf5BJYAdy7NCfw8
	 qToZEJQT8O6XyKSZ5Ux/D5TYdSXBIFqUZkj87RBNhfA6/jRei6hK2iS4JhPqxhioRe
	 Og1KGGMwBmzOGPRGqCilc4MYM4ILsuQn0zcONhreKOibrYOIz1++O7sbG3CmQg31D4
	 aHf6nNoITcLWjoJse43RtS/cHgWMCY8bqJoTa3p0qCP56gHoQVNjhzrD1pwSKgP4ix
	 OFCBLY51YER5/sLPFBCKj3GwGrotsLUmW11HS1YeDR86mFAIsYhj0XUGC6gMqdilCK
	 0cNjoH9gHvQWg==
From: Maxime Ripard <mripard@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
	Sebastian Wick <sebastian.wick@redhat.com>,
	=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Sui Jingfeng <sui.jingfeng@linux.dev>
Subject: Re: (subset) [PATCH v7 33/36] drm/sun4i: hdmi: Move mode_set into enable
Date: Mon, 26 Feb 2024 10:55:21 +0100
Message-ID: <170894131837.29486.4668463181897393982.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-33-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-33-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_015534_535928_5014C80F 
X-CRM114-Status: UNSURE (   7.17  )
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

On Thu, 22 Feb 2024 19:14:19 +0100, Maxime Ripard wrote:
> We're not doing anything special in atomic_mode_set so we can simply
> merge it into atomic_enable.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
