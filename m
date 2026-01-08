Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81920CF6A86
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 08:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVI4L/ixgNTM0OpTxrMDhbjWSK0GSF9YfvFEuAHvopY=; b=C1qOFbzkBtVSVs
	Z3gZcMHaJF6D8gPNhOeQnXiqG5svgECsVdUj8RSHPjHDVfzaZzd6rY5egr2uOReubBi4Jc6qbi5v8
	mm5Oq3UZwjq3HDtsx7azm9qfyDKRYaI58UVFnxDXvkngfo3lN/IVULwD4nU3rWqnByM6pI1ToXFOH
	oMHN3h+Mjp1n0PMSPJXWd7XG1C0AQi9ILJbA5lgCW2CnCnkxcohTiFBvoeX3vUkXM9sxlHH0CUYhE
	pw0SPKtg4OCfFF4HojBVZe8mAPO/GVaEzuEt5/lyyxsnPWolemgGkBxYMy9YFR4igpq5rdstuomO7
	KSqFRdV4I3mWaoYOtdOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdliI-0000000GLV6-2QGc;
	Thu, 08 Jan 2026 08:49:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdliH-0000000GLTu-2DFR
	for linux-rockchip@bombadil.infradead.org;
	Thu, 08 Jan 2026 08:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=X+mR41nzWCIkR7vEalH2Z/Nd2Y2pgD8cS0T18/wjMnw=; b=GRlIGJVZAfPNXQqw16dbCuxdQD
	dqPh6x+pQvfUn4aUwel4GElTr020yBm9dw94CaBT/a7K3CH+Sidoc/lDS06oUOk4LJIjj8x2ovB+y
	43UPOpcvBDeT5134b5EuFAJntNSgtWnbkmGV8HPtchuCTsp5K4dkxubwlzo7MbXwd+G1lzgibbv4a
	408FzPJxSTzUm7RaAk9EehMiCfryfinMBuNfoDHJWHKNR7ZInOLVk1NKakhwcvpMlAwqolIeO9AFi
	n1a34MYZWWYaBYayb4jgk3pYZAauTuqQ1MxDFdzVKuwSWXSEioD5GsuHwBjzDt0cRUTWasYl+BO3D
	spHilwMA==;
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdliD-0000000ClDp-3O0U
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 08:49:48 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4ee13dc0c52so24942731cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Jan 2026 00:49:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767862183; x=1768466983; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+mR41nzWCIkR7vEalH2Z/Nd2Y2pgD8cS0T18/wjMnw=;
        b=mC+Mo9MDvhHsP73oQWiOk8K5037DqIhQOXraczhyNK2Xy3d1y5N64mPu3e7b6hwZXz
         uftJfS6bAdBE60jiQEoM+V5EiXCsGzJMHt7qFSTgaEgLaPGw6Zy3GwRulXBYjWSE9Mrw
         efFcbOMIkP3/o2O5ZdO3nqBDAyLgCjhZfChaX0Lu2pvsFJLQ3ztOiwCh/uqj+5Is88z+
         MvDP0UC4+9GQ0hnOIvYstafAPBdsP+Hfqg4wqoxzqevw5xx8Bjg59JGsRjUftZfEf5y3
         BHXoC81M3FzB/jmkBxrTfduHjJcZ9y/VaXt7fkhhqBOHMOD4swtOcO5mToF4I4N80bxY
         Cnig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862183; x=1768466983;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X+mR41nzWCIkR7vEalH2Z/Nd2Y2pgD8cS0T18/wjMnw=;
        b=qjBTzGcZq2U7mT53kpqZzqj+06gxncF6eo+CFPeUduFc3WU9EkCTjHgeLCEEcRlLwX
         KvsaRrIMN1tpvxK7EpvQyRnd7D2PV81Py7YLJu2iCOXisIxDFAGXmrEDvWFBb3MKL48b
         IwyBOJGruxP5JfpXH4C2kR0xgcC0vYaFs9IUY8vAEcEiudpWn+nRquofdzzYeJp27OQp
         Zn79BRbp0u75G7jzDyxAOMhYqHcVPjoPkt5YSNfdLgebsKKvl0Ks4NCT3jiMhLLSPFSS
         6thNu3ECxUtOV9szfph7w1sXVmSoNK8AdT77qvVcjX3hDNXjEokwXA901XK8xvpSvZok
         rqsg==
