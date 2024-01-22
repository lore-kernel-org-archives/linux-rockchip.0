Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 417EEC4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 07:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ues/q1dONB0FH6t2ZXkeDF6gg+BhuPQsRtgYVOCVNjs=; b=zfBFkOjhvi84vY
	AwTX+I8XwT0LFyUfgHdnIRsoqVbFqSNeukC3j7w9EkQiukr+BhM5IEU2TIk6x0yGvZTmn3U1dMQl1
	MxpiIz8BheA9moPT2ZaICRy1PNhleTXCdAqoW3wX4n6pA+Pcf7umHlttBS76nszcmFkKqg2/i+0eK
	iUb1gdVwvNAHrze3xpjZdmUJVzc8Klcr1qtQl3+DIWjNJPQq4sbQU8So9SjGp7CSeLHav1i6BcXED
	ANor6496f1wMDb9ccbYyYRVQvL1vqy9L5452jhPEqI3RD5OhMp0IGGIMKl0oM3Xj7mrSfzjHikmhn
	+fKhROZnDh2erFWC3hLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRorl-00AsXq-0B;
	Mon, 22 Jan 2024 07:37:09 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRorh-00AsW5-1e;
	Mon, 22 Jan 2024 07:37:07 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a3046221b0eso51171066b.1;
        Sun, 21 Jan 2024 23:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705909023; x=1706513823; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xc3sa+GYOy4rKNLUFJb6qU3rV63Dt/e4wYasMz8dvE0=;
        b=OHWE4dg7B+Y+shdB9pIoBE+IYSSIzso2aTjHom0wfsfEwiQ4k8sZ49qgsKe2c2F2g9
         HrMmeLUpha0FWYT2MyGO/UbgN9Zw6XVwjoZ01vMzq+BL5vgv+pulpCDN98eLnCXgQG0U
         PCaZfH7PcyjoGa2NWFYBoT2qsZLBi3rcXblZerzjzAaYZuvrp685wkqmC4+gkKHAESeD
         08PrB38qFxmMrSfTQJ5pjpEZCGq4zzUTbD14wfonGexIbnwBaviJq0fPX91peT2vgZOF
         ZSWTeGZAkGCE1570cRmaqj91yX2anhef/B7ZaR+aN4JlUhxaA1bsavOK31Dq8Pv/5c0h
         lZaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705909023; x=1706513823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xc3sa+GYOy4rKNLUFJb6qU3rV63Dt/e4wYasMz8dvE0=;
        b=fA+WURSOjI3Ms1T1zO8vm6Yvi6UuT9nm3FcH+jjqe+LNZ7BbFH2aJWx37i1A1VLP6A
         jNmBgkAYdMI4NvWcqbeC2GNedsiuOrbGqT13GrSc2cj+upK/d2l8iT/7AIFvKRXgjpkl
         WKCyPbcprH6CrG1baDMxGn9UxKugmhekucV5nzSzRCYKkHyYcczA9rdoPWUArRV1+NJD
         7nO8RYlEtMHlwdqlK/DBQERwmpIo/NVK/PdcpBGWl8wBYV8gus3ibv20F+R2ZnqFJeep
         b911pqBkKS0dcW8uuAO//8ljC0uoqoqIGq2+t2mOkrDqOKSf9ah2YZNhQEZS6EMlgo60
         MxVw==
X-Gm-Message-State: AOJu0YyuGrTrmNdurB8uVTRJSiTnFfxC44vMnhjFOW9owroH/uBjqTYP
	0IxFnDSopJo2a+C+ELChIkA+mIpoFMQd5gSsmYSYrn5mm1LxlQ/kqMtCbUYdVW2/7if29y2fTfP
	eHBNcZzp5tJu6PxVVd8zWfPsVlGuc2r5YU42xYQ==
X-Google-Smtp-Source: AGHT+IEAO24HJwuNIdG/7yeelZou9XAo0zFs6Ooz3MuRca4WKw1ZuFCV4Z3gmL3h6SMklFrRMU1JHjCF6aPOWAdXBEY=
X-Received: by 2002:a17:907:8e07:b0:a2f:b9bf:3955 with SMTP id
 th7-20020a1709078e0700b00a2fb9bf3955mr1595162ejc.21.1705909022608; Sun, 21
 Jan 2024 23:37:02 -0800 (PST)
