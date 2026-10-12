Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BB7FCA9EBD
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 01:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7TafaIbktVdcPItN4QcLtlvprJkSfwvaRqhYuAxvto=; b=0ot7BjeHIaZ363
	8zqXdti+lpzI2UNS2pPPpk17zLYgJKu5cgxaDlpGmD840dsDSp9d9k8+Bb0il6yl1XqBEcgpze5s+
	4v140oPCEf0kxEAyKs4awTyBZ+iIhE2kbSiCZKCbnqgpSg0u1LEHxctQsuArrmyD5FzLNx4TXAli5
	fctgserfm3/To7D0azRxqGEW73hnlJuowNc7Z9weIVYOSDL5nUaBeTEjB3vNdEpo4LiI5MPFFdJdR
	gP29sZ+hHx9/LNGxoDxFB2/X6FsOnyLUqY5UMIafXTkdYH+Ktg/5XtSLrVB7NxIkNGySrfR4wLwnh
	AQM/QLpKbVK50T70RflA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG4t7-00000009YMC-0ukO;
	Mon, 12 Oct 2026 01:31:37 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG4t4-00000009YLE-2Rrz
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Oct 2026 01:31:36 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-46556b9e02cso1059248fac.1
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Oct 2026 18:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791768693; cv=none;
        d=google.com; s=arc-20260327;
        b=LOh/p0lE/cswGxOXV44NDIgY+EQslySZLpMwmWDVJBbDnjscnRGOQWIlIUPDyXI/08
         NUA9ivmR7uGOS2tUZrju8kmOFOZqkxZ+NbycHGWQNn7esaUmrbOyVzNmJ1OUZMLxoAnX
         uw7f3DICwxvKVvw89OeGUVI3sUlLMComz9jks+MMbx/TSSVskiRWDnvBIYKzHGaZewSF
         4D8yoAUDlJ+MNz8Q3R9cPwgUoXcvPTi6etKyYZJ+3kw4uXD3W2XwKtREZlbXlCGexVfW
         gkhQ8PbeXFjN7vYenpyndRnTCd3zwps0HBlbB6zk8uednXI/DXj9eJc3xhaKZO4QrUlI
         Prgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=D69tJqwlSEswdhTD5958trOD3brbFNRONjBlwGMF72c=;
        fh=VxPlNXAEFl+O9nvl/pVzsesN4pDoj8Kgrs1NAKgrtuE=;
        b=oJGcvmsUnuP4V4iVoBjP4tdKCA0dhgaW7qNzYbbanbp9zMp7i8/9H/do1op+q4fgd0
         mPRfh3OMdE6MJ7oYf8/BC4lN8v7CHtXgvP0sf6YdOMdJBW0lh7jbHf1r9dqh3du6j3jj
         xo7QyoIEiYTTes5Qo4ecv9VBKYji50NlmVpjedB2CGgqJt8WldqXlItDczMvLb+vtliy
         7URgL9GUeo9aAgHSEjW8+ZvX6CV0KjBz+FaDKdOyOmNadlsSKhjj73UFlCq2duLlAXCu
         4fEjFH/maAXC9J0s4RYb6HywW6OmPvlDOnFuiQtNTWcsyeadIf9bm3ZgprobYsck3JLa
         FXlA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791768693; x=1792373493; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=D69tJqwlSEswdhTD5958trOD3brbFNRONjBlwGMF72c=;
        b=oFx8uTiMxJq5rpF62mbcFMJlCodIZGh/rKrldgXkMDhvNAErfiWfdPs7dIJ3mpFndC
         oyPNf81lx7PIZLy5DEdqyN5EL+eyNcpIVws9ZOW0CnP4MplIKqX5R/7SmBX7YNsfhabF
         3oNWdHmWRtl5pTFg7sG5AL3nelpKgQLrrnllIK62W3oU8TBQ5E+8lB+KHUq1PofieloM
         ukbcDwLFEd8lLoM2dxRXoUv9fAiG9/CN9T9UcTu5DjIbqLKgeiDpCWwMjHUtWrRU4xBk
         QhhFbsVUP6tmvV/QXWG9aasMyCwp2ZtnNI/sCFODIpTyB7dkQkw8ITOrm5EJtTfUDx3R
         nPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791768693; x=1792373493;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D69tJqwlSEswdhTD5958trOD3brbFNRONjBlwGMF72c=;
        b=0Aw1je1MSITRS1FWu14Ev4lz7hH1t1hWXh5zOfSXHHczhemepkslxzo4LxhNEe9krD
         xbjL0yjxZCQAJAl0sFwi1scwfw5wchVHgDdlweJiTe49yP853FcrsKDjHGARBl+CFwjm
         +SnlxQ/Pv92XfVGqvRdrzdmcQKjRfgJgFYt3um3G2U64TQNU9lW/8ei5bzKN+WLbjNs7
         3bHQpF9D3lZe47uaBxuMOHnmvXjRg48DooMlpA2cnUlTmeQZl9AguDUe+3SFm0t/0pvY
         CYg7+Au03f8hj/wpfakN3qALGaOUSyzbzX6teDlX7W/7yvwkRpEk4ltag+uM/c+dk10O
         yHTw==
