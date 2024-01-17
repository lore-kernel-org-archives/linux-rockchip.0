Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29517C47DA7
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 05:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUUMp4iLgFU2VmFFUJhlBNsikKiARaZG/glDDqCYJtg=; b=ZC2acPoQmnadc5
	bvWXQ5KT70wIXZhZ5sYg8sVOjUQgB7qTSFkRHG41t08rQDxVB5EFlkFhja1X7MaL0fKbsYVIjt6Tj
	FF9jiY2r/UYFBMsw56S+OXktYTfS4Cd1GX4ix5UZ4oTjpPxTHGkcVD3+AO6omdlD0wYXkvwGObBpP
	TP1KOIJaRvreBD7NKHWIEPqZjNyAWVmfbN1w71gVDo5j9JU7Gxseo7lCQ7cJ/CmjScFHhayLJPw9S
	UJVMPZPq6Cnpgz0LviKn3kvj8FyK8H/VRePXt0Tq4iCz4rB5tP3w1vLlNt7wAj74ghxhQorzsUgm0
	+RiG3AOGPnf8UrmETljw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPyld-00EWQM-2t;
	Wed, 17 Jan 2024 05:47:13 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPyla-00EWPY-2k;
	Wed, 17 Jan 2024 05:47:12 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-42a0f043eb2so2216171cf.0;
        Tue, 16 Jan 2024 21:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705470428; x=1706075228; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NLg+aXsh2F0/DjmYHbFuq7D/rUE0pQFTinmVwgl39Oo=;
        b=GdJG68rlXapGrEQQXDO0KJW3iOTuUvR4sJfH7+dMVeISzeOLjNVwqmCAakdaWXlMX8
         ick7vcnLc/OaLuqVqQrvt4A58rKzmQGigizIEMY3BSoXV+9AfSgj9Ke18EvEp2ACgmDM
         6tsbTYHmRVAWcUjnvQQ66bOd+CKu0UjxRqIeru832i78u7J/t3z9GXDtthbUFuZ6KsLU
         XdOIA/ZM3P2oyItWn8ZtpA2gcPOttx76z2pxe2n+FYQM0iCGkgccxoz0fyuRgkXplkOd
         3hdpHV4D7N1KU1x4qQayt2q301qmmcBYH4okKpGua9r9npm0b666xGtFm01BXejPOj+n
         0buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705470428; x=1706075228;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NLg+aXsh2F0/DjmYHbFuq7D/rUE0pQFTinmVwgl39Oo=;
        b=bLnqmvY3g8eIYszIRnNkwbOnyjb8v/zYCiVORziA75MAv/Dv6scierWLYuAu12cgxt
         AM2nD0+t9Tf0AobwjZf84tTJl2A1dD78zzsKzYq60YuYB+q6pIf4GOr2/fmf17opxdgQ
         /0oxwkt6zBT0h3+BCjt09fk4AxZVsTvlZu/RKHmYsjdJ+8Q/THcQuUNUxx++oDDQtgqp
         y3OwfnyTxIkx36z04vFPdbXtQrJI0i5vHaCtq0vZU1Pb5HeBC/se8rGdJNQ7sH0tanJg
         /jAB2QKqK7roW6ipsU9yxm3inVFaTtVOFDqcDgFkw8lqKXDX4UT7fy7TIaSaC12Wx++x
         6rjw==
X-Gm-Message-State: AOJu0Yzwxv+Fn/7REVlWsteYwaHl/Xj9NB8bLlbz92yq2AsfAj6GqlYT
	IpWkWlZ09o+f228XDaHzQM8=
X-Google-Smtp-Source: AGHT+IEJCuMB08dGt2M9bJ+G0jaj2GLb8/ivEHIbJaOnDDZol2LjIsH1lHTGT2BS1iuDR/ZqGx7f3Q==
X-Received: by 2002:a05:622a:44f:b0:429:febc:aca5 with SMTP id o15-20020a05622a044f00b00429febcaca5mr317795qtx.63.1705470428278;
        Tue, 16 Jan 2024 21:47:08 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id bx3-20020a05622a090300b004299d262017sm5494807qtb.66.2024.01.16.21.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 21:47:07 -0800 (PST)
