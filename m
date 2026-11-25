Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D85606A321
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 15:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MfYeZsvL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=RYoz/RvN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GAqfInHwOBVDm4LHckfbtj5xgahSqpKMBARbefVeeSQ=; b=MfYeZsvL1wrO4IMWGQZSygitXu
	rbespNwLQWqtyvQ5G0B7WXsn4piE533l7EnSAaG5T6l+OKsDJLyxkT/5tQ/EbI517ZRaboSypoawd
	7ViX/gXFFz00M1KzWLM0fAfRvdSM8knkSutUWuH8ukFbIE/6MoB/9d5eFwwo1lAv6310pkhsndQ2e
	yL4s9Dbu5wyMz2MzNQt/fanVUD354Pl/14v6yHIhU3ZjdceAzdZkaZu28drsz0hqBSHyqY0FoJD3I
	bs//6K0dXResf0e/2tTlfuCp7r3AG2bXyNezoTO8dKTbq/ZiYiGMwigBx+iFAmTwVl03vbutVxdKd
	+ywUrF5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWFOr-0000000ATHL-1ee7;
	Wed, 25 Nov 2026 15:59:13 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWFOd-0000000ATDg-09ZA
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 15:59:02 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c5118deebcfso892522466b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 07:58:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795622337; cv=none;
        d=google.com; s=arc-20260327;
        b=rmJzNNopLf+3KoY7b6oxhUMWXN2R58NTYEXO5olc5Tzh7Ta0VD305yUQHyqMgWTgwt
         peGlxxpujipB2CBIev3A66vCY21a7md29/whqP1RJlzs4rTMJTBwASYnfWvqrclTq3E5
         GP677BWATPts1l2WHCPv2jisiZk6P3BYjCwM7WDeyCuPKbXF7v1Q+449lJLbevdEZZ/2
         FP9N56OHMlzmJwf9L0lcoXBQJMKO7tR5/hkBDmLdUM3nGRxrEbn9eI197/Ks3Fi1qW8Q
         tIGIrUtOy0Lm3Ay/+sZ3BgyticWZnn/ruGviBC+kHR9IpXt3bY/H4h+3OIX2ThpgZfce
         uMzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6hnBZan8g8LHddmledKC79LHYdm87y2KXTgu+jeeovk=;
        fh=RG7mebxcA1/2jcdyo4laJte68M1XvVxmJaWwMnWZFzA=;
        b=l9ip78FQ4giKVAhN34bwLx2Uo1/4ffnceM+xOfY9HWocCA94VQMAC4gSDDxc0Vhf2C
         eVwyugYo1BikU0WOkLySc6SSAq3rE3ICneavkJDIcj9RmSC9gx9oq0PHMuw0rdbaL7K9
         feQSONm+g+r7uJdJi329P3rLM9rrZ6K0/BgDlnURgisU9TaGXKJ0/ucpzVp/dEaqKYrm
         Gh62dACNLgwTClMHAKFyjKeVIwHjLBWkAsmdORekfiogZt6sjq8Jg9zBTijJACed6qtP
         7Nua1FmhtBSjgl2f2nr7dHPGR7jN4mLFL22TOEJxxbcO+M+uV6GqXL6BAL3Dq5nKzuDK
         T/Kw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795622337; x=1796227137; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6hnBZan8g8LHddmledKC79LHYdm87y2KXTgu+jeeovk=;
        b=RYoz/RvNnb+QuM+kA6bl/luIuxurFMoKd5Wo6eqDeO+9ZX4e3XIdOXiFBDE6lGYQt/
         Uz3jP0NbAgIBfKuyCSWjDm9S94l8+vBYgfUSQCeuJefvDUersJelaen9gXICegFfb5P7
         92r0706ia11HVpqnGWxAJiMw679EI/0MOmHR+Ovtssrn04J3K1f+TZE/bx3Lj/0t25WZ
         LEpxSdf7IkdOzIyRRFL4dpaIWWKkPCsRUksCNRAEI3JXyxmlM+8elIXcMENFrbVtwXzt
         vYhTCulez4/rnG5a08PSEwMNyQqpoUWiyZIXgNdjmCwjfehxddB9wXcLzCxLn/bkwXkB
         Jtdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795622337; x=1796227137;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6hnBZan8g8LHddmledKC79LHYdm87y2KXTgu+jeeovk=;
        b=gd6B9jXAvaCaonXmFfcqC8xB6404ANEpgZ1rWdqkrMlU2e10xq80HTHqj6rsoaaerG
         /pEcKB/DNG+xPFwzn3Oob5sg15WHpmo5jjQXPtzmmnSvt/lOhsFIxC6OEfrzM1fG7naH
         v6PXkUVve4BvsfVXtX/1oY+mbXZurRRzurOnF3tknVfist73aOSk4/jforyIWDqoJLVX
         wZNqD9CIaoJYFJ6/tfnXsT6XHBaNMLjE0HuSgtVno9duWLdQkBcih5GTzLfhwV+cACyl
         Y0UugUxnartIuN1NUnUSNe3IhH3kA4dvVTj8ZqGi6WlLP+TYXdUUffkuENbciAN0VNnJ
         GNxA==
