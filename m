Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC01C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 13:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sEKhqYxq2T1PtOSzNLd79V5BtgVwEpPGvWbU9AjNmY=; b=lN5a3l/Olb/4bU
	xE8/8dbQNY33C9/pLhahc38yiYbqVZYeEhGrZNcpMoqFQjhyItQnvIWoWz2kLTuieVSg1zkFwvcCH
	yO0n3+xbz1h0wiDh3obZ476HBrkab+kPX3G9ed58lNDnC53PNVDq6g/ek5OWAYwQ0GNdOVbQlCIb+
	X1lmh7sdBGeu3H2dYLDb3lWlQ6VUbHIraGQmZNH4hM+fbPZqWI1VX6HoReUypnoZre7iPhvmOQSD2
	FmcuuKFEbOPNOA4gwh8lPJ7MzV8HYQfSygui2CI+GS4wyCHocQsM2Vt+lOY3KrqBiDTcytFv+aKlX
	3R27lUyQdq7EWMF7RScw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrFdm-00000001yqw-2EoB;
	Tue, 04 Aug 2026 13:57:10 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrFdk-00000001yqS-0A8o
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 13:57:09 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-47f502ff678so567579f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 06:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785851826; x=1786456626; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TE9xxgUxR/pvncha53bikY5ll9Vwv1tdHdDjBDXq5T8=;
        b=TJ7eLXkdhmyueUkjhwttemdbEUIBbk2P0ze4MIPQAfY0TnnUBdVcbvPfvNJRdhFXuz
         U09Vn5woUnuSy6V7Jj1xsRj1VtwrwrZ8E4If1JKFGoSdwXYCgjcRCKfQ4O+knS6cMPWS
         HY3H5xYFJ+MPohf2fIKaIdKG7nYe5Erzj12P8FVjn8+pKj4hSP3c/7n3YJvcKmYVHNfp
         6i2ZMLeOXmeO+MwkV0JZnSAgFQFFHGaKnrdIJhB1UmWxD1P3RHmiI9E23CzCnx5R2fjF
         at59Je9tL2eU0AtWHK5ap+Y7qcBfu2WwKgJSJUNCe/iAp2W6Gu2R5Ki2eI5x8MCOgPXN
         m3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785851826; x=1786456626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TE9xxgUxR/pvncha53bikY5ll9Vwv1tdHdDjBDXq5T8=;
        b=QFsDWo+FxjyuAIa8UotR3TpG6DCzCx4gJZ7jjbZPpNFOMOuP34IqXrYs7NmY+55FRn
         NiSqmqP+ShuRgmT3MgcgHkOSkIxE8b3xWYxiAwKnCNrTJz1BEohN7DmxHjh6r+fX4oTd
         t+i0We/Gscf5Hl0zWzVuyi94HQ3wmqiooBuI93QEClz8qnfmWTomEYWqysvH2Lvd/ilG
         nznUeAATKLMPsKIfcPFJt4CwRSksVNYab/fs4FLtoRQNJMLXNFQqifGYDQ4+cwPIqDR5
         18CsnzFFxrk7a16cb0BXBt5NUP8Ihw0IjDF2kWWujxPfRLa7AvPM5usfrFMfSSuMyM0T
         RBTQ==
X-Forwarded-Encrypted: i=1; AHgh+RpfEczWKqjdSH73zEjivAjL6cl5E/dKLFs2f9s6X7EvP5ALH7KQgSiz0eh3PNLYuvZBEicjO+0oc6n2lHRZCw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzA1luSrNHmavblk1pQYHN6bj8B663y9FHMhuQLwgFu0WnJPvne
	NfI3W/vXQVkaOFhIzl8mmGCGbMTgQ7YPmMTg7ZSCo7J71ln8W26PiB7m
X-Gm-Gg: AR+sD12ITMQl9Ti/LzBi4RGHVO3s1Lm8N0gbPA+0vieSHBudn10nD6W9j2Q06kRu54x
	9Y8TWjuTASxVokr1n/yrwZGEv+UXzYavJh+FJhW/6aVHnwvriQ/rs/c6+D/LvV4tEjjXt+waKNy
	IrdO5uJ2ez4V7qyrGgxK6HguXmlOAMm7Jf7ywccKZ5UfIBRUZWGfqmw6UtCzMKLAA/Uo2ntlAay
	wiQbo4SqLkFa3JX5sHkeBNZi4jCl/CggIPpt+55UCV9PjAdESERWXmfkw8S5QxOPhxXBJkleVCZ
	qsRllz42rjbwkcclOP4qZ2DKU3dpLByKy4efnb0p3w28W+GR7gGP+JlGqPYh5Bl76CANhfbdClC
	z69ov30lA2550DQA5vT353BZb5DN/toDcKvFA2c0oyLeSA9KI1j4LgGbHKS9R1Tk1hM01X9BDZa
	tqSFoK8I7DD3wxfslZZC/P53q6mNX5MlB6HBnEapX7QK/gip7/ZJBFHa+KVPF3ixb725+NF4zWL
	n2dV+L5LKv+3Ibi5WmXyC7knHo1C+keTOkUQjuoOZfny9qS0+C6Pz6w8H8wFmHq4kLH
