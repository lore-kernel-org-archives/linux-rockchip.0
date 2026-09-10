Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4C49C79F9F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 12:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:References:In-Reply-To:Subject:Cc:To:From:Message-ID:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OabdoryLgp+JCkannu8nbaqbSHj5K8ScmJOYjM68UEU=; b=PAWsndFDnK6d1000kANmxdzxfA
	8aAdzChyOkz2BpHIvXrdkz2ZIR0u220Ux2XvpAAnMZk0EnZfBoMRCY73SXq5tj0LsWGCcDYiMOsG1
	ZoBfp+xKnRwHxaBIKGnewIXVFxjXMrOOy104Bs+Cbl9LdyJwtxZqJsHO8wShgWoVqE8pGiB+Xq4iU
	LZPs2WafhqCcRJsdYGlaaUWJjZyE3tYzjC48JGkyF5UenROUUf4oT1SDZPQHLF9UPXaPoUt9G40fs
	OoY09CO6OiFageUF0qppPN3T8b4I2qAYikIXHmM+GNWCnlItAf0tTA1sia/3B8Wm9HmBVidC3+/uY
	v1AKaSnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4dZq-0000000EIhO-3JG6;
	Thu, 10 Sep 2026 12:08:26 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4dZo-0000000EIgB-1lZa
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 12:08:25 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843cedd129so1351201f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 05:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789042102; x=1789646902; darn=lists.infradead.org;
        h=references:in-reply-to:subject:cc:to:from:message-id:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=kr90axAl39Wct6vUhubTPo3djvuufRCk0pWZynFpKbM=;
        b=PSKj1v3lJbww6dIJy3kmmhYQukITzpTX2dqOc6Cnyp0H/i5eUmmB0WfLOc0jd2FwH3
         r6C/nupTCBBRPCb6SRgpT1wFq2IYbWRvrtpmB4FsJqy228FrGY8k+KLElxmcJmo8s/k7
         Ff8G58j/ThZRJOh7iK5Kdtm4p/nSCKHmUvG9Ojjjj4ZMV2kWN0/F+oPjNTFr4cSqLRJB
         iW3RYjrtDxKp5jc/3e8qp8QJCTGJe7XRRuWDRQeqwVlPgdI6PS6yZIolJ4Kg3MAgiuQd
         kaF0CsI7Ebml32+F4kPP9umSbpnqznes+IdK2tdnf1qUoSH8nJXQFBA1stDBHza0hgLE
         snfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789042102; x=1789646902;
        h=references:in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kr90axAl39Wct6vUhubTPo3djvuufRCk0pWZynFpKbM=;
        b=otNL9aGlZ/nj8qlrL9CqGzRIwAQFkANnqMbZvXSayMjonH0Fb/PcNwO7JWH4bO0Qrg
         LgIt1HKQ7K2ZbssjriDEE+BgZJ/kisXIqsILPbxoipf4NlWJlWLP4mIvCLB6Mf9nay3M
         bWy2Hiu536uFpZPESlJCzqNACq2bWP2z60q4sMXEuwIH31FmP0ZLDvIqnImNP+E1E3h5
         KyFyD0IPTg8If7/lhBHH+Jz7waYSudsUzykSMZE+0wimPfvrklhm99H5JiCFT1wVUDnu
         UL0pF+RbDimXwPTDz+39SUHucxmTHl2uxXYAoXsa+IamRx5ZlMiz/tDqIZ6Kj0vFEprE
         tEgw==
X-Forwarded-Encrypted: i=1; AKwUvByrjLOjKf+XgDMOYXXDym9HvqylP+0BLlPdA5E30cx5gfhfAW7GAaXSg/2XGPIzY4E/d0Cmi86Ytt5fOFqs0A==@lists.infradead.org
X-Gm-Message-State: AFuF++lfATdUX14nmYO7SLetMpiC0XTI89U9mjHAo//tdG/ybBVBff5A
	5kws168k8USXRwkBwAgQtm63AsMGFVyUv3BmM3C9Vw810KnEXTXjO5cd
