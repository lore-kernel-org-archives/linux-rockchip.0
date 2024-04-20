Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C18EC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Apr 2024 05:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEl34pIYREhOoWCdLBCC0oyfz59W3IN9eYvXy9zWFPo=; b=xEl17M4TaXQ64d
	5AJtTrTZQ2AlEQ1fdHHSHxZTsqxyOW0RUSLTTI1719S44hK5tAQaiWesIRax1xFUpskXvqZDixW82
	EbUwxjS6hgCkIvk5tIk9a6hw5mj4Fm6fZhRQAT8p8WGRRJkGr2koUOtkxicR+D2Ep/IyONoVh4mGj
	kK88SpGR8uTrxkvBJj8RbdGE7Uv6zt4BgGCvHQsW5cr85zYBlsXJKsXm5R5ka0icrExYI7G9n/tbN
	qHHw1s1M7R2fWfBnMdb3IsJ6efDpbGkTtOLNCEDLjwydRZVS4XOZSp/hMFY+KgDYn0HRqzV2dM36l
	8xvyI8SFzdit8tn+ITeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry2yf-00000007psA-2z7a;
	Sat, 20 Apr 2024 05:09:29 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry2yc-00000007pr4-0mqE;
	Sat, 20 Apr 2024 05:09:27 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3c749aa444fso796434b6e.0;
        Fri, 19 Apr 2024 22:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713589763; x=1714194563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zj2LiikqunHRasRXmuEtpJTW1RcqRjmmWOahD7pquLo=;
        b=RVAutfvNi9QnPsb0sU6S5jqQkL2Y3vAuDPvMg0Mt2qNL50iSE4elzhFGxcI/CsRyNJ
         kAJZYiu86Wjk+HTkjkru+QyayBRmWd2+NkL2qHGVKo2Fd82gxfEiMRJ7Vc1n3HDuA3HR
         EvdD1g0cU3pxHzrvhoidmzg0uQIg3yTUUh9vrS1vaYetjq1mbZkXYDj+0nVwlKkOkZ5I
         TtAmsgFgbX5tfYKlJLKpu4/wdpkLqLBOEZlE5lznsFfzjkbipKvkzlYwk73Cd/7gcPno
         PLiqcNCsviI72FNUSE1RttDKsqeVlbrfhhZIL8GKfsCcpnuD6Xus4VoQ3MiqkOl/rMmR
         g67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713589763; x=1714194563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zj2LiikqunHRasRXmuEtpJTW1RcqRjmmWOahD7pquLo=;
        b=a7ILklYKcgMnggVxE6V81T6U8+gnGx2Wyvx3dXgjiSZ4DUi/zhBwXd1XqtOHXfk7qH
         mPzqMZegLg6AYgJC9P3wGBDYmUZOlPn8GT39RnW/1DrD1e3QULADCduzHXyKj5POddaj
         qushzzFlCukDcaYL1ohsaA6W6e9aWCNcFKyECHHZYn3nKMmrw3R42krjfxXd5fqIh5k4
         mdIrciSGClwnBPnDM8zNF+xlgpJt7NWKNwPnCgkJJOG1E01/C4TuJAe0scuiZwon677B
         oxWdRzFG2agyBptWqgm43865zY3Mv7LODvSq2J2d8Mot2YB0lRcH2wI7UiREECWWFbJl
         YzwA==
X-Forwarded-Encrypted: i=1; AJvYcCUof2y+zBH0E95x13k7HZPs12BEbL9opyh+DjzfSdap9/AxjdF7RJk4OFppknIYc8AVXG9cVJeonxm5RPuaqVJmjPcEu5bHhVfcHylTjt9WEtGsnS6yk4IdffvH0PtPvZN1onWfNZfmcWqlY75adW3iS9Sz8BouTNg=
X-Gm-Message-State: AOJu0YziL2yHLAF3/j2nS/1D9KIUEZI168fd6whC8ntyfXC44eXTO2mG
	z3UNpy2zZJMWk2LsuJ+Q4IO5jKIr0148T8ue5sLN8psZYtFi1Hkz
