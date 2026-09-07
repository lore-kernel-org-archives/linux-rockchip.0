Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8E1C79FA0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 17:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ABFT5aYtdapQwm0MYsUSluRhNflcHMYPOiU+glt4a4o=; b=nsUAb9DQiAkIsv
	HcT8Ljl5teuvT3GtEZEEWTCJRd7T/FOEaf9XlVK5P9EgL1qob3szbk0iRzaoWxMggzQKdtjxjPK+j
	eyjR5SDSIaWIY1rGbH3y3HpfOGRUt9itoRBQ/zMLvJ4/0NOdmuX195jG5sBSPcx9ObTDeC6uq7gH5
	PaM2/+tChdyl6CgFggj7pnmoHiS/uIdsoq52fK8duaK1NQcvB7D+AJnqOud491D+DrXBAyzLbD1A6
	tUaSjtFWG/nZ99RDbKazKoeLhyjRqf7d/X2Lyo5PeiWfMM3mmJG9EPmRYyROHco1D3DCwnx+ml78J
	luiDzF3jEoLj0AmmJcBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3dEb-00000007Uwy-0rs9;
	Mon, 07 Sep 2026 17:34:21 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3dER-00000007Uv5-3ElE
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 17:34:20 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49c5a927a1fso983395e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 10:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788802450; x=1789407250; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yXIYeviFW2An3MiG2FIAz4Avl4P0N7d8PiSZ5BjNGB0=;
        b=osXH1v1zx4LxnpFsN8yqKW16LhUMW3MpuS6IWdQ3Y2aMzDHdkw9k9+ziTnL4KXAMf+
         PrtYgB5Ojr6tsk5oNa4aci0vX8gLni/a3eVy/4JpKNJRknB+kVgO0Usw7pQRM8lXEHrS
         r1MqIPAPLlhAYtVr87CwJTa9g6JYYgCMbV8l0cQXzAKl8LLKoF9Si/5awTKw/CANhw3H
         Q7r7d2TYlMUZa6nve+GSrRP+m3+2t/wg/Kw6uovLkW0ac34yEoj9/Y+LF0oypTykJu6H
         DmbHlj2og9lfsuEDgA9jufKStayB3yib+S8COpvb3zl7MgHgNTB9kxj/4sSVGTZVxJe7
         WyjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788802450; x=1789407250;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yXIYeviFW2An3MiG2FIAz4Avl4P0N7d8PiSZ5BjNGB0=;
        b=pmhpQmAFEvroRGZs6fq6zVZ3a+3U2Pbswd4LncHJhhnINplkJjx0pXaGOmo6fbG33C
         L9viGKlKzIcDW6KlWJxElhLbhNKQcNq1yK8nEwIuFqJLQ5FF1KBJgiig51HHhmIH+lGf
         5uZXXfhVZfRFdDaHO14bi6sZTxodrhCbULEeNNwUnEYHsqA3vAlSfd1MAlglwyhfKW2Q
         uO1RWKmF+9OW68kbVHstoAB5ZsIBnowMnIWDlsxj4cIKhGumKvKvWy1XoYw3G7SMtdHQ
         29pyNERMENOuht5hGnT75GcFk8Qj71Dp9GkHViToAQ6UalIGBjg6BFJvLgOxm5A1TypQ
         CwmA==
X-Forwarded-Encrypted: i=1; AKwUvBwybilZuUmIPSdV/e6lHubJ/V7s4908dmyglSH/knOkETcxY/QVrflnQztNMSGdAI3B+lHt53rrLoJ2Xkev+Q==@lists.infradead.org
X-Gm-Message-State: AFuF++kmneRF8r+TCWzmBEtpt4hg3jK4bweHde4csgJHzoLZaZ4hv320
	CVBsilwoSBVNo2eM/C3o9m053vtgj8xpM5896S6Ey02n84jYG5fDMGJ7
