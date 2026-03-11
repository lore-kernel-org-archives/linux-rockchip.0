Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 801DF1125821
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBk0mw48QHXpb6LrGHlk9OZWKTXonh4STFuySI7Zph4=; b=fLOH8pu5zqklZ0
	qe6NT6girHIcfxS40zyne2e14BU9RpkT51Ir8B/KLuZH/HbCzJo/Bp+lvYlGjqrhawvSLCwxMfX0R
	ECoT7zHE0Mq8iuUkifRf9X81aazun4FafS0q3grKhLIlgc6pmP9F/S/F6rDJ5+gBD2mpEe4j3MbR1
	nKV4PBK2ASC5FGYayPmovHHHjzcITnDL76KYiBJiSGD3pbH0QHjao4dOZNVmuzVRpYp2U34UllNN4
	u62I5858s7mh5wB6JZfY20elmTDCbODJX00h40UdKUhfwy5t9S5w0MciSuSLqrs+upyPWFxSLfb2e
	/sO/njCatsbksrmeltyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0JrC-0000000Bex2-3B2c;
	Wed, 11 Mar 2026 13:44:14 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Jr9-0000000Beva-3ij0
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:44:13 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b9434f706a2so621810466b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 06:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773236650; cv=none;
        d=google.com; s=arc-20240605;
        b=LIgs3TwOK+0Zd0isqpZpTXvdblZ1wlsHLpaoDgjDMD7RQxIuWULNjxCHu8of6PO5gF
         czaXonXEs6lWm9BDuoHjmXZc8AblW95LEn0f/zuPFmuKThWMS7HcN/MWh1lG5dkXJhUk
         tBYp2Bra1YaptolhlEUlQHPuWzHbxr2Wgby08UVVbNQ7gJZ4dDIsDdpq0z6zsz29JvtN
         gVbO0fjlLyqTfzm7KROtfe+hTuwtHogECxApArFIp+YuvySIUDVGBVoLLqGAtivFPYHW
         AbHJNKJXvWeflbL7q9Ddg9nQpenBCMLPizDr5L9WkiZyiK7umWluSzXROPCRXUmDSNUv
         Gqzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SeNXMDsnLCsfb/ggcSYfMHVBDtE5HCipWU9ndEZGSf8=;
        fh=kD6wjSc20oLpaKhZkD+B1BskPDPAOZgtFrYnHzNjb1Y=;
        b=dzLrRPmm+cvlGFjp4XrFqsBxJNVVuAs5a81g/P6wxACmLbD3P0l3CErXwIfk+azZnE
         vnr6mTmNGJAT4ubeU9ab3cQuzL/IMoFcxCzRKPNawkmK0oW51L6pNOCaBmj3VnKw/l1V
         duvBINsnU8stJfCPqbrSDof2NMvgtC6rxVyHqXn2dHsgcNZ7kviKRdd94zXvYuV/V90g
         nR/voH7aJ+lkOEKpc0w/zPA5z8J3hk2PFmPRqQRu5XI+hXRHu9oed7sY5GvLB+cp0my2
         Vq83TFirGeg/NdJsyK5nECbmMMA54p3Pbwqe+OzoWPo5RsjQU77YpqbAyrNIlKLYMjRh
         HFKg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773236650; x=1773841450; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SeNXMDsnLCsfb/ggcSYfMHVBDtE5HCipWU9ndEZGSf8=;
        b=DgMUqVLzGvFVzHkcMbf3y8jr1A9WWhP534s3MEGKCiLJ1jGbKJFEYub+BHo5UtvNgC
         ylFJAgHEv9gL7gAmHDO6zYzNJwpe2dqaVod/hV4TIhNVTli50U7pn4YLehL3hyzSmEQm
         6QziRJXl57Yd7Z2hKkJ2aMIk/NchP00Ut3zBeWglkTOtuDV0esDZ2qYQRoDcfjjfYCNA
         Uqw66wunbaEbGwiOSlhWHUybrOiECuwl1+vsWz1CXOMUurjHWSjCwFhiP1+WZOytMOhd
         yAnDd5HkYeGiVu9w1hX7kpZC06yqZFf8wJ3O8a8CkEzwCFxhlHYdoTmCunL8luYzT7bV
         wggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236650; x=1773841450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SeNXMDsnLCsfb/ggcSYfMHVBDtE5HCipWU9ndEZGSf8=;
        b=m25vUhPx/TTi1nfagKhIbDIjGKppYcAGSrEjfAM/lSKsXwUl8W1GDV+cEIDq2UjLll
         DsICZ1DhXDNyMMAzO04BYaHM8EpW32hmn5HQrKI4ZLUMtbzZDTd0zfvWAQj+cwFp4Ivn
         4hPwKyqQP7BThmkOgEqh2mzBJuoDtWPg6NDpriBrlpGb8SnfDEo/UssIiTYRz7UAj+Fn
         CAbYB6rA9CzxuRNhA9OhiFHPMg8wg0OoEWJbtIcXFFtpTEDiF6EnH/MbzahqOh+bhn/S
         ky+zSk9LEfpZD4naKt2hfV1OpAwdnkRMAQTEJHDvw7qhwop4vcgrBxu8Y0Sg+kPDaNVp
         Hekw==
