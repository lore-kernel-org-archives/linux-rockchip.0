Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45F42C5B572
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 07:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VovtueAHaZp7Q7kR0IMOZxPcw+STTk/E1PF7x7DdfSI=; b=JLrVF6nLaB4zWl
	9nPfbhwTdMgCVTNubGXRt4rSo5vR5yTMZfI6cblADrH5fo9rlt0F3d1LbuxfvWzBAQd0yGt/5+eH5
	R05RBvU1YdQvpIWwmM7sGUHY01vTPthWiVefLBUCYG2FwZUoeHWa13JZVXwgkJNDaZbBLQmXt0X2S
	1fo3qmeSH+VNB9Rv+tz0zVWoY0ZniQtR9et7OB1/hoy6ZoxG6YzqvKSwO03k360mdHs9L6UPXm/Sd
	VaxY+ArxlBqBDztrrL8a5F+yKZ7IJxWtlG+4fMnxZaJ4cruIC/nIPkmOf4Evyr3lObqosinQpWaAn
	jbLa1ZE8fiTLlbkJbkvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaq9-00000009D5f-2Ytu;
	Wed, 19 Aug 2026 07:36:01 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaq1-00000009D2H-0W55
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 07:35:57 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4994d41ceb9so763535e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 00:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787124951; x=1787729751; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EEZZ7jCpPzgYTO9oedvXx8uW0QuKMwnxpLd54iUvN+g=;
        b=sOoEtqz9FydVu3obowpKf2q6ABnnSaStxifqw1LXMObAFHo8/hvl48zRK1dI7886Kc
         hBxUAzD1yUnpxDCpMoQ+8ibzq1sh6HStcxd7dlcxebQkUmQk6xdrZB0N9jjV/RCQFNtx
         //GsuCYENVoRn3UKWnXlGBinz7qJc9gHJDNuDsOz8dMwYSfEUVmRS3hzSelMic+w6Vpg
         mYO2ZzkCK4PacjbOPRqlZ5Zx5vfUrgbpeh2f75/UFbv0xprV78UT7Wiq4zNsKvQafhqw
         i/WzoukcqY1PGTRWBDbmUyz2xyps3rFdAbFW4bV6voEFoAsjsamzZdKqoqZwqowKl8h4
         hZwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787124951; x=1787729751;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EEZZ7jCpPzgYTO9oedvXx8uW0QuKMwnxpLd54iUvN+g=;
        b=sWuw+n1BiqDDoY6AqEN8/vhsGGtEmhiIuN89B/EhyG2fnQ5cIOLgQMOufrRGM4TiIk
         yr6y+MDO0xJ0ENgTBcAXs7ZICicmx7dQbz/DO7UhRbI60G03VK6vE9MiNXUbRCpibMhD
         jJiUUCEWc0letsoCPGx1uHrq8k3mQB4k7z9EIHtxUyqX51bGVTxWedgB+GDZRDOSYZoe
         hk8cS0SnnVlxbJQGOy+541UZzLmmnZfc/qbgxmz45duFYCJEwlVGHMf9xucof57+8eXq
         7KZQ0nYeWZCO/Ka832jBHRRCtt7iRiPHOq7TfDIZbR5Ib5L6J/3XeL8bmqo0w4Yavupd
         sI1w==
X-Forwarded-Encrypted: i=1; AHgh+RoI4T4bPE2jn7sZpDeJz4bPYEpyohUbrbk8aBD2v/wWJSRx9DvuWaVX62nIr3hBl5cjFOUQVewkyQSLDX27tQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsHTfIJ8b3iULKX+PzAFKw7zgd0gFsDsYgeqPd+AKdC5h0xCPB
	6gsxr8ZbFxIqxpS33KBdNBmU+JEjgmtXKFDw8rAA2RT5qfID27GrwL5/
