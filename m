Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74840EB1067
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 15:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zNRwQgoArKL4gJUNajrWp1InZ/wPvukpRZyCDUQEro=; b=VEUlec4KM+xD77
	ofbn78UW6OdNmJo5aJNB3ymiwxEX7zP9hByKzvzqnRPqsz22wLPwFXAgtEeorjsUhp6L6ezgAtolW
	Edb9g49Gc0ajl1H4u7kKbjYb6GExzkTJLdHx4Ir4mGWIzEA7qrPV3D6NjjA93NtHMoWwzh3waebT/
	/ykjcaz/7P1H73SASL7L7Xy8m17OaEuNm/3dcMILhtpf+cW2SLfKOUigrnQts+wgtIJdPcciCFbZO
	Q9m6566G1U54sQXaQKvmjgawGyRwENbsNDEdk7IguMA+/XXPvt9FycDiJ9UQjhJz7jCOW5Zl4P19P
	H1o6yq2eeicxY129+Gmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzypR-00000009mJJ-0Ubo;
	Tue, 10 Mar 2026 15:17:01 +0000
Received: from sender4-of-o56.zoho.com ([136.143.188.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzypN-00000009mGb-1FmF
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 15:16:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1773155806; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=My9q5wA6JCYcOq3GwksDpbhCfSrQrNbWFvJWEaNHGK3fh5O//MS1woxS8aWKvVcT0/yuwyEtWG6Xm6QgFquFrnIp9bvMFX2ZKVX5coTtfzzaJ+FONXBLfsan5bZLdoCMd2yuhEt3y3XwlgqOLRtc16QFFISxsNL+9b+Oilx/5OE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773155806; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1ZxpAj35byR6TQ3nM9neCGTwEH97bcalVH2DZu6972E=; 
	b=YvlbySsgdyzhXaBm9BDHQ+PspXgY9+Ci/975YlptD9YfHHorVZhvVTi4D55GmZie/AA53v+/S5Jx+0MWVGALrIYR/GajYP1pfqcHfnoMFPh4dzA8HlD/+srmNfvguR9s7OB+sOBrDsqg6kW6Yz8w2o6j3A7g8fK1Bc3tKyzNHqU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=pta2002.com;
	spf=pass  smtp.mailfrom=pta2002@pta2002.com;
	dmarc=pass header.from=<pta2002@pta2002.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773155806;
	s=zoho; d=pta2002.com; i=pta2002@pta2002.com;
	h=MIME-Version:References:In-Reply-To:From:From:Date:Date:Message-ID:Subject:Subject:To:To:Cc:Cc:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1ZxpAj35byR6TQ3nM9neCGTwEH97bcalVH2DZu6972E=;
	b=YX91xCk2e4x/dovGjUQTR/J4caOZJUnu3Wl9gH/AqM3j+RpRwXShJ5RIOYfgpvB8
	NSakOUETBk17LsNnMvqtkM+pt9ZVgHe6AEwiXRXE46nrwA3zHQMHm7qo8Na3CRlD4vl
	OwM2JmUqlYYHcTGbet5fvbvtK7hDE7luL7Uf1DGI=
Received: by mx.zohomail.com with SMTPS id 1773155803998301.94961918637796;
	Tue, 10 Mar 2026 08:16:43 -0700 (PDT)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-89a15b9a556so96765786d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 08:16:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXPIcfgm7OzxjwiBNz2Tp5GPShBlzZ1V0jJNoXzrDSnj2wXCeBt7gosGttmR5Z5DkAD5cg+DzNMpiaXkFxK8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWe8rlG/IhLBlMCSMXpvch5YuujNkN/p5tP5zk2KP9amUvdvdj
	o7X9ct/TgfIKtsUQd9/ETGtpPpCvAxo9dM6wVQEcKiW8syjv992Gga6knwasOHeDCUclOL1Hwgu
	x4tPZqYl7wT5IKQx37mY7jxdUAgmreVc=
X-Received: by 2002:ad4:5d6a:0:b0:899:f78e:d733 with SMTP id
 6a1803df08f44-89a30a5e93bmr225894656d6.19.1773155802990; Tue, 10 Mar 2026
 08:16:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260304-radxa-r5-itx-hdmirx-v2-1-6567e9e3298b@pta2002.com> <9638846.rMLUfLXkoz@phil>
In-Reply-To: <9638846.rMLUfLXkoz@phil>
From: Pedro Alves <pta2002@pta2002.com>
Date: Tue, 10 Mar 2026 15:16:31 +0000
X-Gmail-Original-Message-ID: <CAAEXfUVU86E0jmh1AyjsejnpKutD=5No=kv8Aid6fnCDJuHc7w@mail.gmail.com>
X-Gm-Features: AaiRm51zN46HfOKYv24Pqj3C_wPKGA8XlgjBcO75Q4XopjpPttYiB_EocE5nLDM
Message-ID: <CAAEXfUVU86E0jmh1AyjsejnpKutD=5No=kv8Aid6fnCDJuHc7w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_081657_402123_FF029080 
X-CRM114-Status: GOOD (  11.89  )
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

SGksCgpUaGFua3MgZm9yIHRha2luZyBhIGxvb2suCgpPbiAxMC8wMy8yMDI2IDA4OjQ4LCBIZWlr
byBTdHVlYm5lciB3cm90ZToKPiBBbSBNaXR0d29jaCwgNC4gTcOkcnogMjAyNiwgMjE6NDQ6Mzkg
TWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBQZWRybyBBbHZlczoKPj4gKyZo
ZG1pX3JlY2VpdmVyIHsKPj4gKyAgICBwaW5jdHJsLTAgPSA8JmhkbWltMV9yeF9jZWMgJmhkbWlt
MV9yeF9ocGRpbiAmaGRtaW0xX3J4X3NjbCAmaGRtaW0xX3J4X3NkYSAmaGRtaXJ4X2RldD47Cj4K
PiBhcmUgeW91IHN1cmUgdGhlIGhkbWltMV9yeF9ocGRpbiBpcyByb3V0ZWQ/Cj4gQmVjYXVzZSB0
aGF0IGlzIGdwaW8zX0Q0IHdoaWxlIHlvdXIgaHBkLWdwaW9zIGJlbG93IGlzIGdwaW8xX2M2LgoK
SSB0b29rIGEgbG9vayBhdCBib3RoIHRoZSBSYWR4YSA1IElUWCBzY2hlbWF0aWNbMV0gYW5kIGF0
IHRoZSBSSzM1ODgKZGF0YXNoZWV0WzJdLiBBcyBmYXIgYXMgSSBjYW4gdGVsbCwgdGhlIHBpbiBp
cyBpbmRlZWQgcm91dGVkLgoKVGhlIHNjaGVtYXRpYyBjYWxscyBpdCBIRE1JSVJYX0hEUE9VVF9I
LCBvbiBncGlvM19kNCwgYW5kIGl0IHNlZW1zIHRvIGJlCmNvbnRyb2xsaW5nIHBpbiAxOSBvZiB0
aGUgSERNSSBwb3J0IHZpYSBIRE1JX1JYX0hQRF9QT1JUIChzZWUgcGFnZSAzMSkuClRoZSBocGQt
Z3Bpb3MgbWVhbndoaWxlIGlzIGEgR1BJTyB0aGF0J3MgdXNlZCB0byBkZXRlY3Qgd2hlbiBhbiBI
RE1JCmNhYmxlIGlzIHBsdWdnZWQgaW4gKGdvZXMgbG93IHdoZW4gdGhlcmUncyB2b2x0YWdlIG9u
ClZDQzVWX0hETUlSWF9QT1JUKSwgYnV0IHNpbmNlIHRoaXMgaGFzIG5vIGZpeGVkIHBpbiBpbiBo
YXJkd2FyZSwgdGhlIHBpbgpjaG9pY2Ugc2VlbXMgbGlrZSBpdCBjYW4gYmUgcmF0aGVyIGFyYml0
cmFyeSBieSBSYWR4YSwgd2hvIHdpcmVkIGl0IHRvCmdwaW8xX2M2LgoKPj4gKyAgICBwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwo+PiArICAgIGhwZC1ncGlvcyA9IDwmZ3BpbzEgUktfUEM2IEdQ
SU9fQUNUSVZFX0xPVz47Cj4KPiBBbHNvIHBsZWFzZSBwcm92aWRlIGEgcGluY3RybCBzZXR0aW5n
IGZvciB0aGUgZ3BpbyBocGQgcGluLgoKU3VyZSwgSSdsbCB0YWtlIGNhcmUgb2YgdGhpcyBhbmQg
c2VuZCBhIGZvbGxvdy11cC4KClsxXTogaHR0cHM6Ly9kbC5yYWR4YS5jb20vcm9jazUvNWl0eC92
MTExMC9yYWR4YV9yb2NrXzVpdHhfdjExMTBfc2NoZW1hdGljLnBkZgpbMl06IGh0dHBzOi8vd2lr
aS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzL2UvZWUvUm9ja2NoaXBfUkszNTg4X0RhdGFz
aGVldF9WMS42LTIwMjMxMDE2LnBkZgoKUmVnYXJkcywKUGVkcm8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