X-Forwarded-Encrypted: i=1; AKwUvByOUknv2GYCGSNoGNyocJ4HOTsyeZPdtQ6AaiXJ2Qq97CD856fmwTWAsfEoa1Byr4oZi3d4jqOZPVJs9fpu7g==@lists.infradead.org
X-Gm-Message-State: AFq9FYKJUixgUKcpbmGz97vz7NPjUvLLkql99Px69qiisLbU5iayq/rs
	92EQEeXT3Yw67Iiv0M5UPPWMwfHZw3z07px2i9LcnB6yIKdbZnw2/2J82uDxZ1gCSj7iwUmzotV
	7NM//9rxWHHHNuZESe33XXIGQH8IAkeI=
X-Gm-Gg: AYBFou2/RuN+byvHQAFFPXwRYF/Wx/W73X+JZuAxmJ42Mt1uYLJlnxSH0BRoIrARFSF
	fg7weArdtBVfYwongpfMXDpDsbBTlt3OvMtxy9K0lPBjbbP0/ZrNrjC0WE2PyGTTusnLID1AMQm
	J3AXvcS/MXEgs/qGfes4Hc0fziVqSgNoVE1WX/kF2kgoDd8qW10r3j5ND11n7ofUQDNJ4dXbUUZ
	MJGXTxwOn6pu/RKci48gFLz3AlKmDWMrKx6dlDIqfGjNDkWzyqdYvXAMDyXCjoS+n6xq5mmnfar
	BKATnBVb5OoklQhBl9/XWo0gM//ssa+A7A06AcJUG/CzH5eyrC9ch0M=
X-Received: by 2002:a05:6870:b3c9:b0:470:e96b:43e2 with SMTP id
 586e51a60fabf-4a2a8a006damr5468714fac.14.1791768693370; Sun, 11 Oct 2026
 18:31:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1787667315.git.ukleinek@kernel.org>
In-Reply-To: <cover.1787667315.git.ukleinek@kernel.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 11 Oct 2026 20:31:22 -0500
X-Gm-Features: AclHuK9zZWuXjCE2LSWgrYCxLXd-j7PFIMqmTq5GuyJPV1RCzAMsJ-tdOzTsoNU
Message-ID: <CABb+yY2Sz4cH-uG4RYsk3DveG6m9OSV_4PQWj-8R1zwUC6PeOA@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mailbox: rockchip: Some cleanups
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_183134_651403_3D84D4B7 
X-CRM114-Status: GOOD (  15.73  )
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgOToxOeKAr0FNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1a2xl
aW5la0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IEhlbGxvLAo+Cj4gd2hpbGUgdHJ5aW5nIHRvIHVu
ZGVyc3RhbmQgaG93IG1haWxib3ggZHJpdmVycyB3b3JrLCBJIHVzZWQgdGhlIHJvY2tjaGlwCj4g
ZHJpdmVyIGFzIGEgcmVmZXJlbmNlIGZvciBhIHdvcmtpbmcgZHJpdmVyLiBJIGRpZG4ndCBzdWNj
ZWVkIHlldCAoc28KPiBpdCdzIHVuY2xlYXIgdG8gbWUgaG93IHRoZSAuc2VuZF9kYXRhKCkgY2Fs
bGJhY2sgY2FuIGFzc3VtZSB0aGF0IGRhdGEKPiBwb2ludHMgdG8gYSBzdHJ1Y3Qgcm9ja2NoaXBf
bWJveF9tc2cpLgo+Cj4gVGhpcyBwYXRjaCBzZXQgaXMgdGhlIHJlc3VsdCBvZiBwaWNraW5nIHVw
IHRoZSBwYXRjaCBvcHBvcnR1bml0aWVzIEkKPiBub3RpY2VkIHdoaWxlIGxvb2tpbmcgdGhyb3Vn
aCB0aGUgZHJpdmVyLgo+Cj4gQmVzdCByZWdhcmRzCj4gVXdlCj4KPiBVd2UgS2xlaW5lLUvDtm5p
ZyAoMyk6Cj4gICBtYWlsYm94OiByb2NrY2hpcDogQWRkIGEgcHJlZml4IGZvciByZWdpc3RlciBk
ZWZpbmVzCj4gICBtYWlsYm94OiByb2NrY2hpcDogU2ltcGxpZnkgZGV2aWNlIHZhcmlhbnQgaGFu
ZGxpbmcKPiAgIG1haWxib3g6IHJvY2tjaGlwOiBDb252ZXJ0IHRvIHVzZSBkZXZfZXJyX3Byb2Jl
KCkKPgo+ICBkcml2ZXJzL21haWxib3gvcm9ja2NoaXAtbWFpbGJveC5jIHwgNjAgKysrKysrKysr
KysrKystLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCsp
LCAzMyBkZWxldGlvbnMoLSkKPgo+Cj4gYmFzZS1jb21taXQ6IGE4NDA2ZTZjMGI3OTNjZTA3ODgw
MTk2ODM4MzdjNDA4NTViNTU5OTUKPiAtLQo+IDIuNTUuMC4xMS5nMTUzNjY2YTdkOWJiCj4KQXBw
bGllZCB0byBtYWlsYm94L2Zvci1uZXh0CgpUaGFua3MKSmFzc2kKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