X-Gm-Gg: AR+sD10vGjEilsJQqU251xFavyollZs19ZY5B3ejGz6RdePvAgGjKXe9WXobdKuK8vh
	46IQXeZl3iOnqBogeQ8ASPGegov+FSFZnnOupUNs8aqwrihd4LRL+n6xRR6zdmGKBtMKQ8uq05k
	FQZ72tA9t1IDHCritlIDB7xDQM6k/q9tt4cOrkAA7tHxz8jc6KD8wXYjMwYfp5DhZcvrGrnnmvk
	nMMAGutJeQ4RUaDZxJ5xQWEsYMHFI7SADigz4mUYm2sdZLhxcau7OP/mzU8pxSM8iQ1rtFNfqUy
	aEk3zGI/m+QubLDbmZjBoJds7RZnNjnGifF8N8SLfpgJbaI8EDmIYNz9Qc8neRw6RAerFAvLWX8
	1M4Lg4BGj2jFNUguNVlsytN/qC9/TmT6UXLb2XI9AqS/uEz0JAJOzhEWCGG9zL9v8Z604U8BqFG
	x0qVHqflUl6CyztBRG3QLcEm8d1PPLr1eUE1kMuh2kGh2TFrm3/9ljPNukXOkPK9hPpqxdaAOlV
	F4mW+OULlCiBkczDAANVOIFOTVPEBid3UDUb98qh8kikaGt9Fe6qfIw9x1l+rJOHs8e5Q==
X-Received: by 2002:a05:600c:6206:b0:495:71ff:598d with SMTP id 5b1f17b1804b1-499aa1997d8mr24560625e9.1.1787124950666;
        Wed, 19 Aug 2026 00:35:50 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B92960062A31D8DDD4EA0DC.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:62a3:1d8d:dd4e:a0dc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0dd3c9sm40653805e9.12.2026.08.19.00.35.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 00:35:50 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 02/12] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Wed, 19 Aug 2026 09:35:27 +0200
Message-ID: <20260819073530.6087-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260819072420.1780708-1-gahing@gahingwoo.com>
References: <20260817113603.1436067-1-gahing@gahingwoo.com> <20260817113603.1436067-3-gahing@gahingwoo.com> <20260819013609.1613919-1-gahing@gahingwoo.com> <20260819065146.5904-1-royalnet026@gmail.com> <20260819072420.1780708-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_003553_238812_9CAD5688 
X-CRM114-Status: GOOD (  13.14  )
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

Hi Jiaxing,

The three-run design with the deterministic third arm is exactly the
de-confounding you promised, and declaring the fourth run void instead
of letting it pad the table is the kind of honesty that makes the rest
easy to trust. Glad the third bullet closed on silicon - one line, as
you say - and thank you for the Reported-by.

Meanwhile the differential finished here. The base build existed as a
pair with the patched one from the start, so this is the same machine,
same morning, same session.

Base kernel: identical tree and config, same JOB_TIMEOUT_MS=2 local
patch, with 1/12 and 2/12 not applied. Same protocol, two passes per
kernel at console_loglevel 8 and 4:

              loglevel 8   loglevel 4   recovery   oracle
  with 1+2/12     12            8        all clean  48/48 both passes
  without         12           13        all clean  48/48 both passes

Zero MMU_DTE_ADDR, zero "Error during raw reset", zero lockdep or
atomic-sleep hits on either kernel; the domain dropped and all three
cores returned to runtime-suspended between rounds on both.

Your distinction between the two tests deserves my numbers next to it:
all 45 of my resets hit a healthy block crossing a 2 ms timeout, and
the domain dropped every single time, on both kernels. Whether a
genuinely hung block would keep an RK3588 domain up the way your
failing runs stay up on RK3576, this protocol cannot say - I do not
yet know how to manufacture a real hang deliberately. So the honest
summary of that difference: the step your failing runs are missing
simply never goes missing here under my conditions, and I cannot
reproduce yours.

The race itself did not manifest in the 45 resets on either kernel.
Timeouts are easy to induce; a completion racing the reset inside a
microseconds-wide window is not, so the justification for the pair
remains the source analysis. The tag attests what was actually tested:
recovery and absence of regressions on the patched kernel, against a
differential base.

For 1/12 my v7 Tested-by carries to the v8 shape as re-run here. For
2/12:

Tested-by: Igor Paunovic <royalnet026@gmail.com> # RK3588, three cores,
                                                 # induced reset, differential
                                                 # base, JOB_TIMEOUT_MS=2

I understand the v9 sync patch will carry the interrupt mask and so
change shape; the harness here is standing, so say the word when v9 is
posted and I will re-run the protocol on it as-is.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
