Return-Path: <SRS0=GaOA=PN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7849EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 09:05:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 33C1C60EFE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 09:05:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 33C1C60EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=endlessos.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnX7/8qKI8BRokwd+9cPskKlJtNtZsKR0BE/sklLij8=; b=b6kBNAu7pHefV2
	OfXb5owtoFnLN67OJ3V02KJgBkZ90OAz/W12UYdf9io7IpCwM1g83Dqu9KhvU7pUpCrH8c/UHIF7x
	TxpoBxzKETy9bequnbyiBVwZ5j14Ccf1Jso0BWNI4lBfetLo6W0bl6A8ZMKisx+USVa0i0nrfLwiw
	buxJ/7P7jnNRIY4/pQ3/whhykv3DimVJCMKHgWJzS/OQ3jJUt8ih+kEMfBECTxnUT2hMXo5koIWt0
	AuLoRpFIq3BxpTdPASP+MJCF7v6n0mmHTHwEzoBO7owuTMPFP/D0lfFlm3EgsWOwxBNmS5tXCyCQl
	6JOr97os4LA3pppdIt3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mevut-00FtHv-47; Mon, 25 Oct 2021 09:05:15 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mevuq-00FtGm-8P
 for linux-rockchip@lists.infradead.org; Mon, 25 Oct 2021 09:05:13 +0000
Received: by mail-ot1-x330.google.com with SMTP id
 y15-20020a9d460f000000b0055337e17a55so13970105ote.10
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Oct 2021 02:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessos.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NPeu1poYOZvBuPcB8mqHzEfH4COGHEACiTWNCQVfl9w=;
 b=KqQIbYxy73SZL1DGOQqQzSk2lqdc8dqLRIPlx0jEoOKP81cf0OeAQLI9plzVbeQ0HA
 K2E1JOtzeVL5A9qKdsyFJJ7Fl3Xmal0CZ9vdM3jQmjOy8UQt0yT1hFk+uIk/+8T7r1iu
 fBe4xFufWSF7hmTI7DROYob9lRBiZwaw9XWvNYEDm2BZ4/Dy1UWaSiJ3ev8asG2JT6OV
 IaIdGJ7q5swoac1+F6b4i7XQhaC0NxIIiR4SHV1r5xJ9xfplE3O7mDpbsCfjezVb6BsH
 PVt81Rm/XPa+oed+cAGZU7JTlE2hO5DcS8vShZlFLrCpY3c+6ZuxX3kLYOfEW89UsTKd
 aCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NPeu1poYOZvBuPcB8mqHzEfH4COGHEACiTWNCQVfl9w=;
 b=JQcz4E+7GxtgRbnNhAN5hJIayFjoxeW1/DMLmSIZhxKPv1pkjckYTFFhr7W1uScOcS
 Tf/M9KwVBUofkoq8OPFXLy9uFztVN2PS4MVXhEUPplDJUbrz2GszmPaP3fkSmnHgYHgT
 zU7DGYiPpx/X7MEFwi7UPgdemCY3tfhnyD8o/ZX1giuvJZv5AOIv/Tr8du9cV3HpNIAB
 bo3IbUIeYpCeCFYkUQCEgW2jj/KOAVZeypYdJieJCS7Zq5uEw2EWUtRmOonqYFSLE5yC
 lkNLKxNjcwQqwasLKfV7xSD/A4S3YvIxSy0VSLzslowYRWDyqy0sBH6qvnj5Y2BVJXcg
 BrgA==
X-Gm-Message-State: AOAM530giI1T645yNx/BYGTt8jOWRl6wUbTV2aMqPmXU6KXt93zv5Ipg
 CF3tyzf6hm54O1lq1pGm4HTMEbDyKx6ziKsXvvq75w==
X-Google-Smtp-Source: ABdhPJxamKYAFZoNCTkBSpzygAJ04U8L9iWnulLsJcuDqg2jccuCGWR54kLMiqkaIUsmOaNbdkG+qo7JoQZK6oy+KAE=
X-Received: by 2002:a9d:6483:: with SMTP id g3mr12458785otl.105.1635152710562; 
 Mon, 25 Oct 2021 02:05:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200924063042.41545-1-jhp@endlessos.org>
 <YXXNsdVTo8pVfs4/@think.localdomain>
In-Reply-To: <YXXNsdVTo8pVfs4/@think.localdomain>
From: Jian-Hong Pan <jhp@endlessos.org>
Date: Mon, 25 Oct 2021 17:04:20 +0800
Message-ID: <CAPpJ_ed1pBmCWPFMPj8vNkfPAqUtugvUJC14e2pcDuDJUastzQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: disable USB type-c DisplayPort
To: Siva Mahadevan <me@svmhdvn.name>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Soeren Moch <smoch@web.de>, 
 Tobias Schramm <t.schramm@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Hugh Cole-Baker <sigmaris@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Linux Upstreaming Team <linux@endlessm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_020512_379359_2426FB84 
X-CRM114-Status: GOOD (  21.84  )
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

