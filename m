Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF01C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 17:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6mdVJOohQ5jMCBmcPAOADPHm1QzoYLwGJsHxLXEJDg=; b=ooBtta7uCxFwOw
	LBX5m48AeS/Z5akb+peWZoqu6OgWgc/Mz/z/f7M+qUSw/NubsVCZDDZr5GlvL1iQx6TYsuUAAJYT0
	UjXXL16F55xNPUMYLdpBWK4BfKS+hA8GhgFZy0jgcNoZLT+ZWGzi4cjfI7GtDKuGuJKaHvDP9nEwV
	jWcjaumxGHA6g6AQZW1m0QL6Fo8icuTBGGkZL0xcy80oCl+e0DVtOn6Gvu4XLbfOh/vkXzK8R8osq
	y1EnybWCcoH1hlKcSC5zOLS4HuSBBoJlwljn6nuuQem/OiPNk1WFWg7GiE/s4M6aw26szOM92p28A
	czxYOMGBO45PfA3WBQiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnyj-00000000CsN-2Hlr;
	Mon, 24 Jun 2024 17:59:45 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnyg-00000000CrC-3WP0;
	Mon, 24 Jun 2024 17:59:44 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-3d229baccc4so2462723b6e.1;
        Mon, 24 Jun 2024 10:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719251981; x=1719856781; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udIR0UMVkGNqoJsb1nh98Jnf6cJepNi/RO4WOHtJ4G0=;
        b=QdKDn5O3LGnejVeyp2Treyby71NbkH9JiaAfV9ckZbhwdnuMDL0GKAeLP3hXzzoMEd
         VkoC9+Hypgu+RJD8l2+P5t2XJDrtRq5M5Mnw2efb038wxvF+CwGTg0/92mN5xR5u4fC1
         NiiMS26YkK5Hb0qw2X8P1YhnB48POdTxKTSsa7Mfap1JFEbXW3T3tgGV94J+v7XVWl/3
         XhS57LYdC3O35xUftNvrVZxQek7/pWazq/9dEHSIP/LzDk3yxY5wZ4pKNsjAsCVpoOCA
         QJEZGVT28gEDHhtWrwNJwIsIMEUPNPWsy1uhzAlFLFYCOdy3kR28yHst9noNbgBtPhhC
         VsjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719251981; x=1719856781;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udIR0UMVkGNqoJsb1nh98Jnf6cJepNi/RO4WOHtJ4G0=;
        b=chzZXwcR5MSAfBVLz179tLmM4me5LdouU2Y0xdvcyqA5nK+kPgLUIBUSF3TOi7jv1z
         JhsnuA+wbbLzHcqd9ZKfZjE+kSCMvB6OrcgyOQDBMxoYS7DxMfQ1h/uD0VfOL3NJsdWe
         7MXbfxbWPAVMtzgMDCLWnq3XbCIGWX9ZZsCEZwFlYW4WH4BSWlxt0GnuV+AgG4epzHqR
         wUqt7iwRNERLtNeQCM20I0orLSXWepbF0Z3AL8U28jMWpAD0rwD+1ewRBozou14Q3Hku
         7NQhXBDuyLrqIIjDGb+MeYoz57UzEBe9rpADPYYrG7rXAMnYKgixacHgzc808OH1/ghJ
         jq1g==
X-Forwarded-Encrypted: i=1; AJvYcCWricyfe/oESbylP2hC12szWfpTUlOIsuvZQZZ3of6HIvc+F9E+6FhFRCeyO4WYn6wH2/fgyOYEUcgsMx9cITzcAerwEGwSiiP+LtloZVTjH3QKCv4=
X-Gm-Message-State: AOJu0YyJwu6RruJtV0KOu3Ek8jG8HMCLUXCPiwgret/sLiBiLJiq5hK+
	4wiLJgnto6HwIBS+RiE1t7QLzammtcZqIkKfphFhMtPGb1s7baIkUkmrUBf6h8kzs0+Cks6Kfg/
	AR64wbR3CiN1tg+ylFmcTc8P2le4=
X-Google-Smtp-Source: AGHT+IGsa0ekhfheWgYZJZEC3mAEZFLrTDQL0oduY3DpXZHe74ETnOem/uHkpNav1SCQrYlhDpt27yJzZNakA2nDVms=
X-Received: by 2002:a05:6808:1787:b0:3d5:2c01:9df6 with SMTP id
 5614622812f47-3d5459643f2mr5691339b6e.15.1719251980849; Mon, 24 Jun 2024
 10:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
 <ba9d41461f5d56947d7851473637722b@manjaro.org>
In-Reply-To: <ba9d41461f5d56947d7851473637722b@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 24 Jun 2024 21:59:29 +0400
Message-ID: <CABjd4YziNk1NJb6p+AxAVK0CR7igE3-6h-sN4MEWwyoW2qaKfw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_105942_898698_9CF3A2C6 
X-CRM114-Status: GOOD (  10.94  )
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

T24gTW9uLCBKdW4gMjQsIDIwMjQgYXQgOTo1NeKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIGFsbCwKPgo+IEp1c3QgY2hlY2tpbmcsIGFyZSB0
aGVyZSBhbnkgY29tbWVudHMgb24gdGhpcyBwYXRjaD8gIElzIHRoZXJlIHNvbWV0aGluZwo+IG1v
cmUgSSBjYW4gZG8gdG8gaGF2ZSBpdCBhY2NlcHRlZD8KCkhpIERyYWdhbiwKCkhlaWtvIGhhcyBh
bHJlYWR5IGFwcGxpZWQgaXQgcXVpZXRseSBhIGNvdXBsZSBvZiBkYXlzIGFnbyBbMV0sIGFuZAph
bHNvIG1lcmdlZCB0aGUgdjUgdGhlcm1hbCBhbmQgT1BQIGNvZGUgdGhhdCBJIHJlYmFzZWQgb24g
dG9wIG9mIHRoaXMKcGF0Y2ggb2YgeW91cnMuCgpUaGFua3MgYSBsb3QgSGVpa28gYW5kIERyYWdh
biEKCkJlc3QgcmVnYXJkcywKQWxleGV5CgpbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aD1m
b3ItbmV4dCZpZD1kZWY4OGViNGQ4MzY1YTRhYTA2NGQyODQwNWQwMzU1MGE5ZDBhM2JlCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
