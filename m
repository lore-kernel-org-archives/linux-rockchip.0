Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F73606A88F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 10:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QhH/ciLo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=Lv9sxcnr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sX2i6UEwpxW8T4/wGp1jbfq+ORE6QME0hRNwkTwPZp8=; b=QhH/ciLoPfl2CLva4DkdqSFsZg
	AyuFFUpkMu4/ul3valz6mIsOhh7YX2HI2jouxyd0Mlx41TwSHITJMXu0eO1+yhg9Ezy92WEiSm9VW
	kFeDcLFlFW4jTmQK8FV41T7SBAUjYHjgyW8CFnyErKS8yA8cXiRa6TB/IqmjcGB9OggaLDTLjhnfc
	CBBsh4vK6yt7aciUtcALHDGRlOXQ2Ln2LCZ16n6NcwFwy0+UbWlDVEEYrGS4tfpK7umPzytl+xnZT
	upLTPs+M2YGwS7PehyMbIJQTAGvlBxTAwrL2hZNngbSJ4BWQHNvZRSH3UrvKv7R/qsJTN+FBdIT2J
	xdglgzxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5pU-00000006Nm1-479R;
	Wed, 11 Nov 2026 10:45:24 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5pS-00000006NlJ-1nUT
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 10:45:23 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c50604721c8so185276966b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 02:45:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794393920; cv=none;
        d=google.com; s=arc-20260327;
        b=AIYy1AUPkWuGRGdLtM4JZn2qEs4xIySFTp88THzF0Z0lj7Lx1yipEqtTgnYO4aDVrR
         x8qK3xu9oxXhUu2psZLReDnuQD7OsxoV1O3bRv18tkK9XI2xn7RDlBwzl7Hd5bO95k5p
         4RN2SSbyQSBm1DhoOGw/fkJk+WkGN/YmRhyLzEvSpL3muf/5FeRoZ738pxQ7rtCEC6uX
         WMhFG32XmrCYMIZT5RWJw9dayDh6H38QArhoK8mVGeQEKs6UBApu/ySGg4xFi1qg1NGZ
         FbbECNSp9HfU/2doHOkx95X1WvqAB1E2RK8w559ZvnGqAvy3FQR9KW9XhE9sFPHL9BrA
         RVHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VcKJabFzTVbjKEa9TZqeK9yN9ffYcu/rnFFvEOpyqps=;
        fh=2t7em/b63ocrfdhiPIaa4DmHooQDwhAlapHtvewsWok=;
        b=KcBBZ/0g6tCJvveXDsJcbQNCPztrZTuJBTzerQNc6lzG5O5GYrPpokyBgPou1dywiH
         HpXh62jJQs/d7o3Kuumpv9RZRuysU0fXh3M4CYCfnqJmGGncMIHvumrYWRtra26j5rPQ
         1NrIbuzXiVM4QAiGaEG1dVqFr6lGTq3StpiwQvx6gfk3nV4BDHCltwjIxuSWMy4Ebf/Z
         x+0Gd58Mz4quDVDToIH1YN1g4yuygSOxKkkWoUzb06WeRh8AvQj9jutNwHJ2U+dJuWFr
         SbG7hsVIE1X+5PshGTfmG2EqXtyZOLabhKwTpaF76RFOeZ0zDlAM1OkH+wrMiMa86DeW
         sVPw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1794393920; x=1794998720; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VcKJabFzTVbjKEa9TZqeK9yN9ffYcu/rnFFvEOpyqps=;
        b=Lv9sxcnr3F6JoqcYF+SHhDpyYS0Wc21e/BxKj4AglkKXprbswWo4R48xx1wwUwdN3s
         +m8e3Wm9jtfzWKWwatDvlHZeTeMjkEXGHvHkAkOJxOJTRg9eh1Vq4ks1XceeRBefmx8R
         hH1mEMfE1uu6hOMUe5z4j9XFaDZ+E9kmivE5EBnpfpNKrHdDtB5r1W6ivi22EhevyZfM
         P+uOnYXtmpADhC6A+fP3T8C+n/7pfyBJup1MmhJDGvY36L5T2rViQqHNfxphSnNVMCvZ
         4fyP4/W32MOlc6ni11DBDKm5rE8Rnkg7eVmfvIUsH597xOLmfee2icTm8g3XJSM/zbMK
         Wjhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794393920; x=1794998720;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VcKJabFzTVbjKEa9TZqeK9yN9ffYcu/rnFFvEOpyqps=;
        b=sh6zcD+pHOYimpEOMzZulJyKsH9QUFRO5Sct2I+9k6ON5Rc5L5YHBOEcliFMSCyMUo
         9s50otO+zRAEckzaSsQ89lSPtAexCHthetLr5afjls69EAswTRTPd4lr+sgtyvbmmBed
         fFhr0URB2O2a0GavcyZNuYAHR4r0TQ8/abYAOkmtDg8HkXSLr79KJDOjumnS9uQngTB9
         1SaMmyATlbdnPGnK7qEfoe6C+xjGc0Dg6bVQMIzTl7kuiDsH5OuPfgwj6Wge4ufW+pP0
         YzvX2jLQ3FHJlXdb27mpPYzo8Da31H4q0z+n4e1tx8EZZOclX0PFjqhr1cWiUN9Ewgsi
         Ci1A==
