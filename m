Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385B4D39014
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 20:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kEfEqZ6ZZrf6HPCBf3gjAVGK2x2UGFONxwrsO/sTPeU=; b=L11H83siacwAyq
	vi2dC2cxWngzvyu3qn5rIQt+czRXvD7LKsw5bQe5PTwKE4ZIhew/C6MRtwik5qAuGewMC6lzYAAzD
	v7rQ3nLvJNSiLvx4n0ezU0+EIQ7RGUcP7tDP6xJgrgqxCAW58vbCMSh3KipNiyoVNDfdg1kWp3nO/
	UUfSykhqIUTSOTjztqIbzK3/q0tbDGHhaVZGU3yTrpXADl63MU4xfb/PzEPXdEvcCr1k5ZTNzNM0t
	31X2M0UgLvxr2w4kbfNtXAYSDMMVZdnb8fNHxLY37ZiJR/lLs4gjNIWLeQT6CLibuiGQKYTOs3uNF
	+XbwZFlj8ChqZNVoljdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg77p-0000000AZp5-2xZu;
	Wed, 14 Jan 2026 20:05:53 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg77m-0000000AZnq-2Zlr
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 20:05:51 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-45a81568eafso82207b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 12:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768421149; x=1769025949; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpI70LQBgeMY8PyQlFNom+Ptt+/a/oIMAHQDDzPL9P8=;
        b=J8iRqH7mLco9TGmXyV/KFR9RYTIL5KC2UYWqrK82NOJyLkjCHV1EUQKiDTtBHLx3tP
         8oXpDnbZ1nmyShDtIU4CRgElk2JCT7C2Jvn0ItoegZKaiNaz53q2Jvxfg9i08KSoC5vE
         24ndNLuuv5a3Lvix9jydNXOm5up/uXSz3+dH83CmDb3aaAAVVUaLMalbcriWZ7oLWCRm
         lOuiU0bDpfK1KTvIbcYYeCrJQkzpdwWGocMwsqsbGQ10xi9H1UyEicGyQbHP2mUlzHtQ
         nRq+I9zTE04ncEBQcMP/DAhm60fU4U0nnJHOiGasIvSBLnVvEwN511WMXSFYaWiJRBWp
         13cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768421149; x=1769025949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jpI70LQBgeMY8PyQlFNom+Ptt+/a/oIMAHQDDzPL9P8=;
        b=G4D73vtw84yKSlqDDYqBnygy07Uqe4cL0yliR8Sv98kVSWNYHC/jSPimY2JmnSFi7h
         Lx3/f7HAfbYjLr8r8cXDYfHURUAojqyXrv2Oi1SwcwS4sT/PBFVaGrAwqwSfpyXOJrIL
         IzUMd2CMinFSVQw7KVHoJBsbcNdpa160AcNCWesu9YPXDTJuisNcsN1PN3vuWjPeBlOJ
         r+024R9VeSTgYNvPUt3Kad9TEHZjZ1u/osjGiXeRMEybO/h/xiiABsjIQImrA5ODjpDz
         lncqxYp2O093KEHzdLTuKkGV2vuFvhah3MVp6CZAra6fp6vfnf4ox51skXLm/zYqgc19
         Rkhw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ2XpTDu+XYihYi0DWMzxcsdAWWe9Z0dUyje51cPkWhAsnHYAUrgW7XVMXdNOetUOV/WXQYSiGHekEkW1YIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwdcTbNBqzgEyrFJWS+3y625OiC2jn1kV5N1XrloN/6tJKHvRuN
	P7pVD8vQLBA9iS52rgp22GHmm1x+B/ssGEvaPGpGRZJdkf8wFusYlaTburWrankjKF3YPDFR0v9
	QjKZV2VhVKoQQ3VdvuAYLADurbHZqbGc=
