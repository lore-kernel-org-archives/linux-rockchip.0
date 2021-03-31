Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B479C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 18:53:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE4FE60FD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 18:53:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE4FE60FD9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h9CvTUXWogah6gPNT7SnOof/TqoTr2/7hj1MFyPT97E=; b=VAW7QQFJ6GJ5XYapoPdRTazLP
	VEMLDje0RXZ5I/yYQ9A3G0si/7yoAw1JJ0EW1ir6aoiBTlEXVUZQH5xIa0OT1zdYiVIapUXlgi+6a
	HygKPfTnp68IBDjxjm/L1ExWIGY4Yje/ywDukrfuWC9f2krcpsbthhRh10puRV/stGOTDE6SZDpj8
	NJKsh7Ooh3gP+FOI0oW9Tvvh6qdLmz5DGe/gosAhgifVAEWhU/HvGQmzzs0b4RCBlEa+PiqcDZbdE
	jUjHVlH7Q3pj9VPrsv4GoF5IftXl4uYwJ7GpAk+SlhdtjmkdULZ6WZWwweZdrFeRj80r0RDrnB77r
	QhAnpdL6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRfy9-007Jlk-KE; Wed, 31 Mar 2021 18:53:33 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRfy6-007Jl0-0a
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 18:53:31 +0000
Received: by mail-ua1-x930.google.com with SMTP id r8so6441543ual.9
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 11:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/DTSYMrEtM32KqUkoX69dgcR0XfKVqt64r7rpIZMI+o=;
 b=lzBUVM7fAdQp6jF1nv79FrRYbTDgKatA7+5Xc/NDE1pKgF1sRIJbbhYMcnSNhx+OWG
 I/KAtnlPCwyJtlTkwvB6xg6zj/0krE2VJD+vis2HeaW5myJa3pamZhdsKiWzWJx0x/DY
 C7+X2OptR8BlNJoPLjjOj+SgOLOlEoXahAUGcwxvzSFQBlkaxa/GXXrjW+usZ4X4xg/r
 BOY4aguhPcNSzZzG0DvBmIb5AF2PF+MaastcJng1hUvOzYOdkHvYThjQSNb5vOeB5Ypt
 o1S7e9VbhAOoBak9AUJoa89iTcY9AQ34GW05OdjxsCR/jrIgn8dUrlgQcVtFnRh3M+cA
 gXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/DTSYMrEtM32KqUkoX69dgcR0XfKVqt64r7rpIZMI+o=;
 b=cWRZH2aJbt39aE3GhwrI+DcR4sFvFa1/2wnIQtnGXP5rI5m4YMzwLraTTfAXrBaCWU
 sBl2PJT8WLb9l6/IL2xRcW4JGqWIYMnz8y8yT/GT94ivj2iXGgfiIcJTG+Xo6M8gJi73
 0JvfwjwvT+/+uqOocO7ICO+HQqbeRQm+PfD0AE8v4UjNoyRNKGCPnRb5vUg3Icw/2hwk
 xZgahQz0ty02qn97JYiNKvS1hSMbYKGhYuL5zlVAPmQ3yoa79dqBaDhWb03fFnk6okI9
 jCj6OdPnfpqgXNYhIJY95bo1Vl+jnB6c6CoagC7DDuGBi0N4HWeJox3p0PmELPodo6uJ
 Xrig==
X-Gm-Message-State: AOAM5311uxRD+swmUXyowHBaxDZL6pUJeutTaiAFR7YvUFWzXGmjws4F
 6wY+hYZUAmJUJNcYI+raEkZGUFOgojTykkr5IKk=
X-Google-Smtp-Source: ABdhPJwmPNCFsiJzns1U1Ag88HVXFSC8Gu6TlDAr9HbjDdXBoq3OeZwlIhn43M5A/GfVl61XXISCL4WZKbRk/lKveSA=
X-Received: by 2002:ab0:32d0:: with SMTP id f16mr2628332uao.64.1617216808828; 
 Wed, 31 Mar 2021 11:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
 <20210331173520.184191-8-emil.l.velikov@gmail.com>
In-Reply-To: <20210331173520.184191-8-emil.l.velikov@gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 31 Mar 2021 19:53:17 +0100
Message-ID: <CACvgo524v7pib6L0Bgx8Ygx5E+_Hg0fVEz+LQ_V_GshOghZZUw@mail.gmail.com>
Subject: Re: [PATCH v3 7/9] media: dt-bindings: Document SAMA5D4 VDEC bindings
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>
Cc: Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_195330_131373_102069B8 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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

On Wed, 31 Mar 2021 at 18:35, Emil Velikov <emil.l.velikov@gmail.com> wrote:
>
> From: Emil Velikov <emil.velikov@collabora.com>
>
> Add devicetree binding documentation for the Hantro G1/G2 VDEC on
> the Microchip SAMAS5D4 SoC.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: devicetree@vger.kernel.org>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> ---
> v2
>  - Newly introduced
>  - s/Atmel/Microchip/ (Nicolas)
>  - Drop leading 0 in node name/address
> ---

Please ignore this patch, I might have forgotten to squash the fixup :-]
v3.5 has just been sent out [1].

Thanks
Emil

[1] https://lore.kernel.org/linux-media/20210331173520.184191-8-emil.l.velikov@gmail.com/T/#mf6b5c1f2be535abba8b254f11c9f3017c1c9fc86

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