X-Received: by 2002:a05:6000:41d5:b0:47f:959f:d5e with SMTP id ffacd0b85a97d-47fd70631f5mr20353186f8f.0.1785851825677;
        Tue, 04 Aug 2026 06:57:05 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8B0400B222A3225E875A6B.dsl.pool.telekom.hu. [2001:4c4e:1b8b:400:b222:a322:5e87:5a6b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd456a6cbsm39595608f8f.23.2026.08.04.06.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 06:57:05 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v9 00/22] Synopsys DisplayPort Controller improvements for Rockchip platforms
Date: Tue,  4 Aug 2026 15:56:40 +0200
Message-ID: <20260804135641.17170-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260803-synopsys-dw-dp-improvements-v9-0-2e6e46135312@collabora.com>
References: <20260803-synopsys-dw-dp-improvements-v9-0-2e6e46135312@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_065708_126081_B0E8D076 
X-CRM114-Status: GOOD (  27.17  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

You wrote in the cover letter that parts of this are untested, and asked for
comments on the out-of-band hotplug callback.  I have been running this series
on real hardware, so here is a report from the USB-C DP AltMode side.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, Orange Pi 5 Plus, USB-C DP AltMode

Hardware and base
-----------------

  Board:  Orange Pi 5 Plus (RK3588)
  Kernel: v7.2-rc6 + rockchip-devel, pinned at 8c70065a3207, which carries
          this series at v9 - including 03/22 "Fix error handling in
          dw_dp_link_enable()", so this is v9 and not an earlier respin.
          No local changes on top of any dw-dp patch.
  PHY:    your rockchip-usbdp v13 series, from the same branch
  Sink:   4K120-capable display, reached both directly and through a USB-C
          dock, DP AltMode over the Type-C port

Results
-------

USB-C DP AltMode works.  I get 4K120 on the Type-C output, which on this board
is a third display output that mainline does not otherwise light up at all.
The mode comes up at dclk 594 MHz, which is what 4:2:0 should give at that
resolution (two pixels per clock), and it survives a live modeset - I can go
from 60 Hz to 120 Hz on a running desktop without unplugging the cable and
without dropping to a black screen.

That last part is the change I want to highlight.  On my previous kernel, based
on v7.0 without this series and without the usbdp rework, touching the cable
while the link was up was something I had to actively avoid, and a live 60->120
modeset gave me a black screen that needed a hard reset to recover from.  Both
of those are gone here.  Whatever the combination of the follow-up bridge work
and the PHY re-init on orientation change is doing, from where I sit it is the
difference between "usable" and "do not touch".

I have not exercised the DP audio path (22/22) yet, and I have no board with a
native DP connector or an HDMI bridge downstream, so I cannot say anything
about the code path you flagged as untested.

On the out-of-band HPD callback
-------------------------------

You asked for comments, and I have a data point rather than a design opinion.

On this board the AUX channel is dead at boot until something kicks the Type-C
port controller.  The cause is on the firmware side rather than yours: the
board boots through EDK2, which has no TCPM, so it hands Linux a PHY that was
never brought into a sane state and a port controller that has never
negotiated.  Nothing on the DP side can discover the sink until fusb302 is
poked, after which the link comes up normally and stays up.

I mention it because it is exactly the shape of event your callback is for: the
hotplug information arrives from outside the DP block, late, and the DP side had
no way of knowing.  A separate callback rather than reusing hotplug_notify seems
right to me for that reason - the two really are different sources, and only one
of them is something the DP block could ever have observed itself.  I cannot
tell you whether there is a cleaner mechanism, but I can tell you that the
separation matches how the hardware actually behaves here.

One neighbouring finding
------------------------

While bringing this up I hit a bug that is not in your series but sits right
next to it, so it may be useful to you and to Cristian.

On RK3588, VP2's dclk was parented to the HDMI PHY clock.  When the HDMI PHY is
not powered - which is the normal case if you are only driving the Type-C
output - that parent is dead, and DP gets no usable pixel clock: nothing above
640x480 comes up.  Re-parenting VP2's dclk to V0PLL in DT fixes it, and that is
what the 4K120 above is running on.

I see Cristian's "Consolidate HDMI PHY PLL clock parent switch" (v3 09/14 of the
DW HDMI QP YUV series) touches the same parent-switch logic from the driver
side.  I have not yet worked out whether that series makes the DT change
unnecessary, or whether the two are complementary.  I will work that out before
I send anything, but I would rather flag it here than have two people discover
it separately.

Happy to run any specific case you want covered, or to retest on later
revisions.

Thanks for the series - it turns a port that did nothing on mainline into my
main display output.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
