Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBC2DC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 16:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FaenmP2hrUB8Jblw/j5V9gvvqbHxSYuTx9GyO2VzLHA=; b=mTyXmNMvTjoDbc
	jQoTi0jE9uWSLZPjmyFP6VPCsqe5hlMvzyn4D0YwBkp+myF8Kayju5MySiQAN/4/nXbB6twX2eYr3
	5TUzcXeh9cI4/Mx1GnAKRCCqYGO9HTfoVjREzncjGQCa8Q202o3VnIp4cKpj6CCVO3KlgZXCRTBPc
	1Wpl0Wv508NQCmCeJyR/yERY6MYQ8jA/LkNUfnsEjHh+s694DIlBbs3jqDfCLRD1TJM2oHOysjsrn
	rmSlvaqbwas+8Sy9k06KFtt/k33qOfPgMzZmMh130KVa3ZHWu0zwHV4oBf33s80WeKkgx9rn/JN7S
	yj22+sHrCLFkfZkUf0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovL4r-005lxn-SP; Wed, 16 Nov 2022 16:15:53 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovK2o-004xfg-T3
	for linux-rockchip@lists.infradead.org; Wed, 16 Nov 2022 15:09:44 +0000
Received: by mail-wm1-x329.google.com with SMTP id p16so12107956wmc.3
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Nov 2022 07:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FqxToxx6J0HadTgD9BxA/Xllkzmmgjt0Ief7ZbaCaLg=;
        b=Mws7/JmztqlApALvYHynAyF+9seg1kngMELucioMWfOy0CJv6NE7V5ttPT5C6jzs3Y
         +e7L/POrbaLAdQouzyEVn3775b5zxeGUX9bGUUKxSnHepPBQUwmwB3k+37XKkie2InkI
         QssAk3FedkdK2+dcjeLl9AE04wnY1k64yKK9Gsd72BFj85ReTInhCu1wZmy3RJNjHTNJ
         UFRdc9Mm4Yk6WDDiaWMifsb1m+4YQx2Wb9ElB/snw2cEJK5sF2+Zy8QqgrxatTrb4bQT
         /kQY2VkkdhIgm7WjcZHWt8iuIoDDEIEZfRxHaqml7pQVLghIuJCWu9O3AmrClRuANpCA
         9Wfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FqxToxx6J0HadTgD9BxA/Xllkzmmgjt0Ief7ZbaCaLg=;
        b=biOtWeCc2sUEpGXF/cFgGtpWKe6Losq8ZiPTIBOkBgxT9PRk2HBrsoPwApHYI3wHQ9
         Q7psLii8r5EeiKUUIyD7IGZI0qv6/gvBac52fOFOiQPpIsxigyZnVHJ8a+XNA2ycijTJ
         0Pw0rGds2Zo8KO+8zLybYx5mnMpcXaVEc/ScS5Vy5xmbrReIZSQFWn8NsZUodQrK3UTV
         9O7K6Zl2i1zFA3L5KVsq9mYZVzKR6rIiXlKExhxv8BoKgOFvnHK4EIfYOAWRyxT9AJAz
         L0lW5hmOn+JogHFqv0pSQstrGVLCnNkYmXi4uecB5Q5+AOhqokFIIBvzGiwTWVuGwFpv
         hwyg==
X-Gm-Message-State: ANoB5pmWBR/qHygMSTLTVs8YbOyEdUdP8dhEMDrv/oe47TZk59sMQbb+
	goAdzaAi7mMIfuGI4Cb4X42A41g8n8Ez4QrabyQcXuPezhwhA3rU
X-Google-Smtp-Source: AA0mqf5tSktoallwjEZNwjirzV7ReVAZIP9fcRoIHxghsNGp3Rb/X7mkVzHO+OVFDjOqbmBmKqu4pcwqDQH86Nx6xDI=
X-Received: by 2002:a05:600c:755:b0:3cf:b2a6:267d with SMTP id
 j21-20020a05600c075500b003cfb2a6267dmr2460944wmn.67.1668611378456; Wed, 16
 Nov 2022 07:09:38 -0800 (PST)
MIME-Version: 1.0
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
 <20220923160115.2946615-3-a1ba.omarov@gmail.com> <e02b6efd7d242f95c5cdfb2c5cdac29fe65a7d13.camel@siemens.com>
In-Reply-To: <e02b6efd7d242f95c5cdfb2c5cdac29fe65a7d13.camel@siemens.com>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Wed, 16 Nov 2022 18:09:27 +0300
Message-ID: <CAKyg=SU_1pFcBvwfTHgPbzFiUrNkx=aTWSbN59K2Gtzb5nZSXw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
Cc: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_070942_970227_7856874C 
X-CRM114-Status: UNSURE (   4.97  )
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

> patch, then should the phys reference "mipi_dphy0" node?

Looks like I just linked the old patch version instead of the one that
got merged.

https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/arch/arm64/boot/dts/rockchip/rk356x.dtsi?h=for-next&id=e18d9b093006d8abd53e1ce13c0d5a8d0fcd5f64

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
