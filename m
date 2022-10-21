Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C5BC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 16:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xmC+RqZ3e92lg4UN7pPUKbyR8KmqnAV209OU4RzCkWY=; b=qqYw67aZYUZf/nzkqLdQ2xhkBG
	IZ5x2wQOUxGsVwLHQo40jEd2iEoPyslX9+k4ilINPGmgjtp4FoimtOp3YAQUIZyW8ctzKF/2CgigA
	j48LEzNuMm8yh/LJJennxyWCEY97npnDUdxNGVjBrq3mgQFK1Tg+FmBpe4iZFJfJI/bjzSannkpfV
	QjljFLyQqqF+Kq3mxnRTAq6/zuta9BMEhh4ZhwJ0beB3d0nyPOjwoBHepIl0OmwYzXfFpAjOr0aFa
	Sqbz+ifcLMiuTSYyQDqNF8fSe0q/gfJbVRy/KvGimnqqq5TfD5eAa4gEd/sHrTm/7+yTFUEI9VtDA
	UVK1eeGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvCD-0090ng-Un; Fri, 21 Oct 2022 16:48:33 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvCA-0090iJ-JW; Fri, 21 Oct 2022 16:48:32 +0000
Received: by mail-wm1-x329.google.com with SMTP id m29-20020a05600c3b1d00b003c6bf423c71so5540732wms.0;
        Fri, 21 Oct 2022 09:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XbPvSXhOFP986gsXwgJkoWhk6VMKEDH9VysMFA4exvU=;
        b=I3PLxPuc2tV4wZKG9QH1dxt6KVSHYn4tUeqoMo7D1YkEwEWRqEqj30vZIfAaWSSq5C
         gsgA/KjAeXIVc47AAOdFcimD0GwGpL15rAMwbY5utUNOf1aTfVHri9HYZCxF5c+choLo
         ua/Y2AhmzXrIq1vDLskNd6C8d6MYQbw0uyBg7Ou5Pmb5lWMkn1VnzE0MkReOBJED8O0I
         Khwz/aGMUrJyQyFQnA/xdcs5dEIlpT47mJu1oQShXjI1ruwjrsNsOExGp3OMSbSeZrqq
         zzsRaGYow5CXpG1EUOUNNs9pUV7VVZ7/QQacIfexqVvw0Zm+TFtKaUFbqrsfooS3o+u9
         9Tfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XbPvSXhOFP986gsXwgJkoWhk6VMKEDH9VysMFA4exvU=;
        b=NbK5fZdUQnCHCedg9HR4SvBrisYapJtB+1RwUYDxS2Tx6ygzpFw/pGGYYHKWtyHoIO
         7fMv1ryv45WPG0VpAwd3xy/R2psmqrbg3CxcUzRDJbIHw5kIRHwM22DysOUpKnQUSMCD
         YfHIa+La50OK2fZd6Tl90bAHRZQ0oJ+ei0ayEPgVkvSIwUACgIyeLNKDuLDrJWOajE1O
         lxXx3B8aBgoAYeabC6nJxp+N1O+RQHNckTVr9gfmreQhI7qqfK/5KrH9QpogqYG4zTw0
         w8sPS5gq4eIxAu2SPReOuohZzlv8jLXwt8EUjd1AzLxp/zuuF7YmhrsSSk/WmqAdHSMC
         3MIg==
X-Gm-Message-State: ACrzQf0zigNE3qqVMOejpoNswk8/1VShG8fg2awwrAqQhu39R9KRSrXz
	8edDkWEN/FAmLcHQqN6aafLWBuA9i41P0nrOW2g=
X-Google-Smtp-Source: AMsMyM6kdlYPtik0hBPcElvkVtBLOUl4VQ2V+hrKmnXSe6JHzGq2jHZKtAJrwAW+3HP4dw+SR+MGiRqRn85wdeVCmIE=
X-Received: by 2002:a05:600c:6885:b0:3bd:d782:623c with SMTP id
 fn5-20020a05600c688500b003bdd782623cmr13697576wmb.102.1666370906852; Fri, 21
 Oct 2022 09:48:26 -0700 (PDT)