X-Forwarded-Encrypted: i=1; AJvYcCV+6aQUN3xy6xpAK+vd4LJfk0UkBU1rrwRPd2/+DmGrs/nbpOGqLMEYbKwKIKn7YNDM0QcNKwswiT4LFT3u1w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwN9poVm1H4Ru0TBuYGDr/Bukj/uZmjlxK2XBXAc/DQ+UcfY5n9
	ZCgZ6rBvZdJmUm6v/tpSz3IgTNBernvGxMowTHXHoVJpE878ZyxuYU9NU5vYa8rtURdQo8t6nTy
	OTnF0HrE8z8tE5/DoRWuxo1W7kyqvl34=
X-Gm-Gg: AY/fxX7V4PaTNkaiGKtnqzZ78ROsaGzhbVO2LVLNJ7QnPMpi7cpy6jmJXMolcb2y5GX
	ttMJwi+V5dJS8AEnyXrLyRlg6ttQ78E4oVJtn8UMcUaYNPIWwGX0IV6mN8VLu2W4xye+rNiEl+E
	PM8X7jsbPZNfjPoeE3SB/A3mtRYl2ckVWjScLhrbc0HSvEs10Y0mpwWnedc3Ey6A2ee6wuTwu7r
	r4PUBY5IoFPKaMbiw2uyuyATD+sMXtMMneqWuz2eTMZW0gdYvV7zgak41a5A9OA72hDVCfmgIkN
	qfvuKTCecP3I2fwDMjK49wZDfLUI
X-Google-Smtp-Source: AGHT+IE/YI18F1nhJhEFmTsO58DLq0QMKXZtevsfEeQsCPnd9cic8/shsfNP/db84QRndLqHAtrqtJq7ITmw6U4bhhE=
X-Received: by 2002:a05:622a:156:b0:4f1:b3cc:2cec with SMTP id
 d75a77b69052e-4ffb499cc01mr73331881cf.52.1767862182928; Thu, 08 Jan 2026
 00:49:42 -0800 (PST)
MIME-Version: 1.0
References: <20260107070322.323-1-kernel@airkyi.com> <20260107070322.323-3-kernel@airkyi.com>
 <b5a3470c-aa03-42d0-a575-b705f709f8e6@lunn.ch> <CABjd4YzsjZXe16XWgrHRG5shNA_DQJF45i1roahvfAfV4xdU0Q@mail.gmail.com>
 <a545fec0-cb30-489a-b5e6-4ee87dcab41c@rock-chips.com> <5FFFBA7FAF5745A7+e0381969-800a-4bf6-9aac-81cffa3469a1@airkyi.com>
 <CABjd4YxwD_q_FrEuPw_GY+vG6700Vd_weWqdcFn2C3V0fqpO-Q@mail.gmail.com> <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
In-Reply-To: <6f55c325-6b2a-4fe9-a487-5f1ae7969d9d@rock-chips.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 8 Jan 2026 12:49:34 +0400
X-Gm-Features: AQt7F2r_KkIckRFZ0j1WkhT1Wr9YTLBcdSnJhRs0ku47wXCJ9eTlpAtdn-fs5LY
Message-ID: <CABjd4YyMj=1pQBwqo9suu0W_HD=MG=zb5wo9dheguMBxi+oNqA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add rk3576 evb2 board
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>, 
	John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Dragan Simic <dsimic@manjaro.org>, Michael Riesch <michael.riesch@collabora.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_084946_424389_42AD68A7 
X-CRM114-Status: GOOD (  26.98  )
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

