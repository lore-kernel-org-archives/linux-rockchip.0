Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3746EB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 14:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9wkd5H6OFZiWzNk91j6Fu0vK2KhvMOHz1v9ylSl8w4A=; b=yhSxS2KeP6t/pT
	nNnZI+YRWo63DX4TwibznnDpM7Qe3Vf2rfeJA0t/Tt2JM2XE6Fm4Mjcnj+cMxUIJZ5x761zl8AHU/
	hD9am65c9vAqEAIDVL9wAD+X7m54aIdYzXMxOiQziskfYk6a5RgCk7A6i09OQoehPQ3bS47PENT5Q
	fo1TQ0iA+IKAGrcsayQ+9QkmmzYUZ8i6g90uxvApanvqwV9WY5MU0wy2YyJJIpRT/Jr3Gczh9AyPX
	/LZcg6s2oRnKNvdMI0ex/Tmo5ES8NUhufgijHi+5TEDGSX5cVc9r6qhgspx8u473y9zC9ZCqYkZMy
	z3tOLiykXxwM3vBHObDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBcUK-00BY4K-0W;
	Tue, 20 Jun 2023 14:37:44 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBcUH-00BY41-2i
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 14:37:43 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6b2d356530eso3005095a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 07:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1687271859; x=1689863859;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YLsuiZT+7S8hb3ruvLbkU6f0QmASOzrUTrFBKgR3UrY=;
        b=ieH/biXa31jXUdFSR86pf5py2kofE5eMYgamUFnPbDiyZz6xuTSHUGGEIbellnB37n
         YbcIDEAUpxMy5epH9uQpaDAAVSQ5VYaimk63AJ0y81Dz38/AhLyEVq6TeB3IHkvL10lB
         t3A0lR2bahgzvwCsd5PwlPKOxcb1FGCELXQSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687271859; x=1689863859;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YLsuiZT+7S8hb3ruvLbkU6f0QmASOzrUTrFBKgR3UrY=;
        b=aE/vv4zksTuZ906UjBEv/g2WERapMGO5H2XCqEApUmbRjXUmqOCU6wr3nllG1fvaKG
         VIl0VW+QW4GdSSeEhee9O7/hjJ/0czOUbMpm4il8sGlG/x8Qux4CmpJiBIWDsPNawAg0
         qq7hQCF3f8jNK5LlFSkGvTIsA5sMb13ddkE2BTTfedpCIeRmzIiEs2TFEdE17j/a2bQZ
         LPY7qU8CLdaLUMyeUSAXg+tbInUAWR84082lA5+a9xbTqbYZu24PjHn93NE7qouogGQV
         RrhB6YSRyNAOtvjvsDXKyUttSMJPjf7Mo15uku5clIbJ3b9POc+DfCxYxTu8HXMHyLnS
         xfHQ==
X-Gm-Message-State: AC+VfDwS4KixtyHUjyxs9kK7SXp40y0RQ5dGR6yvL0+LvgVXY0WYLq0h
	P7tbp9TzPVU3p93TgsAhJlFnjeO00CStYLJN70/WcTlPp1yxtII/LYfM2Qu8
X-Google-Smtp-Source: ACHHUZ4uCIKOTbXHoCIkSBQPZOqzIcor24BB3qujNqWGKEzGVSsmku1nijA42P9oN8hMNcecgjogXbgiZIQaSi60cMU=
X-Received: by 2002:a05:6359:63a8:b0:130:f25a:b2f5 with SMTP id
 sg40-20020a05635963a800b00130f25ab2f5mr1398805rwb.6.1687271858996; Tue, 20
 Jun 2023 07:37:38 -0700 (PDT)
MIME-Version: 1.0
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 20 Jun 2023 20:07:26 +0530
Message-ID: <CAMty3ZD64BH-XunimhVjcFF=H0O6zOg34KBMVcUa5hTZLJw0AQ@mail.gmail.com>
Subject: Rockchip DWC2 issue
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Kever Yang <kever.yang@rock-chips.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Marek Vasut <marex@denx.de>
Cc: U-Boot-Denx <u-boot@lists.denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_073741_915122_EA65FEA9 
X-CRM114-Status: UNSURE (   6.53  )
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

Hi,

Has anyone tried to use dwc2 and echi port together with USB disk?
look like this is not working with this combination on any Rockchip
SoC's

Here are the issues that I've reproduced in RK3328 where the disk
connected in EHCI port is detecting but DWC2 is not. Any clue?

=> usb start
starting USB...
Bus usb@ff5c0000: USB EHCI 1.00
Bus usb@ff5d0000: USB OHCI 1.0
Bus usb@ff600000: generic_phy_get_bulk : no phys property
Register 2000140 NbrPorts 2
Starting the controller
USB XHCI 1.10
Bus usb@ff580000: USB DWC2
scanning bus usb@ff5c0000 for devices... 2 USB Device(s) found
scanning bus usb@ff5d0000 for devices... 1 USB Device(s) found
scanning bus usb@ff600000 for devices... 1 USB Device(s) found
scanning bus usb@ff580000 for devices... Adding disk for
usb_mass_storage.lun0 failed
(err=-9223372036854775788/0x8000000000000014)
device 'usb_mass_storage.lun0' failed to unbind
1 USB Device(s) found
device 'usb_mass_storage.lun0' failed to unbind
       scanning usb for storage devices... 2 Storage Device(s) found
=> usb tree
USB device tree:
  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Mass Storage (480 Mb/s, 100mA)
       Generic Teclast CoolFlash 4163831324317134

  1  Hub (12 Mb/s, 0mA)
      U-Boot Root Hub

  1  Hub (5 Gb/s, 0mA)
     U-Boot XHCI Host Controller

  1  Hub (480 Mb/s, 0mA)
      U-Boot Root Hub

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
