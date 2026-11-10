Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC93606A325
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 18:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qqJVOAN2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=EqzlaZlE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hN/KrRaQE3w/ijKsQ/paOb+QJzWpj6q50pseizhNp1c=; b=qqJVOAN2QtLFeNC7WP+kSp4tQK
	LswgtF/ZsBY7+c8nZDeovl3LUdHdBDLE06PGwcqxUedxl1Bqf9HKCXzJnJ9JFmSrQccmLhSc0gRGG
	EZgjjUdd5Q0NBrQAGtCfu/xtr/8by6xrx/QYNJ1PQ6r0D/8V+LrLJxnl34NzNS6q+CdEfAz/p5Vw/
	1fARYUJZo8uGuWIunsRfKNw/Uj7QilB1hZmZbYxLCcbk1HVhm05ppPj+pHMXBjHsG4eZ3YhFfX6EU
	0jbttrKADfxokErOJOeRhbWoKx28kZIyc/yLANLc8aZxynAcHyT0jVNakEYgf/Y6blxE54yQWuqrZ
	0FB8dQow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQqZg-00000004nBr-1vVE;
	Tue, 10 Nov 2026 18:28:04 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQqZd-00000004nB7-0LMk
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 18:28:02 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-491971ac844so2299371f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 10:28:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794335279; cv=none;
        d=google.com; s=arc-20260327;
        b=PgfWBHCQHsv30nIxOJRVTK9S17GzEgzDusZ0pBJHkJCvmk+6vYiBUNd/dBFh1R48lk
         pKfEz2i2AVOdBbPOxpflQTalNmtJU9B2RBS/AXKM8QHC6pBcoYylUdeWMxr0XceD4bsb
         AtUqSsB6Jlai1P7ML8qzB0LH0WupoAX+oY704OdoSXI6LhOeMitiOu+9SOhtnJ/rpJ5J
         RXSyVayRIGhUdfYRVAqCaiU1buKy5Z9IFEFsY2C+wE3IF99Fq0FqTt3y5veYvTM7dFYn
         ScQANJHF6/bj9DTHWuK7C5C0dXpRr0BTmS1/sltBhSqPA/rsXwb2Hjw2VIsmg+8tEIme
         B+qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0YLdB3g9tnxFjs9/6VH9nFXGUYkvbUmaGAC4N10mcqc=;
        fh=ovIOW3S0wYWVIRuMxEhiVIN8tXT6NFK5+FOSuMOhoBM=;
        b=LyJf8St/O7ALM+wwGWORXM6kthxUTc9wYkD+3uFn86jHM0O4vasCraMaqXlhjAHYRR
         PJYqJTL6PuDcT7OA60YftfnvAuWFb2J/lqt8gcNfF2leNaZbTPYcyNfemiG5Tg+wDsUP
         gwXn+nlllit9xVn4S6hmsVwNOxUFaIQcGVB/Gwe8Hr5AWMEcPDw5yH/Fk3VAe1465SLs
         nsBOsOh8ma8E+dkg7I9TM8osq8wR3I4ZaAs+uBjj9vgbNE45g/sBJMACKYdK9yDf0kIm
         abdb3bWwBiojZyi2I78dWKZ5HxtLGDRLgZX3/o8cq+3EdNG9gH7/dJEMxwM4AIr0rWfh
         dNGw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794335279; x=1794940079; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0YLdB3g9tnxFjs9/6VH9nFXGUYkvbUmaGAC4N10mcqc=;
        b=EqzlaZlEiZ7q+sR7HRdRG2Qfhpl1rd+bNsfgb9r2elA6GAnENUS3YlrysmmFcz6juO
         OeHeEGj1+WLREzvF5vYzxiw+uhUR5R6TNIypmc5FCodrblHAxbaqbpHw5f0F3lrdx0EA
         gi+XznhKqW20ATXwKguRqqTEbxTjLMe1SS7oVGmU9sti6PjdJXEI4dUZwhLvLWgQUEOz
         +c2sytQjdc8R8tfwIACNJfk6hNHnCJfol3wi2paOqXG/jYAYa5ZPuXfWTF5nEb1jnZY3
         +xsHrvLavLEyS4ufVSdVTxSzGsTUjFsdsC0XHZ+bfogCcNSalPtRb1hH9A14SHaFpKei
         hAQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794335279; x=1794940079;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0YLdB3g9tnxFjs9/6VH9nFXGUYkvbUmaGAC4N10mcqc=;
        b=GTHa+k3rOGHa3yf0EkjzKMioqOZShq1jcijw/m9PjdutuFp0TXiMGMRXU+kpN4A21Z
         twcLgV6vs1P9SDnVzET/iB4OTHfEJ2cVtPjD/weYgK0Goa28nkTIH1hWZLHJl2/bbMnU
         xyGkfQh91+W1QjKvLf0CfqRPQ33tUPcMFJ+9HL/vbETtoKwRbITEg1ewlARcvjJMt/Cd
         QT7BXgsMFo8xSO7qmlREoXRI9JC8DqOe0ydB+M7BhriUuwMz3sswiop87txiHKdi2y1/
         JO53BTIMC6OPCuay2gBAN5X5K5S9MzGODRrN6KbfJI0QFDNl3eHDlqCyjmvaj0pUg+l1
         xCFg==
