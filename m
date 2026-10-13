Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E738DCC6B0E
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 14:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzAErBuCpRJUIhw+a+Un208lnDxX1fsXT7lnl/C8fMw=; b=f7DAThDKDzhkcu
	UqMEOaRD1HQeDYULcgc0TSDFpN+TAcqQEgXwAZ3iFbs7x5LtFV+t/NOrH+yKzPue+Z71ukGLHFs9H
	Wdm6SSHwMZjD83arKwc07pfXj9HeiCEqZwfrcsQIvKX+DVECfGudWykSC5Pvvw18Hu10JTtOE4Ads
	OkA0KcUWcWKf9HLHOOyqCkEW0+XaRFf3q/CIzgQiQzTEdekksVxAoZ4MQykKtjzjWeR62p39cEs5T
	ik0Z/NXIr8D4Jtu2ByG1ywhHtzhGxv9f5uKnsnTiW0MEx7sD5VWKrqDyLic8KXxPWd4AAqfKuprxH
	5dg++M3u0UwUsobjjC8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGdh2-0000000D9Zy-2D4p;
	Tue, 13 Oct 2026 14:41:28 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGdgx-0000000D9Xu-2aw3;
	Tue, 13 Oct 2026 14:41:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3DF31200467;
	Tue, 13 Oct 2026 16:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791902481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qXCKXtUeTwD/OXxcWsx0jhFweCsNl4NPwKugfx/rprs=;
	b=KIrlBa2URZfmD/FmqJe1GWgkO+I6mlqaHLch1gzsY/k44XUy2cfZGo9vqcPbA1b9V/36Yd
	r6QMM7IDROOYNXe1XPb6FaSqE7tCbb9wYdikvo4UzheZa8Z3jdFcPgSIpiQ6FgyprSyJHW
	aWiVnazkzlI0aBCiwGI5AcaNjU0W8GV1ZOFkDXrbLJDjO/VPKC9uXiPadh5b+nAGQCxuOr
	fSLhLNclXGPy9ugee+c/RxCaM418A9lbnAoZES2m2YkB5TLm5JBax9WTu0P6Yfel5oLyV6
	GWLKdGAxn3nYWu2G3XeEk3ltcuolefG9SIBq764AZhXrlIOMy5HbjVPDKR3ysQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791902481; a=rsa-sha256;
	cv=none;
	b=JN6F6TbuYqKLjPPF80taIetatqg+2z/bfxZEpFcT9idjHVAQxSgPhtmPvZhdNlHzQlOqMd
	0dbjmCqNT3NZ7cMoSe0d4cLthZsJfKAIQskjj7YoOGp+V6CyXVWflgdQBRc+Gu8pEGICUt
	mYgOfhu14y+skHgGoWuzJiqFahTBvkMuk966JrXJvHsRg3lmZ8+ZhVuVTkf/4qKBCc2kkI
	NnexPpgj2qCy+H2NhQWOlthSehPwCwDlQuY956kOo5Nar3Re68Tn7Tf7jN+Y9mKxLn7HDo
	m6mQEw2N+ytOfvl37z57loRZQMFZHrn7s1ykw7AT/uprWHBX4C+7D+4V39ucBQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=mkl@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791902481;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qXCKXtUeTwD/OXxcWsx0jhFweCsNl4NPwKugfx/rprs=;
	b=YsqVrj+W6O1la8psQxwk7jDSFTYI2jODhzGigggnXZlA0ncOEj4tvLlTHANrXADawLaFpD
	WVA1o+wEK9nzQhi572OXZZXDRvPob9xW+s14kRRNVvOSBFQtxKVNomaa0tIsQ4MWUO4kdl
	M1fjaG50kAdN3p9WBicPx8m5T/nzRbsdR/m1FBgwqPFK2mCZwfyUoxM1kOqXJ1yuOCzRKe
	gwrjrJ46ISnd66g+cg7FOqNFPgx7sA/68xwC4CA0W31aslmg5eGg090pbhWlMvGDhysg4i
	UrxqPmewEY0n2O1uvaYdEYrPRJaqyyLkWy9pgFiXAY1BK0QJgmacX6R1mhDSkQ==
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1xGdgv-005hwf-0O;
	Tue, 13 Oct 2026 16:41:21 +0200