U2l2YSBNYWhhZGV2YW4gPG1lQHN2bWhkdm4ubmFtZT4g5pa8IDIwMjHlubQxMOaciDI15pelIOmA
seS4gCDkuIrljYg1OjE35a+r6YGT77yaCj4KPiBKaWFuLUhvbmcgUGFuIHdyb3RlOgo+ID4gVGhl
IGNkbi1kcCBzdWIgZHJpdmVyIHByb2JlcyB0aGUgZGV2aWNlIGZhaWxlZCBvbiBQSU5FQk9PSyBQ
cm8uCj4gPgo+ID4ga2VybmVsOiBjZG4tZHAgZmVjMDAwMDAuZHA6IFtkcm06Y2RuX2RwX3Byb2Jl
IFtyb2NrY2hpcGRybV1dICpFUlJPUiogbWlzc2luZyBleHRjb24gb3IgcGh5Cj4gPiBrZXJuZWw6
IGNkbi1kcDogcHJvYmUgb2YgZmVjMDAwMDAuZHAgZmFpbGVkIHdpdGggZXJyb3IgLTIyCj4gPgo+
ID4gVGhlbiwgdGhlIGRldmljZSBoYWx0cyBhbGwgb2YgdGhlIERSTSByZWxhdGVkIGRldmljZSBq
b2JzLiBGb3IgZXhhbXBsZSwKPiA+IHRoZSBvcGVyYXRpb25zOiB2b3BfY29tcG9uZW50X29wcywg
dm9wX2NvbXBvbmVudF9vcHMgYW5kCj4gPiByb2NrY2hpcF9kcF9jb21wb25lbnRfb3BzIGNhbm5v
dCBiZSBib3VuZCB0byBjb3JyZXNwb25kaW5nIGRldmljZXMuIFNvLAo+ID4gWG9yZyBjYW5ub3Qg
ZmluZCB0aGUgY29ycmVjdCBEUk0gZGV2aWNlLgo+ID4KPiA+IFRoZSBVU0IgdHlwZS1DIERpc3Bs
YXlQb3J0IGRvZXMgbm90IHdvcmsgZm9yIG5vdy4gU28sIGRpc2FibGUgdGhlCj4gPiBEaXNwbGF5
UG9ydCBub2RlIHVudGlsIHRoZSB0eXBlLUMgcGh5IHdvcmsgaGFzIGJlZW4gZG9uZS4KPiA+Cj4g
PiBMaW5rOiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExNzk0MTQxLyMyMzYz
OTg3Nwo+ID4gU2lnbmVkLW9mZi1ieTogSmlhbi1Ib25nIFBhbiA8amhwQGVuZGxlc3Nvcy5vcmc+
Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lYm9v
ay1wcm8uZHRzIHwgMiArLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1waW5lYm9vay1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZWJvb2stcHJvLmR0cwo+ID4gaW5kZXggMDZkNDgzMzhjODM2Li5kNjI0YzU5
NWM1MzMgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lYm9vay1wcm8uZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1waW5lYm9vay1wcm8uZHRzCj4gPiBAQCAtMzgwLDcgKzM4MCw3IEBAIG1haW5zX2No
YXJnZXI6IGRjLWNoYXJnZXIgewo+ID4gIH07Cj4gPgo+ID4gICZjZG5fZHAgewo+ID4gLSAgICAg
c3RhdHVzID0gIm9rYXkiOwo+ID4gKyAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICB9Owo+
ID4KPiA+ICAmY3B1X2IwIHsKPiA+IC0tCj4gPiAyLjI4LjAKPgo+IEkgc2F3IGEgc2ltaWxhciBw
YXRjaCBwb3N0ZWQgYXQgaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjEvNy8xNS83NTIuIEkKPiB3
YXMgd29uZGVyaW5nIGlmIG9uZSBvZiB0aGVzZSBwYXRjaGVzIHdpbGwgYmUgc3VibWl0dGVkIHRv
IG1haW5saW5lLCBvcgo+IHdoYXQgdGhlIHN0YXR1cyBvbiB0aGlzIHBhdGNoIGlzLiBJIGNhbiBj
b25maXJtIHRoYXQgdGhpcyBkb2VzIHNvbHZlCj4gdGhlIGlzc3VlIG9uIG15IFBpbmVib29rIFBy
by4gV2lsbCB0aGlzIGdvIGZvcndhcmQ/CgpOb3RpY2UgdGhhdCBjb21taXQgKCJhcm02NDogZHRz
OiByb2NrY2hpcDogRGlzYWJsZSBDRE4gRFAgb24gUGluZWJvb2sKUHJvIikgWzFdIGlzIGFscmVh
ZHkgaW4gbGludXgtbmV4dC4KClsxXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0L2NvbW1pdC8/aD1uZXh0LTIwMjExMDIy
JmlkPTI1MTNmYTVjMjVkNDJmNTVjYTVmMGYwYWIyNDdhZjdjOWZiZmEzYjEKCkppYW4tSG9uZyBQ
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