X-Forwarded-Encrypted: i=1; AL+hErESYRcMaO9u47t1Ly4IF6JipGKiRxAwXJ/DEjRVrOvSvng3aleP8FcqFWk1jdHiIMgblFIMMel0BJxgn8z94g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8kpNKtYGMzlyS+Hc3FF5ydmQ1gB2SMuquQV3Xs2jjo4fohMjDV
	x/JydHXzjrzd0+DZ5KyN2OUH9r1tDeFM/MIppE5zDaB+baYoUmRzgv486ZfmyNolpQvmFAjU6xh
	pq+DZahbvODZbFc8zOqhuMnMewfgLQBQ=
X-Gm-Gg: AYBFou0VXBqy0010pBoC+2X2DRPzgTDZenPIi1ynMopHKTBRp6mnwMmQ77GTM6bUaoC
	T8ZKsj04r60Nn6+WoL8VXHFPMSClwefstu0QWjxMqaw9wqCTmTS+xABNipXAr4oDQFfDFhlDobM
	15eNN4EdaIS/1SEJD1+oGBW16wOB2YrWKZwtCuKdyfKic+gY0FygzevLdUz0c78axZ458DqCzbi
	MEkZ8szIIeuTfghZVpkNRBTqkBVbki0qKML/ml53UgF3A/KQ1aliMgjQrNbnsW/yB1w1Wu+/uvB
	apzBoPPJGvOTyqujXbbOOJDrWLFqSFvgq9wTBFKxDjmBoWMTn/C/T3Lwv5yUlNQHDvddCDV1cQb
	9m99hgg9Art/HMmCbO1Sd1cTy99GqW8ECSYXWlYqgUshjQSDvOAD1wv8Tr3ojsYjuFPLCJm7lAU
	3FE4W+FBpOOm1QmhQY
X-Received: by 2002:a05:6000:1a86:b0:488:57ad:d5c8 with SMTP id
 ffacd0b85a97d-4982ba3297amr6630503f8f.3.1794335278568; Tue, 10 Nov 2026
 10:27:58 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261108200800.2b3b15cf@pumpkin> <ed2a6a4e-f480-4b39-9684-0dbd2d55e261@kernel.org>
