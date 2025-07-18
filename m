Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7769C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDqqmey46tfvWOpp4Q9i4XbMYz4PaPYFC/Q5+/U8Fjc=; b=OtG1n0v6wB9JED
	H6DbeRIlzF06NHH1tD7O5sbFPC7fGvICaplEyfcNq/jmecdHMwq/X6JPSqI9UjkL9Opv7fXVKYhpc
	T5jEvyB8c4SmReo/y8mUx8w2StTjiDUGnVpypihDs5WcWtSBtP4CKbx9B1l9zHfMsnaSoRnCWoDIb
	Y/6qlHD30bDD5raaCyczqpdSb/YM3JoADoa3riF4J+Hw0ED7CnMuFHrgJM7kzI8F9WI+0Ty5Cm81v
	OhC22+cDgvLfDnHO6NgnbXcCjifpiR13oZXzQHVFx0IIIotkWcdQWli9JtW4XFQf/yctBvVocTSaN
	CR1WFLAoCVR+0iQzODwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucgO8-0000000C1I5-38vv;
	Fri, 18 Jul 2025 08:24:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucgD2-0000000BzT4-03rH;
	Fri, 18 Jul 2025 08:12:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1796C5C667F;
	Fri, 18 Jul 2025 08:12:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A87FC4CEED;
	Fri, 18 Jul 2025 08:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752826366;
	bh=nPyCE4EJ89fmwm9m6eHxfXIrYOe/RLqv1W0KQKVxAu0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UCWKQrxw4hIODjx81BJaPQA1xlN9NoK/jrwxR0cWdL8KNYM8LvVSrFrn33nkd6z6F
	 yj7aPIuc0tbkZ+I91hx+UPI1sg+lArTAf4dxbhvCaMdOwUciDadpm5IazwRPXtbXVh
	 ujM4oMGWxrzFa88FYYol01kUuVnL32p8DXs8dIktVYtxiM+5UWRay6CVKfDSW8tXiQ
	 WaRICnboRxwj/j5jxN7Ij+p5IHtu4Dz4ltalgTPV4dTzztudxnEG05IBUbSuH+s0d3
	 aePvPs1xX8y3JHI1Pf4mJlvhkZi1Fw6msIumCYut5LKIpzMGk3cEmjOOuU8ZQBLGGb
	 66Zdz9jt6mORQ==
Date: Fri, 18 Jul 2025 10:12:44 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Frank Wang <frank.wang@rock-chips.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Amit Sunil Dhamne <amitsd@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
	Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: rk3399-evb-ind: Add support
 for DisplayPort
Message-ID: <20250718-serious-earwig-of-current-18fad5@kuoka>
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-6-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718062619.99-6-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_011248_093951_89905FC8 
X-CRM114-Status: UNSURE (   9.65  )
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

On Fri, Jul 18, 2025 at 02:26:19PM +0800, Chaoyi Chen wrote:
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <475>;
> +	i2c-scl-falling-time-ns = <26>;
> +	status = "okay";
> +
> +	usbc0: typec-portc@22 {
> +		compatible = "fcs,fusb302";

Look at your binding - it said you don't have fcs,fusb302 - but directly
port plugged to the PHY...

Plus this looks like the switch. I don't think you really addressed
previous comments. Please give it a time.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
