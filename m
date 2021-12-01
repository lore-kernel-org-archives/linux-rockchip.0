Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DD16C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 21:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUoQVeugFjCfVGBlcvIf3BDAiLPORz1/zmC8otu6D5Q=; b=C9zpbTqFZkZ3hw
	Z4gifXgPdZKWaH5BII/g44y8qFLp5y0fu/tqG/lTM7uIoNTubESTsAonaNANlWWHB7aVj4Cm5d5RH
	PlWUVSlMsHNoffPmp3gHU+rKuTq/WVpbbbUfHlO6XgBJljdSMfZZdJfvwDmzjhV1dTxzaqm7WYXni
	5DRvaAbUkL2i8MsH+HufQ3+W7L/fMlrztWL4IAdk4qlyxkD0roV8UWaP4SDtbPTBC6atO8ASGVYsp
	aWyY3Ag+1PF5Fl0Azf+9znnsPVpAJvO69RU89DnbuWvZaUU/FTPmKCIBwwzRO7LsNjB0mYNNOwFkH
	zRbumebYl+/EPB1ncVnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msWmK-00A9zn-WD; Wed, 01 Dec 2021 21:04:37 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msWlB-00A9cu-7T
 for linux-rockchip@lists.infradead.org; Wed, 01 Dec 2021 21:03:27 +0000
Received: by mail-qv1-xf36.google.com with SMTP id a24so22983710qvb.5
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Dec 2021 13:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=zzUyVZkYHJ/EtGhQX/pmQIpQONhG4g4J+RvLaS350ZU=;
 b=ZI7scObmozGOck8w7W6H7cRqNiKozmSQ0jvWo7vGzBlQfhrCf7FkrsMjygkzFh9LFh
 LWITGcH6q8MfYq/EaEHKpk8QbbfnIKtcaBVedIkXcPwhHyI9Z7ziaDZpTsmedGbEJL+E
 nBZFSrmp6/YMldfMIpYRfvWyTeqi5rwwEZudbocxgZZ4lSCN1fwi3O6GJ0y4Vf9JO+XB
 M03fHBu0WzbYlA2kVxuABwvHT24CUnSfKgnV6BYtQZEMR02CwmfntUdzwgFhvtjgsD43
 ALG4hDvTjlTuqivqL5alKt5fdhtVCo/Mq+I8b1oijSnnXOdQfhijgKDnbUxUHCrM2z/X
 FUdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=zzUyVZkYHJ/EtGhQX/pmQIpQONhG4g4J+RvLaS350ZU=;
 b=UEQZOM44nD2nAZ4l63n4MutX/G5EhFu2c36gwQhOm1mcGrMCz0gyqsXkEJafuXhJ4S
 /EK9gi0EtS/nbPwgCIGFP6T2pZpf6pE/bHAuJQStPhgBq/noD42YSSNC7CcZdbcqIzVn
 gTpfKBzWgL0qoenb+Ms3FJuA0/EWk81o4ekmsURR5ruOw2CImS6ZKO7IIfhNjAc/ulR+
 yBW+anbdR4K0moKqMbJicu+ItDarOIv9e9dznY5XQFhwHEfT4lkJDrqSEV1hGN0fhuin
 rxw60PjWavV8pr/79dBc2y4BI9mOXBO5ww4WgEvEJPLJ41VUB6tRE2sHq5mBSxp34Itz
 21zA==
X-Gm-Message-State: AOAM5303TLpvUKky2MZOiwLaKQvVcAeSVvbcdXkYwZwM+NuvdhwW2EWa
 ba4yf9EJ3SkF3tGtp3r6dWmedw==
X-Google-Smtp-Source: ABdhPJwHo89Y0ElsYVSWh/R6qNsHkOikRJSJcPfLtzPsRdk3EejBbMpKLw8GyLWQT7w8bCh04oLn9Q==
X-Received: by 2002:a05:6214:e41:: with SMTP id
 o1mr8967705qvc.88.1638392602056; 
 Wed, 01 Dec 2021 13:03:22 -0800 (PST)
