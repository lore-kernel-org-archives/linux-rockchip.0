Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F303DC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tL3DnKJJof7dtgrUdICYw2/jo4pBizUh5+Do0KoWjEE=; b=0DD57d+FAB2gUb
	GzpvrRCIHZEhmjYKRCprBC205tVVc14Ornr1pAW0VuNAZjbhhlvZD/zbUCQPYeAwJ432SAGMoxzLn
	GYD4G2D12YB6pV5G94MD4SSvpYULSICIwsQ+L4ySYY0zSrjllmR6Jy35lcGSrS8NqrOjmtwEgqWR7
	mAf29qtHurD0sNbyDhJm0CTVANZK/h7abdivp5e+v3KvJSMOzxFGfEGX3ecLbuQdvRqlHNgZRvEaf
	mgn37t+iqZPKbWTtIng1KBojA6wnm5thnRXhW5pOqfpK0xA/uj8Umxp8Ost9PElnxMeRHNKzh2wIb
	pYXy4Gb6uA6+e1jFWoCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9Zv-009aUV-38;
	Mon, 18 Dec 2023 09:06:23 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9Zs-009aTJ-33;
	Mon, 18 Dec 2023 09:06:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 9D653B80E04;
	Mon, 18 Dec 2023 09:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5FCFC433C8;
	Mon, 18 Dec 2023 09:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702890378;
	bh=4Kqu7Tflub3+Tx70K1IHzdsQJxsW8k1JryHMUncCWSc=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=gXBA8X2FwW/c3dXwWHfUBgx5jsMZaR8K/eukF0Ulra0mRotcMZRCSUVBINwoWB6D8
	 8hP/SA4WkT9IWHaY20F3UCf2+Lnqahe4WNNz2EePsDyGgJp9MgN3buzAjllp7jAHQB
	 zl/t/rC2uA1ZRMnwmXuijwsz6xKTlhARp77LkCntIaDQ1qJopS9zr3w+XyTdiH7wfo
	 sHgiuA690TvVE4VkNziHpaubpVzmwTan43mDLfE40aloWJ3miXkKuhuGReqvxt496+
	 h3KQJw7BhIrDtMPwO4BZJi/36dVFN8J/xd5YzpjqQiNhdTWLyncsFVFz0WN3PWkSGC
	 siZ3Y/AQwYeOQ==
Message-ID: <c272ee2efed850089ea05abaa8dcef94@kernel.org>
Date: Mon, 18 Dec 2023 09:06:15 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Alex Bee" <knaerzche@gmail.com>
Subject: Re: [PATCH v2 23/27] drm/rockchip: inno_hdmi: Add basic mode
 validation
In-Reply-To: <20231216162639.125215-24-knaerzche@gmail.com>
References: <20231216162639.125215-24-knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andy
 Yan" <andyshrk@163.com>, "Conor Dooley" <conor+dt@kernel.org>, "Daniel
 Vetter" <daniel@ffwll.ch>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Sandy Huang" <hjc@rock-chips.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_010621_119317_FF81ECD8 
X-CRM114-Status: UNSURE (   6.21  )
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

On Sat, 16 Dec 2023 17:26:34 +0100, Alex Bee wrote:
> As per TRM this controller supports pixelclocks starting from 25 MHz. The
> maximum supported pixelclocks are defined by the phy configurations we
> have. Also it can't support modes that require doubled clocks. If the
> variant has a phy reference clock we can additionally validate against VESA
> DMT'srecommendations.
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
