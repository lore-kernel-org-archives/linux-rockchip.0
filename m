Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B265EB28DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 07:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUfNqW/tHRrED3exTzUNZHcwzWJcJRTSGQ6qYKCRUoQ=; b=AW6ThaAFCopuTH
	MrWtCzngx3Khwaqd1zp0B7EKhGxU8/qG9JoxHu7yjBey68DMTKGTTs9Fl/Pa8V8qoljYsvzxCikuC
	f4GE3HIMnomWBoH2oXeIJUm8hxDZ1w3IZlKD4AqdBwK+/eT+j7EvgW87tP9k3z2+GjPVoyRNw6G70
	Wskj/gp8g8iw0eLG6Pio08d8JmuceVsq6HdbgrIm/0BtHF1NsxMIXiWcbU1qvNyxlsaodbJdmyAE3
	YUa4U66Cdp1VNkAoLoEA6YFSLRh6z6vfmBnhnM1fKVVo8Zx6SyDuNoijrylCvxUY9LVSa09VPPVz6
	cJelmPkMay1M7iKwJE5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voGcq-0000000B0SC-0Geo;
	Fri, 06 Feb 2026 07:51:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voGco-0000000B0Rw-0kOL;
	Fri, 06 Feb 2026 07:51:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1EBA660010;
	Fri,  6 Feb 2026 07:51:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F98DC116C6;
	Fri,  6 Feb 2026 07:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770364292;
	bh=xqbUcSUTpk4arpBV33lwK63+MR69RzUxztVajpd6IpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QVRCeEVX4NnXHRYQVZb6WuR31nT0YfJbSMQsc1IcIk8zKF8I/rQVkHGNZ7yMt85oH
	 uaW92gF7XGyL5HjlgYujTjtl5o0vA3beeM4Tw1zXc+SFo1F2LITXUy2R33r61TxLha
	 lwxdLdpD6dfpnwu1HrudaJunjOsnm6G81QxyCyAdK3ss54QFXw5TBA/KPspq/LLyom
	 7cykMPEMtKp+YBVZI159knhhpF6QEW0uHe9DL/ByJNx2OnU1gOr3Tu+IRBWjgmHx3A
	 Xl7S/fpVsOXwZl0MWkbOcfxyJ3+HPPjfA1a9//G7+eANpq+7+XBuuZR3ndEo24lHYU
	 /zqtO/fv1OvhA==
Date: Fri, 6 Feb 2026 08:51:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: display: rockchip: Add rk3576
 DisplayPort
Message-ID: <20260206-transparent-primitive-pig-7ea2f8@quoll>
References: <20260206010421.443605-1-andyshrk@163.com>
 <20260206010421.443605-2-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206010421.443605-2-andyshrk@163.com>
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
Cc: heiko@sntech.de, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, alchark@gmail.com, tzimmermann@suse.de, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Feb 06, 2026 at 09:04:11AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode. And itself does not depend on the I2S
> clock or the SPDIF clock when transmit audio.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> ---
> 
> Changes in v3:
> - Fix compatible order

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
