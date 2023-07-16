Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E9FC001B0
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jul 2023 15:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2TGAVyAPmkTygx0Hp9yDuD5tNw6bh4naWXDJrqY03w=; b=jx0BlGMVgq7wCi
	F5VzCozf08YS0HlUKELizE3zVzjZQOWYzmqcb0sjZdHu6zL27jw5xX8cAWghLfgsJOQMQ1dHRKFZz
	eZ98s7tbmHVtHx6sQlgtE5jK7WJi3OKjjs/Sl1AtlGkjxUVYJ/+D2N2BbxJ8KyGz7goR+bWUs2c3o
	9FWeUgVUkEuGf7i8K3rnshgQL+xViAv+avpGAKUUlHyTulW9y9xiOAW9BN43qhmJsg6JUFoyWOF8m
	Ub4E0AfMQ7VOaiH8GSZvbQPTYeDZZzgqcYmUHpE3VIf7xVMKMB/Uh2ItgszkxkHmAJ4wJGT7yRPFX
	pm9IJ/W8i54vA2p5JHLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qL443-00Ca5N-0o;
	Sun, 16 Jul 2023 15:53:39 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qL440-00Ca1l-00;
	Sun, 16 Jul 2023 15:53:37 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-55b1238cab4so2088114a12.2;
        Sun, 16 Jul 2023 08:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689522814; x=1692114814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=abs11f8UHVu+fecLFEFwp0PW6/N5LPbHdu0gV+3y038=;
        b=ctFvETFr7bnJxUyExlXVogWAbDtwrZb9lVS8wjLMPmQtSNPHo3RiCI3D7RdOxnIdrg
         KbpcR1/UGhV4a5YawvKmm5xtctdaHE1Y2dXbL26fFQTaSX0YKeOV/OdxIyJKbt1uS4ux
         hJ+ypmbBTYuU/0+8zlCOkLGZN66xLUmjqjAzH+ld2Hhc9blh4Fq49cy4IOIvpkuA8rk8
         /T2QY0isHdD4iT54ky3nzir6HJuvASdSxwNzDb72h452fN816pfKhntGQz8sr5XV+/mt
         rAP4H23HyPcXpC+ErWLpMO/vyJHPu+an9200hVB3cUpgW4fAlnPVVUgrdnVB3YhPXzqZ
         Z30Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689522814; x=1692114814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=abs11f8UHVu+fecLFEFwp0PW6/N5LPbHdu0gV+3y038=;
        b=EsZ36HZmtAmqOkSeaO9rfSQRz9ZNz6XUR3XY3A2ZQABejV9Tek5yrCcy8jtZ3p97eY
         6tjq6CPa4opdDeAEKFhXPt5XE6GtANnE22FtslnRDtvcR77SqUnMC9IVJxC646dCCgDG
         SikpFlAKqmI5vOdllQtPztxcTxoVhG7A9ZADrdc0rZzp6vs9ICFce1pYSluHwHdpHjCC
         SH1gH08uwuXuKhptiQ9LJ9ewdlwGkBcFsXrJVo6HEtB6g8FzJhAe9V4AMX/zSdM6RPhM
         t8cyOmY3CMtE/qTdRSWA4hDLqH1DaTc/KkmY7J35BeHUbIqrg2w9o9kmPyOu1Y2ExbWM
         iErw==
X-Gm-Message-State: ABy/qLZysf7p1xS2C7jHOjxn4kRsJAgd6vtESUDAbNvODAQGfn+gElvj
	HkSngmPpasuooH9PtvJuBkPCmdvDvr6eD1wZwjcFYmeQ2EU=
X-Google-Smtp-Source: APBJJlEGQtfsRwz1XtspqBQl34vmpvD+Dei7LRAoFDGxKuzO815i+XyeZQE6FVEUNXOjwbyrPM/p7K+ru97TpSRLgWA=
X-Received: by 2002:a17:90a:eb12:b0:24e:2e86:5465 with SMTP id
 j18-20020a17090aeb1200b0024e2e865465mr8674012pjz.31.1689522813638; Sun, 16
 Jul 2023 08:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <ZLO450xOIQ29VoBT@zephyrusG14>
In-Reply-To: <ZLO450xOIQ29VoBT@zephyrusG14>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Sun, 16 Jul 2023 15:53:22 +0000
Message-ID: <CAEwRq=rUXpFpkrfKyCG8Eede10cCeo6V3RCDxv0McWA_g9t0CA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards
To: Yogesh Hegde <yogi.kernel@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	heiko@sntech.de, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linuxfoundation.org, 
	skhan@linuxfoundation.org, ivan.orlov0322@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230716_085336_042501_EAAF5A88 
X-CRM114-Status: UNSURE (   7.13  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgpPbiBTdW4sIEp1bCAxNiwgMjAyMyBhdCA5OjMy4oCvQU0gWW9nZXNoIEhlZ2RlIDx5
b2dpLmtlcm5lbEBnbWFpbC5jb20+IHdyb3RlOgo+IENvbW1pdCBmNDcxYjFiMmRiMDggKCJhcm02
NDogZHRzOiByb2NrY2hpcDogRml4IEJsdWV0b290aAo+IG9uIFJPQ0sgUGkgNCBib2FyZHMiKSBp
bnRyb2R1Y2VkIGEgcHJvYmxlbSB3aXRoIHRoZSBjbG9jayBjb25maWd1cmF0aW9uLgoKTWF5YmUg
eW91IHNob3VsZCBhZGQgYSAiRml4ZXM6IiB0YWcuCkxvb2sgYXQ6CkRvY3VtZW50YXRpb24vcHJv
Y2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0CmZvciBkZXRhaWxzLgoKQ2hlZXJzCgotLSAKVmlu
Y2VudCBMZWdvbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