X-Forwarded-Encrypted: i=1; AL+hErFjbrxbTZwa4FTrHVNz0FUZKepx4GedcMpNTJ9fUYZryJndNS3POvanmhPv0VNYBxjlwEKmCLaI1UBbNa5XIw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9679QtF3+mCF51kvUKDDJ8ZQFhFq6M7PiJmy0u6WzBlXaZA5Z+
	mS8npwOLKI+2Ju1p4+tUg7uQgfQslpuGkKFv1ycnmjYyYWZgbPCnUwMzggjjae6uAtdPHQ+LPuR
	D/iuT5F+bxZxdj1AvZ07OoZ7nh7VN1smS2jQJvjJxku5zhiP7b/FV5DMFxQ==
X-Gm-Gg: AYBFou1/AJ6TCD5goIni640dg2Kz2uEKPDLWMDo0omi3zAOtps12EA8Vqvo4efmZXtQ
	wRbvOI/dLqUjThVxfwRK3zjVld3bUsoeMJ/6Po6Sz2yMijVltrQFVfbU/NXSXkR+j0Z7gX+Jr8M
	j/RiMhziXwbLFrpXD2KbHVDphGrk3SB2B4z3GEci8WiuB9Stc488ojnFsfgHuZBZXMLGTWKDvuk
	Mla2tYE0SM1sG6QYy9vAJzyXwXnru5RT/0K0RgbJgwCbNSWHjk9bONcONfQDdhUWCBkoz1x2cLi
	hvVGfWkGId19iUgje12YrdPt+GYeuDNMQeQeCMwT97hNbLL8xa+3TaiBasZiFo5pZPIveNglPfn
	ShoEPoOYDRH4qhuDR++aXClcsiRXiasnSDoAkhhTSJU/EQjCBnedvA/+6T/aoXPpvqGp6OQ==
X-Received: by 2002:a17:907:7292:b0:c2e:2252:6ddb with SMTP id
 a640c23a62f3a-c5066a84511mr152183666b.10.1794393919375; Wed, 11 Nov 2026
 02:45:19 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net> <dd59d491-82b0-4047-ae98-f8070f6be112@rock-chips.com>