X-Forwarded-Encrypted: i=1; AJvYcCXzbujkXyjLOMSOhvWQYuUqJAP5KncoGENqMh2DCvAiKcOTgmz6AHgaWejBkPa3Lr0AfGsBiihdZqwlrejWyg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+T4EBU2oip7ubxNFbGnwbZ++PxSENYzs+EHg9biB3eJGvo7VN
	JBlbdt9+8J0VnfMxgPEeD9fUPa2noYbwoBLrdERt7IKIFvXSSywgwpL/1GTlaixJw3NTcNetd23
	4SO+GGf40APDEbMjHYupy9zWxNxG5MUI=
X-Gm-Gg: ATEYQzyhqVfDicT+98LZ5hmL5SgHmj3YnMAN1doIU80c1YS/Un2Nai1L3OcRUNC3JQ3
	gXhj0pok7iOJGpzEf8NKNL9rZ8tTT1aFmDmOdb/FPLYht3dHyV4QqqH6HNiw9lRMoqvAD9QIipC
	QY0FEePfdmvNnaZC8uXmKZkg+Q38pun7PyuVgMAmAkgfH3S26JTWf+AEJ3+ev4PVusAyzZ88nHL
	vjcj/JTP4yx3+ooaJ66UrlsmII+LcF4lipglKDyiigTFe7IwPEt7O1qsk8b6Xq63bJhNecw1MDV
	8wuSyA==
X-Received: by 2002:a17:906:fd8c:b0:b90:8016:cfe4 with SMTP id
 a640c23a62f3a-b972e1b0254mr130356766b.10.1773236649325; Wed, 11 Mar 2026
 06:44:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260311115502.7353-1-linux.amoon@gmail.com> <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
In-Reply-To: <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Mar 2026 19:13:52 +0530
X-Gm-Features: AaiRm50TsCWew8aW0KhsUlFFh00uwvfJ5vuvS56VWFIF0mdSLhpfi6uwbavR56E
Message-ID: <CANAwSgT_Qb+Xoqg4ezZaYDBu81--=yhdvQ+cskumoMMh=J2ing@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_064411_991721_E27DFDA4 
X-CRM114-Status: GOOD (  25.91  )
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