X-Gm-Gg: AYBFou3mbCXigRNhiBPXJS5cdXTn6Ol6Z6Tqd+iclJC71E83l6uw2PaJFQY2xiPvo3C
	QRGyMFKLsrIxrn2a/FdJwdOtjCoS4CFGdpUVKNhnCRjkYV6f7gXNhsuhntoNls2iwsZQDW9CHCK
	C0Ym6kJXAfij8k9hIXZpRt2/WV/jjl5YaS8EQyrRUlObcIDipWHNkdk4K4bFErrA0r4f+3pqcIJ
	xY5YpqrDBY6hdrspIQs3exFdO0Uq7suaDwEQsYCY3QUDTDjFjM9foalcNLlwfu9lsV41vMza2qF
	UBAszUDZqnR58yUHJUb9yeCHlk4e1qlnY9sGJxcAviOqViwWXVpOJg4ThSKzCN8NZrqNncKWdP/
	aNmrRGQ9cinHayIrfmA3nX24tvhguz1JVaQNIAJDlO9yBf09SuvY2A7vdCA5E2RZz/D+3kWv9g4
	ocO/F0pRYqtmZTkvQHeIKcknvRR5NUnAcR/FaLkOFpNv/KD/KM0b1TvuOzwtnCusH9NfUaGHZDx
	OElEVJNQgb+Byx6vxxA8EXvHgzsYiw3wsq69xWGzuVNSYKooU0iRUz6Kzxi8baZeHfs
