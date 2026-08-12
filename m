Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F3BC5B56A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VY895llNYKyLoBTMOJ+1JH2LVUMPPqE73qIrxgkzjuI=; b=AVcN3RWJzHFVuO
	ZvUdyRA/XgdAC6gsRbPakwCrQTn4VEJaBttQkL4Ggi0/Vi6PnUrsS6FkYM5E0C3ebtbn80rfp+Dti
	M93rKPKNNQRAHCrN9bH76we9a9JzDCqxGZxTpLxI9VB04y6uu/7QzijQx07tmJTuFsmpwQGbw5hlW
	f1TRgHUQFZNkO4FFGPUmzCbCs15RMDrlK6WqkrVGlVAyJwXBIr0Lmv6P7sQS7rZxi9tfaPwbHTTpF
	nKuTviVbwZeDp9fXwoH+/IhPwhB92v79ylUy4gwSxG80WO7IgMR71LZPnrG8KWR3yLRoAedmuSqxW
	nSKxppn2w3/rvoE+s0PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu4Uc-0000000Ff9s-3TQI;
	Wed, 12 Aug 2026 08:39:22 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu4UZ-0000000Ff8W-2RRO
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 08:39:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-47f502ff678so73404f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 01:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786523958; x=1787128758; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iTwjESD9HnwpOl/QOYMlTaCAN0eAUwIAYn/lLI/hTrg=;
        b=hwr9wrR/UKPVJCcSQiyMIVL5dvLs6AGgeU2WfrCKHtNlJAB+Fr5RlT57KOQ0bMVOW5
         j4GnGUKZXV5Dj2M7uobIwRZlZmPCnzZixA95egyYqGFKTd3mM4whJxa7QBe59DgxQDz9
         XhogPUxp2OukCi5IvqTGPVoiuLbQ1EQtOCGaMXl8pgJFm5ExNcCYZ2Gs5DC9zbumGbVo
         dfdO/eGp32kaF2UX+GwfMsjt24vD+e0UGwzOWIOz8+/UaInG7b0SvZXvtBhLHebfcRew
         NozTtVJNgJ5pIqvNbemfJptw9WzlS8SzdfGmc0jfEYGVIaYYAoc6wf0PqpN5HAgoxkQu
         DSbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786523958; x=1787128758;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iTwjESD9HnwpOl/QOYMlTaCAN0eAUwIAYn/lLI/hTrg=;
        b=QK5dFEc1c55TmYSIPEsGkKwksrVULijN1v8J/VKkMkHKMIyCE9pyOCL4cIOL0o3JbX
         9zCOdAv9IUbg8gM+W8QFZQlwFu1Z4t+jjg11F6HKtZdIa8O4WYw5zId76CUDL5XtClsQ
         1LSVytNvAqsKxSwTbcWUz2GayRCVjadZvDFHrvK6kYbuuR25mPHj1nU1WedOJAdx4i2A
         5xY/rJNhCCrsxia2oS3SPoS3tiexOYizpzx13zzZJHnW6bIUHPkncnM1HBMKK77Bvd/q
         oVdZ6G9+PO7p+6gKOgrBHuvonAUXH8FtEPIh5q5JYLurIT0NHJE1GnHun/bwb4zQeN8I
         mDyw==
X-Forwarded-Encrypted: i=1; AHgh+RoylqzyhwLC0hhlv/CRJ7pxVr26WfWlKUqiX1/Je65K3Hh3aEieRdY1HCwweSMpIcfOaEQrWfP0w59OxRDV6Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxyEcCG24nG4TZDB2AlMCOrGjNdCM9/U2HAkKjgqRhUIHdh97H6
	B08FrOFIj5Kqmkot3G5kmqDtsCq3a3YE4aR28/v8vlLvfb2Yo2cElUsn
X-Gm-Gg: AR+sD11Ko9zRFWUjAdtAK3RIAzp/BUqsx8g+9zeMMrL/GRkKu6B1euFNa6snVtbDaHH
	75nsfg+Owd/mTLThuw4Wq47OFZWnmjYIiUiirexg4kHrHpwoH4aK7wHFRpE4uiQKrBtiE7qaojC
	GIFBG1ODciu4LuSiFnmCyZNle7ImXHZXQJ4IE+tO9uflJJ+MT+goxbDhKOeSou46Bh7T0P6LH9e
	SzL8fpZhC4/+utsXomwL+a7q6lB9j51rIWUYTLnBK7pwq4IiUfvBxkFmLfd3f1H40ktYw/y+zfM
	2TErXJsPkjpAZ/BPfrrA+1Oue4zL+ppmADCiKVn47MKhG0gc5w6TDIVcSuyR2SJnFRJw22b9GBT
	xbHSJGAubf+JbTX54w/C9ZRvUq9NkeILYhVbOEyFTS2H2Fe+43slzRLx27aqsRrt+FYyYN0RA7o
	BK3TXBZ8BO/whckwAsseITR6rBnb8C2fzlEKj9kx0nZP/TlGYlVkKid1MCNfqO3gU2Abpf+wj1x
	tAzdrNjvLfZACp3kfWW/czB+r/DXLe0xIXXIgDmpleTcDmQ1uk+RPtsuBQG7l3paoXHhg==
