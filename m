Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7E3FC7EE21
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 11:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GaES3lkxoZwFRUmNf5o88t32fEtkMCZQjo/kuaEVddo=; b=h9qooiq64+yNih
	T+wh0vr6IfzinlsmqURir6jHZPY/7EPg7WDzjjFcMx4PGrN9qwpL58DgAYLhwGyBJlW4cu9N0hNv4
	YLfV85zMr7mCJYcDjEiZudpSASVtq8Myzerd722yNCxD/EYEt+INMjrEHKB5Y+ycUR0HmDeFdoqzA
	nnNyU5PSecb+XMJ7N9zThuR2AE5WLO6/xGz1ZItKUsd8NBZnTLAVhgJb6tNLrszgQNtuOiK7JYtT8
	rskuOtYvVX8XnnxICjREajsS8g3aBRoC2V8RjXOJtcBwEsPd5PBP7jIov4oPsdZ9PUebM5PGdz72p
	q1EjATshs8NZLIPXWj8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puWi6-007aes-2C;
	Thu, 04 May 2023 11:01:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puWi2-007adj-0B;
	Thu, 04 May 2023 11:01:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9DA466333A;
	Thu,  4 May 2023 11:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 122CFC433D2;
	Thu,  4 May 2023 11:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683198072;
	bh=GCbNqsULn4kqqYRz3TpLCrpoIO7DZgrmGlreBxukNAU=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=QYZScNZE2jnTGBHkTp5H2tFb1Vz3Q4iiQO8X8T1J238/Kx1/A6wRVzRJZF2hcMONu
	 kbWfqQ56xdAcpemfI/6UWfnXlXSoyMpDfIgYZtZ+5IhIBe/XApjmt1NiXfk2XTyX5/
	 kDUXPM7wbL71xiWfVdIkv0s5MP3YWcUlHk4dX66K8ZGyWfkKgNSiz30+gRHvVSrx37
	 1XTYnxk46BL6MMbskn66JV7ggzb2JiLsqQRKTyofzlnTuS+sPDdwbzOcMjStYyqVcz
	 UHJPPuInK0zoTfAlKoSHxOgd4GmShRC50LITWf0FKcZBO1JprgvoOWmdnIGUSaaP8s
	 pQozNynB1F+vg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id E0211C41677;
	Thu,  4 May 2023 11:01:11 +0000 (UTC)
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de, bugs@lists.linux.dev
Message-ID: <20230504-b217334c5-347147dfa102@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: [PATCH] pinctrl: rockchip: rk3328: rk3328_mux_recalced_data:
 fix bit alignment
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
Date: Thu,  4 May 2023 11:01:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_040114_155595_E405E087 
X-CRM114-Status: UNSURE (   6.73  )
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

antwain.schneider added an attachment on Kernel.org Bugzilla:

Created attachment 304214
both parts of the recalc in one handy patch

david wu's original patch lovingly restored for modern audiences

File: pinctrl-rockchip.diff (text/plain)
Size: 1.61 KiB
Link: https://bugzilla.kernel.org/attachment.cgi?id=304214
---
both parts of the recalc in one handy patch

You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
