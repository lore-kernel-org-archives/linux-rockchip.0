Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AB6606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 14:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CxfwnGL0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=UPlNaIu4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RzKNKRlkoPAFhn6K41vYtuKrh26YeJAoymot7tjbagg=; b=CxfwnGL0olg0OwQj4EM82Iqbac
	tMJSHXP/ctoPBiX+aIeWKxbnRPoJpsjbKugd7ovH6oE51GF6Ak9zWgmw9I78QxjPIRIDFSGi64lZV
	TRycF5pY8S6VHmUZUgnJJgX2D5KJRdBGD9AHcgiYlPbQXCnUb7EmKjX5aJ71WB/0+BYPvzvz3P/ew
	yQUnBYGgb4AAy06bLjSqwXlcVhp/q9ZZL0T0JaX4l9tMKoBKrkqoJwklKqHYkdgxX4DWhy3K9yHDR
	0VlhqhQWuvIC71NP7dEX2eN8GfX1NWEFb7L4pLiv5J+TEapDEk8f7HQ5c5EoizzImLNJnJz9DtKS1
	9KuVF3NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWECn-0000000AD94-30BG;
	Wed, 25 Nov 2026 14:42:41 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEC4-0000000ACxD-0tHO
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 14:41:59 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c5188e4980fso93581566b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 06:41:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795617714; cv=none;
        d=google.com; s=arc-20260327;
        b=a93IkyHLcHP3h5qmz8IL8+WKQWhdqh0LXIzEoNEH2cJHVpBZKxcPakWb7r/BgD/SYj
         gs65yLFZKK685gVihAuhjrC7N/Eu2mlgCD7osdI4A+JjQpmIfpbZZbK2jPhq9fua0aLE
         ljKDFNTo0VS9KOehtwYZyuenIx/+KomZo1ZWww+ttdjHrrVXviYVYvEytW/Zu9VjyRRv
         zKojrVJiIUdiSQ+5VPVDd9DP+5M8GN6TA5bU1LJobm/Bz0NdIiNSZXF+jr6E/0SzWstf
         2MsV5OpqVjHw/fLVplmiumXJTTRNrScAgaN8pJW70OocVjvR4gn0LDGiG1JM2yCY31vA
         aF6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mLjx3CTEUXIT2f/3aLm5eAmD1Nrm0DwEfALNNSAoscU=;
        fh=Feco3DMqZrd4pmdw2k/EWMFUKsbYTIuG5z8nxgsqMU4=;
        b=UPxvKwpQCq5WNzuK+B5XlGNexbp2G23YGlOMwu72sT2ASVouF4YT9Iv28kKU7bX0ZP
         CNSL0xJOH4NMb8hhPsrM4IzXoCNh3tJIZA/zlZaKD27idKjIjoQRuqJE625m7/O59pMZ
         Yfr/wyorjFGL0kiaDObnR7SeCya7le2r+BRHsVh5qxQR9SK4fSBY/8OKktUE956/dFo7
         alRogf9hls3dJO6gN6aNWijfuFQyQ3dYv7LIRdnhCqMiJBpQZauATLdotK07bZ24fhM5
         xHdop1jXakEWCLz5X91/CDHqs5v+L2EvP4IS1t+sSYSS4mQcjjhTvnOKaI42MFhzLYkF
         nkSA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795617714; x=1796222514; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mLjx3CTEUXIT2f/3aLm5eAmD1Nrm0DwEfALNNSAoscU=;
        b=UPlNaIu4UfBxob0i54p8AHd5zscNXmQmMEXR27wcinlG1hg24Tqq8j3jQtI4gZ4DqP
         +8/ulJ4fKbA6WZzYGl4/neVDOVmslH+8x2XV4mkXEI6MVOT7veLPQYTwu+MXTvAS3W6Z
         t1DJ48by2PAYTf5c9cesyDQTouAvZfMwxZnbeSANzb1U2SitJIjuj9+fY6aYlrLtTai2
         SNlN1PqaC2Mu/ibsmNFtf1fwGYxTbvn5/w+Ptv0X8utvbhw+nc08kodAmQyYwPD5SyM0
         1gzqLEnXvp9wC4BJpFw+/n+OFnr3FQpxDgHJYhsg2Xmug6Fg4ikBlWDJhdQXTMkn70zR
         TRBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795617714; x=1796222514;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mLjx3CTEUXIT2f/3aLm5eAmD1Nrm0DwEfALNNSAoscU=;
        b=ZZVY0dxeD71f6dMSPjH12+16cI77coE8rFzb3hsKdFmDYSXBp9C6pRUb8fMWzwsuj3
         H7QC/FMHNU8ut8/AEw/sOvwY9oPhfsw4qSLEU5kA3z6VtzsQS85+cqQMZs+mXsDa9zxt
         Qmi6vYknWKhuheyKOU+Pymd/ZpkG31I9burOVag0RAyfTkhAfwHKm6KFNyePkN5dk3Ld
         p/I43pdl0tbRo0azqDZW+UIB3wtTd86H6CAv92Ot48jGzIVURnPkaZ56v71X8ylOfzPc
         tktVehvlUViw1Per82z4NZMMxqGCbW2AKTB/16lyRqjGIj3F/gcbQVLR2S3vNLAjCknR
         xF2w==