X-Received: by 2002:a05:6000:460f:b0:485:8e7f:ec0b with SMTP id ffacd0b85a97d-485907fd697mr14697954f8f.5.1788802449653;
        Mon, 07 Sep 2026 10:34:09 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8822007B3AD9A87B9E27CB.dsl.pool.telekom.hu. [2001:4c4e:1b88:2200:7b3a:d9a8:7b9e:27cb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588392b3esm34477370f8f.12.2026.09.07.10.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 10:34:09 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: s2idle resume hangs in ohci/ehci on RK3588: HC registers touched before the USB2 PHY is powered back on
Date: Mon,  7 Sep 2026 19:33:47 +0200
Message-ID: <20260907190000.s2idle-usb2-resume-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_103411_850406_EC98ACC0 
X-CRM114-Status: GOOD (  23.98  )
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

on an Orange Pi 5 Plus (RK3588, mainline 7.3-rc1 based tree, generic-ohci/generic-ehci with
phy-rockchip-inno-usb2) resume from suspend-to-idle reliably hangs in the USB 2.0 host
controller resume path. The CPU that runs ohci_platform_resume() never returns (RCU stall,
"CPUs still haven't responded to the NMI"), everything that waits on it in dpm_resume()
stalls behind it, and the board needs a cold reset. With the four USB 2.0 host controllers
unbound before suspend the same s2idle cycle completes every time (RTC alarm wake, full
resume, 3 s), so the rest of the platform is fine.

Wake-up itself works: the board is woken by the hym8563 RTC alarm (PM: Triggering wakeup
from IRQ 52) - that needed a separate dts fix which I sent yesterday [1].

To find where it stops I put kprobes (with tp_printk) on the resume path. For the two
OHCI controllers, same kernel, same cycle:

  fc8c0000.usb (host1, survives):
    ohci_platform_resume -> ohci_platform_power_on (clocks only) -> 0
    ohci_resume  entered        @142.838
    usb_hcd_resume_root_hub     @142.859   (the "powerup ports" + msleep(20) branch)
    ohci_resume  returned 0
    ... later, root hub resume: usb_phy_roothub_resume -> rockchip_usb2phy_init/power_on
        -> ohci_rh_resume
  fc840000.usb (host0, hangs):
    ohci_platform_resume -> ohci_platform_power_on (clocks only) -> 0
    ohci_resume  entered        @142.994
    (nothing else, ever)

So the hang is at the first HC register access in ohci_resume() (the ohci_readl() of
HcControl / the port power / intrenable writes), which happens before the USB2 PHY is
powered on again: since the PHY handling moved into the HCD core (usb_phy_roothub), the
PHYs are powered off in hcd_bus_suspend() and powered on in hcd_bus_resume() (both only for
system sleep, !PMSG_IS_AUTO), i.e. at root hub level, and the root hub resumes after its
parent controller. At probe time the order is the opposite: usb_add_hcd() does
usb_phy_roothub_power_on() before hcd->driver->reset(). That matches what I see: after a
"hosts unbound" s2idle cycle, binding the drivers again (probe path) reliably works, while
the resume path hangs.

On RK3588 the inno-usb2 PHY powers down its PLL/refclk/bias blocks while suspended
(phy-rockchip-inno-usb2.c, comment in rockchip_usb2phy_power_on() about common_on_n and the
reset done on power-on), and the OHCI/EHCI controllers take one of their clocks from that
PHY (clocks = <&cru HCLK_HOST0>, ..., <&u2phy2>). So an AHB access to the controller while
its PHY is still suspended has no clock to complete on, and the access never returns - which
would explain the "no reaction to NMI" symptom (this is my best explanation so far, not
confirmed with a bus or clock trace). The Rockchip vendor tree avoids this by giving the PHY
driver system PM ops that reset and re-tune the PHY on resume, before the consumers run
(rockchip-linux/kernel, develop-6.1, phy-rockchip-inno-usb2.c, rockchip_usb2phy_pm_resume():
"PHY lost power in suspend, it needs to reset PHY to recovery clock to usb controller").

Data points (all dvfs test kernel, 7.3.0-rc1 based; every "hang" needed a cold reset):
  - all 4 USB2 hosts bound, s2idle:            hang (ehci x2 + ohci calling, none returned)
  - EHCI unbound, OHCI bound:                  hang in ohci_resume of fc840000 (2/2)
  - all 4 unbound:                             OK (4/4)
  - all bound, cpuidle limited to WFI:         OK (1/1)   <- timing dependent, see below
  - the surviving controller (fc8c0000) took the "HC state retained" branch of
    ohci_resume(); the hanging one (fc840000) did not get past the first register access.

(The OHCI platform devices resume synchronously from the main dpm_resume() thread - power/async
is disabled for them - which is why nothing else in the resume sequence is printed after the
hang; the EHCI ones are async, so in the all-bound case two ehci and one ohci resume were in
flight when everything stopped.)

Why host1 survives and host0 does not (identical PHY port configs) - reading the PHY GRF
status and the clk enable counts right before suspend, in the test configuration (EHCI
unbound, OHCI bound): the u2phy2 port (host0, nothing plugged in) is already in PHY suspend
(GRF status phy_sus set, no line state) and its usb480m clock has the OHCI as its only user;
the u2phy3 port (host1, a HID dongle plugged in) is not suspended and its clock has more than
one user.

So the port without a device is already put into suspend by the PHY driver's host-port state
machine, and its 480 MHz clock has a single user (the OHCI): ohci_platform_suspend() drops it
to zero and the clock output is gated; ohci_platform_resume() re-enables the clock, but the PHY
itself stays suspended (PLL down) until the root hub resume powers it on, so the first HC
register access would have no clock to complete on. The port with a device connected keeps its
PHY awake and its clock never reaches zero, so the same code path survives there. With the EHCI
siblings bound the outcome depends on timing (the async EHCI root hub may power the shared PHY
on before the synchronous OHCI resume touches its registers), which would match the mixed
results. Also: after suspend the OHCI ends up in the RCU-stall/no-NMI-response state, i.e. the
CPU is stuck in the bus access, not in a software wait.

Questions:
  1. Is the intended fix to power the roothub PHYs on before the controller's own resume
     touches the hardware (e.g. in ohci_resume()/ehci_resume(), or a usb_phy_roothub_resume()
     call from the platform glue before ohci_resume()), or should this be handled in the
     Rockchip PHY driver with system PM ops as the vendor tree does?
  2. Has anyone got s2idle + USB2 host working on RK3588 mainline? I could not find a report
     on lore.

I can test patches on this board (UART console logging is in place), or try one myself
for whichever layer you think is right - I have not attempted a fix yet because that choice
is the question. Per Documentation/process/coding-assistants.rst: the kprobe placement and
the log triage above were done with the help of an LLM assistant; all measurements are from
the board and the reproducer is the unbind/bind matrix above.

[1] https://lore.kernel.org/all/20260906181622.11991-1-royalnet026@gmail.com/

Kernel: 7.3.0-rc1 based (drm-misc-next + accel/rocket DVFS series), BL31 v2.12.0-10-g70d814213
(v2.12.0 plus one local cherry-pick unrelated to USB), Orange Pi 5 Plus.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