X-Gm-Gg: AYBFou383VNHfs+DxijNZpHPP/VFDfRzaf1Zd8RY8W938SkPTJbjctj8ym+W4j7U4CV
	qPHoZkuGfuFfd2+4MjhLBNmbUQcRQH/Vyj9HrbIBaTCGRrMxl/p2POwPytm08DpPCxWK5OjgqEC
	7poegWelWrTGAa35Hwsp2UifSlVoPJZN1T3hD1oprwfA5TLUDpnJ5h6UcIK4LQnKhrdKT6ICUYj
	PtjrNqNwC5aXBjDKyl73s9CP4bf/kELTRb//oe/tn3PcNgENtWPxIVZ+WDoE39bfZxNjcpHXaVW
	Vy+dUB3oO104zx/nDY7O5ms2G2G27Qsdjx3aaLCwZOsTU4PsrEuxkDKUJOiO0O19i3AfjLMx8ri
	nw8EvOhDp8CjjARJV/nmDXHVujHr+JdFIH9U3WUSF1YkZkrvK0HEdilbdqqQs1SV7FoerD1U8Zo
	yNAyHdxMjt1Ru6cjRymyu2GyIlI6pdUmg4+ZDL6fUj6k1sjzeydIF7Guo0hHBzorfLZoyAKXedA
	APxPblgYGQIP/2fzL+54yCYBD6jJNfgNh8MIhL15S5+vZjRh1GnBrhK3Eya1QMFY9MxipWSTJ+X
	XOR2+P0/BLCW0g==
X-Received: by 2002:a05:6000:1883:b0:482:ea08:8c97 with SMTP id ffacd0b85a97d-485aad9458dmr21686931f8f.2.1789042101895;
        Thu, 10 Sep 2026 05:08:21 -0700 (PDT)
Received: from localhost (adsl-178-39-48-248.adslplus.ch. [178.39.48.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883c81c3sm51597465f8f.26.2026.09.10.05.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 05:08:20 -0700 (PDT)
Date: Thu, 10 Sep 2026 14:08:20 +0200
Message-ID: <4d885f9e201df6f48a06f4ab3b27a7f1@gmail.com>
From: Robin Räber <robin.raebi@gmail.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 00/74] Add HDMI 2.0 support to DW HDMI QP TX
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_050824_481204_AEBEF0B7 
X-CRM114-Status: GOOD (  11.81  )
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
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============5525984024559501981=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5525984024559501981==
Content-Type: text/plain

Hi Cristian,

I tested this series on a Xunlong Orange Pi 5 (RK3588S) driving an
AOC Q32G1WG4 monitor (2560x1440@144, TMDS char rate 592 MHz) and can
report that scrambling works, with one interop issue described below.

A note on the test base: drm-misc-next at the series' base commit does
not boot on this board for reasons unrelated to the series (the
unpatched base commit hangs early as well; I can dig into that
separately). I therefore backported the series onto v7.2.3, dropping
the vc4/sun4i/tests patches and adjusting for minor context drift in
drm_connector.c and the scdc/hdmi helpers. The dw-hdmi-qp, rockchip,
bridge_connector and helper patches applied without functional
changes.

With the backport applied, all four 2560x1440 modes (60/100/120/144)
are exposed and 144 Hz works, but scrambling initially failed:

  rockchip-drm display-subsystem: [drm] Sink doesn't support scrambling.
  dwhdmiqp-rockchip fde80000.hdmi: Failed to enable scrambling: -22

The cause is the monitor's EDID: its HF-VSDB declares a Maximum TMDS
Character Rate of 600 MHz but leaves the SCDC Present flag unset, so
drm_scdc_sink_supports_scrambling() rejects it. The SCDC interface of
this display is nevertheless fully functional: reading SCDC via DDC
returns sink version 1, writes are accepted, and after the change
below TMDS_CONFIG reads back 0x03 (scrambling + 40-bit clock ratio)
with a stable picture at 592 MHz.

Since HDMI 2.0 mandates SCDC support for character rates above
340 MHz, I worked around it by trusting the declared rate:

--- a/drivers/gpu/drm/display/drm_hdmi_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_helper.c
@@ static bool drm_scdc_sink_supports_scrambling(struct drm_connector *connector)
 {
 	const struct drm_display_info *info = &connector->display_info;
 
-	return info->is_hdmi &&
-	       info->hdmi.scdc.supported &&
-	       info->hdmi.scdc.scrambling.supported;
+	if (!info->is_hdmi)
+		return false;
+
+	/*
+	 * Some displays (e.g. AOC Q32G1WG4) declare a Max TMDS Character
+	 * Rate above 340 MHz in their HF-VSDB but leave the SCDC Present
+	 * flag unset, even though SCDC is functional. The spec mandates
+	 * SCDC support for rates above 340 MHz, so trust the declared rate.
+	 */
+	if (info->max_tmds_clock > 340000)
+		return true;
+
+	return info->hdmi.scdc.supported &&
+	       info->hdmi.scdc.scrambling.supported;
 }

I'm happy to test further revisions on this hardware, and to submit
the above as a proper patch if you think this is the right place to
handle such non-conformant EDIDs.

For the dw-hdmi-qp/rockchip/helper parts, on the backport described
above:

Tested-by: Robin Räber <robin.raebi@gmail.com>

Best regards,
Robin


--===============5525984024559501981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5525984024559501981==--
