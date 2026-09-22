Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68B9FC98308
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 16:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnbn3IeM8omRM3G/QAXBfREQNYzZTArwyqYRfKFc1AE=; b=BP9WIFit5U1bzo
	EeNwDUKzkXpWBE0EMaLCQf+W4nyGrl1rz6BZpRW/5QYrFoiABrWcuNM5mfCOvM8/ts+koXZC2oE8o
	EG7Z/sfpwv5JvMEGPcQob495svh8v38mT8V5xoecuAX4FXwbsTihrrYabLZdkLXu3sb6IkiT+mSYQ
	UUIPrTdQzeUvtC4W0Uua3nLuxKUiT3LvHKE173HFq0Y3Rec6RZq6RlaLXnlW1a8rPV6/Qu5TIUdt/
	bha3TKaiQsesUCb97TeWg86vyp8DhnVi/SN22FFmgiRp5Ep05SJEAV+KeEgmhrgOsZNPyZQLw5VXY
	K9f3Gk9jpkj6ypw/sXBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x930P-000000060El-0sXz;
	Tue, 22 Sep 2026 16:06:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x930N-000000060EC-3Sav;
	Tue, 22 Sep 2026 16:06:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1BA3D43B88;
	Tue, 22 Sep 2026 16:06:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4D261F000FF;
	Tue, 22 Sep 2026 16:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790093163;
	bh=JgzbjDEBetEmPW4WJB9+7Tl5maoVhb0P8rs90oyuL+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OnXG0Zo2MnoX5zcrAup4TjC23T/TixRMSzjtJvJXuh3NJOkngrUfDFm84OdQsf/6P
	 VkpfF/Khwqi/RrzJzW+4pS4KLRLoqmB6p4TC0wXNdtsxaLmVGsfOIt5jWKV5NxoTJV
	 8hRtEiDjSEYOOmmQY73NlYZGMLdyFfruEGKgsqf5Q9/7vyt1hO4GWevuH0fhzVKzrH
	 qPauEQmwHWzchGsqfPhFWdWS7056CcKCmMaZIRt+FKHNup04qoHtcYp2Sp1qDwhXlM
	 6M7kg+i4y1WK1nF50Gk9SJI6xLjF2jURBYLzJasWwKSB/X7G6aE81fa60wYAfFg2vr
	 5lixRlIsur+Iw==
Date: Tue, 22 Sep 2026 11:06:02 -0500
From: Rob Herring <robh@kernel.org>
To: Igor Paunovic <royalnet026@gmail.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?iso-8859-1?Q?H=FCseyin?= BIYIK <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 06/11] dt-bindings: npu: rockchip: allow DVFS and
 thermal properties
Message-ID: <20260922160602.GA3529337-robh@kernel.org>
References: <20260922080114.44662-1-royalnet026@gmail.com>
 <20260922080114.44662-7-royalnet026@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260922080114.44662-7-royalnet026@gmail.com>
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

On Tue, Sep 22, 2026 at 10:01:09AM +0200, Igor Paunovic wrote:
> The three NPU cores on the RK3588 are fed by a single clock and a single
> supply, and the firmware accepts a fixed set of rates for that clock.
> Describing those rates as an operating-points-v2 table is what lets a
> driver scale the NPU instead of leaving it at whatever rate the bootloader
> set, so allow the property on the core node.
> 
> Throttling the NPU from a thermal zone needs a core node to be usable as
> a cooling device, so allow #cooling-cells too.
> 
> The OPP table belongs on every core, with opp-shared: the cores have no
> clock of their own, and one shared table for one shared clock is the same
> shape a CPU cluster uses. #cooling-cells goes on one core only, the one a
> thermal zone's cooling map names, because the cores cannot be throttled
> independently. Naming one representative node for a shared frequency
> domain is the established shape, as in "Cpufreq cooling device on CPU0"
> in Documentation/devicetree/bindings/thermal/thermal-cooling-devices.yaml.
> 
> The schema cannot enforce which core carries #cooling-cells, because all
> three cores share a compatible string and a node name pattern, so that
> stays a devicetree convention. That is the same situation as for CPU
> cooling, where cpus.yaml does not restrict #cooling-cells to cpu@0
> either.
> 
> The example gains #cooling-cells; the operating-points-v2 property is
> exercised by the RK3588 devicetree later in this series.
> 
> Assisted-by: LLM checkpatch dt_binding_check

Drop 'dt_binding_check'. That's expected/assumed.

> Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
