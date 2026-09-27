Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 322DCC9832F
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2026 12:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=muH0PFlL4PEFsRAO72/MWgcMDIZvPpfKH0ijjwFNWGQ=; b=1QrxefwZs51OBx
	o9vZDO9+CS3mHojYl5L6sfUpjK7/dck65xlMuAZTioTH7nBMZ3DcyjBzo8vA1u5DctkeGC+uIuuKa
	fL1PozWCeE13y3xtrZq3+uTyQVNe21MzAy6YF6GGt8XnwfebtWujRK/CJEXw3EwxuoXslbYflbqrH
	B0YIRVdr+0yyajCkLped1ymSOPcyy13JnB29Z46ptZE31RRhFU1hoSaWdM42pyVs6vTvuZYX1xY9z
	Bg4dEHAO0NgPIhH5t6ZFxYq01pSvdhcP74bdFE6Ssj2ybeVHYLDtEQwvHcUWeZOJxexU7xivB9LgN
	1ecOb3uz79GelWYPSj8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnaz-0000000GHdJ-3SIY;
	Sun, 27 Sep 2026 12:03:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAnax-0000000GHc6-3diF
	for linux-rockchip@bombadil.infradead.org;
	Sun, 27 Sep 2026 12:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Z+V9unX6aBDFJuuH1gIxp0fin+EUilc5XMo2mblqJ30=; b=Iu6/gtkaawI6HdHcXqYrNAqTyc
	CSTtf76plPNlTAmIC5pksIqHcnr2obpzCM7CLAf0QQktS5Oi0MYgLFb60t7WHr/srlaCriNTAwIUg
	Q/+YLEQUvQ2F64SXz3E8PWNW/HySASJnEUd8LF7nG7fAdJbNg6DdNJlM38HwrB/HR7BFncEaEDANY
	viyDslMGu/O283BzpUby0aqtZTz+gVJ6Qi0e5+cCg3O+1PHEYFo/7ZV4TWyFo6OgTdmTTbwCBUHYU
	YpGl2fVREBGrNbGoY88D01PcRj6WT7VAGxUiUczHo967cQps2rjCNG7gx/Axos9PlzW0fsiGlIRE7
	EgxhbmOg==;
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xAnau-00000000hfg-2vf2
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Sep 2026 12:03:02 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48435bcf9d9so205682f8f.1
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Sep 2026 05:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790510579; x=1791115379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Z+V9unX6aBDFJuuH1gIxp0fin+EUilc5XMo2mblqJ30=;
        b=lq8A3EYeE/vl3dZYV9s3QF26GsxwJ7TgqcBE/Jq1sb5AqhzJIAmtRAky4dTjEUNW08
         sepp658isBPnP4Xw702J9Q4cmrwX25pJ1U5eS4MnFhxEZm43k9SHNg3uC1GE8Q5Onkmv
         oI9beTi3IGWNJ/Ix5auMCcPjlAgL/nNl7nqvmd/TEN4hkVZ9vmvOLvVkiIV3sRbnMZ8N
         IWObcR93IAioDW5ug9bIzi6HVajbsNWFyzK9jfmiMrRVPCZLQE18XWsxBJ4ukWqpY8gS
         F0GG9CjmgHR4oz75kb0ZpZHzlmTFCd9AN8nnaaJ0RWyS47PbvCyV5TX/aS4VYn9ZXp24
         +LHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790510579; x=1791115379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Z+V9unX6aBDFJuuH1gIxp0fin+EUilc5XMo2mblqJ30=;
        b=yoOJLpyUw0sRBTmjQp5b5HDzjU73gBFucU2AhPreINJ85l0w7rhL9RfujZ9HPgsAvm
         0vvQVwOLuFssipsY6DwwJ53+n2vkr+H6dQRZmhmkpo/i9kVJiuClr7Fv9fypHFBkWqsn
         NkPQiSLemq+kSe1z4BXHmq6SWayBg6Pmr5tINkkaTaj5rH1A9/ZP2SUR52Nq4W5wOMXw
         n26RRLXsBbOQ5igtugZmP8dGay2Ai9uUFEJdRkG/bMrB9SsiVcVhvVQe4nX9hK501j2Q
         /CrL65/riT6Z5MqCOkvimq+NNMsVrRxAKdhPtTsYHKhICYJqkizHiCf4rYJr68D2QD3K
         /mfg==
X-Forwarded-Encrypted: i=1; AKwUvBzxt/8R6k9JY3i+Acx55gvwjcJ2NvidSnres5bd5YYzFBHrLVONR/bBkpjoNA6T9TuxuTFaUmJjDc3AZ8uUlg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKjfy2sMPHQTS1zNnvVUs6ML4l8k3/kF3H9uKX4gLoClP1mPTiJ
	lpX0tp396BUvCU4OvMqIBGNGTgm4wKW85Pw6au9+wjMaZMd1oX4yYuki
