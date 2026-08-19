Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E82BDC5DF86
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 10:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Viq0H9dzm+Wn/EOzNf3vS9TeIo0speXZYUYFRxT9DPU=; b=v2aagNYiIHWmHy
	G58W+edZYjZFn+GERfCVlgU6qo8XQDVr0S5q4Gsa7ZQLHbczTFsbVLPe+GmWvnJUbKLCeeQ1WIqp5
	MuEyRXPLnL+pIMXmWb4Vz30QJnzZBWn79CamvSeKkykO7E0DpPgnEenL2FA0pGXs1dJitBC1DJFXw
	epeTU0RNXW9qhGXBvx04L2ywOfCLxrSp8wWlhOyg9LhCM0sxeZ+Bh7MacPTBDHjg86CaEqhH7rFaz
	NC+0ShEUw5Gln7UXoBiH/SkfIjXh8CjcK0Cu9jpkIB4EToG70bkf/uJns4aXRh15Bo7TLcyZQeAX8
	015S1rHRKTq4cc2XQi1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwd8n-00000009TNn-3aMY;
	Wed, 19 Aug 2026 10:03:25 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwd8k-00000009TMD-48pM
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 10:03:24 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-4816084e128so112222f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 03:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787133801; x=1787738601; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Ww10+OJo0719/xus/YZCQo06xfKOWmvT6qT+Uurk6l4=;
        b=W0RRp3VWWoKK2UQIe4Przelq8VWBf5nJ43LyisjaYss9HwzHKkV7Sn3gZhk3rqMGD0
         sTQn0to7mVwkUEo4IB0QiQNQjAQ1uPGdBW3fZeGFifzm5PrT7+nbH/lNPXaVXHe59j2n
         DVEO7ujs/riIdnT5Fg4Xw2A9yMawD/lM8k17xlbQw1iwdHu0a9mArnoV5bgcYUXsgv0a
         iwIRF5dJ+xdmfucke/JGONngVN9ytfW0SZU7MPBPdOyfoa33Oqkld4GtSHOP2du06+Xb
         MPVKBOq6I6es8SredLcqSnPdVGfZR1lBhPWil7+jtmSwZTvMqu7Dk4BSge3HTV7mkHlj
         /yNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787133801; x=1787738601;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ww10+OJo0719/xus/YZCQo06xfKOWmvT6qT+Uurk6l4=;
        b=nOVkL4g5FYIDichOhLyfm7efDcS6EOD2da96TMSxgnfCh5HTwVQBIZGZOU+CovYjmx
         +7aH/awmCPf6nSPgyhFvbktU0niQTEo6pL3A/lqYMn1GKzd2jWA0ASwr4+N7hrcLQzu8
         81JbvMElNZahFsduSFZEgbyQLgOXibl2rJUCEXPePSHqSLfcO3Y7/ytkYU78MS+KtQ/N
         OCuhUQRztz/OcHGUT+pTOGvQFfJJfYlNYW0og7XDOlMjZAhr9L0shgNnDwdYbZ72K21w
         IEeBK2dqOVYy+e78XD5Et4h9AsrewCWgvkEPIWKJE+2UGSjLtB2fIYjlEwRrQCT3W3WJ
         zvZQ==
X-Forwarded-Encrypted: i=1; AHgh+Roj/tCdXXvRotmlFGmQp1jU1jv7EUsHt2wyK3WX6umWUDIc489smI6BjUrIgSXHQmwOzIkAnVjx01KbMfF0sw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0qcDle/J03QPEYnTm/b4t3d2986MQoiyjfh27x6wY1CGmgNV9
	J1OUIbp+YMPMnqPTAuA37QKEaZAlTAA+1s4z9XYKr3fHmFIDi5fzlmt7
X-Gm-Gg: AR+sD10jjcYBvxZcfjWraMVCDH3HHvHZdwhKnsrArfi6vVoCK2RwEZ/GIbNA0I4DW9Z
	bgxPkoLEw8UMGwYD9HbggBwj1gqxIBRTTlEDQySi2VpBPETTHBOLbQNsHUX293JO9FWe09YF8oM
	wlfMpt8W+sjs8Dl2urpcflbUFqwu3Wzt+rVKEZDUTUI0rryfy05h6xi4FgwBDsd1j8UbbP0Vq7B
	xHm3E3pPnphmbmmquxGfXKapahKFUIbDsuSpDbX4/bXvTiaz1jxavLdSwNb390ruowSUzIpVW8R
	q9gbHMeSAoDDQQRGBSEffyb9y7wzb2trW9Fii4kmP9eQqrxQ2pYK3VckxS7HQEQnA2oOu5w4o+l
	Qpe/GxnZ+9PTFXts/8ckqI3NLWldwQgLs1R5llVpcrOPgBomBC2354d9qowNvMVkYcTvNekF4J2
	5P+CxRyJPgtZdql6QEO/CXMTtyqfauyMR9g3RFCK4/zoWFHgevuYruWEWfu4c4b2Wub5HxwSyxI
	8Snwb2rnGVqNAfwmJYAd1CxYD9sCCyuoGeMfm3UdOvkRnQRZ3yfxOKDr9lOrbdBWxmWmQ==
X-Received: by 2002:a05:6000:385:b0:482:a902:bfb5 with SMTP id ffacd0b85a97d-482b1e07e79mr2759906f8f.0.1787133800795;
        Wed, 19 Aug 2026 03:03:20 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B92960062A31D8DDD4EA0DC.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:62a3:1d8d:dd4e:a0dc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482b1441748sm4935688f8f.8.2026.08.19.03.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 03:03:20 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: support <support@armdesigner.com>
Subject: Re: [PATCH v2] drm/rockchip: vop2: Scale the AXI clock to the bandwidth the mode needs
Date: Wed, 19 Aug 2026 12:02:47 +0200
Message-ID: <20260819100249.7945-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <2026081916331211222713@armdesigner.com>
References: <20260813154501.21332-1-royalnet026@gmail.com> <2026081916331211222713@armdesigner.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_030323_044226_8B4559AE 
X-CRM114-Status: GOOD (  13.38  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Simona Vetter <simona@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, linux-kernel <linux-kernel@vger.kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Owen,

Thank you - and thank you for bringing this to the list. A fanless
RK3588J chassis at 60C ambient running dual HDMI plus DP is a far
stronger argument for scaling this clock than my bench ever was, and
the +3-5C junction delta at 750 MHz is exactly the number the
power/thermal side of this discussion was missing.

On your question - both, sequenced, because they answer different
questions:

- The BSP 6.1 48h soak first. That is your production reality and it
  needs no bring-up; what it buys is the real-world deployment
  evidence, and with your permission I will cite it in the v3 cover
  letter alongside the multi-CRTC tearing observation.

- The mainline clean-room run when your DTS bring-up is ready. v3 will
  be against drm-misc-next, and that run is the one I would attach
  your Tested-by to, so the tag attests the tree the patch actually
  targets. No rush on this one - if it lands during the v3 review
  cycle rather than before it, that is still perfect timing.

I will CC you on v3. It will state the FRL/ACLK relationship
explicitly (on my board the HDMI FRL path holds the clock at 750 MHz
independently, which is why the DP path was the one that exposed the
scaling gap), and it will pick one direction for commit_setup vs
commit_tail and defend it in the cover letter - the question to the
maintainers about a rockchip-wide hook pair is still open, and v3
cannot wait on it forever.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
