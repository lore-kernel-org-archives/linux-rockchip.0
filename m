Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D37C1D26D9C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 19:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9WcJNJJwYSw1BZwa3X6Gg1sC5UJvuab0wVQovA3Qj4=; b=xJfInKx+3a5JTl
	MUHyFgQxMhwLXu+0Jr6HFcW1BoI1ZPpZapvVBvYG1wb6MXUrFY2iCqPNYv+diqQRk6+iuYAVpYx7H
	Zy5b70xchckldz/vKApIBbkLoAU3+h2KGB0CxKE+3FaBwzAEf8cAoq8Nx1aVtsnWY+j0jDxhMayze
	6h01Hp1yrj4PUp7aBcRTfIQsMoMEU3kP4S38cTxRJAFzRIXvwiNkQObqMkKEIpNKPCnolyxqOYSCZ
	4hI7vjg+ymnOxBnGV7znWGHMb6fonGKH66SqHqKeVIPgMKbXQOjzaK00HKCMdU1eFNcmL0mKwbs2i
	ZP1SFUGMo8/lyij9IpLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIWx-00000002xMn-0JTg;
	Fri, 09 Jan 2026 19:52:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIWm-00000002xDU-3RlR
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 19:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UXv5SDgabeUxHI5NH+8KwOclEnx72hBve7UveRrT45E=; b=cTWK5hdONnvZF3ymA/s+bPw93s
	KaXA7CIhUQ3bqsbO/2o2LN6q6njDpZ6iDqvUVtYIcFWwh5VvfnsQXQSqCpt6mjaUS3vvuvXJEjuFG
	NHRl0pshWfay9dv614AdsHV+biFqKrCbCdeaQo5yXtQdLckjU1m0DEpZHbd6LcT/fd8Vg+Z2fWqaq
	mlJAx2xSWv5owGZuNWoNuHfxuxKPOff9ylHglBIaK0waUmCoQKHNewjuAk4OoeXjb9AnB0hSCKPrL
	+dC4lYM60P/bppB8w3N6zrUFulgPM/0dy2tUE+PonVkMOzvSPDk82Kd2nZTd+zuT390fqAvmIjO9x
	GqPPv4AA==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWi-001fth-ER; Fri, 09 Jan 2026 20:52:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V3 0/3] Add HDMI for Gameforce Ace
Date: Fri,  9 Jan 2026 20:51:53 +0100
Message-ID: <176798831388.3446147.13187044565812566559.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_115208_877856_00C5DD68 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, mripard@kernel.org, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 19 Nov 2025 16:55:23 -0600, Chris Morgan wrote:
> Add support for the micro HDMI port for the Gameforce Ace. This port does
> not have a HPD pin so it requires making changes to the HDMI controller
> to support this configuration.
> 
> Changes since v1:
>  - Simplified checking of no-hpd parameter and changed to
>    device_property_read_bool() function.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
      commit: 97a9b5edcdd4179063773f17a00904a464b8aa7c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
