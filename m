Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D89FEE4E9
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 12:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjd+z2/wpjSDpESYfeKXLJRdzJEXkr/v+SdmzkdsPGM=; b=TNQJflIW7Qg0G5
	7v5CgvX01Wgg6XL5iDjcxwx3iDW1uDel46Q9/GgeBfF+5u64aZdSfc3Q6huGHiGgk+gUGsLneyWc6
	RwcLH11/g7jeVOvwbUPoiFMP4lCL8H8LRXYv2RMpDlNVxLu9mkQyCGnePCurnbBVD1kRSksvSqrJW
	y+cHtQmA2/Ep7VQcyG25uhvryo0/9wqXV2EDxEOeMZVlITxiZs2bXm8Lnv/5UcdO0S/JLZqEtdQbY
	b6cR+2iftkqfZfA60QfL4dywRKx7e4T7qe8l4BLOBjx8ap/F6NolNCgDKdfm6l5MM76qkKBfnf0F0
	O55WrAmhECCbYJwntPTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwJEt-00000009orU-2DF7;
	Sat, 28 Feb 2026 12:16:07 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwJEr-00000009oqs-2btG
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 12:16:06 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-389fa5e55e2so42520401fa.1
        for <linux-rockchip@lists.infradead.org>; Sat, 28 Feb 2026 04:16:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772280963; cv=none;
        d=google.com; s=arc-20240605;
        b=FYrjFXvQP97z4oAF2PKo/kMOJ3Lp5VNfRjZAHsbKAnOQ5ZTDZNJF82I9RYlTEhuUOi
         qoZAiiz02+AL66z0oEQ8oVNp/8g/nRHUMyo+RHs/9m0nO66is5sGDGCwhqDkakZilkGr
         pjcCSeKsN89EAhvYK1Afv5HhQcQ24S3VOsczHfftqefkdOjg57FQpHy4R5hHPt/sa5mi
         EH1lUG2xH1UspOd/IRI8ErDfGaNwob3sAakIE2FQSG+EmpcDEFHIk8loDoUQFtu9zwhJ
         Jm2ibT/3eSNwgEPqbwYGMMSQgd7HjMqFrQpacuj1aEdPlMiee4d+bijiail/uFsSh6Ly
         3B5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
        fh=gUSIuSpVRoJdD0Qe8U3CRLG4vKETymbtvdBYd54HlPA=;
        b=Z4CTzNjTynygXRbcXgfcPqe4LPEcn3j0kmgxxY9i2r7KOQBI0cNNL+49p44O4TLBxm
         3ZvriAYvrQ/RvSVl1B9S/BhLE5AjS948bXltZd2NQwSJzEgk70bLLBxJ8Ikinr+gGo98
         ewL5xqRaESkBZ9RAMmIs0eQFWZmFs4G40mzK2swVWAN558ih6jj7jJ6bpuS4mdNen2WX
         smHtiWnrj5FMS/3wWD71YddHK8y0u/Tb/NL+8jAvcwQvI/wQsz4hYAGA2r1I2KmhU4QY
         jHsrKD82FiDAj9dv6bsDY4Y4G160YSscUpIWisIx6Xfz7COkFBSDnpzS93KS8pyraIPe
         G7vQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772280963; x=1772885763; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
        b=AdD6x39LTIQg1X12o7B0Bw6RzfBnvzqtPOSs5fKi9EyjI9jfLOMn7Ru7DfattlBpup
         OiGapLiBoGpKYZAeL/awTb9BZWG6y6PjfL98xTLqNm7sB85vzCuXdRqlV1cX2IiZ/4rY
         DFE2SYkRBngfa/SaJRePgaWS+eueC6d85CMBYWRK+TeLx5LdNMGP5mzO7tl8Ho3vskwM
         DqlU4sVsDAYnrw9A4I5Hmz39M99DD/AHLGHhSskuoLO+N7lqsPh9564SHcgdnUslgbt5
         O/m59Dg6ts5tUkdjz82QYyi3yBMl/uL+Ydzd5R8ADj0tbDK98O535xgBabSVB419r5tT
         sStQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772280963; x=1772885763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YH8/n97vsAqRvTzgx5109fU+90/7iudpKQTfhUrv+MI=;
        b=mDXRV4gEBFm/pdKchx7uXKOoTlux0Pb2u5jajt8mSZQySP+hbic4OXty8RG6mNgMF8
         HmxKWSkf1ww+ucb2QPwA7wStzpx25LYWcKGSis27TBzlhVNs0cjEg8ExQtPdenO3ItQm
         VwD8pMz+kjaxiE49Dx9OlRm7qiVZQvz4IjeOjeysrwZDV2ox9Z+yYykAiki3QW0ixtx/
         uC8tTCOmO68f6P9phywdCyqAH2Hpm5cEQmOgB5cAestw+WE33Y57UA3FgYoJN7Sg57nV
         noWqVfJ3T23TeKRr+MEtsHrXScIQJzNVOKe3GRwV6CjDDloiS79I/OKQqTWVRp5FuL5b
         l7Qg==
