Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D82CC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 10:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQsDlLl6uX9WjJqotAUE99djspqLMU6FUOZR9OWRJ/Q=; b=OMomo8aspM/H39
	akZcvt6YUTZqyJfZQM0s8FwgIdFOJTLHJM157GYFrHyY3zexDdwPhuQ1/Ro4tSLJLQAD/rFHdnfnL
	QEhnb7l+MCJv76qlwHDxQJ9GZ6ZZYa5lxVkLvWOa10T5jjkNpoK2RA17mVYDBW2X84MhFP4hB8Odc
	6NS0fv+9CVTKOn8CrHXVQ6dV0ezNSLtvyY2PkQwh7uI2NI11/nmV1fZFYbA7dqj9Y+e+4+BhknQ43
	7ben+OS8C5QWpzUcise5yhomuRpjiHY9XcBdsXGFxaY1Bx21co3SU+f4CL/W6cyTvXcEzown80Km+
	b8NhBjeN1T69ukc1gUJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYtI-0000000FK4c-107G;
	Fri, 20 Jun 2025 10:22:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXnV-0000000FA9S-094P;
	Fri, 20 Jun 2025 09:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+77mLNRKP7S3a1EeDVlp4Z40e4a+H2yITmtvU3k1wSo=; b=pMjv3keHGRwyvE7kWF7p/mXjzW
	JLeyfMK7GJJvLwDxXLm5Si6mdN0/M9RoKoW7y6er0Wnli5GymY1sGpesPmVaz29O3PfK6UJkAhA9J
	ElEuWdlbwBto0BRnWao1uRmBP/OKGeg5e4gR91ayq7n4bR4kpH0o76AZ+VRXaubvgRSNQttyhqJJA
	S7mVWqaBggV9Y0O0egMXAjI8hSrFsWeToX8SNfocUFdISuhSJ5Pr4QQvO8skYL2hx/KmKEa3oewbm
	bs2woefRQcUsCwIODVuhC4OwAWkJs9ucxpVRwVFCbud6yH/Rz92aq5/qSl58HjCdVdNWkiHfVFmC+
	gwZlUe9A==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSXnS-00088r-9A; Fri, 20 Jun 2025 11:12:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: John Clark <inindev@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 John Clark <inindev@gmail.com>
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: Add FriendlyElec NanoPi M5 support
Date: Fri, 20 Jun 2025 11:12:29 +0200
Message-ID: <2432603.PIDvDuAF1L@phil>
In-Reply-To: <20250616212214.139585-3-inindev@gmail.com>
References: <20250616212214.139585-1-inindev@gmail.com>
 <20250616212214.139585-3-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_021233_072326_5265194D 
X-CRM114-Status: GOOD (  12.71  )
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