In-Reply-To: <ed2a6a4e-f480-4b39-9684-0dbd2d55e261@kernel.org>
From: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Date: Tue, 10 Nov 2026 10:27:46 -0800
X-Gm-Features: AclHuK-s0hGDrA9NemleLuGLRjjsAkkNcY2oEM2MlQ1hpilpfd-nAy6wrrOh58c
Message-ID: <CAPDEY+UxXCg3M3oLxxqjgEOdaVVaHJSwQCyt+=v2zLP8ESWVgA@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: Replace strlcat() with seq_buf
To: Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: David Laight <david.laight.linux@gmail.com>, nicolas.dufresne@collabora.com, 
	benjamin.gaignard@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, 
	kees@kernel.org, justinstitt@google.com, morbo@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_102801_152304_3961A504 
X-CRM114-Status: GOOD (  19.29  )
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
X-Spam-Status: No, score=-15.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBOb3YgMTAsIDIwMjYgYXQgMjoxM+KAr0FNIEhhbnMgVmVya3VpbCA8aHZlcmt1aWwr
Y2lzY29Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAwOC8xMS8yMDI2IDIxOjA4LCBEYXZpZCBM
YWlnaHQgd3JvdGU6Cj4gPiBPbiBUaHUsICA1IE5vdiAyMDI2IDAwOjQ1OjE4IC0wODAwCj4gPiBN
YXJpaWEgTmlraXRhc2ggPG5pa2l0YXNoLm1hcmlpYXdAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4g
Pj4gSW4gcHJlcGFyYXRpb24gZm9yIHJlbW92aW5nIHRoZSBkZXByZWNhdGVkIHN0cmxjYXQoKSBB
UElbMV0sIHJlcGxhY2UKPiA+PiB0aGUgc3Ryc2NweSgpIGFuZCBzdHJsY2F0KCkgY2FsbHMgd2l0
aCBzZXFfYnVmIG9wZXJhdGlvbnMgd2hlbgo+ID4+IGNvbnN0cnVjdGluZyBIYW50cm8gdmlkZW8g
ZGV2aWNlIG5hbWVzLgo+ID4+Cj4gPj4gVGhpcyBwcmVzZXJ2ZXMgdGhlIHJlc3VsdGluZyBzdHJp
bmdzLCBpbmNsdWRpbmcgdHJ1bmNhdGlvbgo+ID4+IHdoZW4gdGhlIGNvbXBhdGlibGUgc3RyaW5n
IGFuZCBzdWZmaXggZXhjZWVkIHRoZSBkZXN0aW5hdGlvbgo+ID4+IGJ1ZmZlcidzIGNhcGFjaXR5
Lgo+ID4KPiA+IFRoaXMgaXMganVzdCBzdHVwaWQuLi4KPiA+Cj4gPiBEYXZpZAo+ID4KPiA+Pgo+
ID4+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8zNzAgWzFdCj4g
Pj4gU2lnbmVkLW9mZi1ieTogTWFyaWlhIE5pa2l0YXNoIDxuaWtpdGFzaC5tYXJpaWF3QGdtYWls
LmNvbT4KPgo+IE5hY2tlZC1ieTogSGFucyBWZXJrdWlsIDxodmVya3VpbCtjaXNjb0BrZXJuZWwu
b3JnPgo+Cj4gSnVzdCB1c2Ugc2NucHJpbnRmLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3cywgSSB3
aWxsIHNpbXBsaWZ5IGl0IHRvIHVzZSBzY25wcmludGYgYW5kIHNlbmQgYSB2Mi4KPgo+IFJlZ2Fy
ZHMsCj4KPiAgICAgICAgIEhhbnMKPgoKQmVzdCwKTWFyaWlhCj4gPj4gLS0tCj4gPj4gIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIHwgMTEgKysrKysrKyst
LS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
PiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2Rydi5jCj4gPj4gaW5kZXggMjZlNWQ1NTQ3NDY2Li4yYmZjZDQ1Y2M1NWUgMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiA+
PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+
ID4+IEBAIC0xNyw2ICsxNyw3IEBACj4gPj4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZp
Y2UuaD4KPiA+PiAgI2luY2x1ZGUgPGxpbnV4L3BtLmg+Cj4gPj4gICNpbmNsdWRlIDxsaW51eC9w
bV9ydW50aW1lLmg+Cj4gPj4gKyNpbmNsdWRlIDxsaW51eC9zZXFfYnVmLmg+Cj4gPj4gICNpbmNs
dWRlIDxsaW51eC9zbGFiLmg+Cj4gPj4gICNpbmNsdWRlIDxsaW51eC92aWRlb2RldjIuaD4KPiA+
PiAgI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgo+ID4+IEBAIC04ODMsNiArODg0LDcgQEAg
c3RhdGljIGludCBoYW50cm9fYWRkX2Z1bmMoc3RydWN0IGhhbnRyb19kZXYgKnZwdSwgdW5zaWdu
ZWQgaW50IGZ1bmNpZCkKPiA+PiAgICAgIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgKm1hdGNo
Owo+ID4+ICAgICAgc3RydWN0IGhhbnRyb19mdW5jICpmdW5jOwo+ID4+ICAgICAgc3RydWN0IHZp
ZGVvX2RldmljZSAqdmZkOwo+ID4+ICsgICAgc3RydWN0IHNlcV9idWYgczsKPiA+PiAgICAgIGlu
dCByZXQ7Cj4gPj4KPiA+PiAgICAgIG1hdGNoID0gb2ZfbWF0Y2hfbm9kZShvZl9oYW50cm9fbWF0
Y2gsIHZwdS0+ZGV2LT5vZl9ub2RlKTsKPiA+PiBAQCAtOTAyLDkgKzkwNCwxMiBAQCBzdGF0aWMg
aW50IGhhbnRyb19hZGRfZnVuYyhzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LCB1bnNpZ25lZCBpbnQg
ZnVuY2lkKQo+ID4+ICAgICAgdmZkLT52ZmxfZGlyID0gVkZMX0RJUl9NMk07Cj4gPj4gICAgICB2
ZmQtPmRldmljZV9jYXBzID0gVjRMMl9DQVBfU1RSRUFNSU5HIHwgVjRMMl9DQVBfVklERU9fTTJN
X01QTEFORTsKPiA+PiAgICAgIHZmZC0+aW9jdGxfb3BzID0gJmhhbnRyb19pb2N0bF9vcHM7Cj4g
Pj4gLSAgICBzdHJzY3B5KHZmZC0+bmFtZSwgbWF0Y2gtPmNvbXBhdGlibGUsIHNpemVvZih2ZmQt
Pm5hbWUpKTsKPiA+PiAtICAgIHN0cmxjYXQodmZkLT5uYW1lLCBmdW5jaWQgPT0gTUVESUFfRU5U
X0ZfUFJPQ19WSURFT19FTkNPREVSID8KPiA+PiAtICAgICAgICAgICAgIi1lbmMiIDogIi1kZWMi
LCBzaXplb2YodmZkLT5uYW1lKSk7Cj4gPj4gKwo+ID4+ICsgICAgc2VxX2J1Zl9pbml0KCZzLCB2
ZmQtPm5hbWUsIHNpemVvZih2ZmQtPm5hbWUpKTsKPiA+PiArICAgIHNlcV9idWZfcHV0cygmcywg
bWF0Y2gtPmNvbXBhdGlibGUpOwo+ID4+ICsgICAgc2VxX2J1Zl9wdXRzKCZzLCBmdW5jaWQgPT0g
TUVESUFfRU5UX0ZfUFJPQ19WSURFT19FTkNPREVSID8KPiA+PiArICAgICAgICAgICAgICAgICAg
ICAiLWVuYyIgOiAiLWRlYyIpOwo+ID4+ICsgICAgc2VxX2J1Zl90ZXJtaW5hdGUoJnMpOwo+ID4+
Cj4gPj4gICAgICBpZiAoZnVuY2lkID09IE1FRElBX0VOVF9GX1BST0NfVklERU9fRU5DT0RFUikg
ewo+ID4+ICAgICAgICAgICAgICB2cHUtPmVuY29kZXIgPSBmdW5jOwo+ID4KPiA+Cj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
