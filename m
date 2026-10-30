Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF29606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 19:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JH5uZslF;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.a=rsa-sha256 header.s=google header.b=YBo+Afsk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AYCnPGALe4qu2hR4SprfnjKb0b6DGSvOLWYVOOar0HQ=; b=JH5uZslFn9UFEAijoPxFEHDNU9
	QO1clz58UqtleJDfGy/wATg4rglDlmz7eNNYs4T+jGbScLp9+KUH97xXc/XTdHZ1ENvd3STxvmb9G
	IJgQn7N+CYfIFZ4dwMQXB7Dx+GYa8t4L44ElHxoLCAiOd5OQNKUAXbfoUYaKdWOkdLzf/UiqG8trX
	VocobmA/R1iuB28DSVevBaAC/R3Rt6t7XZFTtn4PzaogaKaGBrNpSdrFCq8tAFjhaM1i+B8cwvvlE
	vIgG7GfT4F8s3CEW0DwOLOEdgMsDwRAs8nZrrh8Jiy2que7Vlkxv7z3gOZMnS5zV0dlxePEfmZYWZ
	go3KoSpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrvN-0000000CSW8-15tq;
	Fri, 30 Oct 2026 19:06:01 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrvK-0000000CSVR-1xY6
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 19:05:59 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-369f33df08eso2237868eec.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 12:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793387156; cv=none;
        d=google.com; s=arc-20260327;
        b=Y2LOLcG5dt1TDppBlpU+K2xNQxbDpQyQtM3Mo8fi75k3z4wykXXh0WSyDZ2HQ9E3cz
         D16q3upOqggavHpKJAnmvqrXKWJywAVJQMHpH6UB5eX7KJ5cXwChdUDS7HgGWzuHJcYX
         9YPRFchg6DyIrULv5fimrcg3enANUGoJccaFxf6cK8ibAWa1CR5GKTo+I/FvFJ157n81
         IXZAbpyjYbozbFtXP0ITCzPmWK0kxiI3Wt4bu/0ElAE6G1N42U8vfmYBvo269Rt7Y6Xk
         Yde0qgy1s9sAOD4xrJiZNvLodMhHS81BxBC5+970oJYoSPYLLGwYD232UyMuG/+bYlPN
         oA1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J9hrI45jlpVu4PlMmMuPTFeOsIL9X7w+vA3kaWRvlIk=;
        fh=C9qHSeGPF0s0qTG2H/uBG9liBBB7Ie9X6Kk24IkfffU=;
        b=OZkgjnjyZsJypQ02p9XeC6kcXrVf+bOqjkGORbkG2lN1bDIX5+QELIw2zCDH5JNl0+
         EiC7VI9vhZK9AhwxviZuhBFPs5HqGqo/4U2eIlnAp3XfpdOjNbmyrVrYXvP+RLAxGius
         HNlMUfBq+y8f9ievSfxGamA4hQlSaDQ/w03gfo0CsB9BqwEFlsgwqEyoAGdLKM6/H70O
         F0kbQpiNX72klu7rUErp64NfXfagJeacRndhsgRoFbbJboAiAkUAo0455D0objaqmDSG
         51sYf69HiPTLrkoccYMi9qdS0zX6B1A+cWPO0P6dlvtYlecWKj5Y3RsBIzI2Rtpn5Szu
         zvzw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1793387156; x=1793991956; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=J9hrI45jlpVu4PlMmMuPTFeOsIL9X7w+vA3kaWRvlIk=;
        b=YBo+AfskaQjsvpY+4HrwzR3wJNzbTgEWDClSO+/Q9rA51CnLLmcF//v6CK6tQQlTW9
         CoFbmqIudO4ZnU5j3qFqQHPC4Humc7jczS2DZGu1YqZ6OTzcx38WvsvB5f4+3oa2YWuT
         kCTdTcQJbQr7MIYRGt6cN5tO6iaeFWUYNv6b4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793387156; x=1793991956;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J9hrI45jlpVu4PlMmMuPTFeOsIL9X7w+vA3kaWRvlIk=;
        b=uU0k1LOSNIUEq6zzZLpUc4LdSpKRiw0QEfd7nRyVRwLy7UIFCoKLw1bgiZdTjpNm50
         p0rhseR7cNuc9Wre4j/6cN1jTaOIo0/IrXiIU6o3ztMpABYEQhHJ15zSIw9WwWC+xAPm
         cfWuiOjcYYXLo1kAZzkojWmWD6AR+SQJFTj/zEzBWnbsPd8Te8HuQYKCedLSDCUeoTNJ
         Ot9M5mUlDKGTnaGdnCQppIwROmIv1n+LKQF+/Hp27JiMybE+vn49txc11DWirONhzAwy
         9Sft5Fbj4b/cnYjSXDk8ZFhhmGATHCjEH+uwSb8nfUdGyKxJzuJz/vXlEkwYc/o/Tw8y
         tZ5g==