X-Forwarded-Encrypted: i=1; AL+hErGg1s/yv9/5gM/bC8eMuCxl4IUvrzbgBp/qycH8zGmofoIhWbHhAAXfd6mko6aQCKzIy7jZOqr9Cmf2pjLDtg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/azeExEk0ponjteHEn/KrQPyxjkye1gnGXUTOhGARMP0TQzB6i
	4HTGDiYMgPgNqlZW4nmoYiZN/gQRL9Ssqjhiy8wgg8ZlstZzyM+IDuwFIL8C+HGtDrBG2CUdbYa
	TP/X/Aceio8Blb4EVm8OMl2wA/KmG5UDcsNpJrWiIsA==
X-Gm-Gg: AZFdTZeD5fJ7lUAxJn0NMeLQOqP6/GYCARyjW5DB9Ig+q8JHMwhhKOw779Cmzq1w5Nn
	LJJ6kh7uVQfGkODAZby0ofNHJH4bxhrY5Qgn7+Z3AEPI3d3UBcM3HRD2hir6M7o1RkOzvt5rPxd
	wbRdTK5iUmvBoB55BKduyq4jqHA0/fQXmdhJYamF51xyzxkd398Fn+2WJb2S1TWx86fpVQ2CDMS
	e5rFEtGu8zxy5cvjjUrgWt55eyMiZsvtAShBnR54xi9/4FqU/+28toJPkyjXOqpkPmkMg69qLtT
	6XNABLJf0HsJLgF4Laxs+/lnsCZUOHlZtd0bMypEmVbKbcJt4O6Q6Umcst/tMsisoVbeVNZmRSS
	iXxM3uCfBwXRfQk0O3N0HXqYQR1WEFxA03K5diW6mgbT5qCX3SjLHwcXJcJqr+zGdlBnd
X-Received: by 2002:a17:906:81da:b0:c51:1d9a:323c with SMTP id
 a640c23a62f3a-c513a88b0d1mr1175280566b.15.1795622337011; Wed, 25 Nov 2026
 07:58:57 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
 <20261124-rk3576-otp-cpuid-mac-v4-3-d403b8a25113@flipper.net>
 <0aH4P5VH9HNiTXpCUTaTlvGaoUDQBnvv-0cSXtipSDkLOGjzGy96jDqsVtU0DJTWrocgoMcGFEgd0JUlF5mljVvCzGKVz4yUgDQ0s6HaDLg=@protonmail.com>
 <2f8da604-36af-4944-8168-02b046e97699@lunn.ch> <CAKTNdwG1sSBVKcKpHBj24nFCdc6WVKabV5=K4sJFucWpTLqRQQ@mail.gmail.com>
 <1defc5c8-ba61-40d2-99f3-6654f1743af1@lunn.ch>
