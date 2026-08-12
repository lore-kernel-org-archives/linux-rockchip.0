Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24FCC5B572
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 12:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7E4eQ0bHFbioH/F6OkhNJZMZ64yjpAw2kEYc0KPEJg=; b=1WXZgYoTlkpHoj
	C+g/WTnshOmEiCmclVStHZ9LJWK4UtkV5A+ijeDI+zCsEy2/OWTx1rk592ZLQPanFYbFCarB3OfBX
	jWe7YWggpINdCOYdUZYPPnatphLxGz7irzCAs/WXwCxv3bwTn1G6FiX8j60A+BUdy7uKD6as//mT7
	IsGVaiMnlU03aG4iMNdacTjkNuYs78/miBknLJcpZh7BLz877kapJkg4PQ2YuqJnOvxsd0xrVvCPl
	jHQ7peVTxm4ZlJXL9y/YrhMSrLSwzvmK42Qf+ZfA6uASdmnnaYKxhnwSalLj40tND8KPxybYZO5Wg
	dUSAeoYac+PXHEUQhKTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8ON-0000000GDgf-0dLv;
	Wed, 12 Aug 2026 12:49:11 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu8OK-0000000GDf5-1TrL
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 12:49:09 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4956d1d9fb2so569085e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 05:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786538946; x=1787143746; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1u30g0AMKY150GAPKUik0QfLk+MxUjv8vUartSunHuE=;
        b=QugVR103ZuwqJ3VhPnSSvLu1RWSxK41R/8ZTbxqTYOU50a/63awxMCOMX2Idn6TAQW
         ewByymtMP+ofKkwm+NC4gzbNJdbhJBecA4LzdnSfISGFbHWM4AoHceJAgwmwSHC28Y8Y
         zDSsczeNLR4vJcyPBTHzoxwFa2ScMGjEqwIBkZ+hJOuX4COVgng2hGwfixsU/MBTaFEx
         RgkEL0LQmIAFw8w9cRLjlFYfOs8rFZhI+DiTAjpSyfmupyjsqvhkhqaT+JwhqMu+GRNG
         JF5oIQopfPFVvrt2rYhMZRF/Ru4/M0UxASY/t9t7SMkNTLz1jSEum9C1k6CFbfDLHrZ5
         Nk5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786538946; x=1787143746;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1u30g0AMKY150GAPKUik0QfLk+MxUjv8vUartSunHuE=;
        b=maz4A/qGNFo/jC+Clyb1QKw3Ql/R0cWf9JlJJ8O44VqY8iBiHLPsUBLtcNfeFAedSh
         UTNhx+AAj0ncsR8rU0lQNy7TBB1VYhPRpq5yO6MFTIDUW8gVSfdJErrReD6yfGkH9Pt+
         wM4wr1dRefPpKriONOpqQ6fN7OhJCIhg9xmR5E51AlKl7T3F5nfm8mtcSvnDCoZK+ZqZ
         xZV2qceRGi8Jjg2yVO6uMc/ZDo15l+kD6v+qxic+h9q2fvxAI2x/vs1IbO3FITDOaMEU
         BUgKY0jz/2tt8AuZQUHT34DXTh9pwEPEl6e3IgxLqWp0mLTldK6bY/hGSoE1/1oJi0Uz
         rMuA==
X-Forwarded-Encrypted: i=1; AHgh+RpIFU5AdySJ8nNqi0lVMOe3f+CSdJSjp7Nz7Q+AvvscrljJgZZXvm8wXi9NSRCHTuMvZUhzwfpPJtPN/iQyBA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxI3EVftDDENzx3Wf0fo8Eej1PoyC6J1vQdu5F9WI6mkdjm4I5q
	QVt+B4Vp9Uu3ugyfl8XCZpykRjcw8RnEvvKGTyX6jiudJJKJhWxxIYTf