X-Forwarded-Encrypted: i=1; AJvYcCXzlxtOmaWhQhpWxiblbnT1piAv6ddCOvjjBmKf6Uc3T/lU6uamwl5zxhJLWSQ44AMSsekfW71I0W8ElkvkSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqLjjWDpjxSoE7KReVZxYRx5Bkw2uqCsWVYXilcrKvT7g+8ht/
	KjmuYaf70z5z4EaSkMJv2y8z2vFeB41zv4VG8kq017810bDmGzoeM5t9IMa//wmaoNGNnNMZzmt
	wah3clVRGzPR7/zIZsUBPcsKYHqCPSu8=
X-Gm-Gg: ATEYQzxav4YXKEA/m8ei0j6o4UlGoHhbjidTk+Gwq9CFwILSrRA4unVjVv3JkjSjlVE
	04Mwd41ZHF84UEN5AOfsxptp3vzxdWS5sG/LF2lL42u3pqiv7cOVNNZ80je/KBAkVPAxO/5yL8f
	j79ddcu0/qSWuK78DIf0pAMj2r7Pqzu5PMn/ysEK73CRoOKNp24CJwNbABLiF+RFPcHas8XNKea
	dOYOyH3JBBKVPZL83kwc8HQdmC1ROBNaWMqufWGjv6tdyPpPea8Y/g/Sy1dwgUOHmZJ4ho0L3B6
	on4T/rVf0a9daGZWEJlCfnJ49cAzF/bpzni0v6aLXhDfR+zCOCUwPjeLPIqkn2PUhJzN+4G6
X-Received: by 2002:a05:651c:25d1:20b0:385:f235:51c9 with SMTP id
 38308e7fff4ca-389ff363773mr38322271fa.34.1772280963065; Sat, 28 Feb 2026
 04:16:03 -0800 (PST)
MIME-Version: 1.0
References: <20260228013257.256973-1-festevam@gmail.com> <2819870.mvXUDI8C0e@phil>
In-Reply-To: <2819870.mvXUDI8C0e@phil>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 28 Feb 2026 09:15:52 -0300
X-Gm-Features: AaiRm50iXphLt7SQaVdrv0ixM_J83T886mNYRbF7vgl6z1M99dJ7PFfQrxlgUko
Message-ID: <CAOMZO5CfmS2UEd8JwbR7WHRhTVR4m6cOZUBxhXWAf2zxNhY-Fw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to
 ethernet-phy node
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_041605_682431_68B5FBD1 
X-CRM114-Status: GOOD (  10.41  )
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

SGkgSGVpa28sCgpPbiBTYXQsIEZlYiAyOCwgMjAyNiBhdCA4OjQw4oCvQU0gSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cgo+IHBsZWFzZSBkb24ndCBzZW5kIHBhdGNoZXMg
dGhhdCAic2ltcGx5IiBmaXggZGV2aWNldHJlZSB3YXJuaW5ncy4KPgo+IEFzIHlvdSBjYW4gc2Vl
IGluIFswXSB0aGUgZHJpdmVyIHVzZXMgdGhlc2UgcHJvcGVydGllcyBjdXJyZW50bHkuCj4gU28g
d2hpbGUgdGhpcyBmaXhlcyBzY2hlbWEgd2FybmluZ3MsIGl0IHdpbGwgYnJlYWsgdGhlIGFjdHVh
bCBib2FyZHMuCj4KPiBTbyBmaXJzdCBvZiBhbGwgeW91J2xsIG5lZWQgdG8gYWRhcHQgdGhlIGRy
aXZlciB0byBoYW5kbGUgdGhlICJvZmZpY2lhbCIKPiBwcm9wZXJ0aWVzIGFuZCBhbHNvIHByb3Zp
ZGUgYSBmYWxsYmFjayBpbiB0aGUgZHJpdmVyIGZvciBvbGQgZGV2aWNldHJlZXMuCgpUaGUgcmsz
MDY2YS1yYXllYWdlciBib2FyZCBkZXNjcmliZXMgdGhlIHJlc2V0LWdwaW9zIGluc2lkZSB0aGUK
RXRoZXJuZXQgUEhZIG5vZGU6CgpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxv
Yi9tYXN0ZXIvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDY2YS1yYXllYWdlci5kdHMj
TDE1NS1MMTU3CgpJcyB0aGlzIGJyb2tlbj8KClJlZ2FyZHMsCgpGYWJpbyBFc3RldmFtCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
