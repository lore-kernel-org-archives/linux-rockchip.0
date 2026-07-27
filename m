Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C15C531FC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 07:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5cu3PMWamhsV/8pgPYqYaOnBRA9aVD3r8qzjACgp8Y=; b=hfJdXi89NOo0ko
	UQrVuoylSIHeAP4Tfr4OyM6io8A/vl1QPbQ0QUFDW6il622WWfNO98ZqNygHEJPVno0Ieb+z62jtU
	7gcRV5BCLI/zTJJkFFcfJ8cYCldgfrvbdlOb9n+EQMkerYKW3DQrmxF/iUcCPvUUSocj+S+8cAPfC
	haE2WknU+yotCmh1kMs+PtbdTNWvgUPiB4sBsrTdlcPs+QrPlOcpGSyZMH8KZtaRFvlAAuyoIxWh9
	xxLitmKI1JF44mQJseFgadCQLCG0WCFltXVbg+fpdZKVQgjbVh9Sm84T/6aAJ2WUIUGFzgVz/+qvj
	HfLEwESx2ub3DuPGBeVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFcU-000000026W9-36wV;
	Mon, 27 Jul 2026 07:19:26 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFcR-000000026Uw-1RCQ
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 07:19:25 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-92e5d50b0dbso159777385a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 00:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785136762; cv=none;
        d=google.com; s=arc-20260327;
        b=AeiqEwtm7hVAq945v9UDhOTL9RoRZLSo+ej6d3ILCzxXZEKXU2LtvChTPJLHDYPcS8
         +tNRjLQUkYT47SBGwSJU+Jdt+ibWv1AhUhzsI1coLCFf3WzMPJF0VjXBODNxEH5XQ6qE
         o1TZKTK0CnoOqUwHDo/oRtd8sQVfDC+BPYLRpRWuvLc+qiP53ODcElO0piQoEdb+zqHx
         cS33DNgzPidC7OZYexUnSFfT29ca/ziJcI+Il7a7XtNZ6Um8dOLVLlAN7bS+kirWjH2c
         JvC42LqRsBk63VQFB09AYm926IG3N3zyXpwc9ROLBHKTAmYdiOP2xAawBQoPcGV7kMji
         caXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3s0ZWapk6CSKQG7LinS/fqM/+LO7TASDUFIgGuAFciw=;
        fh=Kio6+uRHY30Rj0oWfw4KABmxxq3DgZM2wwPU4OcdnEw=;
        b=kDGXeHCcBGsUz2HqOF/4vnumIekiL9TOjJcUloU4DlU1mAgoU9MtypGMydOSOLycGz
         tvhEhMIm2iRGMYLJtN1I0nINRkUPfpQto5tyEIIXHkX5OxIJarEcFsVpk+ZVWxIjTM2j
         RJNlu6DKQHBZ3aWl39QgcBBi6RsewDQvIbJqWfcKorv22NmnHqwMDrvFeO5iSunlDq6C
         MHBzBoQh5TWUYucQMa6l9w1NyEh/E97LL26AQuIvHBKEvmKaXRBNLaHy2tRnXOBi3Ivx
         QJYY+GdBtf6R0W3G+zrlRdSeaQzrzyNa1eMAnwezEgTh5MpLNLHPMxsCYSTc6ucnvgqF
         1t2Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785136762; x=1785741562; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3s0ZWapk6CSKQG7LinS/fqM/+LO7TASDUFIgGuAFciw=;
        b=bnebXYtJqWRhnbop2k75gS7FxEyNHkoy6yEOT770uvbpinDzeC7lZYwiaCModuZU3e
         +kMHhiW2V42pKAgLpBE5VjYebOEhbU1ItQ9L1u88MC7so+vKLNJUBo3TK44smeoF0hm2
         BoyzmUr/srOn70mv6pxP32DQOF7PH9DgTR0unBEFWDzNV9tLLOAmO4n67gqMaPl1m6D+
         qanhI4fPKz3btab0GkYsw4uSUKkFkIOP/xbuow0hKAXgNw+BbN/PxoZlqtK+vyHAJRuu
         0FO4XUKXDfvSykbLoQ419d43dIYAveL0A7pi9SbkjVn1J9zpWTHWG27evucYDmUOotW9
         n0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785136762; x=1785741562;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3s0ZWapk6CSKQG7LinS/fqM/+LO7TASDUFIgGuAFciw=;
        b=pCAHcjGdik9ScOJbTX/Lg9qyffbl/hAQv4iDxkhtc+Bb5LfxHSNcxL8hnMc3rJbknr
         JwiLV8d9M09b3uMZgJLXb4otmIOB0dx/mjFJyyykocFoZx2nXB+IzLYGucIQLGIWNjwh
         dyHAjInsxZcDhBWopAIii5pKi1bHQS7Th2pI8yLuEAZsKF9/i+kjesPfWwicw0Ao2tBW
         aClwAd4kCGbYzNcd0Vzvc4vPHl6fgjeVhg7xlE4ZECrccdTfdfWJaCzxLLgORbAEX8y7
         5qukm6FEV/yft/W49yit8BfTxYkhoj0MaKtaUotkFH8pxUeQTfdNB/Htx8y3jGJmN3FV
         JLKw==
