Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C77FC02198
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 12:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkkpEl7+Gy9whKGRM3ifqPBLy6DQoL7n1WA46OlkQiI=; b=2V3dD196TB0QRA
	Ma9uqu6SuYXwlD0PIl2clI/xecGjME1G7cXpaOI2SyPMs07nvbJZYK0R4bz6pOHdZvBs2P9lHOtV4
	ha4jmYc7eo+pgIP5/uteYlkhdGCp/O1TtyxPEef6BT7stevHxKg3iGuuSPBv0rLrus+e5f05Es6Gn
	VWKrUWJLnUES2FWHD574fgIgpbCnXNo4mOB05sVT/aPbFsM9SrSAZBbiK1B5GwaZs6lRbi7nUJTyg
	nbS2gbiHoTqVT8xY/fLTjdB9Q35H6gr2iuo7sPMbArgZh6IAIxs6E3oycorXiWvc2dyOqkzOrdiyT
	xqjlUpyTWlBxnmLBnubQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjdtk-00000001mZZ-2pkO;
	Sun, 16 Feb 2025 12:37:24 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjdth-00000001mZ5-16qa;
	Sun, 16 Feb 2025 12:37:22 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5e058ca6806so321100a12.3;
        Sun, 16 Feb 2025 04:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739709439; x=1740314239; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9JuodrbTqt2kISAe95cYUvufIOl8Fb0pi3tva7a0oDw=;
        b=A3irjoZlv/xNW+LcPpwLAaR6Pkqim4aNNzosORcdJ09PVd6Q9vV0OFn5ey9zNT92ss
         GCEbjUo5tGXmmu2c1aJAMsIhqC2YVjlRxItRqCZb8mhSSfJvRXtkXbYpdv27JglbWyH3
         4MRa2rj9TCIlhKCmbi0o8wE0DYvZ0SVvgW+Onzs3njfRMcoSfNjUYp5+pdREJnG+P8nB
         tGR6NAKrs7qPao3Q5tM2fLKMWuGN4mWEdmCvlY9FqiAk65t5pVIsgV31uwLf6ccaAqEh
         9EkMHrfgQVMHRZAcMS6pRM4imFfNxLZI3uEwqG3zpbAMdaWI4IC70fhX48SMrLub0cVZ
         Nx/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739709439; x=1740314239;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9JuodrbTqt2kISAe95cYUvufIOl8Fb0pi3tva7a0oDw=;
        b=aRrsQXBd9rF8E1qFiV8jfN/WBkbT4BMu86e0AhRhqsVw7REnDY+cFcW+b24KF2KlJK
         tarpsyVZjJI4LbHHSIbpxAXVIk48Z8eHFh/kAtw20luX9kFuvYxaATnriIvANCmgzK0+
         YahZto8+v87hXG0CSWl+/fXpYn3vm38yL1luQeS7/M7aJeREfT9Wlk3hmhtHV7LoWvnk
         Uu5ABm1Cii5oUiys970Fbee5hS7KrKIXBpei8+DEmfm/znA/qm5IJ8iT0HC90Rwfl7ib
         38euGUy4tRXtqv2fl2Z5UwuX/hdd1g9I6Odj/m6EveuWbDpIF1EKPeVTdpW9Feq4Wdw0
         O06g==
X-Forwarded-Encrypted: i=1; AJvYcCWs6tbTUv+eko8sukF8Yxr/o4MSzQwL3UbntPQ5UXvfHuNHGqESOH6ICokj2pySyOIAmt1dIpGgn/E5y7h4ZIf4@lists.infradead.org
X-Gm-Message-State: AOJu0YwnWNXD6OXuzfMrEQoZKQzEmaFiI6IyQVkizgZNIo0WLPtGU9Mr
	GBKE7yBEbsnwPOsmboUSY56vu2Qgp+Ji5FyfbhFIO7LzDcCqveIX