Received: from pengutronix.de (p4ffb23c7.dip0.t-ipconnect.de [79.251.35.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id BD0BB5C322D;
	Tue, 13 Oct 2026 14:41:20 +0000 (UTC)
Date: Tue, 13 Oct 2026 16:41:20 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Cunhao Lu <1579567540@qq.com>
Cc: Vincent Mailhol <mailhol@kernel.org>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Clark Williams <clrkwllms@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	kernel@pengutronix.de, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH net] can: rockchip_canfd: stop bus-off restart before
 closing the device
Message-ID: <20261013-mysterious-enchanted-manatee-2e75af-mkl@pengutronix.de>
References: <tencent_5802EE88434010229EDF7A53084D994C6106@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_5802EE88434010229EDF7A53084D994C6106@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_074124_228845_3C06DD36 
X-CRM114-Status: GOOD (  11.88  )
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

T24gMTMuMTAuMjAyNiAxMToyMjozNywgQ3VuaGFvIEx1IHdyb3RlOgo+IFRoZSBjbG9zZSBwYXRo
IGNhbmNlbHMgcmVzdGFydF93b3JrIGFmdGVyIGZyZWVpbmcgdGhlIElSUSBhbmQgc3RvcHBpbmcK
PiBoYXJkd2FyZS4gQSBxdWV1ZWQgYnVzLW9mZiByZXN0YXJ0IGNhbiB0aGVyZWZvcmUgZW5hYmxl
IHRoZSBjb250cm9sbGVyCj4gYW5kIGludGVycnVwdHMgYWZ0ZXIgdGVhcmRvd24uIEl0IGNhbiBh
bHNvIHJlc3RhcnQgdGltZXN0YW1wIHdvcmsgYmVmb3JlCj4gcnVudGltZSBzdXNwZW5kLgo+Cj4g
U2VyaWFsaXplIHJlc3RhcnQgd2l0aCB0aGUgY2xvc2UgdHJhbnNpdGlvbiB1c2luZyBhIG11dGV4
LiBNYXJrIHRoZQo+IGRldmljZSBjbG9zaW5nIGFuZCBtYXNrIGl0cyBpbnRlcnJ1cHRzIGJlZm9y
ZSBzeW5jaHJvbml6aW5nIHRoZSBJUlEuCj4gUmVsZWFzZSB0aGUgbXV0ZXggYmVmb3JlIGNhbmNl
bGxpbmcgcmVzdGFydF93b3JrLCBzbyBhIHF1ZXVlZCByZXN0YXJ0Cj4gY2FuIG9ic2VydmUgdGhl
IGNsb3Npbmcgc3RhdGUgd2l0aG91dCBkZWFkbG9ja2luZy4KPgo+IEV4Y2x1ZGUgdGhlIElSUSBo
YW5kbGVyIHdoaWxlIHJlaW5pdGlhbGl6aW5nIHRoZSBoYXJkd2FyZSBvbiByZXN0YXJ0Lgo+IERv
IG5vdCBkaXNhYmxlIHRoZSBzaGFyZWQgSVJRIGxpbmUgd2hpbGUgd2FpdGluZyBmb3Igd29yayB0
byBmaW5pc2guCj4KPiBGaXhlczogZmY2MGJmYmFmNjdmICgiY2FuOiByb2NrY2hpcF9jYW5mZDog
YWRkIGRyaXZlciBmb3IgUm9ja2NoaXAgQ0FOLUZEIGNvbnRyb2xsZXIiKQo+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFx
LmNvbT4KCnByLWJvdDogY3IKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICB8
IE1hcmMgS2xlaW5lLUJ1ZGRlICAgICAgICAgIHwKRW1iZWRkZWQgTGludXggICAgICAgICAgICAg
ICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZSB8ClZlcnRyZXR1bmcgTsO8cm5iZXJn
ICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMTI5IHwKQW10c2dlcmljaHQg
SGlsZGVzaGVpbSwgSFJBIDI2ODYgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTkgICB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