X-Forwarded-Encrypted: i=1; AHgh+Rr6R8cSjw9eMKigMIcBztM1lMEWsFONgJ+h2YvZOwOFExzn6HRnGVKWsZDrekmqzcNQV06ngsE0Gi+Zm7KIyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtrUYGH/XQmIBW8OWCfDmweJxvUH0nyU040gd0K0w4Op1mZgnW
	xzkBjTIRp2t4N+1g92/ff7Bmt1Vw1Q1a6GkOtjMlDO5gl2ddZDSLwdeSX279c9a5rc0mMMEKQzM
	L4t8anm03yPTEVlqzOT2gMfR0dmbTc4w=
X-Gm-Gg: AR+sD11pZ7ibAo7PLVYEZQMBHWCIKc7AGWGWdEn6NEZ9Q77bEjxpO1729A/4o/tfPAx
	TMb6DXe+8eTaGUFIrnU5LPLpNr6TjUF/PNx35T1SzJO+/dv8CbpRXawahxS6bTYtZb7qwzZw8+G
	dZzpf1/lqMp1nEhmbWNrdzMAZtL5LzSbbrpFPhCciPU4FGjbebAbAOSD7uzfmbLpkBTDKtcJ6Ul
	/SW5JldaXsz2x8i6Llxxhd1vzo9bnyh57FFc+DqXltsUr87ZjcJSn1atkjhnNBf20I69QqTZpcf
	itCrMsm6OQ3/3X1NTw==
X-Received: by 2002:a05:620a:a41c:10b0:92e:4e88:f453 with SMTP id
 af79cd13be357-932df72fa5emr557474685a.52.1785136762304; Mon, 27 Jul 2026
 00:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260727021048.3375444-1-attinagaoxu@gmail.com> <dae67c46-62b6-4233-92fc-69a09944baa5@bootlin.com>
In-Reply-To: <dae67c46-62b6-4233-92fc-69a09944baa5@bootlin.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 27 Jul 2026 11:19:09 +0400
X-Gm-Features: AUfX_mzMsY03HyPmF8nz7hhTY-FL_h-TDf2dzG1Lg1NUJL_NPUJrMPEieD7G1Rs
Message-ID: <CABjd4YwyBmTvw6cVQxLEzZEXSRb4QFEuQmrYY56WdmSfs-z8Kw@mail.gmail.com>
Subject: Re: [PATCH net-next 0/3] net: stmmac: dwmac-rk: add RK3576 GMAC 25M
 refout support
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Gavin Gao <attinagaoxu@gmail.com>, andrew+netdev@lunn.ch, davem@davemloft.net, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, heiko@sntech.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, 
	richardcochran@gmail.com, nicolas.frattaroli@collabora.com, 
	sebastian.reichel@collabora.com, sashal@kernel.org, 
	chaoyi.chen@rock-chips.com, amadeus@jmu.edu.cn, rmk+kernel@armlinux.org.uk, 
	horms@kernel.org, alok.a.tiwari@oracle.com, david.wu@rock-chips.com, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_001923_393700_EBED3CB1 
X-CRM114-Status: GOOD (  21.21  )
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