X-Forwarded-Encrypted: i=1; AL+hErHVNhWKDFhxJTeJPJOi8lGlbBqwf3dPbRXbJsBLBm/VP76AiFpXe2qh7RwyqTtvGAwEzuTR8K5F9r0QycVETQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+HSIeroqr2+WkUx3Iu49mJY6A28PaSSed7wIgiILV+4guwl2tl
	mBa+545VDm2gOTIVBZjG4B58PgGU4JCPK8geSf0zaz2dV60jLYYdBezqmnW+97seEwJxqB92/vA
	ggMP6aT+p49204qEmBaKuql7ZGnBWq1ImnvnYdBMcZQ==
X-Gm-Gg: AZFdTZelBIWWIsclwwxvxp6+ia6VWoEXlWUcrwPK0ofCOtFeeJJ1HLY74N2A/rWKabK
	1J1xJX82vJ3KlKVOabkbWQ9YbbRr1He5xLMMce1R+/O7XvlZalJTuB2D5B4ZkIeQeISYvLEJ07i
	fX7F1h4ybltS6fS319iRiQW17/Rdw+nfY8Ci+hcEher3/gWUEo4lM7+ff7LwQd6SoVbkUzYvdSp
	VsPlXDjQ7j4g2GmDsXDaf1MSDovzuIlUtdwpkWkS7A6jxgk4KW+gaob8Db6dNpkXyDo1A4/3muq
	hMmXc7yNUfCb2TQbzMKnBp/f3LEPvrWyZzkqgGC/r8vsrjyIBXjEPf8CugVgWX+VuLzMvA+OgqB
	eheV77gJF0MpoqK5YCV5MBhQxzvUDsv/B3sOqiL4X9oCmAy3yVTVGJXV42FfvROL3kDKniJM9L4
	4Se+1bsYo+9aWgBw==
X-Received: by 2002:a05:6938:e04f:20b0:c2e:8eb7:53dd with SMTP id
 a640c23a62f3a-c513ab1349cmr1102866166b.42.1795617714171; Wed, 25 Nov 2026
 06:41:54 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
 <20261124-rk3576-otp-cpuid-mac-v4-3-d403b8a25113@flipper.net>
 <0aH4P5VH9HNiTXpCUTaTlvGaoUDQBnvv-0cSXtipSDkLOGjzGy96jDqsVtU0DJTWrocgoMcGFEgd0JUlF5mljVvCzGKVz4yUgDQ0s6HaDLg=@protonmail.com>
 <2f8da604-36af-4944-8168-02b046e97699@lunn.ch>
In-Reply-To: <2f8da604-36af-4944-8168-02b046e97699@lunn.ch>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Nov 2026 18:41:42 +0400
X-Gm-Features: Aa3M54p30Iatdogoy58JfnAd55Gl1tkvrMVT9GbSbV-cJhdMvMKH6OgZsz2cLWQ
Message-ID: <CAKTNdwG1sSBVKcKpHBj24nFCdc6WVKabV5=K4sJFucWpTLqRQQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] nvmem: rockchip-otp: Derive MAC addresses from the
 CPU ID
To: Andrew Lunn <andrew@lunn.ch>
Cc: Ryan Leung <untilscour@protonmail.com>, Srinivas Kandagatla <srini@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>, 
	Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_064156_331514_19309DC2 
