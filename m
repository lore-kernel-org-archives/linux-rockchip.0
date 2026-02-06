Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52366EE20A0
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 13:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bIkOoZRS64XVxDU3OQE3Cec1eacoPlaDbZ54nCxHfqQ=; b=C6xuGmAGJilX1h
	iw5cCPz7r7iMabDlo2qJmGfkJIZeyGNwEvJrBYnL4/YrsUDkgXM3XP9+iKnrU5qzP4BquWc7/POV/
	ZjHI/6W212g3Va19NHxoN45858KBeMJQJGE5ydzTTJMD7nz3C9KxRQkKNkHrl4Sd2u+eSmF0pdc1D
	epV5F/GDiJPUE4bLObySbeQtnlzOD8TtXN+LFszMM0V7HJHJ0xkgm/BCW0FsgI5I0kB0B5Mg7fkW7
	dOZs/LDdBpIN2OnfKMR+n32v1+Bl1iTYdnDaFZKvRNXjZgS64xGcgNYJ5iEc79++Nn93kWiZyNz0/
	UeF76CKsDEty1GzAJaNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM3Z-0000000BNNB-1o0X;
	Fri, 06 Feb 2026 13:39:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voM3W-0000000BNM0-4BQp
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 13:39:33 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5b1f17b1804b1-480706554beso7545555e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 05:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770385169; x=1770989969; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rgkdoioUU+RhOWyr0UvEiFmF3wCxL0ED61NZyLKRXMw=;
        b=x8JBZXBPMngpVjN2iGhgwWnZxhI4dYPWVhjO1K9NIOiJJ2I/EjIOyXQw8uRlc/HwTt
         J4WQt3OvlXyAJuzYc5OX/0ZBDhwyRAtKF9KdjmPYzbQ8FbHPWV8+k6R96lzhj7lfMyUm
         A/9SS6pdq2InEjmmKBEzp0EPxjHDrO89nI0qPTu821RcckQ9PBAfkhUpqZ+VgkpcytVn
         XFo7Fotw5j3VD8ksPdnkYZXJ45PfhxI6BmQrRWie17KswBTSfQu7jaD+ReegMwLuhLYB
         Axj06DoDJ6jtQ2GQVdsMZWhczkvlqWaAIuMnMM7Xdx42vD2WxjDbbSE9hs/c25j/YCIp
         jMwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770385169; x=1770989969;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rgkdoioUU+RhOWyr0UvEiFmF3wCxL0ED61NZyLKRXMw=;
        b=ULcqp6ccDFaRAGAFDujQExDRWboGqMH6sD/FS/omMjlZs5K8NtFYH7/kgManYGF+K6
         75GmjA2z3i17cbnKwIT8rtudGwx4q5bG8QlsE2/HWi24/j9llvXlDQJlueKn3GHe50ub
         x5ZEXm1ZqV5iny18Iq9vuEU7gI9z66Wdf1bk8lipdPkZ3EkekfrN/zfMfEpnjq8vLnuu
         2LO1cuYJAa0dd28coLDWH9IHrWeD1QEpZFnZA1XI4uUj4/flr5Ss2esFH8it5o9DH+MK
         KFrJH5MeT6rZt0fEUMU2VQXr/v4oZj1jJ6LmQLb8qPkh5JsRG/nVlS/kk2cSjfy2kqP0
         SNFA==
X-Forwarded-Encrypted: i=1; AJvYcCU1ksGMV5QdxaXVfxERz+sgtMXEaDV3dfgZKveIEfwW1tObgohk6F2KO1pWcpLz2gNN2eufTlIH/4mhSUOegA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxynxOhZopaGY2/WPd5Kjyd1cQMhihs1OP75M/D8+W01KJkOr+f
	OjQfjIo7yO97dIf0SPCEpCeRIDrNBV7Q/WzlgJXztb7l66HYFJS3hKEuWKLWxsIXdAE=
X-Gm-Gg: AZuq6aIzjIfct0x5VJzj985cNOj4LNnYh1efBfzv4LwhaUHv62EF7ahBXccxwS8fojt
	1Gg6yFLn5eLaqCr5KbAyFiMUL1rtvi0VzgGc/gWF7+jUTcM3SfS8GIN0wjyJvb4f6Cge5vpyuLH
	FJNcnlavmaX31NzJVfHDJfHH7zpeR9ajGjpLC7rtftOhTJWnUk7888atVV0qs129E7pJRV5iG9j
	Qkuv8/wAg+82QSSnY6upgcLlPgBD0a3slEK5KSO7LiySKghZfyGnElwYNcfMoppGkGJ6YeguiCL
	XSHT5cQe+rCfSnulWKizwSLvzaYzEzqPg6X3VF7kVv7QYWtkEO8KcbGIOaJfglYZ7WQTB7tcooj
	HSxGX4cjUb4hsxZVsZK1Hr2Z8Vj9Fy1sIHa/F7eAktE64LyFwMRa9NdylBpZ8g+AEu+79Lcyb+G
	GXMayx7rq7VT0lRO/m
X-Received: by 2002:a05:600c:3f12:b0:477:b734:8c53 with SMTP id 5b1f17b1804b1-483201e476emr39967365e9.12.1770385168829;
        Fri, 06 Feb 2026 05:39:28 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d7a924sm192988315e9.10.2026.02.06.05.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:39:28 -0800 (PST)
Date: Fri, 6 Feb 2026 16:39:25 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: [bug report] media: rockchip: rkcif: add support for rk3568 vicap
 mipi capture
Message-ID: <aYXvDURNPu_5NILk@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <caa37f28-a2e8-4e0a-a9ce-a365ce805e4b@stanley.mountain>
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_053931_694649_7CF3EE38 
X-CRM114-Status: UNSURE (   7.27  )
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

[ Smatch checking is paused while we raise funding.  #SadFace
  https://lore.kernel.org/all/aTaiGSbWZ9DJaGo7@stanley.mountain/ -dan ]

Hello Michael Riesch,

Commit 1f2353f5a1af ("media: rockchip: rkcif: add support for rk3568
vicap mipi capture") from Nov 14, 2025 (linux-next), leads to the
following Smatch static checker warning:

drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c:519 rkcif_mipi_id_get_reg()
index hardmax out of bounds 'rkcif->match_data->mipi->regs_id[id]' size=4 max='4' rl='0-u32max'

drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c:519 rkcif_mipi_id_get_reg()
index hardmax out of bounds 'rkcif->match_data->mipi->regs_id[id][index]' size=11 max='11' rl='0-11'

drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
    504 static inline unsigned int rkcif_mipi_id_get_reg(struct rkcif_stream *stream,
    505                                                  unsigned int index)
    506 {
    507         struct rkcif_device *rkcif = stream->rkcif;
    508         unsigned int block, id, offset, reg;
    509 
    510         block = stream->interface->index - RKCIF_MIPI_BASE;
    511         id = stream->id;
    512 
    513         if (WARN_ON_ONCE(block > RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
    514             WARN_ON_ONCE(id > RKCIF_ID_MAX) ||
    515             WARN_ON_ONCE(index > RKCIF_MIPI_ID_REGISTER_MAX))


The id and index checks should be >=.  Not sure about block but I assume
it's off by one as well.

    516                 return RKCIF_REGISTER_NOTSUPPORTED;
    517 
    518         offset = rkcif->match_data->mipi->blocks[block].offset;
--> 519         reg = rkcif->match_data->mipi->regs_id[id][index];
    520         if (reg == RKCIF_REGISTER_NOTSUPPORTED)
    521                 return reg;
    522 
    523         return offset + reg;
    524 }

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
