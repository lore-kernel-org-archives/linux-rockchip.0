Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2B5EF99D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 19:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zwohpelXoOAktNBaJNplWOY1NQpGJl7hdBJBz8uwfmk=; b=oEedGFHoHDkEs1
	TVC0I8zS1DvxxDCGQWMQipu9YSMaBZjqSu9kM4q6c/Ovq6RtpzCBN8fpf1GIwrXr4fYunIWzKrtRB
	WlFbb8bJS3je9IZlU1GQF2gHUlTClMiMeMBEpDeWa/2CDu10QWniNmSO6KU2vuYTzJKVCMfS1fpBH
	Xrs7hftlWEVolDz9SNeZMqr5tuRSXwsuK1uJwSOGp2ApTBVNiFaRSxZdO+B0+apvOQBqBtF1kgwRP
	JRqgg3qclHhcm6yyYfVogVoHbRedz5kOEH/AXllXnM2QXD6v7MQ1CL/avLgqEVE7RXy74hLUF/H+j
	cYdVJJXtDLXPNLJPm18A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqylL-00000003qfE-1bOX;
	Fri, 13 Feb 2026 19:23:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqylJ-00000003qe6-1DqP
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Feb 2026 19:23:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771010610;
	bh=UUt9Bamssw0YZAyTUGt298k89CMX7q5m5QrH1EuyyiE=;
	h=From:Subject:Date:To:Cc:From;
	b=Cmw3Gith9nxzDknrxgs+S29iZXNMKFNw+sXSB92H3Q4QGP6XAxr+JyODHo+vs10uf
	 94AWs3XGTqN0nW7Xr4OErvMEI2d8X4byJ/pKUFOgWCM8ij1I/g+52o80v6Pmy3iTWF
	 tqdaNRZaJ06bfmuj+1pPNjsOkAwkXPX9nqt035JKLzjFyI14HLYRVv4zxUBwA4I3yx
	 zrYSKmVuVzMz/JLN7WA1JT+ebk0QQULaVV6MxqQkCejPBvqZx4dQGcM9fH4bURSg4F
	 OJp2EuTuuIf013V8TOSzT99kjR/clXdX7RSgWRR3mxLLs4wDI2q/XGsB+HYHcaUPA1
	 OkcoMTpWRM3wg==
Received: from jupiter.universe (dyndsl-091-248-188-214.ewe-ip-backbone.de [91.248.188.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 53C7617E35C9;
	Fri, 13 Feb 2026 20:23:30 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id CF0E6480024; Fri, 13 Feb 2026 20:23:29 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH 0/2] usb: typec: mux: avoid duplicated mux switches
Date: Fri, 13 Feb 2026 20:23:27 +0100
Message-Id: <20260213-typec-mux-duplication-fix-v1-0-70076a7c5691@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC96j2kC/x2MWw5AMBAAryL7bRMqLXEV8VG12MSjaREi7m7jc
 yaZeSBSYIpQJw8EOjnytgrkaQJusutIyL0wqEyZTOUF7rcnh8txYX/4mZ3dpcCBL+ysJl0NRpf
 GgvQ+kOj/3bTv+wGRpzMnawAAAA==
X-Change-ID: 20260213-typec-mux-duplication-fix-ba5e58f6576a
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=UUt9Bamssw0YZAyTUGt298k89CMX7q5m5QrH1EuyyiE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGmPejEi486DyXdZg6xGy1AkAKbtKpi/oAF5I
 7mJIuP4OVhTqokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpj3oxAAoJENju1/PI
 O/qayaUP/0v00gN55b+lysGI/H7BxsJw3AJt33EPJhBuvWSpyOr45K74sVFCMGem7LB1jP4cGTi
 pROKmJA7XKIasl0dOCIy0Yu9KUvz4cG/rfeEslKlDOfNWa4Uao40fQe37V+oiYMZcFjm0tc1ezO
 zZUkFF0BVHkP41zQSZ9WhDU4XAzFKJG19kAGzztQE2oP8mbLEX45Lt0IjPxn2rjHJi14IW5wiN3
 B0f8ZI8orR70MqN7BLwbY9kvhTgeCk2hgplTo1QM695xrbpDr8xkpHig0xotsMHA8lp0PmDzFuO
 qmu+tI3cZrUwF7QtGCFDwyEoWYSaVKAIu3ReHqp5XlSVcSbyq1UDZ3lTDnv6QfBjym3/sriwwsl
 xhWi3k01Kge8HNalCXw02FBAVHIKzK+YWJYr5QfirhhRwFPvGBM3VTtA+NKu0KNMdllEDS2+7rE
 GmxwBpDU4g+TuNozxUR6sHBY6Fo3ywZH/JL959BMhhx0tdkCfAoCZ24mExFDIuB1Ud5OagFFOeL
 PzbAF468xVqY8FSTC0H9k7fMybpOknsyy/3bADVP1Zgq/VM7+AIY4FQd6P9d0XeZjnKnBN4ep2h
 cQzitT738WF44AdMTEW5pQFRs6htdi/S4zgE1/OHP45GKQ21PdEFX7FcLgtrx/og7dATDK70K55
 ndvnIJKBxAJ6HwaXVzBQq3w==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_112333_492943_852AD16F 
X-CRM114-Status: UNSURE (   7.66  )
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

Recent Rockchip SoCs (e.g. RK3588, RK3576) have a PHY, which
handles USB3 and DisplayPort as well as orientation and lane
muxing. By setting up the DT graph from the USB-C connector
for the Superspeed and DP lanes to the PHY all mux/orientation
operations are applied twice.

I did not add any Fixes tag, since applying the settings twice
is not breaking anything. But it's confusing when debugging
USB-C issues and obviously wastes some CPU cycles.

Also I'm not super happy with the implementation I came up with
to do the actual duplicate elimination. In the end I figured
it does not matter to much considering the array size is 3 and
is not expected to become much bigger as the amount of muxes
on a single USB-C connector should be quite low :)

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Sebastian Reichel (2):
      usb: typec: mux: avoid duplicated orientation switches
      usb: typec: mux: avoid duplicated mux switches

 drivers/usb/typec/mux.c | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260213-typec-mux-duplication-fix-ba5e58f6576a

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