X-CRM114-Status: GOOD (  18.14  )
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

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgNjoyMeKAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiA+ID4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfb3RwX2NwdWlkX3BwKHZv
aWQgKnByaXYsIGNvbnN0IGNoYXIgKmlkLCBpbnQgaW5kZXgsCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IG9mZnNldCwgdm9pZCAqYnVmLCBzaXplX3QgYnl0
ZXMpCj4gPiA+ICt7Cj4gPiA+ICsgICBjaGFyIGNwdWlkW1JPQ0tDSElQX0NQVUlEX0xFTiAqIDJd
Owo+ID4gPiArICAgdTggZGlnZXN0W1NIQTI1Nl9ESUdFU1RfU0laRV07Cj4gPiA+ICsgICB1OCAq
bWFjID0gYnVmOwo+ID4gPiArCj4gPiA+ICsgICBpZiAoIWlkIHx8IHN0cmNtcChpZCwgIm1hYy1h
ZGRyZXNzIikpCj4gPiA+ICsgICAgICAgICAgIHJldHVybiAwOwo+Cj4gSSBkb24ndCBrbm93IE9U
UCBkcml2ZXJzLiBCdXQgdG8gbWUsIGEgZnVuY3Rpb24gY2FsbGVkCj4gcm9ja2NoaXBfb3RwX2Nw
dWlkX3BwKCkgd2hpY2ggZG9lcyBub3QgYWN0dWFsbHkgcmV0dXJuIHRoZSBDUFUgSUQgaXMKPiBh
cmNoaXRlY3R1cmFsbHkgd3JvbmcuCgpUaGVyZSBpcyBwcmVjZWRlbnQgZm9yIHRoaXMgYXQgbGVh
c3QgaW4gSU1YIFsxXSwgWzJdLiBUbyBtZSB0aGUKaW50ZXJwcmV0YXRpb24gaXMgIlJvY2tjaGlw
IENQVSBJRCB1c2VkIGFzIGEgTUFDIGFkZHJlc3MgYmFzZSB3aXRoCm9mZnNldCBYIiwgd2hpY2gg
aXMgZXhhY3RseSB3aGF0IHRoZSBkZXJpdmF0aW9uIGRvZXMuIElNTywgdGhpcyBpcwpsZXNzIGNs
dW5reSB0aGFuIHRoZSBhbHRlcm5hdGl2ZXMgKGUuZy4sIGEgY3VzdG9tIE5WTUVNIGxheW91dCB3
aGljaCBJCnVzZWQgaW4gdjEtdjI7IGEgInZpcnR1YWwiIE5WTUVNIGRyaXZlciByZWZlcmVuY2lu
ZyB0aGUgcmVhbCBjZWxsIGFuZApyZXR1cm5pbmcgdGhlIHByb2Nlc3NlZCBvbmUsIHdoaWNoIFJ5
YW4gcHJvcG9zZWQgaW4gdjIgZGlzY3Vzc2lvbiwgb3IKY2FsbGVyLXNpZGUgcHJvY2Vzc2luZyku
CgpbMV0gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjcuNC1yYzEvc291cmNlL2Ry
aXZlcnMvbnZtZW0vaW14LW9jb3RwLmMjTDIyNC1MMjM4ClsyXSBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS9saW51eC92Ny40LXJjMS9zb3VyY2UvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtZWxl
LmMjTDExNS1MMTI5Cgo+IEkgd291bGQgcHJvYmFibHkgbm90IG1hbmdsZSB0aGUgQ1BVIElEIGlu
IHRoZSBPVFAgZHJpdmVyLCBidXQgaW4gdGhlCj4gTUFDIGRyaXZlci4gVGhlIE1BQyBkcml2ZXIg
c2hvdWxkIGFzayBmb3IgdGhlIENQVSBJRCBhbmQgdGhlbiBoYXNoIGl0LgoKVGhpcyB3b3VsZCB0
aGVuIHRpZSB0aGUgYWRkcmVzcyBkZXJpdmF0aW9uIGxvZ2ljIHRvIGEgc3BlY2lmaWMgTUFDCmRy
aXZlciwgcmF0aGVyIHRoYW4gdG8gdGhlIHBsYXRmb3JtLCBhbmQgaXQgd29uJ3Qgd29yayBmb3Ig
Ym9hcmRzCnVzaW5nIG90aGVyIE1BQ3MgKHN1Y2ggYXMgUENJZSBjb25uZWN0ZWQgb25lcykuCgpC
ZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