MIME-Version: 1.0
References: <20240106222357.23835-1-alchark@gmail.com> <e0302da12345e5539583b2c96d747592@manjaro.org>
 <CABjd4Yw5wTLyK5OPw2S-ipPVCw7RTUeF2J0RgH-Vyis-ng8rTw@mail.gmail.com>
 <d7f2f25071a4d7c72bd286b11836dce7@manjaro.org> <CABjd4Yz11D8ThcT-oCWsQf9jL2idChFYSRYVVu3KNnzwoOwkKQ@mail.gmail.com>
 <f5c05015e042b11a51a9af26c35f18ed@manjaro.org> <CABjd4Yy91MAd2wALp4KQiEub9OyxU+MR+ti5KA_c+yvZT5xaqQ@mail.gmail.com>
 <81a5410c3dbedbd4fe9ce60ab236700c@manjaro.org>
In-Reply-To: <81a5410c3dbedbd4fe9ce60ab236700c@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 22 Jan 2024 11:36:50 +0400
Message-ID: <CABjd4YwxoPrKRPmjn-eWsU1N5fXCjAbnRwfKD9DLKgeL2=vHrA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable built-in thermal monitoring
 on rk3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Christopher Obbard <chris.obbard@collabora.com>, =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_233705_553415_BAA119F6 
