Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE9EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 22:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCKawr5d/MSoPT6zmQ7eebqN/ZoG7gpHif6y3vwBH0M=; b=ZVpp6NvQNwYi1M
	oq3ug96CFm8IpeEe4ZIJfnus/Fd46JYd96JmYvZr0bE04s/7OhLQrrv6+D58S7XmmzT2s8RB0fs9P
	IrsEZ4zU5HyEhTjYOaPhAmtkJfACBnOlsCD75LoARlsfgQaimy51lhybU6vjTp3npmQ8Z//UxdL9y
	80FVVYO+bUqfJFGp2FZe2b6NZ89K5HJJtji7BxxWTZgmHEWWKnZ84IktwNaVO4VvI/ieItuywBgrR
	PerVFhCOT/QSL2UCWl7obw5gqFT3U3629QaY9RICvjrnTbv/T21x3sGDGaubJV2TEtEDN5XYwvSHt
	yPyh6IP6rVl2L7C8zVLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq0q8-005xzD-1g; Wed, 24 Nov 2021 22:34:08 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq0q4-005xyf-QE; Wed, 24 Nov 2021 22:34:06 +0000
Received: by mail-wr1-x42a.google.com with SMTP id j3so7215333wrp.1;
 Wed, 24 Nov 2021 14:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t4Q2WMbwFeQlxE5UxwxCmdsVHaD6RTJAuT746XcgHHM=;
 b=MUG0/Jr37M49Ed9L1GWkptdvArVfAt2F4zRNyDNatp3LEqXgx2dzFxWfhSvuizU4ri
 PILlvSgtDqXocdyOZYAbxwy/CEos7FkxGPJUbUF1GlPiFvkEkPXN76E3zNXYatF6f6d+
 s1o7cPCaBC7wZcLgwLl4Go2vTFH5Sn9yoqnQ5QQY6Gd0p642vWpxEFib61HvFFadVUTh
 izCX5kjmMNW/b8eTAdcOu752J77M+L/pzm3Bb3402JY14dwioOPiKiZ4iYGDXXcZU4iX
 AJhvPQGinMzs33sf+aVa96fOJqNtkiWW0d1C7nJ6TWr+m9u2rF33Rab6FNhzhOD/WjKm
 pqGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t4Q2WMbwFeQlxE5UxwxCmdsVHaD6RTJAuT746XcgHHM=;
 b=KerU8zR43hkYcJCcwcJRiOdwrtMYFXklqJJ+o7jCuk7/ututk2OezmJN2Mn/yoxD6a
 Q54vD7tFQhrL90WvUGYZdgjXdWNYELX+x25NQ6N54oeKtKPJkdCMCQrpVFFcbivzEeyv
 BdZo2WZoj0LDchsWuYZj+5C2oFAGSiOZpT9GxEUuGdJ2nq3tXvJT4LJDi5IYN8uTFO/N
 M71v8xNJ5tvtdMJi1xo43nbp3zsqtPX1vjFgMdBBBQLIwYecZjltyZ40qhljQFA5cPWD
 SRakN+yiCDT6HZK2S4av06n9NrZa/rByF5AfRF7i9FMvUDWdA2R4+cl6vpGbkVOSfbgp
 JRMA==
X-Gm-Message-State: AOAM533T023GNM9b6Er3B+KnqXdgmAYGRjWuXjHQ3/SPuYczyEtVcoys
 S+0UVo/vrO5qn4vU2s46O+E=
X-Google-Smtp-Source: ABdhPJwzobNWdnlIEAjGt1nVfaCJcA9nbLer42dE1RjxTnPTuFWGOIoMp8BrVDZpiWCxc6iCF8PxaQ==
X-Received: by 2002:a5d:4ccc:: with SMTP id c12mr701595wrt.453.1637793243432; 
 Wed, 24 Nov 2021 14:34:03 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id h22sm1214466wmq.14.2021.11.24.14.34.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Nov 2021 14:34:02 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: rockchip: i2s_tdm: Dup static DAI template
Date: Wed, 24 Nov 2021 23:34:01 +0100
Message-ID: <8149774.Fl3yekHNAf@archbook>
In-Reply-To: <20211124212146.289133-1-frattaroli.nicolas@gmail.com>
References: <20211124212146.289133-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_143404_906925_2B959553 
X-CRM114-Status: GOOD (  13.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mittwoch, 24. November 2021 22:21:45 CET Nicolas Frattaroli wrote:
> Previously, the DAI template was used directly, which lead to
> fun bugs such as "why is my channels_max changing?" when one
> instantiated more than one i2s_tdm IP block in a device tree.
> 
> This change makes it so that we instead duplicate the template
> struct, and then use that.
> 
> Fixes: 081068fd6414 ("ASoC: rockchip: add support for i2s-tdm controller")
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Disregard that, this patch is broken too because I still use i2s_tdm_dai
elsewhere in the code. I'll respin it in a v3 when I've actually slept
enough to not make these mistakes.

Sorry for the needless e-mail noise.

Regards,
Nicolas Frattaroli





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
