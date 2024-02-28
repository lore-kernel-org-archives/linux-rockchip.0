Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38B3FC5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 15:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+MT7blN9U+lgPWxmGDQjpPgLn21fMVaqxJWbHrRecE=; b=0COB0wwWtjYQiQ
	yJWEidybdrIxhy11c1O3L+FE5CJfYBJKc4Dp7FkQQhTEz/cKLrhnwue2n4l7gEH8zAmnaOkEtlUH3
	rkEkuoWimcMLOix5P/4XYZ79l8zqaIbjBBcvkACGTtZ+BTLMwKqRujpSLgf4AMMJIYhC1drSLZfU5
	Xi/K5oN901CVCoICmXqW1ujaESqD4r/7Z4M6ZLFlglE9+nLmzC8uVBHE2J9qrhf01eZuB2kcUJLee
	/s155Hdhofx3fwixVbgSD0v2fjpGnRCV/OzOQphqsj/qO++TFhPxKiig8kTPYtbR+lsG31KGeOzh4
	IRSWhcQAHQBDLTtw8sDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM3N-00000009wGB-0Qov;
	Wed, 28 Feb 2024 15:41:05 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfM2u-00000009vvf-1rpY;
	Wed, 28 Feb 2024 15:40:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2D487CE21AA;
	Wed, 28 Feb 2024 15:40:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11DA2C433F1;
	Wed, 28 Feb 2024 15:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709134833;
	bh=tsYF06O0hUx6z4ZysguYUFGc6hPhoeQDqvJiBqFtdJ8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oc0UR0W52EEdg18ChVfUPfTObi+XvVwTxZAZCH0pYpvuH6Rkp35mP2PjYQsFADrls
	 m1ezLLZ7tR5oWqiOAxAQRelAOAltWSIuPcaDMoxN+UVuJdSpvgFp6vwIGR/Vc1l8Ai
	 iRgF4MnYtsQZsdsdcbZFF+LDY6lV5lN4GcHclccBBlheViyEExSKgTtkBQ9q/hisbG
	 586XL4Z+RGP7nn5eE4Mx/B1kOEj/na4QsBOCC/I2odX0ikOs1PHi/kwcoJpH3Y6Z4Q
	 K1rFK8gKXXSvRmcCyP/ctftY0FsQIr+ziGP7tk02F/ENhvL4ANxcDf0BImQmltQlW8
	 RJCXawW2vMoMA==
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
	linux-sunxi@lists.linux.dev
Subject: Re: (subset) [PATCH v7 04/36] drm/tests: Add helper to create mock crtc
Date: Wed, 28 Feb 2024 16:40:17 +0100
Message-ID: <170913481316.384117.15338048951068923035.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-4-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-4-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_074037_307141_8EEB6A62 
X-CRM114-Status: UNSURE (   9.37  )
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

On Thu, 22 Feb 2024 19:13:50 +0100, Maxime Ripard wrote:
> We're going to need a full-blown, functional, KMS device to test more
> components of the atomic modesetting infrastructure.
> 
> Let's add a new helper to create a dumb, mocked, CRTC. By default it
> will create a CRTC relying only on the default helpers, but drivers are
> free to deviate from that.
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
