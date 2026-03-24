Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2382AF54ADB
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 17:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrUAmCLxgY6piMBVXb7DX1S+yi/Sw3xDSYKi7dWjU9o=; b=xiB7+r+Ix1kJSx
	Rj3Vf0URqSHSnSH+YF01zhO1ykb/pkl00mnmtOwj98Dm+tVCGQ6Y2ocx5fS44GLm6CZf1T/v2T1sW
	nQwj2A6rDfoMJJ9mF0YWgBOjjMCMlwSnyHCaqVyZvgZK253axcidU6xgqCIuPsYZ2sKFVPJlRkBW0
	FVMRf7edR3hfxXAPq2W6PcsjSCCmGv2f1l1dWfwtir1DBgK27L2Y7P9tk4tmcFlPrbNKBkwniWEE7
	X9Qg9vHi6ZbvUlPXYHXmstOSLmGvx7F2VNZ9sIDgV/wp9Wxs/31KiGkWN8kndn8PZIqoLJVYWSz2T
	fwjWcNrXRXMikFdhS8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55CN-00000001yAE-1bkw;
	Tue, 24 Mar 2026 17:05:47 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55CK-00000001y8a-1IYE
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 17:05:46 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-5a12c19affeso158578e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Mar 2026 10:05:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774371942; cv=none;
        d=google.com; s=arc-20240605;
        b=ekvvo5ce3pK3RBYXXrrqM19uhy9j73TAaHbM5ksvhxUekJBpYe+6/5VEDiLLWNNj0+
         5a9EP7zoM158p3JdWRJ8CfuDHy6MKRUIg+T5WBij53yU0HVftd1Z+/MAKlMlznuaQGoP
         /8zCsJMdjQ1qtEHagLAFOCu5JEmYwtoGFqmem6Hq9vD6gobII5dr+5xdg129neQUuXT3
         ZYV875Aw37L4wz1etV7cNpjdDNP0iMGP+W5HbFzG3UHHeSE5OnQrHdlCNYeurGGAKxkO
         jS7JGkPbYbnCiQHTqPkJjYb/3nWK4mN+50IumUOBjjcj6Xib5LzporfpJgQ7g3r8Smf7
         Dcrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7U+uS9u3k8MKiXu31MQXeVeNe3hExuIgcOumm3duMAE=;
        fh=6iYBISgaAnW3TlDkHxr2HRvHBZUXISwncsQyh9y6Dio=;
        b=cl7NNCVccovhStc43dQSURUXvY4UNrTBXT3XT8dcIhNqpC9eKQ3Jx1QYLWEOZUxoCk
         6VeWPmlIMrgZPxqux894AVISSOroW+dYdjFoBtMkvsCEu8BMbGRlCIPxaiGpCHCRtFnj
         OrCHIUgH3Mx0QU/4d8QnrLfSuK6gVCevOdLyIyyJafHIP51XfY/5a2MjFfh1R8Ia7VnP
         mMex6hAoSPXO7s9Nja8xMebKxJRXPp808eZ6LTCbJyUR2hzWc9Li5gX0AXaFMRJF6SkC
         SOJ+w3635MQoB7MHveeFXv4zIWNzrc/Xn3OTBEKxXIeqL+FapHLcRoZ3Ji2VRG4KG/Ca
         TI/w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774371942; x=1774976742; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7U+uS9u3k8MKiXu31MQXeVeNe3hExuIgcOumm3duMAE=;
        b=SIJ3bPgieq3lKlKKJ2t5LtmC94oj5l25nbD57LA/AbOOk/nseFJTt54E4beAu6DGSP
         qRtojjy94K0B4N4c4khj+NCUrCAW785tZEkwxdJ6Mm/bv0Tg9CJCpHDi0f4rNbjqsVX7
         BM6YJJGmbyhQteyqeL8ad76G5qzP/sSqGMadqvjkIuMgqDgj0wtM/WQmeTENCmQ/fZuU
         dECK989CbrIJZGp4xWUf1Uxt/rsCJtP4QlRbvjg5mX357kwLhN9maqe7T9oCzEfSve5E
         WNfbMHvOsHgyku5IqIC2ywLEQB5RCTKeeuwabMMMKBSn6Piu5T0QtTP/MEQ2tSR1Tl4R
         9YSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774371942; x=1774976742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7U+uS9u3k8MKiXu31MQXeVeNe3hExuIgcOumm3duMAE=;
        b=AK9Yqy6nOEuFsh/qE/hSkSP5qkMJHXVwtEo3fwVXNj2DmOsSO7WlUxRSysAu2Y3Xfq
         FcK0qG6AzvWW8rioQDV/zzLkQXjGJNZCVbIguR40vwJ2wzmzwwbcLMsY2PJL+miuHYaB
         PEAPTKDn08kMWVUBGAUJAPl6UhEVCYvYcCNkFTlvPEUmkCzqaMOmsHUj7u6O8z7yTTiE
         miUfasPbsJU3BYPt5pLmFWlMh7FbCs44SUemLqfib84gRKah/pMdTSrE5ykAojymZBds
         CIWEPQUR8erOblhWB7JEOpLFUClzWJcTtt0tCvMXMoSp0zE6HwvX6IVy4zXP+JyUvvoX
         G4bg==
