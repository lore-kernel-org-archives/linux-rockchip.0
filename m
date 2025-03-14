Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CEC4C282EC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 12:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0qfsiYFgrFP+X2lk2EC+mGhxwtAQhprzlEf1bGN6ic=; b=EDK42jYQaemTro
	SFmEw2qUinILmb9DFElUQCxwvoukmjauatTjUu2DNRcROHgPs8jQOHpo1IfZDcgpelah46gQf3pqr
	O/d4Ejv1X+F8bE85Ij/PkUEqTPL04UawEjQzvpeI1N/XNdcfR+nvBSUewAUMhNuUa2v3DyLcqRG49
	DS8Rybl/f+lZh0Y4HgA+P+CH3y7c86IQdUGztoCPUpL+2+WAsiyY6Ar91YWD2fL2865lg/iBrhF3D
	BQaIClwX0UhPI4cMiljTWEiTWfnkDWjJYxG/8JIjQL7jeD1hmY0Q3OEQ6esM3LHPOKt8DXBUDJ/x9
	Pi5LwaDu0KTw2ff2DeIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt3ip-0000000E5Rq-0fW3;
	Fri, 14 Mar 2025 12:01:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt3im-0000000E5Ow-1tW0
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 12:01:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741953639;
	bh=zlMmso/O71ayucYzSvPFDfIHi/RLv4XvTo4qoFt+VO8=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=EgWPrbj82CL1uOQcHeMYSOXoXLNlGMBeFs8lpC4ucLlU8P1XMaj11zEyttp3RPd8M
	 CqU/QdMweevksfliXrEqkyshFKFiyxyIEPi4rY4QBky+/RoUMyp9jIUSVsQNKe8mZH
	 2+g+VQsOZZfOxPwWpxjrxy1wXByvNCFUszgQzwx/xOETWszOd+pGfZEnq3ELpOoxz3
	 VLAq5WRxva3SwOkVZqugXb/lzGiIr/WELsvH69dP+1e8ASZx3FqGGPYyvkHtdVeErn
	 2Or0UTrRiisbO6TkM6KGexYikzNIwAiZi17Ly1MTL0sO0D+z1QHl5uol2j6OfFdJUc
	 2edsuJeh5Pcww==
Received: from [192.168.1.90] (unknown [84.232.140.93])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 798D317E017D;
	Fri, 14 Mar 2025 13:00:39 +0100 (CET)
Message-ID: <08c49d8f-ec24-453b-949d-e149336b4909@collabora.com>
Date: Fri, 14 Mar 2025 14:00:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq
 err at vp0
To: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
 linux-rockchip@lists.infradead.org
References: <e7c6bdd7-47ed-484e-af26-83b9cc531561@juszkiewicz.com.pl>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <e7c6bdd7-47ed-484e-af26-83b9cc531561@juszkiewicz.com.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_050100_648048_A289D2D4 
X-CRM114-Status: GOOD (  10.56  )
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

On 3/13/25 4:13 PM, Marcin Juszkiewicz wrote:
> I took my FriendlyELEC NanoPC-T6 LTS back to operation. Installed Fedora
> rawhide on it and trying to get screen working.
> 
> Running 6.14-rc6 on it. Kernel log is full of this message:
> 
> rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp0
> 
> /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/modes
> shows list of resolutions available on my 10" screen. Monitor says
> "HDMI: no signal".
> 
> I remember having screen running once with some set of out-of-tree
> patches but iirc it was before HDMI0 support was present in mainline.
> 
> Where I should look?

I need access to the full kernel log, but before that do the following:

1. Ensure the kernel is built with dynamic debug support

  CONFIG_DYNAMIC_DEBUG=y

2. Append the following to kernel cmdline:

  rockchipdrm.dyndbg=+p dw_hdmi_qp.dyndbg=+p phy_rockchip_samsung_hdptx.dyndbg=+p

3. Deploy the updated kernel (if needed) and reboot 
4. Unplug the screen from the HDMI port

5. Open a console terminal (SSH or serial) and run:

  echo 0x4 > /sys/module/drm/parameters/debug

6. Plug the screen back
7. Wait a few seconds
8. Get the kernel log

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