X-Gm-Gg: ASbGncuM34AQxi7eU8MGmNaRmSfeY/ww25JD5FmrEbED4aqy2hrG6fnLW1EsJkbdTuC
	gpafQviB7L+ToGJF+4LCzQZPS5xV5POHGE3sFLLzURT6GuTaZ+IRuDtA3gAuDrxVIv8JehOxjCz
	NnSbqMHJ1cxnNCUCEdoLF7nPjeF2JBOkK5Z7iEW7/JVAPy+a+fXRiND8Z1wXg1dFqcbRocFzFUg
	JdDDWgIbn01/QuOO0a9bE7+4FQaSEPoiRfBDx3xUpLGpJ0gUQsmAc1xz3dUugdaKtY1XVF9+Rqc
	Yt7cAPqAexCBpJcKmjYH6TUyiJGqfo983dX+MBhu2jCpV2XIHac4MTib1arV2p/DZpLmoYCD
X-Google-Smtp-Source: AGHT+IF7Li7Lm7POp1hY1DOd+YXcUFGnt79PSyFeoLFF1fqoqNga9gqKiKlCsi70OcwAnvjg618OOA==
X-Received: by 2002:a17:907:7244:b0:ab7:d6c:5781 with SMTP id a640c23a62f3a-abb70b35452mr579701566b.24.1739709438780;
        Sun, 16 Feb 2025 04:37:18 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb67732cd5sm343423666b.183.2025.02.16.04.37.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Feb 2025 04:37:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH] arm64: dts: rockchip: add hdmi1 support to ROCK 5 ITX
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250215152550.3975614-1-liujianfeng1994@gmail.com>
Date: Sun, 16 Feb 2025 13:37:05 +0100
Cc: linux-rockchip@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-Id: <566E6F11-765C-4415-8805-55DFD3C2BD4D@gmail.com>
References: <20250215152550.3975614-1-liujianfeng1994@gmail.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_043721_305148_C14FB39B 
X-CRM114-Status: GOOD (  16.72  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEppYW5mZW5nIExpdSA8bGl1amlhbmZlbmcx
OTk0QGdtYWlsLmNvbT4gdyBkbml1IDE1IGx1dCAyMDI1LCBvIGdvZHouIDE2OjI1Ogo+IAo+IEVu
YWJsZSB0aGUgSERNSSBwb3J0IG5leHQgdG8gZXRoZXJuZXQgcG9ydC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBKaWFuZmVuZyBMaXUgPGxpdWppYW5mZW5nMTk5NEBnbWFpbC5jb20+Cj4gLS0tCj4gCj4g
Li4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cyAgIHwgNTMgKysrKysr
KysrKysrKysrKysrKwo+IDEgZmlsZSBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNS1pdHgu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMK
PiBpbmRleCA2ZDY4ZjcwMjg0ZS4uYTRmZGNlZDA1MmMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01LWl0eC5kdHMKPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTUtaXR4LmR0cwo+IEBAIC0xMSw2ICsx
MSw3IEBACj4gI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+Cj4gI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAuaD4KPiAjaW5jbHVkZSA8ZHQtYmluZGluZ3Mv
cHdtL3B3bS5oPgo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3Mvc29jL3JvY2tjaGlwLHZvcDIuaD4K
PiAjaW5jbHVkZSAiZHQtYmluZGluZ3MvdXNiL3BkLmgiCj4gI2luY2x1ZGUgInJrMzU4OC5kdHNp
Igo+IAo+IEBAIC04OSw2ICs5MCwxNyBAQCBmYW4wOiBwd20tZmFuIHsKPiBwd21zID0gPCZwd20x
NCAwIDEwMDAwIDA+Owo+IH07Cj4gCj4gKyBoZG1pMS1jb24gewo+ICsgY29tcGF0aWJsZSA9ICJo
ZG1pLWNvbm5lY3RvciI7Cj4gKyB0eXBlID0gImEiOwo+ICsKPiArIHBvcnQgewo+ICsgaGRtaTFf
Y29uX2luOiBlbmRwb2ludCB7Cj4gKyByZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWkxX291dF9jb24+
Owo+ICsgfTsKPiArIH07Cj4gKyB9Owo+ICsKPiAvKiBNLjIgRS1LRVkgKi8KPiBzZGlvX3B3cnNl
cTogc2Rpby1wd3JzZXEgewo+IGNvbXBhdGlibGUgPSAibW1jLXB3cnNlcS1zaW1wbGUiOwo+IEBA
IC0yNjEsNiArMjczLDMyIEBAICZncHUgewo+IHN0YXR1cyA9ICJva2F5IjsKPiB9Owo+IAo+ICsm
aGRtaTEgewo+ICsgcGluY3RybC0wID0gPCZoZG1pbTBfdHgxX2NlYyAmaGRtaW0wX3R4MV9ocGQK
PiArICAgICAmaGRtaW0xX3R4MV9zY2wgJmhkbWltMV90eDFfc2RhPjsKPiArIHN0YXR1cyA9ICJv
a2F5IjsKPiArfTsKPiArCj4gKyZoZG1pMV9pbiB7Cj4gKyBoZG1pMV9pbl92cDE6IGVuZHBvaW50
IHsKPiArIHJlbW90ZS1lbmRwb2ludCA9IDwmdnAxX291dF9oZG1pMT47Cj4gKyB9Owo+ICt9Owo+
ICsKPiArJmhkbWkxX291dCB7Cj4gKyBoZG1pMV9vdXRfY29uOiBlbmRwb2ludCB7Cj4gKyByZW1v
dGUtZW5kcG9pbnQgPSA8JmhkbWkxX2Nvbl9pbj47Cj4gKyB9Owo+ICt9Owo+ICsKPiArJmhkcHR4
cGh5X2hkbWkwIHsKPiArIHN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gKyZoZHB0eHBoeTEg
ewo+ICsgc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAmaTJjMCB7Cj4gcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiBwaW5jdHJsLTAgPSA8JmkyYzBtMl94ZmVyPjsKPiBAQCAtMTIwOSwz
ICsxMjQ3LDE4IEBAICZ1c2JkcF9waHkxIHsKPiByb2NrY2hpcCxkcC1sYW5lLW11eCA9IDwyIDM+
Owo+IHN0YXR1cyA9ICJva2F5IjsKPiB9Owo+ICsKPiArJnZvcCB7Cj4gKyBzdGF0dXMgPSAib2th
eSI7Cj4gK307Cj4gKwo+ICsmdm9wX21tdSB7Cj4gKyBzdGF0dXMgPSAib2theSI7Cj4gK307Cj4g
Kwo+ICsmdnAxIHsKPiArIHZwMV9vdXRfaGRtaTE6IGVuZHBvaW50QFJPQ0tDSElQX1ZPUDJfRVBf
SERNSTEgewo+ICsgcmVnID0gPFJPQ0tDSElQX1ZPUDJfRVBfSERNSTE+Owo+ICsgcmVtb3RlLWVu
ZHBvaW50ID0gPCZoZG1pMV9pbl92cDE+Owo+ICsgfTsKPiArfTsKPiAtLSAKPiAyLjQzLjAKPiAK
PiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCgpKaWFuZmVuZywKCklzIHRoZXJlIGFueXdoZXJlIHJlcG8gd2l0aCB0aGlzIHBh
dGNoIGFwcGxpZWQgdG8gdGVzdCBpdCBvbiByb2NrNSBpdHggaHc/CgooYXNraW5nIGFzIEkgY2Fu
4oCZdCBnZXQgaXQgd29ya2luZzsgZXZlbiB3aXRoIGhkbWkxIG9ubHkgdm9wIGNsb2NrcyBsaWtl
IGhlcmU6IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3dhcnBtZS80OWZlYWRiZTFmNTNlYTMxZmNh
NzZmNDFkNWJiM2VlNCkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