X-Gm-Gg: AY/fxX5Gn/TDeSCcNbla7CAejm32p2wgkPvt1y+kfo2hsiMlRvSf0AwwUAmekN8kb5R
	EfzsImfrl76QXwXrezkv5BNvMBLX3n6w6PJ0sTLvsxheBeDGM8OREApVcs4cE6Zyo1s238fA6vW
	usxe5pLPJewNE7XbiAJUeRvt9XZTo73kmb5c0hvDJmd8GyYMh0dkbmed0roczf6vQ3CcZJNtpxA
	DtDOrFRAnEB7Fd6Er2PvQ9Rg++Np2I0AwmUZF+qFqZUzOB9Dh9SshQmMvg21yTJSUT10LtANk5D
	vEdu4VusUwXiHC3yFj0zaeG4AHc=
X-Received: by 2002:a05:6808:14cf:b0:455:ee1f:e1c3 with SMTP id
 5614622812f47-45c712d9f7amr2252612b6e.13.1768421149141; Wed, 14 Jan 2026
 12:05:49 -0800 (PST)
MIME-Version: 1.0
References: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Wed, 14 Jan 2026 21:05:37 +0100
X-Gm-Features: AZwV_QiNaJhK34f6ekkGFZ78RLn4lnhtsyV7ZC9RQaQvGZSgSd-F3HF52fbRTD0
Message-ID: <CAGJh8eDTeLgmnzVy0Wr-NjQ=7Vw5zG92FDO2pcj9UWY3m-8yhg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Fix sd card support for RK3576
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, 
	John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_120550_660635_F0A97213 
X-CRM114-Status: GOOD (  11.18  )
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

SGVsbG8gU2hhd24sCgpPbiBXZWQsIEphbiAxNCwgMjAyNiBhdCAyOjQ34oCvQU0gU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gVGhpcyBzZXJpZXMgZml4ZXMg
dGhpcyBtZXNzIGJ1dCBvbmx5IGFkZHMgc2xvdC1ncGlvIHN1cHBvcnQgZm9yIFJLMzU3Ni1FVkIx
Lgo+IE90aGVyIGJvYXJkcyBhcmUgYWxzbyBtaXNzaW5nIHNsb3QtZ3BpbyBzdXBwb3J0LCBidXQg
Zm9sa3MgYXJlIGFsbCBjY2VkIGZvcgo+IGNoZWNraW5nIHRoZSBib2FyZCB0aGV5IGFyZSB1c2lu
Zy4KPgo+IFBsZWFzZSByZXZpZXcgYW5kIHRlc3QKPgo+Cj4gQ2hhbmdlcyBpbiB2MzoKPiAtIHJl
bW92ZSBvZl9ub2RlX3B1dCgpIChIZWlrbykKPiAtIGNvbGxlY3QgdGFncwo+Cj4gQ2hhbmdlcyBp
biB2MjoKPiAtIHVzZSBmb3JfZWFjaF9tYXRjaGluZ19ub2RlX2FuZF9tYXRjaChIZWlrbykKPiAt
IGFkZCBmaXhlcyB0YWcKCkkgdGVzdGVkIHRoaXMgdjMgc2VyaWVzIG9uIHRoZSBGcmllbmRseUVs
ZWMgTmFub1BpIFI3NlMuCldpdGggdGhlIGFkZGl0aW9uIG9mICdjZC1ncGlvcyA9IDwmZ3BpbzAg
UktfUEE3IEdQSU9fQUNUSVZFX0xPVz47JwppbiB0aGUgYm9hcmQgRFRTLCB0aGUgwrVTRCBob3Qt
cGx1ZyBub3cgd29ya3MgY29ycmVjdGx5LgoKSG93ZXZlciwgdGhlIHNlcGFyYXRlIHByb2JsZW0g
dGhhdCBJIHJlcG9ydGVkIGluIHlvdXIgdjIgdmVyc2lvbiBzdGlsbCBleGlzdHMuCgpUZXN0ZWQt
Ynk6IE1hcmNvIFNjaGlycm1laXN0ZXIgPG1zY2hpcnJtZWlzdGVyQGdtYWlsLmNvbT4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
