Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87878C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 11:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMxkfh8+qX7O8yXJGZtBcg29K1qX7oZIM9kxjmxSfNw=; b=4uSOHerqrlQ46v
	MkGW2/T/1XJDlx6MXO1LSrLv1KQjIvFDvQuDIoNBJxeonxb0domfDVhgNdPpAjoKrSwnBUGLPRbtD
	oIZ0wh9Cqr9nx5D7u3PlFSK5mdkDkMe1HwwBehEGszL9EZq4y2UKlwwO4MN+hBSii6Kv51Keue0wr
	1iDTe2DWYFJX7ovlr30uOJFr7BKHl3+V1KmFeXzH5TYbh2dIg6j1TB8LtwJnz0HcFKdo9oi/jo9fT
	2Sel6ugqKgPcwrttwSoFRA5QVACSDRuhr3gunk9OaSwKNPuRkEC8EqxjdT4m2ULmLGN0WnMnfT4Oo
	Ufg6d7I/T5Qngc00H8jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savvQ-0000000FftI-1fb4;
	Mon, 05 Aug 2024 11:30:52 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1savut-0000000Ffn7-0vch;
	Mon, 05 Aug 2024 11:30:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DB9FFCE0AB6;
	Mon,  5 Aug 2024 11:30:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB450C32782;
	Mon,  5 Aug 2024 11:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722857416;
	bh=8Z1pSg25/Oj1kOS1VJAI/o4U3DsNumKOXI+5DUXr2U8=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=bmuqOyl/OZHd2e7fzJ8Yle2rThjupSzExrUP3BTo3fuqs7HDMTOV/KMVymyNt+F5+
	 xvsg5XGekR8loCllKC/lymrO/P181NuFZoqRmZr7KyU1Og37jlHgP221NvmlOr3VGW
	 UZKFQtv1N7xdW5CPP7GhfHbEwHzK5AGTUHp8ChuwXEtwLZZF3dlzGasnCj9htDqZ8i
	 aLNvE19Og+JfvV75rP57zJjeOd18X3/6M39bIyOfZWzSrqShB6KFDkd2Ofhh+MvoHf
	 yU9+zBw/kKv3GHhc7AHi/oyqPvP5uo+JDvEnttvK/Qoq0yCjufcBd0QWF/FuuQ3sc3
	 V7wLjVSKum6Nw==
Message-ID: <fea441df060ae1ed802980782f3e3d5d@kernel.org>
Date: Mon, 05 Aug 2024 11:30:13 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Alex Bee" <knaerzche@gmail.com>
Subject: Re: [PATCH] drm/rockchip: inno-hdmi: Fix infoframe upload
In-Reply-To: <20240805110855.274140-2-knaerzche@gmail.com>
References: <20240805110855.274140-2-knaerzche@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andy
 Yan" <andy.yan@rock-chips.com>, "Daniel Vetter" <daniel@ffwll.ch>, "David
 Airlie" <airlied@gmail.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Thomas Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_043019_474235_8F4D81E3 
X-CRM114-Status: UNSURE (   7.97  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 5 Aug 2024 13:08:56 +0200, Alex Bee wrote:
> HDMI analyser shows that the AVI infoframe is no being longer send.
> 
> The switch to the HDMI connector api should have used the frame content
> which is now given in the buffer parameter, but instead still uses the
> (now) empty and superfluous packed_frame variable.
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