Date: Wed, 17 Jan 2024 00:47:05 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Chen-Yu Tsai <wens@csie.org>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of
 snps properties
Message-ID: <20240117054705.GA33225@localhost>
References: <20240116204103.29318-1-twoerner@gmail.com>
 <20240116204103.29318-2-twoerner@gmail.com>
 <CAGb2v67KfNR_U_Qz85aqY1D0DKE9mo-X_L8MGvT7cdcZGUHVUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67KfNR_U_Qz85aqY1D0DKE9mo-X_L8MGvT7cdcZGUHVUg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_214710_907762_030663F7 
X-CRM114-Status: GOOD (  24.70  )
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

T24gV2VkIDIwMjQtMDEtMTcgQCAxMjozODozOSBQTSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9u
IFdlZCwgSmFuIDE3LCAyMDI0IGF0IDQ6NDHigK9BTSBUcmV2b3IgV29lcm5lciA8dHdvZXJuZXJA
Z21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBBIG51bWJlciBvZiBzbnBzIChTeW5vcHN5cykgcHJv
cGVydGllcyBhcmUgbm90IGluIHRoZWlyIGNvcnJlY3QgbG9jYXRpb24uCj4gCj4gTm9wZS4gSWYg
eW91IHJlYWQgdGhlIHNucHMsZHdtYWMueWFtbCBiaW5kaW5nIGZpbGUsIHlvdSdsbCBzZWUgdGhh
dCB0aGVzZQo+IHByb3BlcnRpZXMgaGF2ZSBiZWVuIGRlcHJlY2F0ZWQuIFRoZXkgYXJlIHByb3Bl
cnRpZXMgcGVydGFpbmluZyB0byB0aGUgUEhZCj4gYW5kIHNob3VsZCBiZSBkZXNjcmliZWQgdW5k
ZXIgdGhlIFBIWSBub2RlLiBTdXBwb3J0IGZvciByZXNldCBHUElPcyBvbiBQSFkKPiBkZXZpY2Vz
IGluIHBoeWxpYiBoYXMgYmVlbiB0aGVyZSBzaW5jZSB2NC4xNi4gVGhlIHNucHMgcHJlZml4ZWQg
cHJvcGVydGllcwo+IHdlcmUgZGVwcmVjYXRlZCBpbiB2NS4zLgoKSWYgdGhhdCdzIHRoZSBjYXNl
LCB0aGVuIHRoZSBiaW5kaW5ncyBhbmQgdGhlIGRyaXZlcnMgYXJlIG91dCBvZiBzeW5jIGluIGJv
dGgKVS1Cb290IGFuZCBMaW51eC4gSSBkaXNjb3ZlcmVkIHRoaXMgaXNzdWUgd2hpbGUgd29ya2lu
ZyB3aXRoIG9sZGVyIGFuZCBuZXdlcgpyZXZpc2lvbnMgb2YgdGhlIHJvY2stcGktZSBib2FyZC4g
VGhlIGZpcnN0IHRocmVlIHNwaW5zIG9mIHRoZSByb2NrLXBpLWUgaGF2ZQp0aGUgcnRsODIxMWUg
UEhZIGJ1dCB0aGUgbGFzdCBvbmUgKHYxLjIxKSBoYXMgdGhlIHJ0bDgyMTFmIFBIWS4KCldpdGgg
dGhlIGV4aXN0aW5nIGxheW91dCBub3RoaW5nIHdvcmtzIGluIFUtQm9vdCBhbmQgaW4gTGludXgg
dGhlIHJ0bDgyMTFlCndvcmtzIGJ1dCBub3QgdGhlIHJ0bDgyMTFmLiBXaXRoIHRoaXMgcGF0Y2gg
Ym90aCB0aGUgcnRsODIxMWUgYW5kIHRoZSBydGw4MjExZgpQSFlzIHdvcmsgdXNpbmcgdGhlIGV4
YWN0IHNhbWUgZGV2aWNlIHRyZWVzIG9uIGJvdGggb2xkZXIgYW5kIG5ld2VyIHJvY2stcGktZQpi
b2FyZHMgaW4gYm90aCBVLUJvb3QgYW5kIExpbnV4LgoKQ29tcGFyaW5nIHRoZSByb2NrLXBpLWUn
cyBkdHMgZmlsZSB3aXRoIHRoZSBvbmUgZnJvbSB0aGUgcm9jLXJrMzMyOC1jYyBib2FyZCwKd2hp
Y2ggYWxzbyB1c2VzIHRoZSBsYXlvdXQgaW4gdGhpcyBwYXRjaCwgYW5kIHdoaWNoIGFsc28gdXNl
cyB0aGUgcnRsODIxMWUKZXh0ZXJuYWwgUEhZLCBpcyB3aGF0IGxlZCBtZSBpbiB0aGlzIGRpcmVj
dGlvbi4KCj4gCj4gQ2hlbll1Cj4gCj4gPiBGaXhlczogYjkxOGU4MWYyMTQ1ICgiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IHJrMzMyODogQWRkIFJhZHhhIFJPQ0sgUGkgRSIpCj4gPiBTaWduZWQtb2Zm
LWJ5OiBUcmV2b3IgV29lcm5lciA8dHdvZXJuZXJAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jay1waS1lLmR0cyB8IDEwICsrKysr
LS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMy
OC1yb2NrLXBpLWUuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9j
ay1waS1lLmR0cwo+ID4gaW5kZXggMDk2Y2ZhMTkwMzZlLi4wNzM5YjhmZWM4NmUgMTAwNjQ0Cj4g
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2NrLXBpLWUuZHRz
Cj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2NrLXBpLWUu
ZHRzCj4gPiBAQCAtMTUwLDggKzE1MCwxMSBAQCAmZ21hYzJpbyB7Cj4gPiAgICAgICAgIHBoeS1t
b2RlID0gInJnbWlpIjsKPiA+ICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjX2lvPjsKPiA+ICAg
ICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+IC0gICAgICAgcGluY3RybC0wID0g
PCZyZ21paW0xX3BpbnM+Owo+ID4gKyAgICAgICBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz4s
IDwmZXRoX3BoeV9yZXNldF9waW4+Owo+ID4gICAgICAgICBzbnBzLGFhbDsKPiA+ICsgICAgICAg
c25wcyxyZXNldC1ncGlvID0gPCZncGlvMSBSS19QQzIgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ICsg
ICAgICAgc25wcyxyZXNldC1hY3RpdmUtbG93Owo+ID4gKyAgICAgICBzbnBzLHJlc2V0LWRlbGF5
cy11cyA9IDwwIDEwMDAwIDUwMDAwPjsKPiA+ICAgICAgICAgc25wcyxyeHBibCA9IDwweDQ+Owo+
ID4gICAgICAgICBzbnBzLHR4cGJsID0gPDB4ND47Cj4gPiAgICAgICAgIHR4X2RlbGF5ID0gPDB4
MjY+Owo+ID4gQEAgLTE2NSwxMyArMTY4LDEwIEBAIG1kaW8gewo+ID4KPiA+ICAgICAgICAgICAg
ICAgICBydGw4MjExOiBldGhlcm5ldC1waHlAMSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MT47Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JmV0
aF9waHlfaW50X3Bpbj4sIDwmZXRoX3BoeV9yZXNldF9waW4+Owo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcGluY3RybC0wID0gPCZldGhfcGh5X2ludF9waW4+Owo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAgIGludGVycnVwdHMgPSA8MjQgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPiA+IC0gICAg
ICAgICAgICAgICAgICAgICAgIHJlc2V0LWFzc2VydC11cyA9IDwxMDAwMD47Cj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICByZXNldC1kZWFzc2VydC11cyA9IDw1MDAwMD47Cj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzEgUktfUEMyIEdQSU9fQUNUSVZF
X0xPVz47Cj4gPiAgICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgICAgfTsKPiA+ICB9Owo+ID4g
LS0KPiA+IDIuNDMuMC43Ni5nMWE4N2M4NDJlY2UzCj4gPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