MIME-Version: 1.0
References: <20221005085439.740992-1-megi@xff.cz> <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core> <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com> <20221021153913.l5ry6v4mcnzcmj2v@core>
In-Reply-To: <20221021153913.l5ry6v4mcnzcmj2v@core>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 21 Oct 2022 12:48:15 -0400
Message-ID: <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Michael Riesch <michael.riesch@wolfvision.net>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Frank Wunderlich <frank-w@public-files.de>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_094830_683927_D51228EC 
X-CRM114-Status: GOOD (  18.63  )
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

T24gRnJpLCBPY3QgMjEsIDIwMjIgYXQgMTE6MzkgQU0gT25kxZllaiBKaXJtYW4gPG1lZ2lAeGZm
LmN6PiB3cm90ZToKPgo+IE9uIEZyaSwgT2N0IDIxLCAyMDIyIGF0IDA5OjA3OjUwQU0gLTA0MDAs
IFBldGVyIEdlaXMgd3JvdGU6Cj4gPiBHb29kIE1vcm5pbmcgSGVpa28sCj4gPgo+ID4gQXBvbG9n
aWVzIGZvciBqdXN0IGdldHRpbmcgdG8gdGhpcywgSSdtIHN0aWxsIGluIHRoZSBtaWRkbGUgb2Yg
bW92aW5nCj4gPiBhbmQganVzdCBnb3QgbXkgbGFiIHNldCBiYWNrIHVwLgo+ID4KPiA+IEkndmUg
dGVzdGVkIHRoaXMgcGF0Y2ggc2VyaWVzIGFuZCBpdCBsZWFkcyB0byB0aGUgc2FtZSByZWdyZXNz
aW9uIHdpdGgKPiA+IE5WTWUgZHJpdmVzLiBBIGxvb3Agb2YgbWQ1c3VtIG9uIHR3byBpZGVudGlj
YWwgNEdCIHJhbmRvbSBmaWxlcwo+ID4gcHJvZHVjZXMgdGhlIGZvbGxvd2luZyByZXN1bHRzOgo+
ID4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3QtcmFuZC5pbWcKPiA+IGZh
ZDk3ZTkxZGE4ZDRmZDU1NGM4OTVjYWZhODk4MDliICB0ZXN0LXJhbmQyLmltZwo+ID4gMmQ1NmE3
YmFhMDVjMzg1MzVmNGMxOWEyYjM3MWY5MGEgIHRlc3QtcmFuZC5pbWcKPiA+IDc0ZThlNmY5M2Q3
YzNkYzNhZDI1MGU5MTE3NmY1OTAxICB0ZXN0LXJhbmQyLmltZwo+ID4gMjVjZmNmZWNmNGRkNTI5
ZTRlOWZiYmUyYmU0ODIwNTMgIHRlc3QtcmFuZC5pbWcKPiA+IDc0ZThlNmY5M2Q3YzNkYzNhZDI1
MGU5MTE3NmY1OTAxICB0ZXN0LXJhbmQyLmltZwo+ID4gYjk2Mzc1MDViZjg4ZWQ3MjVmNmQwM2Rl
YjcwNjVkYWIgIHRlc3QtcmFuZC5pbWcKPiA+IGY3NDM3ZTg4ZDUyNGVhOTJlMDk3ZGI1MWRjZTFj
NjBkICB0ZXN0LXJhbmQyLmltZwo+ID4KPiA+IEJlZm9yZSB0aGlzIHBhdGNoIHNlcmllczoKPiA+
IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQuaW1nCj4gPiBkMTFj
ZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kMi5pbWcKPiA+IGQxMWNmMGNh
YTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQuaW1nCj4gPiBkMTFjZjBjYWE1NDFi
NzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kMi5pbWcKPiA+IGQxMWNmMGNhYTU0MWI3MjU1
MWNhMjJkYzViZWYyZGUwICB0ZXN0LXJhbmQuaW1nCj4gPiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIy
ZGM1YmVmMmRlMCAgdGVzdC1yYW5kMi5pbWcKPiA+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzVi
ZWYyZGUwICB0ZXN0LXJhbmQuaW1nCj4gPiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRl
MCAgdGVzdC1yYW5kMi5pbWcKPiA+Cj4gPiBUaG91Z2ggSSBkbyBsb3ZlIHdoZXJlIHRoaXMgcGF0
Y2ggaXMgZ29pbmcgYW5kIHdvdWxkIGxpa2UgdG8gc2VlIGlmIGl0Cj4gPiBjYW4gYmUgbWFkZSB0
byB3b3JrLCBpbiBpdHMgY3VycmVudCBmb3JtIGl0IGRvZXMgbm90Lgo+Cj4gVGhhbmtzIGZvciB0
aGUgdGVzdC4gQ2FuIHlvdSBwbGVhc2UgYWxzbyB0ZXN0IHYxPyBBbHNvIHBsZWFzZSBzaGFyZSBs
c3BjaSAtdnZ2Cj4gb2YgeW91ciBudm1lIGRyaXZlLCBzbyB0aGF0IHdlIGNhbiBzZWUgYWxsb2Nh
dGVkIGFkZHJlc3MgcmFuZ2VzLCBldGMuCgpHb29kIGNhdGNoLCB3aXRoIHlvdXIgcGF0Y2ggYXMg
aXMsIHRoZSBmb2xsb3dpbmcgaXNzdWUgY3JvcHMgdXA6ClJlZ2lvbiAwOiBNZW1vcnkgYXQgMzAw
MDAwMDAwICg2NC1iaXQsIG5vbi1wcmVmZXRjaGFibGUpIFtzaXplPTE2S10KUmVnaW9uIDI6IEkv
TyBwb3J0cyBhdCAxMDAwIFtkaXNhYmxlZF0gW3NpemU9MjU2XQoKSG93ZXZlciwgd2l0aCBhIHNp
bXBsZSBmaXgsIHdlIGNhbiBnZXQgdGhpczoKUmVnaW9uIDA6IE1lbW9yeSBhdCAzMDAwMDAwMDAg
KDY0LWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3ZpcnR1YWxdIFtzaXplPTE2S10KUmVnaW9uIDI6
IEkvTyBwb3J0cyBhdCAxMDAwIFt2aXJ0dWFsXSBbc2l6ZT0yNTZdCgphbmQgd2l0aCBpdCBhIHdv
cmtpbmcgTlZNZSBkcml2ZS4KCkNoYW5nZSB0aGUgZm9sbG93aW5nIHJhbmdlOgoweDAyMDAwMDAw
IDB4MCAweDQwMDAwMDAwIDB4MyAweDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKdG8KMHgwMjAw
MDAwMCAweDAgMHgwMDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAwMDAwMD47CgpJIHN0
aWxsIGhhdmVuJ3QgdGVzdGVkIHRoaXMgd2l0aCBvdGhlciBjYXJkcyB5ZXQsIGFuZCBhbm90aGVy
IHBhdGNoCnRoYXQgZG9lcyBzaW1pbGFyIHdvcmsgSSd2ZSB0ZXN0ZWQgc3VjY2Vzc2Z1bGx5IGFz
IHdlbGwgd2l0aCBOVk1lCmRyaXZlcy4gSSdsbCBoYXZlIHRvIGdldCBiYWNrIHRvIHlvdSBvbiB0
aGUgcmVzdWx0cyBvZiBncmVhdGVyCnRlc3RpbmcuCgpWZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIg
R2VpcwoKPgo+IGtpbmQgcmVnYXJkcywKPiAgICAgICAgIG8uCj4KPiA+IFZlcnkgUmVzcGVjdGZ1
bGx5LAo+ID4gUGV0ZXIgR2VpcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