X-Gm-Gg: AR+sD13L+kh4HOjCXzzq7b5J/bdKgH6b92lVTOm3ZyJgQsS7IuXn/O56RNl2ai5OBDn
	dZ9D5z6HogSSiG51w2r+cCEgf1RO6m5mZz5wCkWYpQCOQ2LX40eSsiBnXDp/MkPjCCAxCKiF25U
	DFua9AoYocRrCBK10m9/NSlcDntDyo5VeXG3q09XN6WUzOPRZyQEbuZEJlwX5HaNwwm5xGtJrcJ
	1ocjkpHkEhVZhS878ftPlY6k0Fj3YWD7uSRQNCg+OjSBqNnwAW37LV0fE1HGO+MIvw3wWnfBS5n
	x9E69T03PEQtX8QW8gMho5NMTrn5TqJxUh1F1EzEYP7feDRnn+OuwgJ1ya5Nc5RQ6TgVzYpLhIv
	OieQliokevw9u01DNowVtRl1oTjAJ5odPxsBMOA5kDsKbH8QVQPwW1tE8+tBOVOR6RHRsx1iyCp
	AbtEL6tqWQ7jAw9hbLCZe/EHUF8RhmoX04XWo2RtW/Gq6CI1UFwlgwmg/HojUilzcpjbxRgYDjY
	Y4rTt7z9XLm4Qpb5wqMscLVNAFFd8kzErCcZ71cZUYh3rJuOnaWPRTUQa3jxsj0hb/r
X-Received: by 2002:a05:600c:3b17:b0:495:71ff:598d with SMTP id 5b1f17b1804b1-4997c0ca479mr29063825e9.1.1786538946151;
        Wed, 12 Aug 2026 05:49:06 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B84A6001A34C2DD5D9E0419.dsl.pool.telekom.hu. [2001:4c4e:1b84:a600:1a34:c2dd:5d9e:419])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48150d4e260sm7247226f8f.17.2026.08.12.05.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 05:49:05 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>,
	tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: Igor Paunovic <royalnet026@gmail.com>,
	alchark@flipper.net,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 08/10] accel/rocket: add RK3576 NPU (RKNN) support
Date: Wed, 12 Aug 2026 14:48:47 +0200
Message-ID: <20260812124850.6597-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260812094106.1391698-9-gahing@gahingwoo.com>
References: <20260812094106.1391698-1-gahing@gahingwoo.com> <20260812094106.1391698-9-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_054908_537626_12FEAB63 
X-CRM114-Status: GOOD (  15.97  )
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

Two things here, one of which I think has to be fixed before this
lands.

The first is a comment that outlived its subject. This patch adds the
following just above the PC_TASK_CON block:

  /*
   * RK3576 arms the same DPU completion as RK3588, but the interrupt
   * never reaches the GIC. The completion itself is visible in
   * INTERRUPT_RAW_STATUS, so sample that instead. The tick cap bounds
   * jobs that never raise it at all, which is the same open problem as
   * the wrong inference results.
   */

That is the v6 comment for the poll. It states the premise your cover
letter withdraws, it describes machinery this version deletes, and it
has no code under it - the next line opens the second comment block.
Left in, the driver would carry a claim that contradicts both the
commit introducing it and the register description two paragraphs
below it.

The second is placement rather than correctness. This patch also
factors the completion tail out of rocket_job_handle_irq() into
rocket_job_next_locked(). I read that as behaviour-neutral on RK3588 -
the return that used to leave handle_irq() now leaves the helper, and
scoped_guard drops the lock either way - and the numbers I posted on
1/10 bear it out. But it restructures the shared completion path in a
patch whose subject is adding RK3576, which puts a bisect in the wrong
place if it ever turns out not to be neutral. It would sit more
naturally in 1/10, which already touches that function, or in a patch
of its own.

Both of the things I raised on v6 are right in this version. The power
domain list is attached before anything that would have to be unwound,
and the comment saying why a plain return is correct there is a good
addition. clks[] grows in the same patch that adds the two names.

I also went looking for an ARRAY_SIZE(core->clks) or
ARRAY_SIZE(core->resets) left behind, since that would walk six entries
on a four-clock RK3588. All six are converted in 7/10, including the
two in rocket_drv.c's runtime PM callbacks, which are the easiest pair
to miss.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