SGksCgpBbSBNb250YWcsIDE2LiBKdW5pIDIwMjUsIDIzOjIyOjE0IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9obiBDbGFyazoKPiBBZGQgZGV2aWNlIHRyZWUgZm9yIEZy
aWVuZGx5RWxlYyBOYW5vUGkgTTUgd2l0aCBSb2NrY2hpcCBSSzM1NzYgU29DCj4gKDR4IENvcnRl
eC1BNzIsIDR4IENvcnRleC1BNTMsIE1hbGktRzUyIE1DMyBHUFUsIDYgVE9QUyBOUFUpLiBFbmFi
bGVzCj4gYmFzaWMgYm9vdGluZyBhbmQgY29ubmVjdGl2aXR5Lgo+IAo+IFN1cHBvcnRlZCBmZWF0
dXJlczoKPiAtIFJLMzU3NiBTb0MKPiAtIDRHQi84R0IvMTZHQiBMUEREUjRYL0xQRERSNSBSQU0K
PiAtIDE2TUIgU1BJIE5vciBGbGFzaAo+IC0gMnggMUdicHMgRXRoZXJuZXQKPiAtIDJ4IFVTQiAz
LjIgR2VuIDEgVHlwZS1BIHBvcnRzCj4gLSBtaWNyb1NEIFVIUy1JCj4gLSBNLjIgTS1LZXkgUENJ
ZSAyLjEgeDEgTlZNZSBzdXBwb3J0Cj4gLSBIRE1JIDEuNC8yLjAgKHVwIHRvIDQwOTZ4MjMwNEA2
MEh6KQo+IC0gMzAtcGluIEdQSU8gKDJ4IFNQSSwgNHggVUFSVCwgM3ggSTJDLCA1eCBQV00sIDIw
eCBHUElPKQo+IC0gRGVidWcgVUFSVAo+IC0gUlRDIHdpdGggSFlNODU2M1RTCj4gLSBQb3dlciB2
aWEgVVNCLUMgKFBELCA2Vn4yMFYpCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9obiBDbGFyayA8aW5p
bmRldkBnbWFpbC5jb20+Cj4gLS0tCgphcGFydCBmcm9tIHRoZSBzY2hlbWEgcHJvYmxlbXMsIFJv
YidzIGJvdCBmb3VuZCwgSSBzYXcgc29tZSBhZGRpdGlvbmFsCm5pdHBpY2tzIGJlbG93LgoKClsu
Li5dCgo+ICsJc291bmQgewpbLi4uXQo+ICsJfTsKPiArCj4gKwl2Y2NfMTJ2X2RjaW46IHJlZ3Vs
YXRvci12Y2MtMTJ2LWRjaW4gewoKbm9kZXMgd2l0aG91dCBhZGRyZXNzZXMgc2hvdWxkIGdldCBz
b3J0ZWQgYnkgbm9kZW5hbWUKYWthIHJlZ3VsYXRvci0qIGJlZm9yZSBzb3VuZC4KClBoYW5kbGVz
IGNvdW50IGludG8gdGhlIHNvcnRpbmcgb25seSBiZWxvdyBpbiB0aGUKJnBoYW5kbGUge307IHBh
cnRzCgoKPiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9y
LWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiArCQlyZWd1bGF0b3ItbWluLW1p
Y3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTIw
MDAwMDA+Owo+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjY18xMnZfZGNpbiI7CgpibGFuayBsaW5l
cyBiZXR3ZWVuIHByb3BlcnRpZXMgYW5kIHN1Ym5vZGVzIHBsZWFzZS4Kc2FtZSBmb3Igb3RoZXIg
cmVndWxhdG9ycyBiZWxvdyBhbmQgYWxzbyB0aGUgcG1pYy4KCj4gKwkJcmVndWxhdG9yLXN0YXRl
LW1lbSB7Cj4gKwkJCXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+ICsJCX07Cj4gKwl9Owo+ICsK
Cj4gKyZmc3BpMW0xX3BpbnMgewo+ICsJcm9ja2NoaXAscGlucyA9Cj4gKwkJLyogY2xrLCBkMH40
ICovCgpjb21tZW50IGNvdWxkIHN0YXRlIGEgdGlueSBiaXQgbW9yZSB3aGF0IGlzIGNoYW5nZWQg
Y29tcGFyZWQgdG8KdGhlICJvcmlnaW5hbCIgcGluIHNldHRpbmdzCgo+ICsJCTwxIFJLX1BENSAz
ICZwY2ZnX3B1bGxfbm9uZT4sCj4gKwkJPDEgUktfUEM0IDMgJnBjZmdfcHVsbF9ub25lPiwKPiAr
CQk8MSBSS19QQzUgMyAmcGNmZ19wdWxsX25vbmU+LAo+ICsJCTwxIFJLX1BDNiAzICZwY2ZnX3B1
bGxfbm9uZT4sCj4gKwkJPDEgUktfUEM3IDMgJnBjZmdfcHVsbF9ub25lPjsKPiArfTsKCgoKCj4g
KyZzYXJhZGMgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICsJdnJlZi1zdXBwbHkgPSA8JnZjY2Ff
MXY4X3MwPjsKCnN0YXR1cyBpcyB0aGUgbGFzdCBwcm9wZXJ0eQoKPiArfTsKCgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
