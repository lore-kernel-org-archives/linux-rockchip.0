Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C11A4D42BB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 13:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEF3tJQjt2k1gyigorc3VcwyxAR92U3AYi0gwi3quoM=; b=XtMLtqXhrcjGE3
	UMsf7VGGFTl2xG3mVWntCo3SMeutIyFJfv86pN6Do9OV/C3pOV+RcA/5gTpcVMxL5HOGF2vV64VKl
	t3NHlN7cQY4NfGO0vio3FEY6S2ZRhw2FQNI4VVChT6O6gbTk+q9FPnl0afTG4N37NUDRcL5QyRaQS
	YUi1KugL3e0Rx2mkDjCogjrXcQiPkFeqV3Xr6MK/pcwCWT5DqMjHOerfJejKovjOkaFEkz5Uz0eg1
	MaPidX3D/y5ybi2Y1kwCJn8L1yMD4YTbcud4BktyyFw+KR0JbvxZwNYj/nUSzW+9BmIcQ1t6Pz55A
	Fam4Q0EJ35p92DAUeIJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDPE-00000006uTC-25ZB;
	Wed, 13 Nov 2024 13:27:36 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDN7-00000006uDJ-0mUJ
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 13:26:12 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2fb3c3d5513so62643361fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2024 05:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731504323; x=1732109123; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tdm8/Adv+5ZGDymXWImoKTuoeLBiyC6kmUm06DeTBBg=;
        b=jKVs68qxoKHi4TkDAVz9MMm5t1D9wxEjYzwmd2rSRizk/uvzWKbBFSq0NxvNTprwFG
         +nF7Lg1ZMy/Vdeum7Cfq9Mtun9RjFyYT3MtyrCJBOdwHQS+yRWYtHu+Bp8qtbJt26/YP
         22q+VzrwIchP7I+J6OM3mtIek0Rdy/Mnd446IK22g/s1edTRXkK3w32+TwmJGwfd4UH0
         zYDreZ6Lh/BUekmjEGrbO80Y913X8Xx/iCJaYTcz1rPnuz/xjTbPiGkwZVexnBJe4/70
         oqSXDc0Oi/6DC7cckw8SBUghLsAETcMau3hPDlztcRDb9mRMEYAsrEfAuqeUJtbf62SD
         WLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731504323; x=1732109123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tdm8/Adv+5ZGDymXWImoKTuoeLBiyC6kmUm06DeTBBg=;
        b=IJwGIK0dwTrx4t0j/vrf0CV6PS6ryO7Rnh8eLfrjwZPl7UhBZJaP3AbBhSpef690+J
         Fo2deOKY571wZqGsdZFm5jCzxdUed1eUw5mEjb1fHS1NtmpAN2yZ2b954p+y+cPuI5G6
         bhnib5BqX7ErK79GgTXU38FnCQvFBLoHQoQ7w9iUnCyFEKf4ItcYId8SYTpaSgFOkvwO
         pj60uSg2x6i9v3HHzrTuqym9vQ/JcBJfNZfz4snYNjlBnWsqYUi91/feif5uX7y1+Nw3
         KAod5Pd17clItxWgAuu4z+pIZY7i3u62/un8NVh5SPVv0riXI6j2yX9MPZWdv0hTHxKl
         5nRg==
X-Forwarded-Encrypted: i=1; AJvYcCVjpLvWRW3QiKivKDOkFSuIF3ckpYa/FBKtXWbZnYnXy/WmXP0JBFG5ijz1OCjG+sJ6V/rvVBEY0uypsriAoQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqOT1OEA9+xC5AkxX+df21vTcYRNkKaQ9MiWC+B7xm3ZBlWj7M
	vqeC4QoYxdz3dgnP0ddQfK9AIXsYGRLdITLM/Hqv+7hk16LdEbh5jYCBSDyL1ajbVaeIUdAQ/ML
	VUfZAY9QbGLOEcPw6pX2XFOyNolZvrAdvchhgpg==
X-Google-Smtp-Source: AGHT+IHX8+zHy2cRQuozOk3orjfKceKGL6x8ZLfWGh9apX7pumtVpc991puIgqUN2OLaLTkg6vBcgQb/2f4+fVGfe7I=
X-Received: by 2002:a2e:a90c:0:b0:2f3:f7cf:2f01 with SMTP id
 38308e7fff4ca-2ff4c674adamr15664021fa.41.1731504323148; Wed, 13 Nov 2024
 05:25:23 -0800 (PST)
MIME-Version: 1.0
References: <20241111023412.3466161-1-ye.zhang@rock-chips.com> <20241111023412.3466161-5-ye.zhang@rock-chips.com>
In-Reply-To: <20241111023412.3466161-5-ye.zhang@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2024 14:25:11 +0100
Message-ID: <CACRpkdYSBTvMdQtJrLza2=--dz49Xz667h7p15P+5zVm5nji5g@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] gpio: rockchip: Set input direction when request irq
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_052525_250352_AF6E58A2 
X-CRM114-Status: UNSURE (   7.41  )
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

T24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgMzozNOKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cgo+IFNpbmNlIHRoZSBHUElPIGNhbiBvbmx5IGdlbmVyYXRlIGlu
dGVycnVwdHMgd2hlbiBpdHMgZGlyZWN0aW9uIGlzIHNldCB0bwo+IGlucHV0LCBpdCBpcyBzZXQg
dG8gaW5wdXQgYmVmb3JlIHJlcXVlc3RpbmcgdGhlIGludGVycnVwdCByZXNvdXJjZXMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5jb20+CgpSZXZpZXdl
ZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgoKWW91cnMsCkxp
bnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
