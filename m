Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D664C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 21:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3MOLQ/5wyMybR0ezFKZ+L7XqFaAsv0LRPvBsYXZb4E=; b=hzXlZk9T18/Fff
	aN7prJMCQ7nYUOr99lTBmurPdYDQ0NBR5Fyt35A9dPU0pcmgpjB0jyHDh1qOO/598hRQJaM0V7OBt
	y0znOC95oW6ZwLoXM2uiyiSEircOldjq3D+eZqSWBe3H3HmGrATPXnVT9G7wKwSKKbLM5Vi7IKK/0
	GLLvAP37eeZxWBz8Y0xO34z4h1IRT6CY6T0nxFVCw7UC/FxWog0au8UzOQQvmZQl/Y5alIBjMndZU
	IVeGXPSPaqYlL20xSyPirQs4NpIxLIXqswwfKKPfxSq7edk6ZsLbEWe4lSJQN9Ag7H7fMkHv3PSYR
	fL8kTg7SubOcmQvWAU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIgk-00000005oty-3D4m;
	Fri, 10 Jul 2026 21:23:14 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIgi-00000005ot0-3sOw
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 21:23:14 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cad1448ddcso10634595ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 14:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783718592; x=1784323392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dXLOLr+OICkYPnxLiSyxM595gWsgKFLmoYsaM3It1+g=;
        b=Xidv2dsJU7kiwTwG9VxSrvDCAxxTYMrPzuVsx7sCjczRIxAmNpL0sAWzC+nGE1y18E
         9V4tp896AAEZWVWgFt1D9e4hAYdgaJtS1DY4M+fQlJdorLKqsFlTiWWUZqU3GEwM77ET
         a9rN0pIUscluG72Dqu9EKX1YyUc6OyY9W8ePnQ7JUoPCCd4YqRrpgOoGudyli/2puT4a
         LkAJTWByCWms5Qzx2Kp4+dfbWQjqDlNAGxC/WYsS0ReX92/qfHeyjJauFuTSKbT/yPuU
         srXsViHBNC2MuDECFmnUQLhIODjJFVuDbiykwn/6qw0FzCTn1Unle4zq2uLcACznN+T5
         Ne0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783718592; x=1784323392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=dXLOLr+OICkYPnxLiSyxM595gWsgKFLmoYsaM3It1+g=;
        b=Ou4B93frB07uiHwedDPY6bV43nRVsThWp29BrvJ7AnDkg33tQ/z+VcRpCaWrItcxso
         OTEz0uUSDD6MJiqcRh9EOLrEgc+6+QkJk2i3KxO1wwMe+7PSh257lPY52Cti4BKChVuG
         QdrbNpWNS+IQNyUYLIFIgJ2FU+TENcQTAmzeE+cGY0klorv0B6fq4ocevxNAbvPGCC6N
         LsT7ujB8/Di5Nq/sn/xi7BMmVG/UsQtivOHmjRm58VLpdFboAVtPCRZRp5I1nlIBxv5H
         iCpLcCNmW/ODgp899ljq6HwFKyz6gFOrRdLqKVHopcTewtOKPtMRNHAd3yYl9j36NpUw
         FnAA==
X-Forwarded-Encrypted: i=1; AHgh+RoJKnxY3+C7aO62PdZo6evRdDnv6SwQwAjyLx8lVSZEoqEtjU+jDzWBHhnf2lJzZluj6l6sBiamYSOJbvPflw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb6rRAtxJNups/s6vPKsdomSZGHfs/r+QGlVLCkdmtDEQPC07t
	QSlzOdEma6Xr2HdKOv2MEO+39SGFBTTnA5EyAYgNCzsTdtRVuohY4P+W
X-Gm-Gg: AfdE7cmmaKyQF2PP3R0AH2QcCeXHVufEOHv9M4rlak3bZo7BFC9I5H2ZBb1167DPbQ4
	MYBoWGhSrd8Hp6hCqVCg/ZFbjA+foyIQ0wnb7LMjhz2mqkeBYqbA8tqHho9QK1R39Zhd+SKvnWN
	rLvaOI6BrXO0z6dw9gYbCEQpwEmXhw72CJahLpEBaipUcoLLvQQQY+zoHKh7SXue2phsaW6S3nV
	JA8vg2DxPR2Au967CWMy6Ga6khvjyuCEKTniQATgzBxT+5InMgHYnLI5FM4iCaG6saRyDYfuNgA
	SKVXELIkBtz1fjaCWFOduHijILYysnckmRVyrrlzD8yd61p512qsZ59eTimJpPQ4i3sk+p1gC9y
	0XB5qab6UDSxbCZiL4M6dEAX5BflU8tegV/Wx2i2WotNq7CSKKQzOICOBTBzUSnuAIoYkGqbaQ4
	N4GhEXhRoQ5yzTRp9dS80eMaob+TQ8SgCJweiR9jG0lwqikg2vhKtdm+FswgXaH0t2z7LHdbQ=
X-Received: by 2002:a17:902:e844:b0:2b7:975c:dacc with SMTP id d9443c01a7336-2ce9e795bfemr7461565ad.1.1783718592223;
        Fri, 10 Jul 2026 14:23:12 -0700 (PDT)
Received: from ubuntu-gnu-linux-24-04-3.hub ([2407:7000:af23:3e00:f127:785b:6e87:f831])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d2efsm65044975ad.64.2026.07.10.14.23.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 14:23:11 -0700 (PDT)
From: Jiaxing Hu <huhuvmb88@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Will Deacon <will@kernel.org>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/rockchip: implement .flush_iotlb_all
Date: Sat, 11 Jul 2026 09:23:04 +1200
Message-ID: <20260710212304.11958-1-huhuvmb88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260710060513.863714-1-huhuvmb88@gmail.com>
References: <20260710060513.863714-1-huhuvmb88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_142312_969163_2F1D9890 
X-CRM114-Status: UNSURE (   6.88  )
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

On Sat, 11 Jul 2026, Robin Murphy wrote:
> there's no harm in drivers implementing it *if* they also implement the
> relevant optimisations to avoid synchronous flushing in unmap_pages to
> make CAP_DEFERRED_FLUSH worthwhile.

Understood, thanks. I will drop the standalone patch. If I come back to
rk_iommu it will be the full version: move invalidation out of unmap_pages
into an iotlb_sync/gather path and advertise CAP_DEFERRED_FLUSH with
numbers, rather than flush_iotlb_all on its own.

Thanks,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
