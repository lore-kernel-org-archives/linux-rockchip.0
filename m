Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299FDC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 09:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qV10fm1i3iIeg3+5vrRUHWIRx1pXsDzy779qfQx/FBs=; b=vP8alXIVvrGs05
	ZyFbgbba7f3ilyLzEK6KOoJpWEBimJcWWpzi5IPEC7+cAcwhfY/WPfl+W1NdrJNBX8of+WlEF/QPK
	9R3KQ2jMNEHnkKw4DsQ+1kdW31urAc6ngxyBrCzTYLfx6O6DuqfR6wei2j6SRWbiCkgBGFl8c7QIp
	+qUG965B3dlmAk0A6G42VbXkZ6cVRoe+Y8jGztf/Xgz3IgQ0e8Lshkb5hCQRQF97ij+8dfAO8iedE
	57zKwZPRnj7OODn8+VgPhl67lioR+kKQ3I2YJnX0Nl0wp/s6IddQiwgLiiYqAjoZ+b2JDwLgUQzKb
	5zmAcEmR0MpSFXZl9weQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXiZ-0000000HTm8-1EuJ;
	Mon, 26 Feb 2024 09:56:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reXhz-0000000HTNs-2Mvk;
	Mon, 26 Feb 2024 09:55:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E013560FD0;
	Mon, 26 Feb 2024 09:55:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A503C43390;
	Mon, 26 Feb 2024 09:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708941338;
	bh=4dRXifSdQjscvfLmqYmq24fqEGlLnuN4Zc0Ty+/Cqmc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AKOoR+ZBcLmKp+ldEEnw32sKLbEiPsihkWbr/DdXjQshwve9EmlZ69CX+EtAkkxn8
	 sQyUpyavmYWBTPZNE/bkt+gnQ3uFPqH+u/QwATZ7pQo5CzC5/8+zZ/J1KqdQifIHps
	 I26x1edA2wGFDQ4aU+Ki4WkTXZ2qkMSkmiOdmA1Pk1Ks/66+cM5AH1KxrUW8RIWSoP
	 l+iFWriLMKYWviwdLxb+6q7mZOwty3yMCEPJlroxdpULY/+EFw7B0FUcvms7UrnF2f
	 Q9/VRqle1CfyJD7lHbpkYzrh+6xjfUJR9+1Y9E2AxKz6+vSJzpJIqfuMtAMatoQwCp
	 7z7aYRZ7g/25A==
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
Subject: Re: (subset) [PATCH v7 35/36] drm/sun4i: hdmi: Consolidate atomic_check and mode_valid
Date: Mon, 26 Feb 2024 10:55:23 +0100
Message-ID: <170894131837.29486.11894124011939274293.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-35-8f4af575fce2@kernel.org>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org> <20240222-kms-hdmi-connector-state-v7-35-8f4af575fce2@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_015539_855436_FF9773C8 
X-CRM114-Status: UNSURE (   8.25  )
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

On Thu, 22 Feb 2024 19:14:21 +0100, Maxime Ripard wrote:
> atomic_check and mode_valid do not check for the same things which can
> lead to surprising result if the userspace commits a mode that didn't go
> through mode_valid. Let's merge the two implementations into a function
> called by both.
> 
> 

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
