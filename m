Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E516FC77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 May 2023 07:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6AhUU9nv42pKsuoyJnj/sQ9YylbyrolewUubxqf8gnM=; b=3euOQzDbkBfJBKQ+U3fjgIsmQY
	aGpADg1Su3HnZgRaSYvOlIytr7UibomXY4EFayEvyupPP580OV+x5cQ3FqYJN3E5FKUYQhrk6nXnP
	YlYv7trwpg/2QSw6ETntGolz7tYL5qRREwDQSOPbyihWFW1ZyZ3exq94R22tH9LZFsx8fVS6s1oOm
	m0r8jVxdauw68Ot2OzNIRNK8YDBbTQ1hxUubLX+oHlx5pgSERr+angqG/H+GXLgQAWkYVnjJ0uB/6
	SnbTgyYPty664kbT9sUaEZnLSmCUV7nQW0RYOg/u4Tgdgh5hJB8XwOJ/a38UqYRkI4r/V49diYr2t
	JQodAR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzuGE-00FKuH-1n;
	Fri, 19 May 2023 07:10:46 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzuGB-00FKtI-2T;
	Fri, 19 May 2023 07:10:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F3B3660FDE;
	Fri, 19 May 2023 07:10:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 641C2C433D2;
	Fri, 19 May 2023 07:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684480242;
	bh=hwde4HciUmdMwEjrQ9U5i75vdExkE0bt/hHunNXbgnw=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=JxBHYRcdPk6IHItjBky+4/VDJsJMIDLY5CmEWa7bfmU1J1w90UJEYp4wIEEd2eCcM
	 hmMV6xdDU6MQkI4H9VjblAeAGCTA2u7Q1vX07pPdo4ufrQiTiu5XGbULzHGKoil0rX
	 CpZ53i+vvLf6f6ULtUec6fXrq5w41zr0ysZFx90YPNG54nU3JZOEDYB1P7HFMHa2oK
	 WGqTYqqdzUTUUK6FrjBz1T0BT8ye62QvFVTH6mrHBwY/hDNDSNEUJHKS+YsPkEHENh
	 AVHXwd39+fJUgKrGwcE6hdC0402up7ieaAVWlu9coFxyO9NICHYj/5fc7Bf/f72Vj4
	 xwk5kB/anUXjA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 3DD95C73FE0;
	Fri, 19 May 2023 07:10:42 +0000 (UTC)
Date: Fri, 19 May 2023 07:10:44 +0000
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
 bugs@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Message-ID: <20230519-b217334c6-f82053afb53a@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: [PATCH] pinctrl: rockchip: rk3328: rk3328_mux_recalced_data:
 fix bit alignment
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_001043_866993_FEB2D683 
X-CRM114-Status: UNSURE (   9.84  )
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

antwain.schneider writes via Kernel.org Bugzilla:

*** PROOF OF CONCEPT ALERT ***

here is a fun and easy way to prove how broken the current calculation is using both of the bug reports i have made combined together

using a unmodified kernel with an unmodified dtb, take note of the grf iomux gpio2b registers, it should look like this

00000200 00000001

then modifiy the device tree, change the mode of the otp-out pin from 1 to 2 and then reboot and check the registers again, they will look like this

00000200 00000002

now if you've been playing along, you will be aware that the second 32 bit chunk represents the high-side of gpio2b, which is only pin 7, but otp-out is pin 5, which resides in the first 32 bit chunk which represents the low-side of gpio2b

you can try this on any rk3328 based device

*** PROOF OF CONCEPT ALERT ***

View: https://bugzilla.kernel.org/show_bug.cgi?id=217334#c6
You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