X-Forwarded-Encrypted: i=1; AJvYcCVUdQpl+kqNpbhfMS+tirF8SndlCLWMOMOlZmqaAy623whc8N8h0uuA3GblLNBAp1am8+0LFdBZBMCvZgdBjQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+wl2wskj9jaYiwBUxO3cVOJaZXxSOVwtaEgH9yIK/Oa/fFcjU
	ygJNDzzCjpgkkETv9N40b97H2hShNcKknfhHa+wJJGwnjRoGprGJo4cjRYis+OIP6+/pmT1r1g/
	PZlsa5kitdUQGFpGn3B6jwKNC9qucbN4=
X-Gm-Gg: ATEYQzyNd1I9De1L4Vnajda4PJYfuYgPgBQGDjgDa55Q1ZbsV35tmqCQ+75/N8mcF8P
	WuqUi2Nk6eAlQ30HECebQeAx9hyTmKUR4n/liqdkAcN8wA199+hzC1dbRMQm7rhK/dBocMjQfU3
	dvXwAGnUHmlRXtSvpcBxdK8U9+iRWfHZYWCJhRlkWsSFqK6AIx4V1L70y3UyZVCjVQnFRRVm0jP
	exwSz9D/SiSA0YbQFVviWce2RhqzEE12BBvuUwME9t6bXqESOSdI50SK1Govd8Wt40Nxj+70S6N
	lyMcfOKKxqQqPHu7ZmRX5BqfT63czu3+qQYnTXSC+tbJ+JRLL3pzd9ju7vTNkyVK9o7bYKPU
X-Received: by 2002:a05:6512:a85:b0:5a1:357d:8d5c with SMTP id
 2adb3069b0e04-5a296217bdcmr1702664e87.16.1774371941838; Tue, 24 Mar 2026
 10:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260313131058.708361-1-festevam@gmail.com> <177437057319.780275.6126712599317976655.b4-ty@sntech.de>
In-Reply-To: <177437057319.780275.6126712599317976655.b4-ty@sntech.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 24 Mar 2026 14:05:30 -0300
X-Gm-Features: AaiRm52B2IjL4-VNNNNf6qbXItPEmRzE8Gd8zkY8yJVdgm6pvTVEQP-i1uoWhTg
Message-ID: <CAOMZO5DnC9ZB1w51iHQUmmhhAs4RSy=B__Es4=zgtfSvbCWEhA@mail.gmail.com>
Subject: Re: [PATCH v7 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	shawn.lin@rock-chips.com, Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_100544_369349_6811A594 
X-CRM114-Status: UNSURE (   8.50  )
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

SGkgSGVpa28sCgpPbiBUdWUsIE1hciAyNCwgMjAyNiBhdCAxOjQ14oCvUE0gSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cgo+IEFuZCBkcm9wcGVkIHRoZSB3YXRjaGRvZyBu
b2RlIGZvciBub3cuCj4KPiBQbGVhc2UgcmVzdWJtaXQgdGhhdCBvbmUsIG9uY2UgdGhlIHdhdGNo
ZG9nIGNvbXBhdGlibGUgd2VudAo+IGludG8gdGhlIHdhdGNoZG9nIHRyZWUgKGFuZCBkcm9wIHRo
ZSBzdGF0dXM9ZGlzYWJsZWQgZnJvbQo+IHRoZSB3ZHQgbm9kZSwgYXMgdGhlIHdhdGNoZG9nIGlz
IG5vdCBkZXBlbmRlbnQgb24gc3VwcGxpZXMKPiBmcm9tIHRoZSBib2FyZCBkdHMpCgpJJ2xsIGRv
IGl0IGFzIHN1Z2dlc3RlZCwgdGhhbmtzIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