X-Forwarded-Encrypted: i=1; AKwUvBxQJ8EFlV+8wDUwEuRVOfwMFQHHCW5T3O/7/gibPUc8MC7EAJrCGXfggCMeM2FPHCfro3xJB+m/GsMrZw9Uqg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ8qe8yh1NwtW19sUfWBjBlThRznYpzHLC9KzYE5yS1FnT+bO0n
	vdRV7A+nHaby+1F5aPaS+GbHlCmzKLqUQxR9rHvta2CEKsCzdry7eNHXQJtSO6ZxJNhPPTMTNIL
	ys1WEtfIhWEEpR8A1EZRLAKRfGhEfp+t3TFUrHxKHeg==
X-Gm-Gg: AYBFou3VRsOo1sM5/V+lhw2FELQF7ERuiwq5abK5LGWygvc5PjKEMVbJTGyAz5XI2AU
	OTzdgWbxa/NAwn2YL3T9Y3VZNkoyhjw1y6JCLSkD1IRpaGeMWUrlsElW1dukTo1nHga4R2Xb65U
	jpY7FvwitDI9uTllcpB6HFj1C+Yr5Fvqt73sBQ6e3mW36uiWRNWrzU4TLrdQUM7YuholWvjCFUn
	Id1DNmmCdVvGCh5ItCpKJ9xY/9p6D1+7fJqcmGaEFa1zPnX0i6KGjXDO4vvuLJfhKdaOgv8b6jI
	fNG2QJurdQTkjqj7igX8yYTL+K0p8ZLyWwFGeBg8QuYh8v1BFRtW2/6WsjpoeAjUSNmJ5/jUvO5
	nVMg/2uRTTFkuNn4Tun23EpQTqvlFnv2alfLse55UA2ylt0dbr7WkB4Gx9DvF+WGd35w=
X-Received: by 2002:a05:693c:4154:20b0:35e:f4ac:5f8e with SMTP id
 5a478bee46e88-36a420574admr4840973eec.0.1793387155597; Fri, 30 Oct 2026
 12:05:55 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261020113717.189082-1-patrick.barsanti@amarulasolutions.com>
 <20261020113717.189082-4-patrick.barsanti@amarulasolutions.com> <10806856.0AQdONaE2F@phil>
In-Reply-To: <10806856.0AQdONaE2F@phil>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 30 Oct 2026 20:05:43 +0100
X-Gm-Features: AclHuK-vdnEzcEGsGvQRBO8g78jL4SBlJMAH8_NBpy5nWJ1J3N8PxOJgd16wrPs
Message-ID: <CAOf5uw=iMTOgoJZHXWRc=XBfTZ4jVc9LDToRSi6RvgknyAjDUw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Axelera Embedded 111c
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Patrick Barsanti <patrick.barsanti@amarulasolutions.com>, 
	linux-amarula@amarulasolutions.com, dario.binacchi@amarulasolutions.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_120558_545721_A91615BA 