X-CRM114-Status: GOOD (  41.94  )
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgMTA6MjLigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMDI0LTAxLTIyIDA3OjAzLCBBbGV4ZXkgQ2hhcmtv
diB3cm90ZToKPiA+IE9uIE1vbiwgSmFuIDIyLCAyMDI0IGF0IDg6NTXigK9BTSBEcmFnYW4gU2lt
aWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPiA+IHdyb3RlOgo+ID4+IE9uIDIwMjQtMDEtMjEgMTk6
NTYsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+ID4gT24gVGh1LCBKYW4gMTgsIDIwMjQgYXQg
MTA6NDjigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPj4g
Pj4gT24gMjAyNC0wMS0wOCAxNDo0MSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPj4gPj4gPiBP
biBTdW4sIEphbiA3LCAyMDI0IGF0IDI6NTTigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4gd3JvdGU6Cj4gPj4gPj4gPj4gT24gMjAyNC0wMS0wNiAyMzoyMywgQWxleGV5IENo
YXJrb3Ygd3JvdGU6Cj4gPj4gPj4gPj4gPiBJbmNsdWRlIHRoZXJtYWwgem9uZXMgaW5mb3JtYXRp
b24gaW4gZGV2aWNlIHRyZWUgZm9yIHJrMzU4OCB2YXJpYW50cwo+ID4+ID4+ID4+ID4gYW5kIGVu
YWJsZSB0aGUgYnVpbHQtaW4gdGhlcm1hbCBzZW5zaW5nIEFEQyBvbiBSQURYQSBSb2NrIDVCCj4g
Pj4gPj4gPj4gPgo+ID4+ID4+ID4+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFs
Y2hhcmtAZ21haWwuY29tPgo+ID4+ID4+ID4+ID4gLS0tCj4gPj4gPj4gPj4gPiArICAgICAgICAg
ICAgICAgICAgICAgdHJpcHMgewo+ID4+ID4+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdGhyZXNob2xkOiB0cmlwLXBvaW50LTAgewo+ID4+ID4+ID4+Cj4gPj4gPj4gPj4gSXQg
c2hvdWxkIGJlIGJldHRlciB0byBuYW1lIGl0IGNwdV9hbGVydDAgaW5zdGVhZCwgYmVjYXVzZSB0
aGF0J3Mgd2hhdAo+ID4+ID4+ID4+IG90aGVyIG5ld2VyIGR0c2kgZmlsZXMgYWxyZWFkeSB1c2Uu
Cj4gPj4gPj4gPgo+ID4+ID4+ID4gUmVmbGVjdGluZyBvbiB5b3VyIGNvbW1lbnRzIGhlcmUgYW5k
IGJlbG93LCBJJ20gdGhpbmtpbmcgdGhhdCBtYXliZSBpdAo+ID4+ID4+ID4gd291bGQgYmUgYmV0
dGVyIHRvIGRlZmluZSBvbmx5IHRoZSBjcml0aWNhbCB0cmlwIHBvaW50IGZvciB0aGUgU29DCj4g
Pj4gPj4gPiBvdmVyYWxsLCBhbmQgdGhlbiBoYXZlIGFsZXJ0cyBhbG9uZyB3aXRoIHRoZSByZXNw
ZWN0aXZlIGNvb2xpbmcgbWFwcwo+ID4+ID4+ID4gc2VwYXJhdGVseSBmb3IgQTc2LTAsMSwgQTc2
LTIsMywgQTU1LTAsMSwyLDM/IEFmdGVyIGFsbCwgZ2l2ZW4gdGhhdCB3ZQo+ID4+ID4+ID4gaGF2
ZSBtb3JlIGdyYW51bGFyIHRlbXBlcmF0dXJlIG1lYXN1cmVtZW50IGhlcmUgdGhhbiBpbiBwcmV2
aW91cyBSSwo+ID4+ID4+ID4gY2hpcHNldHMgaXQgbWlnaHQgYmUgYmV0dGVyIHRvIG9ubHkgdGhy
b3R0bGUgdGhlICJvZmZlbmRpbmciIGNvcmVzLAo+ID4+ID4+ID4gbm90IHRoZSBmdWxsIHBhY2th
Z2UuCj4gPj4gPj4gPgo+ID4+ID4+ID4gV2hhdCBkbyB5b3UgdGhpbms/Cj4gPj4gPj4gPgo+ID4+
ID4+ID4gRG93bnN0cmVhbSBEVCBkb2Vzbid0IGZvbGxvdyB0aGlzIGFwcHJvYWNoIHRob3VnaCwg
c28gbWF5YmUgdGhlcmUncwo+ID4+ID4+ID4gc29tZXRoaW5nIEknbSBtaXNzaW5nIGhlcmUuCj4g
Pj4gPj4KPiA+PiA+PiBJIGFncmVlLCBpdCdzIGJldHRlciB0byBmdWxseSB1dGlsaXplIHRoZSBo
aWdoZXIgbWVhc3VyZW1lbnQKPiA+PiA+PiBncmFudWxhcml0eQo+ID4+ID4+IG1hZGUgcG9zc2li
bGUgYnkgaGF2aW5nIG11bHRpcGxlIHRlbXBlcmF0dXJlIHNlbnNvcnMgYXZhaWxhYmxlLgo+ID4+
ID4+Cj4gPj4gPj4gSSBhbHNvIGFncmVlIHRoYXQgd2Ugc2hvdWxkIGhhdmUgb25seSB0aGUgY3Jp
dGljYWwgdHJpcCBkZWZpbmVkIGZvcgo+ID4+ID4+IHRoZQo+ID4+ID4+IHBhY2thZ2UtbGV2ZWwg
dGVtcGVyYXR1cmUgc2Vuc29yLiAgTGV0J3MgaGF2ZSB0aGUgc2VwYXJhdGUgdGVtcGVyYXR1cmUK
PiA+PiA+PiBtZWFzdXJlbWVudHMgZm9yIHRoZSBDUFUgKHN1YiljbHVzdGVycyBkbyB0aGUgdGhl
cm1hbCB0aHJvdHRsaW5nLCBhbmQKPiA+PiA+PiBsZXQncyBrZWVwIHRoZSBwYWNrYWdlLWxldmVs
IG1lYXN1cmVtZW50IGZvciB0aGUgY3JpdGljYWwgc2h1dGRvd25zCj4gPj4gPj4gb25seS4gIElJ
UkMsIHNvbWUgTWVkaWFUZWsgU29DIGR0c2kgYWxyZWFkeSBkb2VzIGV4YWN0bHkgdGhhdC4KPiA+
PiA+Pgo+ID4+ID4+IE9mIGNvdXJzZSwgdGhlcmUgYXJlIG5vIHJlYXNvbnMgbm90IHRvIGhhdmUg
dGhlIGNyaXRpY2FsIHRyaXBzIGRlZmluZWQKPiA+PiA+PiBmb3IgdGhlIENQVSAoc3ViKWNsdXN0
ZXJzIGFzIHdlbGwuCj4gPj4gPgo+ID4+ID4gSSB0aGluayBJJ2xsIGFsc28gYWRkIGEgYm9hcmQt
c3BlY2lmaWMgYWN0aXZlIGNvb2xpbmcgbWVjaGFuaXNtIG9uIHRoZQo+ID4+ID4gcGFja2FnZSBs
ZXZlbCBpbiB0aGUgbmV4dCBpdGVyYXRpb24sIGdpdmVuIHRoYXQgUm9jayA1QiBoYXMgYSBQV00g
ZmFuCj4gPj4gPiBkZWZpbmVkIGFzIGEgY29vbGluZyBkZXZpY2UuIFRoYXQgd2lsbCBnbyBpbiB0
aGUgc2VwYXJhdGUgcGF0Y2ggdGhhdAo+ID4+ID4gdXBkYXRlcyByazM1ODgtcm9jay01Yi5kdHMg
KHlvdXIgZmVlZGJhY2sgdG8gdjIgb2YgdGhpcyBwYXRjaCBpcyBhbHNvCj4gPj4gPiBkdWx5IG5v
dGVkLCB0aGFuayB5b3UhKQo+ID4+Cj4gPj4gR3JlYXQsIHRoYW5rcy4gIFN1cmUsIG1ha2luZyB1
c2Ugb2YgdGhlIFJvY2sgNUIncyBzdXBwb3J0IGZvcgo+ID4+IGF0dGFjaGluZwo+ID4+IGEgUFdN
LWNvbnRyb2xsZWQgY29vbGluZyBmYW4gaXMgdGhlIHdheSB0byBnby4KPiA+Pgo+ID4+IEp1c3Qg
dG8gcmVpdGVyYXRlIGEgYml0LCBhbnkgImFjdGl2ZSIgdHJpcCBwb2ludHMgYmVsb25nIHRvIHRo
ZSBib2FyZAo+ID4+IGR0cyBmaWxlKHMpLCBiZWNhdXNlIGhhdmluZyBhIGNvb2xpbmcgZmFuIGlz
IGEgYm9hcmQtc3BlY2lmaWMgZmVhdHVyZS4KPiA+PiBBcyBhIG5vdGUsIHlvdSBtYXkgYWxzbyB3
YW50IHRvIGhhdmUgYSBsb29rIGF0IHRoZSBSb2NrUHJvNjQgZHRzKGkpCj4gPj4gZmlsZXMsIGZv
ciBleGFtcGxlOyAgdGhlIFJvY2tQcm82NCBhbHNvIGNvbWVzIHdpdGggYSBjb29saW5nIGZhbgo+
ID4+IGNvbm5lY3RvciBhbmQgdGhlIGFzc29jaWF0ZWQgUFdNIGZhbiBjb250cm9sIGxvZ2ljLgo+
ID4KPiA+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXIhIFRoZXJlIGlzIGFsc28gYSBoZWxwZnVsIGRv
YyB3aXRoaW4gZGV2aWNldHJlZQo+ID4gYmluZGluZ3MgZGVzY3JpcHRpb25zLCBhbHRob3VnaCBp
dCBzaXRzIHVuZGVyIGh3bW9uIHdoaWNoIHdhcyBhIGJpdAo+ID4gY29uZnVzaW5nIHRvIG1lLiBJ
J3ZlIGFscmVhZHkgdGVzdGVkIGl0IGxvY2FsbHkgKGJ5IGFkZGluZyB0byB0aGUKPiA+IGJvYXJk
IGR0cyksIGFuZCBpdCBzcGlucyB1cCBhbmQgZG93biBxdWl0ZSBuaWNlbHksIGFuZCBldmVuIG1v
ZHVsYXRlcwo+ID4gdGhlIGZhbiBzcGVlZCBzd2lmdGx5IHdoZW4gdGhlIGxvYWQgY2hhbmdlcyAt
IHlheSEKPgo+IE5pY2UhICBBbHNvLCBpc24ndCBpdCBsaWtlIG1hZ2ljPyA6KSAgVG8gbWUsIHR1
cm5pbmcgTEVEcyBvbi9vZmYgYW5kCj4gY29udHJvbGxpbmcgZmFucyBhY3RzIGFzIHNvbWUga2lu
ZCBvZiBhICJicmlkZ2UiIGJldHdlZW4gdGhlIHZpcnR1YWwKPiBhbmQgdGhlIHJlYWwgd29ybGQu
IDopCgpPaCB5ZXMhIEkgYWxzbyBrZWVwIGFkbWlyaW5nIGhvdyBvbmUgY2FuIGFkZCBqdXN0IGEg
Y291cGxlIG9mIGxpbmVzIG9mCnRleHQgaGVyZSBhbmQgdGhlcmUgdGhhdCdzIG5vdCBldmVuIHJl
YWwgY29kZSwgYW5kIHRoZSB3aG9sZSBrZXJuZWwKbWFjaGluZXJ5IHN0YXJ0cyBjcnVuY2hpbmcg
bnVtYmVycywgYW5hbHl6aW5nIHRlbXBlcmF0dXJlcywgcnVubmluZwpQSUQgbG9vcHMsIGV0YyBl
dGMgc28gdGhhdCBJIGNvdWxkIGVuam95IHRoZSBzYXRpc2Z5aW5nIHdoaXN0bGUgb2YgYQpzbWFs
bCBmYW4gd2hlbiBJIHR5cGUgYG1ha2UgLWo4YCA6LUQKCj4gQXMgYSBzdWdnZXN0aW9uLCBpdCB3
b3VsZCBiZSBnb29kIHRvIHRlc3Qgd2l0aCBhIGNvdXBsZSBvZiBkaWZmZXJlbnQKPiBmYW5zLCB0
byBtYWtlIHN1cmUgdGhhdCB0aGUgUFdNIHZhbHVlcyB3b3JrIHdlbGwgZm9yIG1vcmUgdGhhdCBv
bmUgZmFuCj4gbW9kZWwuICBUaGUgUm9jayA1QiByZXF1aXJlcyBhIDUgViBmYW4sIGlmIEknbSBu
b3QgbWlzdGFrZW4/CgpJdCBpcyA1ViwgeWVzLiBJIG9ubHkgaGF2ZSBvbmUgZmFuIHRvIHRyeSB0
aG91Z2gsIGFuZCBJIHNpbXBseSByZWxpZWQKb24gdGhlIFBXTSB2YWx1ZXMgdGhhdCBhcmUgYWxy
ZWFkeSBkZWZpbmVkIGluIHRoZSB1cHN0cmVhbQpyazM1ODgtcm9jay01Yi5kdHMuIFRoZXkgZG9u
J3QgbG9vayBpZGVhbCBmb3IgbXkgcGFydGljdWxhciBmYW4sCmJlY2F1c2UgdGhlIGxvd2VzdCBu
b24temVybyBjb29saW5nIHN0YXRlIGN1cnJlbnRseSB1c2VzIGEgUFdNIHZhbHVlCm9mIDk1LCB3
aGljaCBkb2Vzbid0IGFsd2F5cyBtYWtlIGl0IHNwaW4gdXAuIEJ1dCBpbiB0aGUgZW5kIGl0IGRv
ZXNuJ3QKc2VlbSB0byBtYXR0ZXIgdGhhdCBtdWNoLCBiZWNhdXNlIHRoYXQgdGlueSBmYW4gbmVl
ZHMgdG8gc3BpbiBhdCBmdWxsCjI1NSB3aGVuZXZlciBhbGwgZWlnaHQgY29yZXMgYXJlIGxvYWRl
ZCAoYW5kIGV2ZW4gdGhlbiBpdCBjYW4gb25seQpiYWxhbmNlIHRoZSB0ZW1wZXJhdHVyZSBhdCBh
cm91bmQgNjAuNdChKSwgYW5kIHdoZW4gdGhlIGxvYWQgaXMgbGlnaHRlcgooc3VjaCBhcyBkdXJp
bmcgdmFyaW91cyAuL2NvbmZpZ3VyZSBydW5zKSBpdCBqdXN0IHN3aXRjaGVzIG9mZgpjb21wbGV0
ZWx5IGFzIHRoZSB0ZW1wZXJhdHVyZSBnb2VzIGRvd24gdG8gNDZDIGV2ZW4gd2l0aCB0aGUgZmFu
IG5vdApzcGlubmluZy4KCkkgZG9uJ3QgY3VycmVudGx5IHVzZSB0aGUgR1BVL05QVS9WUFUgdGhv
dWdoIC0gbWF5YmUgdGhvc2Ugd291bGQKcHJvZHVjZSBtb3JlIG1vZGVyYXRlIGxvYWQgd2hpY2gg
Y291bGQgYmVuZWZpdCBmcm9tIHNwaW5uaW5nIHRoZSBmYW4KYXQgbWVkaXVtIHNwZWVkcy4KCkJl
c3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