X-Received: by 2002:a05:600c:1f92:b0:496:c249:ddb1 with SMTP id 5b1f17b1804b1-4997c1582dcmr18291075e9.4.1786523957466;
        Wed, 12 Aug 2026 01:39:17 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B84A600FEFE3CD53078703A.dsl.pool.telekom.hu. [2001:4c4e:1b84:a600:fefe:3cd5:3078:703a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4997abf94c1sm53087835e9.14.2026.08.12.01.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 01:39:17 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: drm/rockchip: vop2: ACLK_VOP pinned at 500 MHz starves DP 4K120 on RK3588
Date: Wed, 12 Aug 2026 10:38:52 +0200
Message-ID: <20260812083857.60460-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <7759116b-0beb-4d25-b269-c020a8379cef@rock-chips.com>
References: <20260808104240.13776-1-royalnet026@gmail.com> <33bd4a94-11af-4cf3-ae44-b7f8944250f6@collabora.com> <c0a7521d-9c19-4197-802b-2b64a6ddea28@rock-chips.com> <20260811212358.9980-1-royalnet026@gmail.com> <7759116b-0beb-4d25-b269-c020a8379cef@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_013919_650375_DE7CD1C1 
X-CRM114-Status: GOOD (  26.74  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chaoyi,

That is exactly what I was missing, thank you. Having the vendor's
decision flow meant I could stop guessing and go measure the case where
my rule and yours disagree. I have done that now, and the result is
worth more than my earlier argument was.

First, on equivalence: I do not think my threshold is equivalent to the
linedur_ns term - it is strictly narrower. With
linedur_ns = crtc_htotal * 1000000 / crtc_clock, and htotal 4400 for the
4K modes my panel offers:

  3840x2160@120  1188000 kHz   linedur_ns 3703
  3840x2160@60    594000 kHz   linedur_ns 7407
  2560x1440@144  ~586000 kHz   linedur_ns ~4600-4700

My VOP2_HIGH_BW_PIXCLK_KHZ of 1000000, at htotal 4400, is the same as
saying linedur_ns < 4400 - about 1.7x stricter than your 7500. So my
rule declines to boost in cases where yours boosts, and 3840x2160@60 is
one of them: your rule raises it on two counts (crtc_hdisplay > 2560 and
linedur_ns 7407 < 7500), mine does not raise it at all.

So I measured that case. I unplugged both HDMI cables, leaving the
DisplayPort output as the only display, and switched it between
3840x2160@120 and 3840x2160@60, reading aclk_vop and dclk_vop2 from
clk_summary at each point:

                        4K120 (YCbCr 4:2:0)      4K60
  dclk_vop2             594 MHz                  594 MHz
  aclk_vop              750 MHz                  500 MHz
  vop interrupts/s      120                      60
  POST_BUF_EMPTY        0                        0, over 60 s

The dclk is identical in the two states, because the 4K120 link runs
YCbCr 4:2:0 and the 4K60 link does not. The interface rate did not move
at all. What moved was what the video port composes - a full-screen 4K
ARGB plane at 120 Hz versus the same plane at 60 Hz - and the AXI clock.
That is the separation I told you I could not make from my earlier data,
where mode and composition moved together. The interrupt counts are one
vblank per frame in both states, so there is no starvation at either
point.

3840x2160@60 is therefore clean at ACLK 500 MHz with a full-screen 4K
plane. For that case the downstream rule boosts and does not need to.

Putting all four points I now have in terms of composed pixels per ACLK
cycle:

  3840x2160@120   995.3 Mpx/s   500 MHz   1.99   storms (116630 irq/s)
  3840x2160@120   995.3 Mpx/s   750 MHz   1.33   clean
  2560x1440@144   530.8 Mpx/s   500 MHz   1.06   clean
  3840x2160@60    497.7 Mpx/s   500 MHz   1.00   clean

The boundary sits between 1.33 and 1.99. That quantity does not depend
on the connector or on the pixel format, which is what I think you were
pointing me at, and it fits every point I have rather than the two I
started from.

The honest limit of this: all four are a single full-screen plane on a
single video port. They say nothing about plane_num_4k or crtc_num > 1,
which are exactly the terms my condition has no counterpart for. I am
not proposing to drop your terms - I am saying the two mode-derived ones
appear to carry margin for this shape of workload, and I would rather
ask than assume.

The other thing I had not appreciated is where the decision lives.
rockchip_drm_aclk_adjust() runs from atomic_commit_tail, so it is
re-evaluated on every commit with that commit's plane information, and
aclk_adjust_frame_num holds the boost for two more commits on the way
down. My unsent patch puts the decision in vop2_crtc_atomic_enable() and
_disable(), which only run on modeset. A condition that depends on what
the planes are composing cannot live there: a client swapping a 1080p
plane for a 4K one without a modeset would never be seen. So the
placement has to change, not just the condition.

Two things I would still rather learn than guess:

  - Is the two-commit hold on the way down a hardware requirement - the
    rate has to be up before the frame that needs it and stay up for a
    beat after - or is it belt and braces? It decides whether an
    upstream version needs the same hysteresis.

  - Are the mode-derived terms describing something the hardware stalls
    on, or are they a conservative stand-in for "this is probably a
    heavy scene"? My 4K60 and 1440p144 points only make sense to me
    under the second reading.

I will rewrite the patch along the lines of your flow rather than the
pixel-clock threshold, and move the decision to the commit path. For
what it is worth, the version I have been running locally since 7 August
has driven 3840x2160@120 HDR over DisplayPort with no HDMI output
present at all, which is the case the FRL-gated condition cannot serve;
it also drops the rate back to 500 MHz on modeset and restores it, so
the refcount side behaves.

Thanks again - this turned a guess into a measurement.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
