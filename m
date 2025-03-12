Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8A51C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 08:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtXG1S0qXJ8IwAJSUb6viN/wyB1KmwurN4j+sQbCssM=; b=fGAAJhxqdmFK/K
	/CBIjQnKMAnhaSWwzx5jGXrC567JaoTxNIaMcx3H+Ivx1WgsE1WQzW4Ydp24rvEI+50u9WCzx2p3g
	RjkmAk+/acyjpaIleyACFAdA0gEQGUdhxZxkV/6XLp2RO4r5ojup0iukzjJ+hz7vdvFzhf7d0EAvd
	pp1Xv52zdmfdVgn2XnY6RE2XnJKdPmfPgduYBfPFOl822fIOcS8zk3gIOhspNmTH4DIlUvRhKS5Xo
	7xhtE/dKk6770mW2fPWXH3Y+RuCit5WBYMrY4wXxkR5B8tU5i4FFpelD4RzF7P5xn/fxR0GoF28DM
	S6UteYHVWq3cgSEn4ebg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsHlh-00000007rrM-300f;
	Wed, 12 Mar 2025 08:48:49 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsHk2-00000007rhN-3BTF;
	Wed, 12 Mar 2025 08:47:07 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-abf3d64849dso754314066b.3;
        Wed, 12 Mar 2025 01:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741769224; x=1742374024; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cboWh7VbAPzsBQYxskHVNAVDvc1UvB0tBOUhT10tT7k=;
        b=nfTy1AI5G8SG+RBoXUnVyGHNPxBzimu78nBk5pAYd+7SvMVnCiADgFd5VBNbekdPqU
         qor93cvg8MkNJ4Zr0zEwgQuthCe2AtDejlJ+mdEmG6Ut22DWvHdi3rZyURzxxSTJVMNv
         Qu3WaJcy9VwCKXiDrDOkvo9QMkw1p2U7ZycKVM0Dj2k0RqmsbW4kLnQ2UKhi/6whI2Xx
         HlqDEx9JVhsjXeYlLX6bk5BPas6bg/a73a3w6GXuy9PIlG8z1E5RIGeCcZowCfGLqQ2m
         HMpD+R5qRQhXdqXfz7zYFdb4qT7Vhlejk/7bYU74KhckkAC3lbXjHyIEmrmwK/Aqtlv/
         jHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741769224; x=1742374024;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cboWh7VbAPzsBQYxskHVNAVDvc1UvB0tBOUhT10tT7k=;
        b=HoTsYaLxdnQ6LOAaINuN13Lbl93ceFicy1FaQdVeIR82Fw7CA8cLJH6MqidA5RJD+8
         VHL6xeJ18uBg5QvTQZivxVRi4ZUfExhsIA1e2PSpxbaTCuyueZ+LBPWTqc4aUZyBcW6P
         GqY+8x3JwdZFC5Fh2i9IIwXNBP8a3ws7Kpsy4VwdzGsoUWsghaQb9SKTosOB8RQCc8W7
         fVIp6Nf/5jkjSSmStQheWfzKJKFLCxzrJlH7Wb1lSL1gbW6wnICjiocVQ6SErsDIp30v
         2jqHiAeLaBsxsKahET2Reh6klZDHFRpy+zQI8gaN0GCzVsLsdfgmyzk+7MbpUAHIp7yt
         Mb4w==
X-Forwarded-Encrypted: i=1; AJvYcCWSDlSd4OtYiiZm7tW/maKLs0g2KGgYu2HwIp36Puedm13mxDrynB3MjZf6bdfccjR0bntjWa+woslpp38/QBk=@lists.infradead.org, AJvYcCWypV402wOoW3oLR1NXURjRn7w3NZoQUGIWzfDfycvUYt/Xkv+vrYTNWkPjAJCcBLyoBkTvIzq4HYYQeSXzoj6t@lists.infradead.org
X-Gm-Message-State: AOJu0YxGXR22PaINVUFTFil4uz6ZCa0M0nYZ2pGwr4Po6CrXpVjAjLeN
	KLKmd5CuhDSnInOyUBkj+Ye5Aen4uFc8Qtw1tkBfBAKh4GZQwtCsNsvkPg==
X-Gm-Gg: ASbGnctlOv68OPnRMF6GZs5+1+mKDcTGs5wD7byI1mq1XuWroQoeB2rsR31G8QIXZqQ
	JNL285G2Cf49RQDJfuMZ36CPDFW1KCb0nEFa6dfachz/sL1tdqzALgx5QrXJk/tRndEOvVefG44
	vkUkbIelGom/gBaHOGKty40bqk/2oeVjOuzekBcVLp7tBB8YCq1EdU/IbGbreU6fqqB1XN3r+dU
	02R7s+bS2x40SxsNrnoX6Ql2ewuqORlK9H4EE696mALOpZwunZ6mndb004McR5UclQWWLeLGss7
	Fp04qLQ95ZUnZvq0u/w796EFjqZLDcLvwfUaI4SeTL4gVYgbF0KC6d+nxBN9a1HxjH/qjFYQzvK
	tZ+FqXOtVaKO64XeDp5OdkfrFag==
X-Google-Smtp-Source: AGHT+IEAytC6C4YIEA0wGggBQ8yJVqTmWPsicgMCpcYRy5dK3ShRtq/kfhiIN8zCf2YzKqtUcKA+Bg==
X-Received: by 2002:a17:907:97ca:b0:abf:5fa3:cf94 with SMTP id a640c23a62f3a-ac25263c78bmr366389066b.22.1741769223745;
        Wed, 12 Mar 2025 01:47:03 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2865fd7fasm609864366b.29.2025.03.12.01.47.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Mar 2025 01:47:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH] drm/rockchip: vop2: Fix interface enable/mux setting of
 DP1 on rk3588
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250312064218.524143-1-andyshrk@163.com>
Date: Wed, 12 Mar 2025 09:46:51 +0100
Cc: heiko@sntech.de,
 hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
Message-Id: <695656A7-BF2A-4031-A9BE-659C27F311DE@gmail.com>
References: <20250312064218.524143-1-andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_014706_796058_C2A2C830 
X-CRM114-Status: UNSURE (   6.67  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgMTIgbWFyIDIwMjUsIG8gZ29kei4gMDc6NDI6Cj4gCj4gY29weS1wYXN0ZSBlcnJv
ciwgd2hpY2ggYWZmZWN0cyBEUDEgdXNhZ2UKCgpBbmR5LAoKR3JlYXQgZmluZGluZy4KTm93IGkg
c2VlIG5pY2Ugc2NyZWVuIG9uIHJvY2s1aXR4IG9uIGRwaTEgb3V0IDotKQoKV2l0aCB0aGlzOiBt
eSB1c2VycyBhcmUgcG9saXRlbHkgYXNraW5nOiB3aGVuIHdlIHdpbGkgaGF2ZSBhdWRpbyAoYW5k
IGNlYykgc3VwcG9ydCBvbiBkcGkxPyAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