In-Reply-To: <dd59d491-82b0-4047-ae98-f8070f6be112@rock-chips.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Nov 2026 14:45:08 +0400
X-Gm-Features: AclHuK-JFFUWS_xdTW0P5OLa1DScA4kfALrbjXlHmDv-4WjET9Tuop7_ZcygSgc
Message-ID: <CAKTNdwHbxnknob9NdjqWUcGU2fURO5B7V4kTTK+fvEYjNDOLCA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe the Type-C port on RK3576 EVB1
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_024522_504620_31E042FA 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hhb3lpLAoKT24gV2VkLCBOb3YgMTEsIDIwMjYgYXQgMTozMeKAr1BNIENoYW95aSBDaGVu
IDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBIaSBBbGV4ZXksCj4KPiBP
biAxMS83LzIwMjYgMTo1MiBBTSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiBSSzM1NzYgRVZC
MSBoYXMgaXRzIFVTQkRQIFBIWSByb3V0ZWQgdG8gYSBUeXBlLUMgcG9ydCB3aXRoIGEgSFVTQjMx
MSBDQwo+ID4gY29udHJvbGxlciBhbmQgYSBmaXhlZC12b2x0YWdlIFZCVVMgc3VwcGx5Lgo+ID4K
PiA+IERlc2NyaWJlIGl0IGluIHRoZSBkZXZpY2UgdHJlZSwgaW5jbHVkaW5nIHRoZSB3aXJpbmcg
Zm9yIGJvdGggdGhlIFVTQiBhbmQKPiA+IHRoZSBEUCBzaWRlLgo+ID4KPiA+IFRoaXMgbWFrZXMg
dGhlIGRhdGEgcm9sZXMgZm9sbG93IHRoZSBUeXBlLUMgcG9ydCdzIG5lZ290aWF0aW9uLCBzbyB0
aGUKPiA+IHBvcnQgc3RvcHMgYmVpbmcgaG9zdCBvbmx5LiBJdCBhbHNvIGxlYXZlcyB0aGUgVkJV
UyByZWd1bGF0b3IgdG8gYmUKPiA+IG1hbmFnZWQgYnkgVENQTSBpbnN0ZWFkIG9mIGJlaW5nIGhh
cmR3aXJlZCB2aWEgdGhlIHRhbmdlbnRpYWxseSByZWxhdGVkCj4gPiBwaHktc3VwcGx5IG9uIGEg
VVNCIGNvbnRyb2xsZXIuIERQIGxhbmVzIGFyZSBhbHNvIG11eGVkIGR5bmFtaWNhbGx5IGJ5Cj4g
PiB0aGUgVVNCRFAgUEhZIGJhc2VkIG9uIHRoZSBUeXBlLUMgcG9ydCdzIG5lZ290aWF0aW9uLCBz
byB0aGUgaGFja3kgZml4ZWQKPiA+IGxhbmUgbXV4aW5nIGFsc28gZ29lcyBhd2F5Lgo+ID4KPgo+
IEhhdmUgeW91IHRlc3RlZCB0aGlzPyBBcyBmYXIgYXMgSSBrbm93LCBkdy1kcCBkcml2ZXIgZG9l
cyBub3Qgc3VwcG9ydAo+IFR5cGUtQyBIUEQgeWV0LgoKSSBkaWQgLSBpdCB3b3JrcyBmaW5lIGZv
ciBtZSB1bmRlciBMaW51eCB3aXRoIFNlYmFzdGlhbidzIHBhdGNoZXMuIE15CnByaW1hcnkgbW90
aXZhdGlvbiwgaG93ZXZlciwgd2FzIFUtQm9vdCwgd2hlcmUgdGhlIGN1cnJlbnQgcGh5LXN1cHBs
eQpoYWNrIGJyZWFrcyBVU0IgZGF0YSByb2xlIHN3aXRjaGluZywgZHVlIHRvIFZCVVMgYmVpbmcg
Zm9yY2VkCmFsd2F5cy1vbi4gV2l0aCB0aGlzIHBhdGNoIGl0IHdvcmtzLCBhbmQgbm93IHRoZSBE
VCBhY3R1YWxseSBkZXNjcmliZXMKdGhlIGhhcmR3YXJlLCBhcyBpdCBpcyBzdXBwb3NlZCB0by4K
CkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