X-Google-Smtp-Source: AGHT+IELx6scJmOUwJTe62jFJmVk1DSdsGKXwe8jKcqr9G80zsbl4g4GQihKDnGL7pqimIyBqUykEA==
X-Received: by 2002:a05:6808:15a:b0:3c6:1500:abef with SMTP id h26-20020a056808015a00b003c61500abefmr4704701oie.55.1713589762720;
        Fri, 19 Apr 2024 22:09:22 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id g25-20020a62e319000000b006ed59172d2fsm4127949pfh.87.2024.04.19.22.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 22:09:22 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: sigmaris@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	sfr@canb.auug.org.au,
	nicolas@ndufresne.ca,
	linkmauve@linkmauve.fr
Subject: Re: Re: [PATCH v6 2/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Sat, 20 Apr 2024 13:09:13 +0800
Message-Id: <20240420050913.182225-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <B9F108CF-4BC5-41A0-A28A-1CA1F4D2CD3C@gmail.com>
References: <B9F108CF-4BC5-41A0-A28A-1CA1F4D2CD3C@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_220926_253182_072027AC 
X-CRM114-Status: GOOD (  14.73  )
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

SGkgSHVnaCwKCkZyaSwgMTkgQXByIDIwMjQgMTg6Mjg6MDEgKzAxMDAsIEh1Z2ggQ29sZS1CYWtl
ciB3cm90ZToKPlRoZSByZWdpc3RlciByYW5nZSBhdCAweGZkYjUwMDAwIGxlbmd0aCAweDgwMCBp
bmNsdWRlcyAiVkVQVTEyMSBjb3JlMCIgZW5jb2Rlcgo+cmVncyBhdCBvZmZzZXQgMCBhbmQgIlZE
UFUxMjEiIGRlY29kZXIgcmVncyBhdCBvZmZzZXQgMHg0MDAgKHJlZmVycmluZyB0byB0aGUKPlRS
TSB2MS4wIFBhcnQgMSwgc2VjdGlvbiA1LjUuMSkuIFNvIEkgdGhpbmsgdGhlICJyb2NrY2hpcCxy
azM1ODgtdmRwdTEyMSIKPmNvbXBhdGlibGUgaXNuJ3QgZXhhY3RseSBjb3JyZWN0IHRvIHVzZSBm
b3IgdGhpcyBlbnRpcmUgZGV2aWNlLgoKVGhlcmUgYXJlIGZpdmUgdmVwdTEyMSBjb3JlcyBmb3Ig
anBlZyBlbmNvZGluZy4gQW5kIEVtbWFudWVsIGlzIGRvaW5nIHdvcmsgb24KdGhlbVsxXS4gQW5k
IGF0IHRoZSBtb21lbnQgdGhlIGRyaXZlciBkb2VzbuKAmXQgeWV0IHN1cHBvcnQgZXhwb3Npbmcg
dGhlc2UgY29yZXMKYWxsIGFzIGEgc2luZ2xlIHZpZGVvIG5vZGUgdG8gdXNlcnNwYWNlLCBzbyBF
bW1hbnVlbCBvbmx5IGV4cG9zZXMgb25lIHNpbmdsZQpjb3JlLgoKPklNTyAicm9ja2NoaXAscmsz
NTg4LXZwdTEyMSIgd291bGQgYmUgbW9yZSBhcHByb3ByaWF0ZSBpZiBpbmNsdWRpbmcgYm90aCB0
aGUKPmRlY29kZXIgYW5kIGVuY29kZXIuIEl0IGFsc28gcmFpc2VzIHRoZSBxdWVzdGlvbiBvZiB3
aGV0aGVyIHRoZSBkZWNvZGVyIGFuZAo+ZW5jb2RlciBzaG91bGQgYmUgbW9kZWxlZCBpbiBEVCBh
cyBvbmUgZGV2aWNlIGxpa2Ugb24gUkszMzk5LCBvciBzZXBhcmF0ZQo+ZGV2aWNlcy4gSW4gdGhl
IHZlbmRvciBEVCBbMF0gdGhleSBhcmUgbW9kZWxlZCBhcyB0d28gZGV2aWNlcyBidXQgdGhleSBz
aGFyZQo+Y2xvY2tzLCByZXNldHMsIElPTU1VLCBhbmQgYSAicm9ja2NoaXAsdGFza3F1ZXVlLW5v
ZGUiIHZhbHVlLgoKTm93IHdlIGhhdmUgNSBqcGVnIGVuYyBjb3Jlcywgb25lIGZyb20gMHhmZGI1
MDAwMCBhbmQgb3RoZXIgZm91ciBmcm9tCjB4ZmRiYTAwMDAwLiBJIHRyaWVkIHRvIGFkZCBhIGRl
Y29kaW5nIG9ubHkgY29yZSAweGZiNTA0MDAsIGJ1dCB0aGF0IGRvZXMgbm90CndvcmsuIFNvIHRo
ZSB2cHUgc2hvdWxkIGJlIGRlZmluZWQgYXMgb25lIG5vZGUgaW4gZGV2aWNldHJlZSBmb3IgYm90
aCBlbmNvZGVyCmFuZCBkZWNvZGVyIGxpa2UgcmszMzk5LgoKVGhpcyB2cHUxMjEgc2hvdWxkIGJl
IGV4YWN0bHkgdGhlIHNhbWUgYXMgdGhlIG9uZSBpbiByazMzOTkgd2hpY2ggc3VwcG9ydHMgYm90
aAplbmNvZGluZyBhbmQgZGVjb2RpbmcuIEJ1dCB0aGUgY3VycmVudCBoYW50cm8gZHJpdmVyIGhh
cyBkaXNhYmxlZCBoMjY0IGRlY29kaW5nCnNpbmNlIHRoZXJlIGlzIGFudGhvZXIgZGVjb2RlciBy
a3ZkZWMgb24gcmszMzk5LiBUaGlzIHZwdTEyMSBpcyB0aGUgb25seQpkZWNvZGVyIHdoaWNoIHN1
cHBvcnRzIGgyNTQgZGVjb2Rpbmcgb24gcmszNTg4LCBzbyB3ZSBjYW4ndCBqdXN0IHVzZSB0aGUK
dnB1X3ZhcmlhbnQgZnJvbSByazMzOTkuIE1heWJlIHdlIGNhbiB1c2UgcmszMzk5X3ZwdV92YXJp
YW50IGJhY2sgd2hlbiBya3ZkZWMyCm9uIHJrMzU4OCBpcyBzdXBwb3J0ZWQgYnkgbWFpbmxpbmUg
a2VybmVsLgoKQXQgdGhlIG1vbWVudCB3ZSBjYW4ga2VlcCB0aGUgY29tcGF0aWJsZSBzdHJpbmcg
c2FtZSBhcyB0aGUgb25lIGZyb20gcmszNTZ4LgpTaW5jZSB0aGVyZSBhcmUgYWxyZWFkeSBqcGVn
IGVuYyBjb3JlcyBhdCAweGZkYmEwMDAwLCB3ZSBjYW4gaWdub3JlIHRoZSBvbmUgYXQKMHhmZGI1
MDAwMC4gV2hlbiBya3ZkZWMyIGlzIHN1cHBvcnRlZCwgSSB3aWxsIGNoYW5nZSAicm9ja2NoaXAs
cmszNTg4LXZwdTEyMSIKc2FtZSBhcyAicm9ja2NoaXAscmszMzk5LXZwdSIuCgpBbmQgSSB0aGlu
ayBjaGFuZ2luZyAicm9ja2NoaXAscmszNTg4LXZkcHUxMjEiIHRvICJyb2NrY2hpcCxyazM1ODgt
dnB1MTIxIgpzaG91bGQgbWF0Y2ggdGhlIGhhcmR3YXJlIGNvcnJlY3RseS4KClsxXSBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNDA0MTgxNDE1MDkuMjQ4NTA1My0xLWxpbmttYXV2ZUBs
aW5rbWF1dmUuZnIvCgpCZXN0IHJlZ2FyZHMsCkppYW5mZW5nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