X-Gm-Gg: AYBFou0tHdx5MBEiEfbRiBYngZVjBwXhIEIFaS3JrHDL+nFVjbBFLyAbtfHYnhWxFz4
	d18LlYM1Y7fAjz++p5jkrdfirh6j/sXpijRNqeGeNW9GwBGdWX6UHNuEpOWcKMnhk77agNJpg0s
	o7gOxR3uT9U2TqKsgwYQ0r1qCmSu5SKgOl1aR5q11xDVxHT+u0raezGD10K8bzjac3DqJzHNz/f
	Y9cytS2fPtLTRwDaluynnVuOTIjf9XWX1fHTJQOjhaGVARfWTqiOCsomFXebk7HJFVev80541lE
	x1/cdqeJj4rH1Vjmwt+PToh5KpHccbL9pcEy6vRP+njduv7Ku4TxawBF13/WMNwaK7uSOttaZuG
	X68ptS99hIywdDa1AGHXrEN1sJPUB2p9DoCtnuhpRxHIjN7+5KnsmbHycEhGMqjne9c6Jn/N9h+
	xpBBpm6fp5BLafGR34Ujdb2MlEXX/gVaBPR4BAmz3m2OOw0UsuqYN77uIAwQETe7KWsOSYC8e28
	fLq4jSw5jnG/ixiTjh54l4Mj9Mfng5kqHznPDBdgJ51zHrfi2QM8DKcTzYk4LmmTgX95wOWwQ7p
	ZwQ=
X-Received: by 2002:a05:6000:184f:b0:487:fa3:7630 with SMTP id ffacd0b85a97d-4887acd8844mr13892557f8f.6.1790510579294;
        Sun, 27 Sep 2026 05:02:59 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B89A9009A7C72AB6C68D3F9.dsl.pool.telekom.hu. [2001:4c4e:1b89:a900:9a7c:72ab:6c68:d3f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4887a74538asm19548417f8f.34.2026.09.27.05.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Sep 2026 05:02:58 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v16 6/6] usb: dwc3: rockchip: fix USB-C reconnect in gadget mode
Date: Sun, 27 Sep 2026 14:02:47 +0200
Message-ID: <20260927120247.9807-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-6-126a2e9133c3@collabora.com>
References: <20260924-b4-rockchip-dwc3-rockchip-glue-v16-0-126a2e9133c3@collabora.com> <20260924-b4-rockchip-dwc3-rockchip-glue-v16-6-126a2e9133c3@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260927_130300_921171_1B1A9EC4 
X-CRM114-Status: GOOD (  15.10  )
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

Hi Sebastian,

I tested gadget mode on the Orange Pi 5 Plus with the same v16
kernel as in my reply to the cover letter. The board was an ACM
gadget (configfs) on fc000000.usb, with the Type-C port set to
port_type=sink for the test, connected with a USB-C to USB-C cable
to a USB4 port of an x86 host (Ubuntu 24.04, kernel
7.0.0-30-generic).

dwc3 forbids runtime PM by default, and with power/control left at
"on" the controller never suspends, so the case from the commit
message does not come up. For the test I set power/control to
"auto", unplugged the cable, waited until runtime_status was
"suspended" (about 6 s after the unplug; autosuspend_delay_ms is
5000), then plugged it back in. I did this 12 times, 2 of them with
the connector flipped. Each time the controller resumed and the
host enumerated the gadget again at SuperSpeed; where my script
timed it, the UDC was "configured" 0.9-1.5 s after the Type-C
partner appeared. Apart from the message mentioned below, neither
the board nor the host logged USB, Type-C or PHY warnings or errors.

On sashiko's question about the early return [1]: I have ftrace
output for 6 of the 12 cycles (the trace of the second run was
lost). usb_udc_vbus_handler() was called 12 times, once on each
unplug and once on each plug, always from dwc3_rockchip_set_role()
and never from dwc3_usb3_phy_notify(). The PHY notifier ran only
inside the runtime suspend and resume, twice each time, never while
the controller was suspended. In each PRE_RESET
pm_runtime_get_if_active() took no reference and the VBUS call was
not reached, so the early return does happen. On each plug the
resume was started by dwc3_gadget_pullup() from
usb_gadget_connect_locked(), after the VBUS update from the
pre_set_role hook, and the gadget reconnected.
About 50 us later a second resume request came from another worker;
from the code this looks like the pm_runtime_get_sync() in
__dwc3_set_mode(). I did not trace that function, so I cannot say
whether it alone would reconnect the gadget without this patch.

Not tested: the board without this patch, data transfer (only
enumeration), sashiko's other three points, system suspend, and a
host with a dual-role port. On every unplug dwc3 logs "request ...
was not queued to ep1in", also with runtime PM forbidden; I did not
look into it.

In one of the 12 cycles my script first marked a failure: the
board's Ethernet link dropped while I handled the cables, and the
script checks the host over ssh. The host's kernel log shows the
gadget enumerated normally in that cycle.

An LLM assistant wrote the test script, analysed the logs and the
ftrace output and drafted this mail. I ran the test on the board
and did the cable pulls.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

[1] https://lore.kernel.org/all/20260924174014.366B21F000FF@smtp.kernel.org/

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