SGkgU2hhd24sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3IGNvbW1lbnRzLgoKT24gV2VkLCAxMSBN
YXIgMjAyNiBhdCAxNzo1NywgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdy
b3RlOgo+Cj4g5ZyoIDIwMjYvMDMvMTEg5pif5pyf5LiJIDE5OjU0LCBBbmFuZCBNb29uIOWGmemB
kzoKPiA+IEFkZCBzdXBwb3J0cy1jbGtyZXEgYW5kIHRoZSBjb3JyZXNwb25kaW5nIHBpbm11eCBj
b25maWd1cmF0aW9ucyBmb3IgUENJZQo+ID4gQVNQTSBMMSBzdWJzdGF0ZXMgb24gdGhlIFJvY2sg
NUIsIDVCKywgYW5kIDVULgo+ID4gVGhlIHN1cHBvcnRzLWNsa3JlcSBmbGFnIGluZm9ybXMgdGhl
IFBDSWUgY29udHJvbGxlciB0aGF0IHRoZSBoYXJkd2FyZQo+ID4gcm91dGluZyBmb3IgdGhlIENM
S1JFUSMgc2lkZWJhbmQgc2lnbmFsIGlzIHByZXNlbnQuIFRoaXMgZW5hYmxlcyBzdXBwb3J0Cj4g
PiBmb3IgUENJZSBBU1BNIChBY3RpdmUgU3RhdGUgUG93ZXIgTWFuYWdlbWVudCkgTDEgc3Vic3Rh
dGVzLCBhbGxvd2luZyBmb3IKPiA+IGJldHRlciBwb3dlciBlZmZpY2llbmN5Lgo+ID4KPiA+IENj
OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IEFuYW5kIE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNvbT4KPiA+IC0tLQpJIHZlcmlmaWVkIHRo
ZSBjaGFuZ2UgYnkgY29tcGFyaW5nIHRoZSBsc3BjaSAtdnZ2IG91dHB1dCBmcm9tIGJlZm9yZQph
bmQgYWZ0ZXIgdGhlIG1vZGlmaWNhdGlvbi4KPgo+IEl0IHdvdWxkIGJlIGJldHRlciBpZiB5b3Ug
Y291bGQgcHV0IHRoZSBsaW5rIHRvIHRoZSBzY2hlbWF0aWMgaGVyZSh1bmRlcgo+ICItLS0iKSBm
b3IgZm9sa3MgZWFzeSB0byByZXZpZXcuIEkgcGFzdGUgaXQgaGVyZSBmb3IgcmVmZXJlbmNl77ya
Cj4KPiBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrNS81YisvZG9jcy9ody9yYWR4YV9yb2NrNWJw
X3YxLjJfc2NoZW1hdGljLnBkZgpPaywgSSB3aWxsIGZvbGxvdyB0aGlzIGFkdmljZSBuZXh0IHRp
bWUsCj4KPiA+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi01
YnAtNXQuZHRzaSB8IDkgKysrKysrLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpCj4gPiBpbmRleCBiM2U3
NmFkMmQ4NjkuLjY2OGIxOWMwNWY3ZSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKPiA+IEBAIC00
NjgsNyArNDY4LDggQEAgbWFwMSB7Cj4gPgo+ID4gICAmcGNpZTJ4MWwwIHsKPiA+ICAgICAgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAtICAgICBwaW5jdHJsLTAgPSA8JnBjaWUyXzBf
cnN0PjsKPiA+ICsgICAgIHBpbmN0cmwtMCA9IDwmcGNpZTJfMF9yc3Q+LCA8JnBjaWUzMHgxbTFf
MF9jbGtyZXFuPjsKPiA+ICsgICAgIHN1cHBvcnRzLWNsa3JlcTsKPiA+ICAgICAgIHJlc2V0LWdw
aW9zID0gPCZncGlvNCBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiAgICAgICB2cGNpZTN2
My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDA+Owo+ID4gICAgICAgc3RhdHVzID0gIm9rYXki
Owo+ID4gQEAgLTQ3Niw3ICs0NzcsOCBAQCAmcGNpZTJ4MWwwIHsKPiA+Cj4gPiAgICZwY2llMngx
bDIgewo+ID4gICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+IC0gICAgIHBpbmN0
cmwtMCA9IDwmcGNpZTJfMl9yc3Q+Owo+ID4gKyAgICAgcGluY3RybC0wID0gPCZwY2llMl8yX3Jz
dD4sIDwmcGNpZTIweDFtMF9jbGtyZXFuPjsKPgo+IElzbid0IGl0IG0xKFBDSUUyMF8xXzJfQ0xL
UkVRbl9NMV9MIGluIHRoZSBzY2hlbWF0aWMpPwoKSSBqdXN0IHVzZWQgdGhlIHBpbmN0cmwgbGFi
ZWwgR1BJTzNfQzdfdSBhcyBhIHJlZmVyZW5jZSB0byBzZWxlY3QgdGhpcwpvbmUuIHNlZSBiZWxv
dy4KClsxXSBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS1waW5jdHJsLmR0c2kjTDE2MTMt
TDE2NjIKClRoZSBSSzM1ODggVGVjaG5pY2FsIFJlZmVyZW5jZSBNYW51YWwgKFRSTSkgUGFydCAy
IHByb3ZpZGVzIHRoZQpmb2xsb3dpbmcgZGV0YWlscyByZWdhcmRpbmcgdGhlIGNsa3JlcSMgc2ln
bmFsCnBjaWVfY2xrcmVxX2luL291dF9uICAgIE0wIFBDSUUyMFgxXzJfQ0xLUkVRTl9NMCBHUElP
M19DN191CnBjaWVfY2xrcmVxX2luL291dF9uICAgIE0xIFBDSUUyMFgxXzJfQ0xLUkVRTl9NMSBH
UElPNF9CN191Cgo+Cj4gPiArICAgICBzdXBwb3J0cy1jbGtyZXE7Cj4gPiAgICAgICByZXNldC1n
cGlvcyA9IDwmZ3BpbzMgUktfUEIwIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gICAgICAgdnBjaWUz
djMtc3VwcGx5ID0gPCZ2Y2MzdjNfcGNpZTJ4MWwyPjsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5
IjsKPiA+IEBAIC00ODgsNyArNDkwLDggQEAgJnBjaWUzMHBoeSB7Cj4gPgo+ID4gICAmcGNpZTN4
NCB7Cj4gPiAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gLSAgICAgcGluY3Ry
bC0wID0gPCZwY2llM19yc3Q+Owo+ID4gKyAgICAgcGluY3RybC0wID0gPCZwY2llM19yc3Q+LCA8
JnBjaWUzMHg0bTFfY2xrcmVxbj47Cj4KPiBUaGUgcGluIGlzIGNvcnJlY3QgYnV0IEkgZG9uJ3Qg
dGhpbmsgaXQgd291bGQgc3VwcG9ydAo+IEwxIHN1YnN0YXRlcyBiZWNhdXNlIHRoZSByZWZjbGsg
aXMgb3V0IG9mIGNvbnRyb2wuIEZvcgo+IGFueSByZWZjbGsgY29taW5nIGZyb20gZXh0ZXJuYWwg
Y2xvY2sgZ2VuZXJhdG9yLCBjbGtyZXEjCj4gc2hvdWxkIGNvbm5lY3QgdG8gdGhlIGVuYWJsZSBw
aW4gb2YgdGhlIGNsb2NrIGdlbmVyYXRvci4KPgpJIGRpZCBub3QgZmluZCB0aGUgZXh0ZXJuYWwg
Y2xrcmVxIyBzaWduYWwgZm9yIHRoaXMgI2Nsa3JlcSBzaWduYWwgaW4KdGhlIHNjaGVtYXRpY3Mu
CgpQQ0lFMzBYNF9DTEtSRVFuX00xX0wgIChHUElPNF9CNF91KSAuCgo+ID4gKyAgICAgc3VwcG9y
dHMtY2xrcmVxOwo+ID4gICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BCNiBHUElPX0FD
VElWRV9ISUdIPjsKPiA+ICAgICAgIHZwY2llM3YzLXN1cHBseSA9IDwmdmNjM3YzX3BjaWUzMD47
Cj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPgo+ID4gYmFzZS1jb21taXQ6IGIyOWZiODgy
OWJmZjI0MzUxMmJiOGM4OTA4ZmQzOTQwNmY5ZmQ0YzMKPiA+CgpUaGFua3MKLUFuYW5kCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