T24gVGh1LCBKYW4gOCwgMjAyNiBhdCAxMjozOOKAr1BNIENoYW95aSBDaGVuIDxjaGFveWkuY2hl
bkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBPbiAxLzgvMjAyNiA0OjExIFBNLCBBbGV4ZXkg
Q2hhcmtvdiB3cm90ZToKPiA+IE9uIFRodSwgSmFuIDgsIDIwMjYgYXQgMTI6MDLigK9QTSBDaGFv
eWkgQ2hlbiA8a2VybmVsQGFpcmt5aS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gT24gMS84LzIwMjYg
Mzo0MiBQTSwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gPj4+IEhlbGxvIEFsZXhleSwgQW5kcmV3LAo+
ID4+Pgo+ID4+PiBPbiAxLzgvMjAyNiAyOjUzIFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+
Pj4+IE9uIFdlZCwgSmFuIDcsIDIwMjYgYXQgMTA6MTjigK9QTSBBbmRyZXcgTHVubiA8YW5kcmV3
QGx1bm4uY2g+IHdyb3RlOgo+ID4+Pj4+Cj4gPj4+Pj4+ICsmZ21hYzAgewo+ID4+Pj4+PiArICAg
ICBjbG9ja19pbl9vdXQgPSAib3V0cHV0IjsKPiA+Pj4+Pj4gKyAgICAgcGh5LW1vZGUgPSAicmdt
aWktcnhpZCI7Cj4gPj4+Pj4KPiA+Pj4+PiByZ21paS1yeGlkIGlzIG9kZC4gRG9lcyB0aGUgUENC
IHJlYWxseSBoYXZlIGFuIGV4dHJhIGxvbmcgVFggY2xvY2sKPiA+Pj4+PiBsaW5lLCBidXQgYSBz
aG9ydCBSWCBjbG9jayBsaW5lPwo+ID4+Pj4+Cj4gPj4+Pj4gVHJ5IGNoYW5naW5nIHRoaXMgdG8g
cmdtaWktaWQsIGFuZCBkcm9wIHRoZSB0eF9kZWxheSBwcm9wZXJ0eS4KPiA+Pj4+Cj4gPj4+PiBB
Y3R1YWxseSBpdCB3b3VsZCBiZSBncmVhdCBpZiBSb2NrY2hpcCBjb3VsZCBjbGFyaWZ5IHRoZSBk
ZWxheQo+ID4+Pj4gZHVyYXRpb24gaW50cm9kdWNlZCBieSBhIHNpbmdsZSBkZWxheSBlbGVtZW50
IGluIEdNQUMtSU9NVVggZGVsYXkKPiA+Pj4+IGxpbmVzLCB3aGljaCBhcmUgY29udHJvbGxlZCBp
biB0aGUgR01BQyBkcml2ZXIgYnkgdGhlIHt0eCxyeH1fZGVsYXkKPiA+Pj4+IHByb3BlcnRpZXMu
IE1heWJlIHdlIGNvdWxkIHRoZW4gc3dpdGNoIHRvIHVzaW5nCj4gPj4+PiB7dHgscnh9X2ludGVy
bmFsX2RlbGF5X3BzIGZvciBmaW5lLXR1bmluZyB0aGUgZGVsYXlzIG9uIHRoZSBHTUFDIHNpZGUK
PiA+Pj4+IGFzIGVudmlzYWdlZCBpbiBEVCBiaW5kaW5ncyBbMV0sIGFuZCB1c2UgcGh5LW1vZGUg
PSAicmdtaWktaWQiCj4gPj4+PiB0aHJvdWdob3V0LiBDaGFveWksIGFueSBjaGFuY2UgeW91IGNv
dWxkIGFzayBhcm91bmQgaW4geW91ciBoYXJkd2FyZQo+ID4+Pj4gdGVhbT8KPiA+Pj4+Cj4gPj4+
PiBDdXJyZW50bHkgdGhvdWdoIHJlbW92aW5nIHRoZSBkZWxheXMgYXQgR01BQyBzaWRlIGFsdG9n
ZXRoZXIgY2F1c2VzCj4gPj4+PiB1bnN0YWJsZSBsaW5rIG9wZXJhdGlvbiAtIHNlZSBbMl0gZm9y
IGV4YW1wbGUuCj4gPj4+Pgo+ID4+Pj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9s
aW51eC9ibG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2V0
aGVybmV0LWNvbnRyb2xsZXIueWFtbCNMMzQyLUwzNDcKPiA+Pj4+IFsyXSBodHRwczovL2dpdGxh
Yi5jb2xsYWJvcmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8t
L2NvbW1pdC8zNzJmM2U5YWU2MmNjNjJjZGYyNTQzMzkxZWE1N2JlNmJiNTQ4YTBjCj4gPj4+Cj4g
Pj4+IFNvcnJ5LCB0aGlzIHByb2JsZW0gaGFzIGJlZW4gZGlzY3Vzc2VkIG1hbnkgdGltZXMgYmVm
b3JlLiBJdCdzIGJlY2F1c2UKPiA+Pj4gdGhlIGdtYWMgb24gdGhlIFJvY2tjaGlwIHBsYXRmb3Jt
IGN1cnJlbnRseSByZWxpZXMgb24gc2V0dGluZyB0aGUKPiA+Pj4gY29ycmVzcG9uZGluZyBkZWxh
eSB2aWEgcGh5LW1vZGUgWzNdLgo+ID4+Pgo+ID4+PiBbM10gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsL21xb3lqbjdtbnE2dG10Nm42b2V2NHdhM2hlcmpheGx1cG1sMmZtY2FtcHdpYWp2ajRh
QHI1enM0ZDNqZG01cC8KPiA+Pj4KPiA+Pj4gVGhlIGRlbGF5IGludHJvZHVjZWQgYnkgdGhlIGRl
bGF5IGxpbmUgaXMgbm90IGFic29sdXRlLiBJbiByZWFsaXR5LAo+ID4+PiBpdCBkZXBlbmRzIG9u
IGZhY3RvcnMgc3VjaCBhcyB0aGUgY2hpcCdzIGRlc2lnbiBhbmQgcHJvY2VzcyB0ZWNobm9sb2d5
Lgo+ID4+Pgo+ID4+PiBBbmQgZm9yIFJLMzU3NiwgeW91IGNhbiBhc3N1bWUgdGhhdDoKPiA+Pj4K
PiA+Pj4gICAgICAgdGltZShucykgPSAwLjA1NzkgKiBkZWxheV9saW5lX2NvdW50ICsgMC4xMDUK
PiA+Pj4KPiA+Pj4gRm9yIGV4YW1wbGUsIHR4X2RlbGF5ID0gPDB4MjA+IG1lYW5zOgo+ID4+Pgo+
ID4+PiAgICAgICB0aW1lID0gMC4wNTc5ICogMHgyMCArIDAuMTA1IG5zID0gMS45NTc4IG5zCj4g
Pj4+Cj4gPj4+IEFuZCBJIGJlbGlldmUge3R4LHJ4fV9pbnRlcm5hbF9kZWxheV9wcyBpcyBpbmRl
ZWQgYSBnb29kIGlkZWEuCj4gPj4+IEknbGwgdHJ5IHRvIGFkZCB0aGVtIGluIHYzLiBUaGFua3Mu
Cj4gPj4+Cj4gPj4KPiA+PiBJJ3ZlIGFsc28gc2VlIHNvbWUgZHQgdGhhdCB1c2Uge3R4LHJ4fV9p
bnRlcm5hbF9kZWxheV9wcyBpbnNpZGUgdGhlIFBIWSwKPiA+PiBhbmQgY29tcGFyZWQgdG8gZG9p
bmcgaXQgaW4gdGhlIE1BQywgd2hpY2ggb25lIGlzIHRoZSBiZXR0ZXIgY2hvaWNlPwo+ID4KPiA+
IFlvdXIgUEhZIGRlZmF1bHRzIHRvIDE5NTBwcyBpbiByZ21paS1pZCBbMV0sIHNvIGFkZGluZyBh
bnl0aGluZyBvbiB0b3AKPiA+IG9mIHRoYXQgb24gR01BQyBzaWRlIHdvdWxkIGxhbmQgeW91IHdp
dGggYSBsb25nZXIgdG90YWwgVFggZGVsYXkgdGhhbgo+ID4geW91IGN1cnJlbnRseSBnZXQgYWNj
b3JkaW5nIHRvIHRoZSBjb2VmZmljaWVudHMgeW91J3ZlIGp1c3QgcG9zdGVkCj4gPiAoMTc4NC4x
cHMpLiBJIHdvdWxkIHNheSBnbyBmb3IgInR4LWludGVybmFsLWRlbGF5LXBzID0gPDE4MDA+IiBv
biB0aGUKPiA+IFBIWSBzaWRlIGZvciB0aGUgY2xvc2VzdCBtYXRjaC4KPiA+Cj4gPiBbMV0gaHR0
cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbW90b3Jjb21tJTJDeXQ4eHh4LnlhbWwjTDM2Cj4KPiBB
aCwgSSB0aG91Z2h0IGl0IHdhcyBzb21ldGhpbmcgbGlrZSB0aGlzOgo+Cj4gJmdtYWMwIHsKPiAg
ICAgICAgIHBoeS1tb2RlID0gInJnbWlpIjsKCnBoeS1tb2RlID0gInJnbWlpLWlkIjsKCj4gICAg
ICAgICB0eC1pbnRlcm5hbC1kZWxheS1wcyA9IDwxNzg0PjsKCkRyb3AgdGhpcywgYXMgcmVjb21t
ZW5kZWQgaW4gdGhlIGxlbmd0aHkgbm90ZSBhdCB0aGUgYm90dG9tIG9mIHRoZQpiaW5kaW5nIGRv
YyBbMV0gKHRoZSBHTUFDIHNob3VsZG4ndCBiZSBhZGRpbmcgYSBkZWxheSB0aGF0IGlzIGNsb3Nl
IHRvCjJucykuCgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFz
dGVyL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZXRoZXJuZXQtY29udHJv
bGxlci55YW1sI0wzNDItTDM1NAoKPiB9Owo+Cj4gQnV0IHdoYXQgeW91IGFjdHVhbGx5IHNhaWQg
d2FzIHRoaXM6Cj4KPiAmbWRpbzEgewoKJm1kaW8wIEkgZ3Vlc3MgKGJ1dCBzYW1lIGFwcGxpZXMg
dG8gZ21hYzErbWRpbzEpCgo+ICAgICAgICAgcmdtaWlfcGh5OiBldGhlcm5ldC1waHlAMSB7Cj4g
ICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIi
Owo+ICAgICAgICAgICAgICAgICByZWcgPSA8MHgxPjsKPiAgICAgICAgICAgICAgICAgdHgtaW50
ZXJuYWwtZGVsYXktcHMgPSA8MTc4ND47CgpUaGUgUEhZIGJpbmRpbmcgWzJdIHNheXMgaXQgY2Fu
J3QgYWNjZXB0IGFyYml0cmFyeSB2YWx1ZXMgaGVyZSAtIG9ubHkKMTUwcHMgaW5jcmVtZW50cy4g
U28geW91J2xsIG5lZWQgZWl0aGVyIDE2NTAgb3IgMTgwMCB0byBnZXQgY2xvc2UgdG8KeW91ciBj
YWxjdWxhdGVkIHZhbHVlIGFib3ZlLgoKWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9s
aW51eC9ibG9iL21hc3Rlci9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21v
dG9yY29tbSUyQ3l0OHh4eC55YW1sI0wzNgoKPiAgICAgICAgIH07Cj4gfTsKPgo+IFRoZXNlIHR3
byBgdHgtaW50ZXJuYWwtZGVsYXktcHNgIHRoaW5ncyBzaG91bGRuJ3QgYmUgdGhlIHNhbWUsIHJp
Z2h0PwoKVGhleSBhZGQgdXAsIHdoaWNoIHlvdSBkb24ndCBuZWVkIGluIHRoaXMgY2FzZSBBRkFJ
Q1QuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