Received: from nicolas-tpx395.localdomain (mtl.collabora.ca. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id
 w10sm454063qtk.90.2021.12.01.13.03.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 13:03:21 -0800 (PST)
Message-ID: <d8335964ece000814c8ec2ea0274498b3280812c.camel@ndufresne.ca>
Subject: Re: [RFC V2 1/2] media: hantro: Add support for i.MX8M Mini
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Adam Ford
 <aford173@gmail.com>
Cc: linux-media <linux-media@vger.kernel.org>, Hans Verkuil
 <hverkuil@xs4all.nl>,  Tim Harvey <tharvey@gateworks.com>, Adam Ford-BE
 <aford@beaconembedded.com>, Rob Herring <robh+dt@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,  Linux Kernel
 Mailing List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>,  "open list:STAGING
 SUBSYSTEM" <linux-staging@lists.linux.dev>
Date: Wed, 01 Dec 2021 16:03:19 -0500
In-Reply-To: <CAAEAJfDqBezv1_ZsF3vjAFprZYuaE7krkSXa4vzAfMZp5_z+sA@mail.gmail.com>
References: <20211201013329.15875-1-aford173@gmail.com>
 <20211201013329.15875-2-aford173@gmail.com>
 <CAAEAJfBBFhRtW2wmoA6T+yyM-nurUbtPqYHKPHjeRdKzA34PcQ@mail.gmail.com>
 <CAHCN7xLGTadbr+=-j2yJHFn233dgHic28njej8LHS2M0WwtqYQ@mail.gmail.com>
 <CAAEAJfDqBezv1_ZsF3vjAFprZYuaE7krkSXa4vzAfMZp5_z+sA@mail.gmail.com>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_130325_299884_37872447 
X-CRM114-Status: GOOD (  38.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

TGUgbWVyY3JlZGkgMDEgZMOpY2VtYnJlIDIwMjEgw6AgMDk6NTggLTAzMDAsIEV6ZXF1aWVsIEdh
cmNpYSBhIMOpY3JpdMKgOgo+IE9uIFdlZCwgMSBEZWMgMjAyMSBhdCAwOTozNiwgQWRhbSBGb3Jk
IDxhZm9yZDE3M0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gCj4gPiBPbiBXZWQsIERlYyAxLCAyMDIx
IGF0IDY6MjUgQU0gRXplcXVpZWwgR2FyY2lhCj4gPiA8ZXplcXVpZWxAdmFuZ3VhcmRpYXN1ci5j
b20uYXI+IHdyb3RlOgo+ID4gPiAKPiA+ID4gSGkgQWRhbSwKPiA+ID4gCj4gPiA+IE9uIFR1ZSwg
MzAgTm92IDIwMjEgYXQgMjI6MzMsIEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3cm90
ZToKPiA+ID4gPiAKPiA+ID4gPiBUaGUgaS5NWDhNIE1pbmkgaGFzIGEgc2ltaWxhciBpbXBsZW1l
bnRhdGlvbiBvZiB0aGUgSGFudHJvIEcxIGFuZAo+ID4gPiA+IGggZGVjb2RlcnMsIGJ1dCB0aGUg
TWluaSB1c2VzIHRoZSB2cHUtYmxrLWN0cmwgZm9yIGhhbmRsaW5nIHRoZQo+ID4gPiA+IFZQVSBy
ZXNldHMgdGhyb3VnaCB0aGUgcG93ZXIgZG9tYWluIHN5c3RlbS4gIEFzIHN1Y2gsIHRoZXJlIGFy
ZQo+ID4gPiA+IGZ1bmN0aW9ucyBwcmVzZW50IGluIHRoZSA4TVEgdGhhdCBhcmUgbm90IGFwcGxp
Y2FibGUgdG8gdGhlIE1pbmkKPiA+ID4gPiB3aGljaCByZXF1aXJlcyB0aGUgZHJpdmVyIHRvIGhh
dmUgYSBkaWZmZXJlbnQgY29tcGF0aWJsZSBmbGFncy4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBBZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gPiA+IGluZGV4IGZi
ODJiOTI5N2EyYi4uMmFhMWM1MjBiZTUwIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPiA+ID4gPiBAQCAtNTkyLDYgKzU5Miw4IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIG9mX2hhbnRyb19tYXRjaFtdID0gewo+
ID4gPiA+ICAgICAgICAgeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdnB1IiwgLmRh
dGEgPSAmcmszMzk5X3ZwdV92YXJpYW50LCB9LAo+ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiAgI2lm
ZGVmIENPTkZJR19WSURFT19IQU5UUk9fSU1YOE0KPiA+ID4gPiArICAgICAgIHsgLmNvbXBhdGli
bGUgPSAibnhwLGlteDhtbS12cHUiLCAuZGF0YSA9ICZpbXg4bW1fdnB1X3ZhcmlhbnQsIH0sCj4g
PiA+ID4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gIm54cCxpbXg4bW0tdnB1LWcyIiwgLmRhdGEg
PSAmaW14OG1tX3ZwdV9nMl92YXJpYW50IH0sCj4gPiA+ID4gICAgICAgICB7IC5jb21wYXRpYmxl
ID0gIm54cCxpbXg4bXEtdnB1IiwgLmRhdGEgPSAmaW14OG1xX3ZwdV92YXJpYW50LCB9LAo+ID4g
PiA+ICAgICAgICAgeyAuY29tcGF0aWJsZSA9ICJueHAsaW14OG1xLXZwdS1nMiIsIC5kYXRhID0g
JmlteDhtcV92cHVfZzJfdmFyaWFudCB9LAo+ID4gPiA+ICAjZW5kaWYKPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcuaCBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2h3LmgKPiA+ID4gPiBpbmRleCAyNjdhNmQzM2E0
N2IuLmFlN2MzZmZmNzYwYyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19ody5oCj4gPiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlh
L2hhbnRyby9oYW50cm9faHcuaAo+ID4gPiA+IEBAIC0yMTEsNiArMjExLDggQEAgZW51bSBoYW50
cm9fZW5jX2ZtdCB7Cj4gPiA+ID4gICAgICAgICBST0NLQ0hJUF9WUFVfRU5DX0ZNVF9VWVZZNDIy
ID0gMywKPiA+ID4gPiAgfTsKPiA+ID4gPiAKPiA+ID4gPiArZXh0ZXJuIGNvbnN0IHN0cnVjdCBo
YW50cm9fdmFyaWFudCBpbXg4bW1fdnB1X2cyX3ZhcmlhbnQ7Cj4gPiA+ID4gK2V4dGVybiBjb25z
dCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgaW14OG1tX3ZwdV92YXJpYW50Owo+ID4gPiA+ICBleHRl
cm4gY29uc3Qgc3RydWN0IGhhbnRyb192YXJpYW50IGlteDhtcV92cHVfZzJfdmFyaWFudDsKPiA+
ID4gPiAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBoYW50cm9fdmFyaWFudCBpbXg4bXFfdnB1X3Zhcmlh
bnQ7Cj4gPiA+ID4gIGV4dGVybiBjb25zdCBzdHJ1Y3QgaGFudHJvX3ZhcmlhbnQgcHgzMF92cHVf
dmFyaWFudDsKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9pbXg4bV92cHVfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1
X2h3LmMKPiA+ID4gPiBpbmRleCBlYTkxOWJmYjk4OTEuLmM2ODUxNmMwMGM2ZCAxMDA2NDQKPiA+
ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2lteDhtX3ZwdV9ody5jCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYwo+
ID4gPiA+IEBAIC0yNDIsNiArMjQyLDMyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX2Nv
ZGVjX29wcyBpbXg4bXFfdnB1X2cyX2NvZGVjX29wc1tdID0gewo+ID4gPiA+ICAgICAgICAgfSwK
PiA+ID4gPiAgfTsKPiA+ID4gPiAKPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9f
Y29kZWNfb3BzIGlteDhtbV92cHVfY29kZWNfb3BzW10gPSB7Cj4gPiA+ID4gKyAgICAgICBbSEFO
VFJPX01PREVfTVBFRzJfREVDXSA9IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgLnJ1biA9IGhh
bnRyb19nMV9tcGVnMl9kZWNfcnVuLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAuaW5pdCA9IGhh
bnRyb19tcGVnMl9kZWNfaW5pdCwKPiA+ID4gPiArICAgICAgICAgICAgICAgLmV4aXQgPSBoYW50
cm9fbXBlZzJfZGVjX2V4aXQsCj4gPiA+ID4gKyAgICAgICB9LAo+ID4gPiA+ICsgICAgICAgW0hB
TlRST19NT0RFX1ZQOF9ERUNdID0gewo+ID4gPiA+ICsgICAgICAgICAgICAgICAucnVuID0gaGFu
dHJvX2cxX3ZwOF9kZWNfcnVuLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAuaW5pdCA9IGhhbnRy
b192cDhfZGVjX2luaXQsCj4gPiA+ID4gKyAgICAgICAgICAgICAgIC5leGl0ID0gaGFudHJvX3Zw
OF9kZWNfZXhpdCwKPiA+ID4gPiArICAgICAgIH0sCj4gPiA+ID4gKyAgICAgICBbSEFOVFJPX01P
REVfSDI2NF9ERUNdID0gewo+ID4gPiA+ICsgICAgICAgICAgICAgICAucnVuID0gaGFudHJvX2cx
X2gyNjRfZGVjX3J1biwKPiA+ID4gPiArICAgICAgICAgICAgICAgLmluaXQgPSBoYW50cm9faDI2
NF9kZWNfaW5pdCwKPiA+ID4gPiArICAgICAgICAgICAgICAgLmV4aXQgPSBoYW50cm9faDI2NF9k
ZWNfZXhpdCwKPiA+ID4gPiArICAgICAgIH0sCj4gPiA+ID4gK307Cj4gPiA+ID4gKwo+ID4gPiA+
ICtzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19jb2RlY19vcHMgaW14OG1tX3ZwdV9nMl9jb2Rl
Y19vcHNbXSA9IHsKPiA+ID4gPiArICAgICAgIFtIQU5UUk9fTU9ERV9IRVZDX0RFQ10gPSB7Cj4g
PiA+ID4gKyAgICAgICAgICAgICAgIC5ydW4gPSBoYW50cm9fZzJfaGV2Y19kZWNfcnVuLAo+ID4g
PiA+ICsgICAgICAgICAgICAgICAuaW5pdCA9IGhhbnRyb19oZXZjX2RlY19pbml0LAo+ID4gPiA+
ICsgICAgICAgICAgICAgICAuZXhpdCA9IGhhbnRyb19oZXZjX2RlY19leGl0LAo+ID4gPiA+ICsg
ICAgICAgfSwKPiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+IAo+ID4gPiBJIGJlbGlldmUgeW91
IGFyZSBtaXNzaW5nIFZQOSwgd2hpY2ggZXhwbGFpbnMgd2h5IHlvdSBnZXQKPiA+ID4gYSB6ZXJv
IGZsdXN0ZXIgc2NvcmUuCj4gPiAKPiA+IFRoYXQncyB3aGF0IEkgd2FzIHRoaW5raW5nIHRvbyBh
bmQgdGhhdCdzIHdoeSBJIHdhcyB3b25kZXJpbmcgaWYgSQo+ID4gc2hvdWxkIHdhaXQgb24gRzIg
dW50aWwgbW9yZSBvZiB0aG9zZSBHMiBwYXRjaGVzIGhhdmUgYmVlbiBmaW5hbGl6ZWQKPiA+IGFu
ZCBhY2NlcHRlZC4gIElzIHRoZXJlIGEgd2F5IHRvIHRlc3QgdGhlIEhFVkM/ICBJIGRpZG4ndCBz
ZWUgb25lIGluCj4gPiB0aGUgZmx1c3RlciBsaXN0Lgo+ID4gCj4gCj4gVlA5IGlzIG9uIGl0cyB3
YXkgdG8gYmUgbWVyZ2VkLiBUaGVyZSBpcyBhIHB1bGwgcmVxdWVzdCBmcm9tIEhhbnMKPiBhbHJl
YWR5OiBzZWUgaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtbWVkaWEvbXNnMjAy
NDQ4Lmh0bWwKPiB3aGljaCBpbmNsdWRlcyB0aGUgZ2l0IHJlcG9zaXRvcnkgYW5kIHRhZyB5b3Ug
Y2FuIG1lcmdlL3JlYmFzZSB0byB0ZXN0Cj4gaXQuCj4gCj4gSXQgd291bGQgYmUgZ3JlYXQgaWYg
eW91IGNhbiB0ZXN0IEcyIG9uIHRvcCBvZiB0aGF0LCBidXQgaXQncyBhbHNvIGZpbmUKPiBpZiB5
b3Ugd2FudCB0byBqdXN0IHN1Ym1pdCBHMSBmb3Igbm93LiBVcCB0byB5b3UuCj4gCj4gUmVnYXJk
aW5nIEhFVkMsIGN1cnJlbnRseSBCZW5qYW1pbiBpcyB3aG8ga25vd3MgYmVzdCBob3cgdG8gdGVz
dCBpdC4KPiBUaGlua2luZyBhYm91dCBpdCwgcGVyaGFwcyB3ZSBzaG91bGQgZG9jdW1lbnQgdGhp
cyBzb21ld2hlcmU/CgpUaGVyZSBpcyBHU3RyZWFtZXItSC4yNjUtVjRMMlNMLUdzdDEuMCBkZWNv
ZGVyIGFscmVhZHkgaW4gZmx1c3Rlci4gQW5kIEdTdHJlYW1lcgpzdXBwb3J0IGlzIHN0aWxsIFdJ
UC4KCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9nc3RyZWFtZXIvZ3N0cmVhbWVyLy0v
bWVyZ2VfcmVxdWVzdHMvMTA3OQoKV2UgaGFkIHB1dCBvbiBob2xkIHRoZSBIRVZDIHdvcmsgaW4g
b3JkZXIgdG8gZm9jdXMgb24gVlA5LiBOb3cgdGhhdCBWUDkgaXMgb24KaXRzIHdheSAoSSd2ZSBz
ZW50IGFub3RoZXIgTVIgdG9kYXkgdG8gR1N0cmVhbWVyIHRvIGZpeCBzb21lIG1vcmUgdGVzdHMp
LiBJCmhhdmVuJ3QgdGVzdGVkIG15c2VsZiBpbXg4bXEgcmVjZW50bHksIHdpbGwgbGlrZWx5IGRv
IHNvb24sIHNvIEkgY2FuIGdpdmUgeW91CnRoZSBleHBlY3RlZCBzY29yZS4gWW91ciBWUDggYW5k
IEgyNjQgc2NvcmUgbWF0Y2hlcyB0aGUgcmVzdWx0IEkgZ290LiBOb3RlIHRoYXQKSDI2NCBkcml2
ZXIgaXMgbWlzc2luZyBpbnRlcmxhY2Ugc3VwcG9ydCwgd2hpY2ggaXMgaGFsZiB0aGUgdGVzdHMu
CgpXZSB3aWxsIGNhbiByZXN1bWUgdGhpcyB3b3JrLiBIZWxwIGlzIHdlbGNvbWUgb2YgY291cnNl
LiBUaGUgSEVWQyBzdGFnaW5nIEFQSSBpcwpieSB3YXMgdGhlIHdvcnN0LCBzbyB0aGVyZSBpcyBx
dWl0ZSBzb21lIHdvcmsgdG8gbW92ZSB0aGlzIEFQSSB0byBzdGFibGUgYW5kCnRoZW4gcG9ydCBh
bGwgdGhlIGRyaXZlcnMgdG8gdGhlIHJlcXVpcmUgY2hhbmdlcyB0aGF0IHdpbGwgYmUgbmVlZGVk
LgoKPiAKPiBSZWdhcmRzLAo+IEV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
