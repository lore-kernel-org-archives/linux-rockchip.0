Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15E5CFF885C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 09:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zZfwaSzkP9BVMUQnTLunCN2eCDcRgxvTIC9Bvfn4DiI=; b=n966WSy/DpsseR
	Zq0rRHA2oaqkwWub3eiO1uJpVVnac+RtVdmPfAqa9plxrHhAPskZMdftxiDCN9n3+DH8VeJr71/0U
	pVinUWjKyFFFeU+awVw+VljHmz3KQIMhk8STgdgbmwklXVVhTUMMaYqEbIL0JN2rOGtN9JD2Nf1Mj
	XIBEgtkRcZSRMNWyT6Af9bddg+trhyAsMO/c3h0HkFdC24aEQ8e/RferW4XAaq/yV/0Val5LAigcJ
	+/SI0oW5Ow/Kcg0HkjRbHpYalSfWVvesWnjlm6cuMeIbOyMxHKHVl52WaQra2gKOdThyHwCdHdBPP
	jN1PuCOceqgNPHD5AtNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLH-0000000EHdv-0Nwm;
	Sat, 25 Apr 2026 09:30:27 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLE-0000000EHbf-2NBB
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 09:30:25 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4893940bb5eso42288745e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 02:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777109422; x=1777714222; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EI1lP6Fl/fJugk9EU1kz7AMxap4YeYzlUoYzl4zXJxs=;
        b=TQCmU+PSRz5h97O65ZAHIBfmMFjYtzKhPtkqsnV/ArBWKQTk3tAjb1+wF8xwu17G2Q
         b18gGs9J0OkXT+adz6QW9zSMaEYn4r7AaE4ojYYBDeUMZWdGhiYdYf7hPhV/u4GdrMcc
         O1dMo+PDoxSSGumVYG1AV12wNBiAp+wU9uK0eK975EJAcyYaA1Yl2bL00Zi7vw2a3FDb
         +sA/ou4eTfQCkti2S7CEUax4mA2xKAUUHym3VBSf0OASILo9c7JSTwe7J2RRpBS4qm6K
         d397pVTnvLWcXC7wIuKjIdjiPQ1YmritKxZa6+W0tH7twHSV3Al3F+r3//e5o1Gd0E5D
         UYvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777109422; x=1777714222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EI1lP6Fl/fJugk9EU1kz7AMxap4YeYzlUoYzl4zXJxs=;
        b=Yv6bb53QQeH6y8wu8QRCJrvQKnIBYWtul27yAkPJAf59xOp3UI161EGgg5YCl6YpIq
         1KbDNQh8ZYfxB1iUHOFQwOPWOWyTopxYj9IcKT7uYVhZDLhV2j7swlezu3kcRxuTH30p
         nk0aQgn4Yto1Cl+TrBdD4oFocl/GcZ+X8yW5viwYxkcY/qNYuxgwR9+1U02jnC0QzfNG
         0AeNn7qHOqhtNdeL92CWbWqVPV2PjDD7k1GgOYZ1PAii8Shux/87/vFKmx7I/eKQoegd
         Qwq6bKizj7xGy0Rnx7cAr2l4ekV3M8QdoKt79BcAuqjVdGRwAAjCqeKPkx8n9ShicpH0
         GGSg==
X-Forwarded-Encrypted: i=1; AFNElJ/fUD/LHW2oNNJ7H30B9n9b3bzZpf5zBJOgVdX/q0etD86hZE4VesWPRKKtM/09HuEW1X43Osh+X2VNYm8ESw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyyyyuSpz751tODKljtUFCmA10+0/8SzAaYNgNWrXUNzqMorOLk
	niJ1jmcDKuHXJ0zUCibmWR9qKwy75Abo4prtavJreK2r2lcnGVMNKY4a
X-Gm-Gg: AeBDiesgokBN34Ddy6McsQ0CpemdvYSfg9jnIa8xmW3CNsqTJ0/Yo7RLeuMhmij0krr
	+PRYMkYko36DPwMN/uunB+HJiV9loeF0rZmIFC3nVQ16HVkk8TO71L7aCY6+ZYkdKdpJq3lAqRT
	flQEGLE/eQuO+rmfEhodd35levZpedfTO/u9SR1MOaojfUb/MpFmJLHkqkXC6LTFAjIFuw2adjT
	qfuPgbFilLl0B0VEsfIQFsV6Tu6lhpak5R1R5A1BZlWuLPgBgNNxuM/m9KXUW65oDNROHWcQ9AY
	zkxIo3zm6UDNm4Nw+sgvm6BK8QK67aC+A2Pc8kWN2lYPT++Ntt1nKqLkaovkaWI+IKYGosUh4vY
	GWlGctSTbtX/vUC4kGtYqolAuBq/I11LhmZ3ELUPX6cpnmNGrJOipMfpLItPSHUW/khOlulYjMe
	zZb61I/xW6fJuedSy9JvhKFjO+WKRiUWF+f/MRuYtw1ypEjP9g7i4P+I1zjl3KdvE6vt7dxVOad
	SV5b5I+ahBgE1g=
X-Received: by 2002:a05:600c:8b8c:b0:489:1d74:56d with SMTP id 5b1f17b1804b1-4891d7406famr395829745e9.29.1777109422135;
        Sat, 25 Apr 2026 02:30:22 -0700 (PDT)
Received: from localhost.localdomain (ns31537009.ip-141-94-163.eu. [141.94.163.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fb7b2716sm204422615e9.30.2026.04.25.02.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 02:30:21 -0700 (PDT)
From: John Madieu <john.madieu@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: jon.lin@rock-chips.com,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Madieu <john.madieu@gmail.com>
Subject: [PATCH 0/3] spi: rockchip: ISR fix and minor cleanups
Date: Sat, 25 Apr 2026 09:29:33 +0000
Message-Id: <20260425092936.2590132-1-john.madieu@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_023024_601890_75156B61 
X-CRM114-Status: UNSURE (   8.91  )
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

Hi all,
 
This series fixes one real bug in the Rockchip SPI driver and tidies up
two unrelated cosmetic issues spotted while looking at the same area.
The patches are independent and could be applied in any order; they are
ordered here by decreasing severity.

John Madieu (3):
  spi: rockchip: Read ISR, not IMR, to detect cs-inactive IRQ
  spi: rockchip: Drop unused and broken CR0 macros
  spi: rockchip: Drop dead zero-check on fifo_len

 drivers/spi/spi-rockchip.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
