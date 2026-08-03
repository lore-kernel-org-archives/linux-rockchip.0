Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1E08C55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 14:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7pX3yIdxYm1GQWYQSDuDFaercvKyDRsijFhvkZD3wg=; b=J2YkkwHZj47T4V
	qj45csFeMXKCSqsIFofjlZS54wnflzZeYAdUS9l3FluqY4Oe5F6WUq8fY0pNfbwS0yUBKgNnAr5nL
	F2ZZdy56ZTxKi0nwg5V18tFzIMcEJvS9iiLmpd/I1SDuVgFaLpP+Pg6ENji+/h/YZ3SQnFahKhRyH
	L1CJsKrGsWuE9cISscYtp5LCQPnN/6LfMTQiGKT0fqtS57ItscUHrUGbwZcEnpwN0nCh4QahCT4be
	R92kEE5uXx12GKSBoUmQFiwsIwazKmkJMQo50pZT+0OOM3vdKwTunFlRgmgTTVW27rnIuAtNc0dW6
	ZZTkRmH2VXv3vATRxH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtNG-0000000HIhT-3Ngb;
	Mon, 03 Aug 2026 14:10:38 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtNE-0000000HIgZ-0oDF
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 14:10:37 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-455ca262ccbso2107549fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 07:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785766234; x=1786371034; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Dkd3Vdy/c11kzXWk975o6VbE77tcIPNyghUoE1Wo9PI=;
        b=Rxookr7ixo4DALpuHjpc2vRcn6LMFkz18g/y1egC/S6VMjBKS/4tR895G0ISpo1T3x
         MZ1d2PxESnM5ZehWYm+SeriF3ZoB1veQ3CoTOFtt1uZxYPjrBY3oCwiajfgKKvvd94Q5
         nYiwwMvW4lANHURwNlUyu3iF00xDIEcxUkQfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785766234; x=1786371034;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Dkd3Vdy/c11kzXWk975o6VbE77tcIPNyghUoE1Wo9PI=;
        b=T4sem9GLO0Fug4nammjwY1rV/PtrgjBqat9oneWEGWQ4E4as9Spdm1BvHm1J34jX/3
         dwy2A/rB3bLYO5pMLpgQreYg3KYMxGLtSE/k6TsnETPFmDrl+2BNO24fAx/DNQkjxjzl
         RwnwTXHfNAGvRW4hcPbIxtNU/vYrRzQWiKyBZO3/ELoAqtvqosd9jtC9c8c4318r78Ki
         qPe1lbVp34BvSWGpWeVFEgKEp7+2GO1HK/giVQFKRhCPG5eMtGLQ4112PcJ2DPSv3QPv
         KcWS8trj70pJOAbkoPWv5IATaiqluFAeu41OMWoLqdfIB/s2iDj5HQX2v4+X1zCcy1Ho
         WZNQ==
X-Forwarded-Encrypted: i=1; AHgh+RqxNUbakNMRnhuCcDlY53/zOjoVj/4E5Mebug6l5EyCDpAHT7fz/W6Qo8re8qTL/ozVq28oGPVqnEfgByCC7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjFsCFXp6tSygzYlE13i/09V9CnoOjIZDH0xEgNxLdL9tL/hxO
	dHagmjNbkg3FgudZnN9h9qQcSkyqVEYzBO00z8e2RAH4GYEWmkOuawB/BEOi9YWpWA==
X-Gm-Gg: AR+sD10E+Ca7CFJ4VRbnGmZ1NgoVjh+sZKV0oYwH5rui1aOltPQFKMUR6FbMB/kSeM/
	kxXfNgo5JVKIsDinwXk/vAygXfpaw5Mwq08VjmRAHAZpnKC/Geg19/0oG59cgGTjL969pAe3Pik
	x2GLDBtwOOnT+ilMw8mXodboL260N4SUt8SppLN6Zp/hN65uOye0TXRJVG4WdH0B/R9dQ0ecTBh
	8F1A7gGDfkc3T+fgBdk5LT9JuH/VmM6ENahUFO1EWn5OPukPaCR9JGWTXfNGLWhCxoZHadIToBR
	WfHLSrArOChXYU8cu5ABO2tOni2F6tg4e0yu4KOtRl51J2Gxwwi6IKD1wEnoMivSj8zBr+2K+1c
	XyezHTaShNwVg+k3j18xysI4VaDL1KvjFviPbxxf81g68uS+oBe8h69ce8CLkxBf4K2Ne1jBzNy
	GRP0Usa0WUpAm2gW+frDVHwJsp4MiWRWQjol1m0Zvtdw/6jr4paCCVK5A=
X-Received: by 2002:a05:6820:c3d5:b0:6a3:7895:7f30 with SMTP id 006d021491bc7-6ae4358f82cmr10811016eaf.29.1785766234232;
        Mon, 03 Aug 2026 07:10:34 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6ae3a0c9162sm6526695eaf.11.2026.08.03.07.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 07:10:33 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Jonas Karlman <jonas@kwiboo.se>,
	Simon Glass <sjg@chromium.org>,
	Fabio Estevam <festevam@nabladev.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] pinctrl: rockchip: Two fixes for latent driver bugs
Date: Mon,  3 Aug 2026 08:10:22 -0600
Message-ID: <20260803141028.710706-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_071036_228591_C785F942 
X-CRM114-Status: GOOD (  10.36  )
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

This series contains two small fixes for pre-existing issues in the
Rockchip pinctrl driver, found by the sashiko AI review of my RV1106
series.

The first makes the SoC-data calculation safe when the probe runs
more than once due to a probe deferral: the pin count currently
accumulates across runs, shifting every bank's pin base. The second
aligns the RV1103B drive-type override in the get path with the set
path, which restricts it to bank 2.

The first fix is tested on a Luckfox Pico Mini B by forcing the
probe to defer once: without the fix the second probe doubles the
pin count and no GPIO bank comes up, while with it the values are
recalculated identically and all banks work. The second is a
behavioural no-op until drive-strength decoding is added to the get
path, so it is verified by inspection against the set path.


Simon Glass (2):
  pinctrl: rockchip: Reset the pin count when recalculating SoC data
  pinctrl: rockchip: Restrict the RV1103B 2-bit drive type to bank 2

 drivers/pinctrl/pinctrl-rockchip.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

---
base-commit: fc02acf6ac0ccde0c805c2daa9148683cdd01ba8
branch: rkpinfix

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