In-Reply-To: <1defc5c8-ba61-40d2-99f3-6654f1743af1@lunn.ch>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Nov 2026 19:58:42 +0400
X-Gm-Features: Aa3M54rEPfqgE6y_yyyGlUyi0QUCYRvYug-ToPvauBq7tha0wq3SQqIuKn74zqk
Message-ID: <CAKTNdwFktkMtdLW2GzqzLH+LO4kF0uY0jWpnvO5vbWmd-e4iWw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20261125_075859_130134_6C4CC709 
X-CRM114-Status: GOOD (  28.91  )
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

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgNzoyM+KAr1BNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVu
bi5jaD4gd3JvdGU6Cj4KPiBPbiBXZWQsIE5vdiAyNSwgMjAyNiBhdCAwNjo0MTo0MlBNICswNDAw
LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IE9uIFdlZCwgTm92IDI1LCAyMDI2IGF0IDY6MjHi
gK9QTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgo+ID4gPgo+ID4gPiA+ID4g
K3N0YXRpYyBpbnQgcm9ja2NoaXBfb3RwX2NwdWlkX3BwKHZvaWQgKnByaXYsIGNvbnN0IGNoYXIg
KmlkLCBpbnQgaW5kZXgsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVu
c2lnbmVkIGludCBvZmZzZXQsIHZvaWQgKmJ1Ziwgc2l6ZV90IGJ5dGVzKQo+ID4gPiA+ID4gK3sK
PiA+ID4gPiA+ICsgICBjaGFyIGNwdWlkW1JPQ0tDSElQX0NQVUlEX0xFTiAqIDJdOwo+ID4gPiA+
ID4gKyAgIHU4IGRpZ2VzdFtTSEEyNTZfRElHRVNUX1NJWkVdOwo+ID4gPiA+ID4gKyAgIHU4ICpt
YWMgPSBidWY7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgaWYgKCFpZCB8fCBzdHJjbXAoaWQs
ICJtYWMtYWRkcmVzcyIpKQo+ID4gPiA+ID4gKyAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiA+Cj4g
PiA+IEkgZG9uJ3Qga25vdyBPVFAgZHJpdmVycy4gQnV0IHRvIG1lLCBhIGZ1bmN0aW9uIGNhbGxl
ZAo+ID4gPiByb2NrY2hpcF9vdHBfY3B1aWRfcHAoKSB3aGljaCBkb2VzIG5vdCBhY3R1YWxseSBy
ZXR1cm4gdGhlIENQVSBJRCBpcwo+ID4gPiBhcmNoaXRlY3R1cmFsbHkgd3JvbmcuCj4gPgo+ID4g
VGhlcmUgaXMgcHJlY2VkZW50IGZvciB0aGlzIGF0IGxlYXN0IGluIElNWCBbMV0sIFsyXS4gVG8g
bWUgdGhlCj4gPiBpbnRlcnByZXRhdGlvbiBpcyAiUm9ja2NoaXAgQ1BVIElEIHVzZWQgYXMgYSBN
QUMgYWRkcmVzcyBiYXNlIHdpdGgKPiA+IG9mZnNldCBYIiwgd2hpY2ggaXMgZXhhY3RseSB3aGF0
IHRoZSBkZXJpdmF0aW9uIGRvZXMuIElNTywgdGhpcyBpcwo+ID4gbGVzcyBjbHVua3kgdGhhbiB0
aGUgYWx0ZXJuYXRpdmVzIChlLmcuLCBhIGN1c3RvbSBOVk1FTSBsYXlvdXQgd2hpY2ggSQo+ID4g
dXNlZCBpbiB2MS12MjsgYSAidmlydHVhbCIgTlZNRU0gZHJpdmVyIHJlZmVyZW5jaW5nIHRoZSBy
ZWFsIGNlbGwgYW5kCj4gPiByZXR1cm5pbmcgdGhlIHByb2Nlc3NlZCBvbmUsIHdoaWNoIFJ5YW4g
cHJvcG9zZWQgaW4gdjIgZGlzY3Vzc2lvbiwgb3IKPiA+IGNhbGxlci1zaWRlIHByb2Nlc3Npbmcp
Lgo+ID4KPiA+IFsxXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ny40LXJjMS9z
b3VyY2UvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAuYyNMMjI0LUwyMzgKPgo+IEkgd291bGQgc2F5
IHRoaXMgb25lIGlzIGRpZmZlcmVudC4gVGhlIGNlbGwgc3BlY2lmaWNhbGx5IGNvbnRhaW5zIHRo
ZQo+IE1BQyBhZGRyZXNzLiBCdXQgaXRzIGVuZGlhbm5lc3MgaXMgd3JvbmcuIE5vdGhpbmcgYWJv
dXQgQ1BVIElEIGhlcmUuCj4KPiA+IFsyXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51
eC92Ny40LXJjMS9zb3VyY2UvZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtZWxlLmMjTDExNS1MMTI5
Cj4KPiBBbmQgdGhpcyBzZWVtcyB0byBiZSB0aGUgc2FtZS4KPgo+IEFzIGkgc2FpZCwgaSBkb24n
dCBsaWtlIHRoZSBjb25jZXB0IHRoYXQgYSBmdW5jdGlvbiBjYWxsZWQKPiByb2NrY2hpcF9vdHBf
Y3B1aWRfcHAoKSByZXR1cm5zIHNvbWV0aGluZyB3aGljaCBpcyBub3QgYSBDUFUgSUQuIFRoZQo+
IHR3byBleGFtcGxlcyB5b3UgZ2l2ZSBhc2sgZm9yIGEgTUFDIGFkZHJlc3MsIGFuZCB0aGV5IGdl
dCBhIE1BQwo+IGFkZHJlc3MuCj4KPiBEb2VzIG52bWVtIHN1cHBvcnQgYWxpYXNlcz8gQ2FuIHlv
dSBwdXQgdHdvIGRpZmZlcmVudCBuYW1lcyBvbiB0aGUKPiBzYW1lIGNlbGw/IElmIHlvdSBhY2Nl
c3MgdGhlIGNlbGwgdmlhIHRoZSBuYW1lIGNwdS1pZCwgaXQgY2FsbHMgYQo+IGZ1bmN0aW9uIF9j
cHVfaWRfLCBpdCBnaXZlcyB5b3UgdGhlIENQVSBJRC4gSWYgeW91IGFjY2VzcyB0aGUgY2VsbCB2
aWEKPiB0aGUgbmFtZSBtYWMtYWRkcmVzcywgaXQgY2FsbHMgYSBmdW5jdGlvbiBjYWxsZWQgX21h
Y19hZGRyZXNzXywgYW5kIGl0Cj4gZ2l2ZXMgeW91IGEgTUFDIGFkZHJlc3MuCgpUaGUgY2VsbHMg
dGhlbXNlbHZlcyBjYW4ndCBiZSBhbGlhc2VkLCBidXQgd2hhdCB5b3UncmUgZGVzY3JpYmluZyBp
cwpwcmV0dHkgbXVjaCB3aGF0IHRoZSBjdXJyZW50IGNvZGUgZG9lcy4gVGhlIGlkIGZpZWxkIGlz
IGV4YWN0bHkgd2hhdAp0aGUgY29uc3VtZXIgdXNlZCBhcyB0aGUgY2VsbCBuYW1lIHdoZW4gcmVm
ZXJlbmNpbmcgaXQsIGFuZCB0aGUKcG9zdHByb2Nlc3NvciBjYWxsYmFjayBjaGVja3Mgd2hldGhl
ciBpdCB3YXMgIm1hYy1hZGRyZXNzIi4KClNoYWxsIEkgcGVyaGFwcyBqdXN0IGRyb3AgImNwdWlk
IiBmcm9tIHRoZSBjYWxsYmFjayBuYW1lIHRvIGF2b2lkCmNvbmZ1c2lvbj8gVGhlIHNwZWNpYWwg
dHJlYXRtZW50IGlzIG9ubHkgYXBwbGllZCB0byBjZWxscyB3aXRoIHRoZQpjb21wYXRpYmxlIHN0
cmluZyAicm9ja2NoaXAsY3B1aWQiIGFueXdheSwgYmVjYXVzZSBvbmx5IFJvY2tjaGlwIFNvQ3MK
dXNlIHRoaXMgcGFydGljdWxhciBhbGdvcml0aG0gZm9yIGRlcml2aW5nIGFkZHJlc3NlcyBmcm9t
IGNlbGwKY29udGVudHMuCgo+IFRoYXQgd2F5IG9mX2dldF9tYWNfYWRkcmVzc19udm1lbSgpIGp1
c3Qgd29ya3MsIHNvIHRoZSBNQUMgZHJpdmVyIGp1c3QKPiBuZWVkcyB0byBjYWxsIG9mX2dldF9t
YWNfYWRkcmVzcygpIG9yIG9mX2dldF9ldGhkZXZfYWRkcmVzcygpLgoKVGhleSBzdGlsbCBuZWVk
IHRvIHJlbGF4IHRoZSBzaXplIGNoZWNrIGFzIGRvbmUgYnkgcGF0Y2ggMi81IGluIHRoaXMKc2Vy
aWVzLCBiZWNhdXNlIHRoZSBDUFVJRCBjZWxsIGlzIDE2IGJ5dGVzIGxvbmcuIFNyaW5pdmFzIHJl
amVjdGVkIGEKcHJpb3IgdmVyc2lvbiBvZiB0aGlzIHNlcmllcyB0aGF0IGF0dGVtcHRlZCB0byBy
ZXR1cm4gY2VsbCBjb250ZW50cyBvZgpkaWZmZXJlbnQgc2l6ZXMgZGVwZW5kaW5nIG9uIHRoZSB1
c2UgY2FzZS4gQ3VycmVudGx5IGFueSBjZWxsIHNpemUgIT0KRVRIX0FMRU4gZ2V0cyByZWplY3Rl
ZCBieSB0aGUgbmV0IGNvcmUsIG5vdCBqdXN0IDwgRVRIX0FMRU4uCgpCZXN0IHJlZ2FyZHMsCkFs
ZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