SGkgTWF4aW1lLAoKT24gTW9uLCBKdWwgMjcsIDIwMjYgYXQgMTE6MTHigK9BTSBNYXhpbWUgQ2hl
dmFsbGllcgo8bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4gSGksCj4K
PiBPbiA3LzI3LzI2IDA0OjEwLCBHYXZpbiBHYW8gd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBTb21l
IFJvY2tjaGlwIEdNQUMgaW5zdGFuY2VzIGNhbiBwcm92aWRlIGEgMjUgTUh6IHJlZmVyZW5jZSBj
bG9jayBvdXRwdXQKPiA+IGZvciBhbiBleHRlcm5hbCBSR01JSSBQSFkuIEJvYXJkcyBhbHJlYWR5
IGRlc2NyaWJlIHRoZSBNQUMgY2xvY2sgZGlyZWN0aW9uCj4gPiB3aXRoIGNsb2NrX2luX291dCA9
ICJvdXRwdXQiLCBidXQgdGhlIGR3bWFjLXJrIGRyaXZlciBkb2VzIG5vdCBjdXJyZW50bHkKPiA+
IHJlcXVlc3Qgb3IgZW5hYmxlIHRoZSBjb3JyZXNwb25kaW5nIDI1IE1IeiByZWZlcmVuY2Ugb3V0
cHV0IGNsb2NrLgo+ID4KPiA+IE9uIFJLMzU3NiwgdGhpcyBtZWFucyB0aGUgUkVGQ0xLTzI1TV9H
TUFDeF9PVVQgY2xvY2sgbWF5IGJlIGRpc2FibGVkIGJ5Cj4gPiB0aGUgY29tbW9uIGNsb2NrIGZy
YW1ld29yayBhcyB1bnVzZWQsIGV2ZW4gdGhvdWdoIHRoZSBib2FyZCBleHBlY3RzIHRoZQo+ID4g
R01BQyBibG9jayB0byBwcm92aWRlIHRoZSBQSFkgcmVmZXJlbmNlIGNsb2NrLgo+ID4KPiA+IFRo
aXMgc2VyaWVzIGFkZHMgYW4gb3B0aW9uYWwgImNsa19tYWNfMjVtX3JlZm91dCIgY2xvY2sgbmFt
ZSB0byB0aGUKPiA+IFJvY2tjaGlwIERXTUFDIGJpbmRpbmcsIHdpcmVzIGl0IHVwIGZvciBSSzM1
NzYgR01BQzAvR01BQzEsIGFuZCBlbmFibGVzCj4gPiBpdCBmcm9tIHRoZSBkd21hYy1yayBkcml2
ZXIgd2hlbiB0aGUgTUFDIGlzIGNvbmZpZ3VyZWQgZm9yIFJHTUlJIG91dHB1dAo+ID4gY2xvY2sg
bW9kZS4KPiA+Cj4gPiBUaGUgY2xvY2sgcmVtYWlucyBvcHRpb25hbCwgc28gZXhpc3RpbmcgZGV2
aWNlIHRyZWVzIGFuZCBTb0NzIGFyZSBub3QKPiA+IGFmZmVjdGVkLgo+ID4KPiA+IFRlc3RlZCBv
biBhIFBpY29DT00gUkszNTc2IEFDUCBib2FyZCB3aXRoIGEgTW90b3Jjb21tIFlUODUyMSBQSFku
Cj4gPiBUaGUgR01BQyAyNSBNSHogcmVmZXJlbmNlIGNsb2NrIG91dHB1dCByZW1haW5zIGFjdGl2
ZSBhbmQgRXRoZXJuZXQgd29ya3MuCj4KPiBJIGhhdmUgYSBmZWVsaW5nIHRoaXMgaXMgdXNpbmcg
dGhlIGNvbW1vbiBjbG9jayBmcmFtZXdvcmsgYmFja3dhcmRzLiBUaGUKPiBNQUMgaW4gdGhpcyBj
YXNlIGlzIGEgY2xvY2sgcHJvdmlkZXIgeWV0IGl0IHVzZXMgdGhlIGNvbnN1bWVyIEFQSS4KPgo+
IFNob3VsZG4ndCB0aGUgTUFDIGluc3RlYWQgcmVnaXN0ZXIgYSBuZXcgY2xvY2ssIGFzIGEgcHJv
dmlkZXIsIGZvciB0aGUgcmVmCj4gb3V0ID8gVGhlIFBIWSBkZXZpY2Ugd291bGQgdGhlbiBuZWVk
IHRvIGdldC9wcmVwYXJlL2VuYWJsZSB0aGF0IGNsb2NrLgoKVGhlIGNsb2NrIG5hbWUgaXMgYSBt
aXNub21lciBmcmFua2x5LiBJdCdzIGNvbmZpZ3VyZWQgaW4gdGhlIENSVSBhbmQKbXV4ZWQgdG8g
dGhlIG91dHB1dCBwaW4gdmlhIElPIHJlZ2lzdGVycywgc28gaXQgaGFzIGxpdHRsZSB0byBkbyB3
aXRoCnRoZSBHTUFDIGl0c2VsZiAtIHJhdGhlciBpdCdzIFNvQyB3aWRlLiBJdCdzIGFscmVhZHkg
ZXhwb3NlZCBieSB0aGUKU29DIGNsb2NrIGRyaXZlcnMsIHNvIG5vdGhpbmcgdG8gYmUgZG9uZSBp
biBkcml2ZXJzL25ldC9ldGhlcm5ldC4KCkxvb2tzIGxpa2UgTW90b3Jjb21tIFBIWSBkcml2ZXJz
IGRvbid0IHJlcXVlc3QgdGhlIGNsb2NrIHRob3VnaCwgdGh1cwp3ZSdyZSBzZWVpbmcgYSBzZWNv
bmQgbmVhcmx5IGlkZW50aWNhbCBhdHRlbXB0IHdpdGhpbiB0aGUgc2FtZQpkZXZlbG9wbWVudCBj
eWNsZSB0byBzaG9laG9ybiBjbG9jayBlbmFibGVtZW50IGludG8gdGhlIEdNQUMgZHJpdmVyCmFu
ZCBiaW5kaW5nLCB3aGVyZSBpdCBkb2Vzbid0IGJlbG9uZy4KCkJlc3QgcmVnYXJkcywKQWxleGV5
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
