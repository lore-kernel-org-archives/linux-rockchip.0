Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C713C54E49
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 09:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw3YIOujsHZioh9Ll0F44T0raQI3tQ2O/X5QhKDKPTM=; b=o7UxQKbMzNAngi
	IzJxvzlQ+VlwMt3tgybBUx9QsKTzNhm6pSsAme1IRa7QaKH3QJRfvbW+3WvyjnFVrZvBqZMdeE8RL
	+zItxkxTxGamGTQQ+vJNdqhRJw6G9UaaSbkes6qfRL4RsagbH5x18J/halzGaPFjOKbyz17Q+GFm/
	H+Ki1TxPLmm9YQkuWnmJ2laA26XtkNh8oXShjPE3GlBPoAUJlpi6D56Tg/8uvgzt/bvJMsfOFRkMZ
	ay1m9E5MP34xEmln7t3DsK+X6j7wm+3hR5z98z+Hp216yNddP5bRU48kPKskL3HBK223M19C3vqXm
	1oLFXOCtV0U0Lq15f3iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXi5-0000000HTS3-0PYR;
	Mon, 26 Feb 2024 09:55:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXhs-0000000HTHN-27mp;
	Mon, 26 Feb 2024 09:55:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5DA6360FB4;
	Mon, 26 Feb 2024 09:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93379C433C7;
	Mon, 26 Feb 2024 09:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708941329;
	bh=jmpj4xXZsykOFpzL4YNYLixtN3pv5TP8q5jAmFydjwo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SuC46VIEmdA1w/aBqbZfhleIh+F23ezvwXu03qYhqvqgZnKXUOtY2me40FRWEU2RW
	 wNw/82G4NwP9IQpR2B7pSCHbEP7OBLpYz7o/p3r5UljCiW9vZBSXdRbHCJl/ObU47w
	 h8cBodBXjHd9sVZntKnu7eAbbM23xjpF+GADlRKNfZIQO74kUWfBnyli5Aac7VJHp/
	 NUZlPOcczzmL1N8tOkhfeqfHFtqDQcCu4VJGW/3jt5MWYb9AfcawjLInRqQiK3QdCd
	 0zf/dI/IhxHETo2Tdjaqgdt/lxmz1GKMLS9j84N4f557h6ty5Us6RIcVGlYole6lWg
	 49EHl8rKziN1g==
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
Subject: Re: (subset) [PATCH v7 32/36] drm/sun4i: hdmi: Convert encoder to atomic
Date: Mon, 26 Feb 2024 10:55:20 +0100
Message-ID: <170894131837.29486.10568875108218671603.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-32-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-32-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_015532_694817_63ADDF0D 
X-CRM114-Status: UNSURE (   6.82  )
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

On Thu, 22 Feb 2024 19:14:18 +0100, Maxime Ripard wrote:
> The sun4i_hdmi driver still uses the non-atomic variants of the encoder
> hooks, so let's convert to their atomic equivalents.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
