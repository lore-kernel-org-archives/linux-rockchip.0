Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C20CD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 12:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVtCKgloDqk8pztnmmzLHTQdO4EaQcc/d4lKxRBSuSM=; b=eU0Gd2OUji+C7U
	+QLec59FSu4Tyk8xr7JViavBPJDPcCnIQrfUI1HFl35JHDmOEeLKGokeocKdR42shkI11v9vpcgjq
	5SojQ0gDJiYhbD5Ijbjf0lzWce/VqS0vsDbYsBhCw1pOiHoodmfYCIaGGFd2Ey4FWQH2DjsgNQS4F
	f5MKyo4TWCJ+Bv8jBCb3UOBLzd3518zHu0q4nS7XqkfPE58xgwTG/Ek+T55HZTQFSI5oX7di2I7p0
	BeqkOTr3ij23RXrvQ+8Kt47xONyk9nft5Zs0hhKDs6SwVlL0fpQcwljXr1d1Likez72pcDrw0DOab
	3BW2NWssxGEMfTql3XCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSnz-00000000BnJ-2vcz;
	Tue, 03 Sep 2024 12:38:43 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slSn3-00000000BUi-1tUU
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 12:37:46 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-e1a9dc3efc1so2951024276.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 05:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725367064; x=1725971864; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xRSvMnDTMDKxhA7VhtYh7uLTsocsLyQdi8v0n2nl6pk=;
        b=a8Wojo0rDjsecuFtDZyU7Hgc11+4+KdquWuv6xiiddF8LvJ3+lqTvXOkmAlH9MQju+
         6dQKRGyhj20fTBfQSfn8PCupvt1aZvBCAZWKxQDKbcpg1ffcFBi+iB3I8OgatngBRW2z
         nnZSpBIXaCHlBCEqi7VMr4mKMjdCcfZ3IZV/XhuztTbxj505wqFj1Zpv4bpe8sKV/9k9
         LvzAT2Bw8igYvcaIN3SbAe8nup5YQS/SpN9vi/Yh5KeWO6OtmLlpnlJHtvfrIas25ZS4
         KtMTaSgAnxEao8fUA6ibqqaTTEMREdBiHUW1G6ij+SQhH46jZ53YKmTl6byFqq4XqQod
         ercQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725367064; x=1725971864;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRSvMnDTMDKxhA7VhtYh7uLTsocsLyQdi8v0n2nl6pk=;
        b=ECxXFr+5N4itP4qCzivLz+ehqAwhQKMIqMyr0ZxbyaJzGOD8AgoWwgoDeVADcHtZiN
         5u6/nEJ90rGqDzRBuBYbE1DcKRSIzT4N4/bbRzb9tmsBxtkwLgbJ80x6L2YIdg4szyIP
         lwQvPwShngoLldTNeseaySVpjONMzyuLNclUntt1KVWZQDFUnQAchtb8/zXvbJyCeL01
         9q3WzU4D4m3Y8ZrrRARgs/cJIfQV+nK1DAoXy+psP7qrIZpuxnw5pFKj83A8p8nqHl+9
         UwlEeI/jw8DmN9vaCwg9DeGuXPiUiG6HHakgFXrs0gz9hBYmU9m9JZU84fLSpc76boRA
         dQlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLqhQ/4f3604XGJ+fGMdT6DeHSWajljFVi3pLRASKz1jejKRJEUtGhdg/DBDrGKsyY1i2VFKKebd0+98BlVA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8YE+Qe364vgBpTnyRc+NmX/K4rUS5xRB+1nl6tw9PJftx1mgo
	omwAajJFY5gafBt+ekSIGmWPpOy40JvihHr885NslgBLnhl5dGVYjfzYLzmdHaxGpi62IOuvwNO
	qgWOBL7JpXeBK4922+LIhNEREFQlHJqE/iZdUoQ==
X-Google-Smtp-Source: AGHT+IFQF8b0/Dxwwp4pWzLNZOOlIYeobiuC9YLSQvh3EAc6u9FMJheFaNSQtuz4xhHdNlC0iKN7ML0RWiRLCHQ408U=
X-Received: by 2002:a05:6902:1b8c:b0:e13:c6ec:2a7d with SMTP id
 3f1490d57ef6-e1a7a1a1cdemr15286662276.37.1725367063845; Tue, 03 Sep 2024
 05:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <010201919996ef8a-db8bbe89-3c18-4dc3-bd0c-6498f09d978a-000000@eu-west-1.amazonses.com>
In-Reply-To: <010201919996ef8a-db8bbe89-3c18-4dc3-bd0c-6498f09d978a-000000@eu-west-1.amazonses.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Sep 2024 14:37:07 +0200
Message-ID: <CAPDyKFrZKq69yHnA1w813b6nwy1Bn_A=1c133CSk9scO1qMxEg@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add dw_mmc support for rk3576
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_053745_503496_A56ADC18 
X-CRM114-Status: GOOD (  21.57  )
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

On Wed, 28 Aug 2024 at 17:24, Detlev Casanova
<detlev.casanova@collabora.com> wrote:
>
> The SD card controller on the rk3576 SoC stores the phase settings into
> the dw_mmc controller, so the code has to be adapted to implement that.
>
> Although the feature can be detected through the USRID register value, the
> decision to use it is based on the compatible.
>
> The compatible for rk3576 is added in its own group of compatible to mark
> that all devices compatible with rk3576 have internal phase settings and
> don't have the ciu-drive and ciu-sample clocks.
>
> Changes since v4:
> - Drop commit that ignores phase above 270 degrees
> - Use a bool instead of int for internal_phase field
> - Fix pahse typo
>
> Changes since v3:
> - Remove internal phase auto detection
> - Set compatible in own block, with own dt_parse function
> - Add internal_phase variable
> - Use function to set clock parameters based on internal_phase variable
>   instead of multiple ifs
> - Use different commit for skipping phases higher than 270
>
> Changes since v2:
> - Drop rockchip,v2-tuning and use compatible-based detection
> - Fix coding style
>
> Changes since v1:
> - Renamed use-v2-tuning to v2-tuning
> - Rewrite v2-tuning description as the hardware feature
>
> Detlev.
>
> Detlev Casanova (2):
>   dt-bindings: mmc: Add support for rk3576 dw-mshc
>   mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
>
> Shawn Lin (1):
>   mmc: dw_mmc-rockchip: Add internal phase support
>
>  .../bindings/mmc/rockchip-dw-mshc.yaml        |   2 +
>  drivers/mmc/host/dw_mmc-rockchip.c            | 217 ++++++++++++++++--
>  2 files changed, 204 insertions(+), 15 deletions(-)
>

The series applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