X-CRM114-Status: GOOD (  24.43  )
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28KCk9uIEZyaSwgT2N0IDMwLCAyMDI2IGF0IDc6NTTigK9QTSBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEFtIERpZW5zdGFnLCAyMC4gT2t0b2JlciAy
MDI2LCAxMzozNzoxNyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFBhdHJp
Y2sgQmFyc2FudGk6Cj4gPiBBZGQgbWluaW1hbCBkZXZpY2UgdHJlZSBmb3IgdGhlIEF4ZWxlcmEg
RW1iZWRkZWQgMTExYwo+ID4gKHJrMzU4OC1lbWJlZGRlZC0xMTFjKS4KPiA+Cj4gPiBJdCBvZmZl
cnMgZWZmaWNpZW50IEFJIGNvbXB1dGUgZm9yIG11bHRpLXN0cmVhbSBjb21wdXRlciB2aXNpb24g
YW5kCj4gPiBHZW5BSSBhcHBsaWNhdGlvbnMgaW4gYSBjb21wYWN0IGRlc2lnbi4gSXQgZmVhdHVy
ZXMgYSBxdWFkLWNvcmUKPiA+IEF4ZWxlcmEgQUkgTWV0aXMgQUlQVSBhbmQgYW4gUkszNTg4IFNv
QyBwcm9jZXNzb3IuCj4gPgo+ID4gVGhpcyBiYXNpYyB2ZXJzaW9uIG9mIHRoZSBkdHMgc3VwcG9y
dHM6Cj4gPiAtIENvbnNvbGUKPiA+IC0gZU1NQwo+ID4gLSBIRE1JCj4gPiAtIDR4IFVTQi1BCj4g
PiAtIDJ4IEdpZ2FiaXQgRXRoZXJuZXQKPiA+IC0gUlRDCj4gPiAtIEVudW1lcmF0aW9uIG9mIG9u
LWJvYXJkIEF4ZWxlcmEgTWV0aXMgQUlQVQo+ID4KPiA+IExpbms6IGh0dHBzOi8vYXhlbGVyYS5h
aS9heGVsZXJhLXByb2R1Y3RzL2VtYmVkZGVkLzExMWMKPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
ZWwgVHJpbWFyY2hpIDxtaWNoYWVsQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogRGFyaW8gQmluYWNjaGkgPGRhcmlvLmJpbmFjY2hpQGFtYXJ1bGFzb2x1dGlvbnMuY29t
Pgo+ID4gU2lnbmVkLW9mZi1ieTogUGF0cmljayBCYXJzYW50aSA8cGF0cmljay5iYXJzYW50aUBh
bWFydWxhc29sdXRpb25zLmNvbT4KPgo+IHRoYXQgU2lnbmVkLW9mZiBjaGFpbiBpcyBub3QgY29y
cmVjdC4KPgo+IEFzIGl0IHN0YW5kcywgdGhlIGZpcnN0IHNpZ25lZC1vZmYgd291bGQgaW5kaWNh
dGUgTWljaGFlbCBhcyB0aGUgYXV0aG9yLgo+CgpJdCdzIGEgYml0IGNvbXBsaWNhdGVkOyBsZXQn
cyBzYXkgdGhlIGNvcmUgd2FzIGRvbmUgYnkgdXMgaW4gYQp3b3Jrc2hvcCBhbmQgZXZlbiBJJ20K
dGhlIG9yaWdpbmFsIGF1dGhvciBvZiB0aGUgZmlyc3QgdmVyc2lvbiBvZiB0aGlzIGJvYXJkJ3Mg
c3VwcG9ydCBpbiBkb3duc3RyZWFtLgpJIHRoaW5rIHRoYXQgY28tZGV2ZWxvcG1lbnQgaXMgbW9y
ZSBhcHByb3ByaWF0ZSBmb3IgbWUgYW5kIERhcmlvLgpBbnl3YXkgbm90IGJlaW5nIGhlcmUgaXMg
bm90IGEgYmlnIGRlYWwgZm9yIG1lLCBiZWNhdXNlIEkgZG9uJ3Qgc3BlbmQKdGltZSBvbiB0aGUg
c2VyaWVzIGF0IHRoZSBlbmQKCj4gSWYgYWxsIDMgb2YgeW91IHdvcmtlZCBvbiB0aGlzLCB0aGlz
IG5lZWRzIENvLWRldmVsb3BlZC1ieSB0YWdzLCB0aG91Z2gKPiAzIHBlb3BsZSBmb3Igb25lIGRl
dmljZXRyZWU/Cj4KCjopLiBZb3UgYXJlIHJpZ2h0IGhlcmUKCj4KPgo+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWVtYmVkZGVkLTExMWMuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZW1iZWRkZWQtMTExYy5kdHMKPiA+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmE5NjRiNDZlNWMx
Mgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtZW1iZWRkZWQtMTExYy5kdHMKPgo+IHBsZWFzZSBuYW1lIHRoaXMgcmszNTg4LWF4
ZWxlcmEtZW1iZWRkZWQtMTExYy5kdHMKPgo+IFRoZSBuYW1lIGlzIG90aGVyd2lzZSB3YXkgdG9v
IGdlbmVyaWMuCj4KPgo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHZkZF9sb2dfczA6IGRjZGMt
cmVnMyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlz
LW9uOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9s
dCA9IDw2NzUwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1uYW1lID0gInZkZF9sb2dfczAiOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MTI1MDA+Owo+ID4gKwo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1vZmYtaW4tc3VzcGVu
ZDsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLXN1
c3BlbmQtbWljcm92b2x0ID0gPDc1MDAwMD47Cj4KPiByZWd1bGF0b3Itc3VzcGVuZC1taWNyb3Zv
bHQgaXMgZGVwcmVjYXRlZCwgc28gc2hvdWxkIG5vdCBiZSB1c2VkIGluCj4gbmV3IGRldmljZXRy
ZWVzLiBTYW1lIGZvciBhbGwgb3RoZXIgb2NjdXJlbmNlcy4KPgo+Cj4gcmVzdCBsb29rcyBvayA6
LSkKPgoKTWljaGFlbAoKPgo+IFRoYW5rcwo+IEhlaWtvCj4KPgoKCi0tIApNaWNoYWVsIE5henph
cmVubyBUcmltYXJjaGkKQ28tRm91bmRlciAmIENoaWVmIEV4ZWN1dGl2ZSBPZmZpY2VyCk0uICsz
OSAzNDcgOTEzIDIxNzAKbWljaGFlbEBhbWFydWxhc29sdXRpb25zLmNvbQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCgpBbWFydWxhIFNvbHV0aW9ucyBCVgpKb29wIEdlZXNpbmt3
ZWcgMTI1LCAxMTE0IEFCLCBBbXN0ZXJkYW0sIE5MClQuICszMSAoMCk4NSAxMTEgOTE3MgppbmZv
QGFtYXJ1bGFzb2x1dGlvbnMuY29tCnd3dy5hbWFydWxhc29sdXRpb25zLmNvbQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
