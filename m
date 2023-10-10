Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB62CD68E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 03:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=52bNeF/hMIHHb+GamrMORVYDYZRzhrWX4xLGKAOUr0Q=; b=1af5KZRu8++2eF
	Bjbo89U6ZGNU82Oz75fq2x+ZD9wljO1CrOYmRqIdGHDx8MKXBpIdW6ccEKiCRrkI25vQqSYQVzVH3
	xh24QTknAgFJK+QeTLnn65b/Q+RWWqgY9Ph4bNxuSt5otrFlI13aRTyLS5UgZ5SG0mTc7ENzmSvTk
	QIBfxG7pIO1ddtiPbmG/wY+zm/QcjV8Yf2XQpL9nnPTO7HNV/M15a7SlXHykYKEIquBVkLZ4uBiTp
	M3xNyot+z8Hqi1bKM0iSW9hAuhqNnwWipvELslpPQgUdP4eXa0qOMxL0323j88TFjFihq0UCLmS00
	PLe0RsETVKCadoAUBQFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq3Dg-00CCSh-1n;
	Tue, 10 Oct 2023 03:15:40 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq3Dc-00CCS7-2j
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 03:15:38 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9b98a699f45so869253966b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Oct 2023 20:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696907733; x=1697512533; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zu1PSGT3vKrYIxi3e/ZTwpCtBtcfr50P6TnqqG6A5dg=;
        b=KkXdB4eMjrKttSpKEfXQhYCjeIhiYGqr/32R1ebRxZ4mF7JbYbcGKYQZRaRIv8gGBE
         WQXbTY3xKRYl2zoLWAsY4E7QvBIBzj1cbT3UDVV5TVRDLeuCHaJwjfb8HSYrFqpmXiKU
         khhGck/Ob0ahHFFYr//fzRXnikB3CTDrd0nX3CSZXr9nrDGsFIk1ch4SegMj09jke+QN
         6tA579JKuO0crBu7oeyLrxt5ZgAeqD2+SEfBnXlj33YI5mJ38OU3kYcVJob34giapgjX
         Jf31e3cH4gYIAYSMxYBFbK3016glHWfJEf2Bs1HIEr4B3ec+jIORqrB4/lwLzQC3yqUu
         fZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696907733; x=1697512533;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zu1PSGT3vKrYIxi3e/ZTwpCtBtcfr50P6TnqqG6A5dg=;
        b=Bf0MgI5LKlZkOyd1R5/99TjlYxyfQnz8qHBoczyD1s2jDu3JOXyeOFBm6tz/P4O4Tw
         c5xmVyAeWp9Jh5z3wl5z6BKiXPOrvBSXxO8KOmvnWbifHrk/tbbWZ4xZAJn5wgasThu0
         BFhgMoGKqpZYBD2ROXGQI2R8SpagiZveMRK0ZmjYLtuThhBidhwv/0FaRLJo2l2VKKiN
         797/IP6qUT+eR7JqtVFJ+Qu9d2XhsFKzP6IoSc/KlCWTHx10RBE5UPep7WMbYGc6lty3
         MZwdilfxz2NCgwLmuvK5Ammb0baZM3lChowqbcCVvl9yfvT4NOi2kTDWozW5W75EQpAF
         L1aA==
X-Gm-Message-State: AOJu0YxCJZkNEAmBcvbIvc0yn90K7P7jG9JPqUSTtMqAT7yIxmAOfLAE
	zhV56NlxDKIcMrVrNJjI+EOmvGU3Fa+HifhsAdEa2lx3Ikw=
X-Google-Smtp-Source: AGHT+IGUCrgm1KIBjIcT0vKBO5LS/wLAogomugFEY2mKSuol6GpXh3bNqqpCwa++bf+dxqJ40qGUpD+xq5no0CHNSmQ=
X-Received: by 2002:a17:906:8447:b0:9ad:fb49:4eda with SMTP id
 e7-20020a170906844700b009adfb494edamr13713634ejy.3.1696907733221; Mon, 09 Oct
 2023 20:15:33 -0700 (PDT)
MIME-Version: 1.0
From: Doug Brewer <brewer.doug@gmail.com>
Date: Tue, 10 Oct 2023 11:15:22 +0800
Message-ID: <CAG0V13R4Z2iMTYHDqdKR5pkXicLz5eFPWsaLGVGBdXD-n=3Kzw@mail.gmail.com>
Subject: RK356x hdmi doesn't support resolutions up to 4k@60Hz
To: linux-rockchip@lists.infradead.org
Cc: Sascha Hauer <s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_201536_889414_960AF3B9 
X-CRM114-Status: UNSURE (   6.13  )
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

Hi,

I tested the Linux kernel 6.5.6 on Rock 3A, the hdmi doesn't support
resolutions up to 4k@60Hz.  4k@30Hz works for me.
Any idea how to fix it?  Thanks.

Regards,
Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
