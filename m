Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11D67C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 21:52:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE12760F38
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 21:52:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BE12760F38
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWmJ1x+El9taEk9oEgdnP4PUAMuJHPjzntWHtcKcbk8=; b=fjtkohHKIix5CJ
	F6nfA2bvnafLB+3riHbrQYfFc8/uM1V8t2vwly63z+PfjgiL9Sf1hcvOcz78ykqmfAxwf5e//Dd1K
	auDZMiR37YFrP5EDYXJ6na/91rVXkOX1+j8wwEJb8lNgg3T1PYJIa/jYWULvvrsBOimyU7PwTpBpi
	wzsu+k4gHoyg9S64J+iyLmI0dzmEG1V8m9j7/C8/GQHY5Ar73xd+PBQnu01OTGCIcKXnfPkVDJli0
	47qxDkGaZ9/21LHH82OPVjqmxwYeBprZtU2Fk2RtU5zcW3qS6aiCNuWfOsi5N18Ph/+FZB5zQDqym
	qw9KV5sVjzftmzJ+jpMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBlI4-00Atl6-5f; Thu, 05 Aug 2021 21:52:36 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBlI0-00AtkF-IQ
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 21:52:34 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id z5so9759512ybj.2
 for <linux-rockchip@lists.infradead.org>; Thu, 05 Aug 2021 14:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/UQ/XHaeIooFE6LdVCRHH8ogFbxbCCOS2tpf69zhkNE=;
 b=dwukpaJ0801S19b/iRaXaWXKAHkyOED36pnTpyc8AjYSHmgJMLD+aMktnliUWW6rEq
 PppEKZ3M+Dnqt2a39XTo24QWO38mo+zFGiBtzu/Ya/9iMFW9XCvTesRkEvPbt3/hx4sZ
 gm0lAKM/sF1MzN1zXeTZSCT5vU5JFyWeSom0wrUD/1pv12A8DvN4VZDtud9Ostr0i9aW
 CSx32++0/FvTz25+HsAFJfAmx7e7VwK+C+akrPRr/iwLbheFfOZToJWOkz32pVyXSbUA
 exM9/ZWaqnBhQJ9LegvH4umDa3j74KhKywouLmYMwAAdch1XWVl9aP+9NqSUZveFmqNR
 w9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/UQ/XHaeIooFE6LdVCRHH8ogFbxbCCOS2tpf69zhkNE=;
 b=tXLtXURuYnpBKaLxmbDbfvBeOCJPZxO/HlqIa1XjplWRvn/H9XaQd8UgBvwjqykGJt
 JhVyQSSDgtiSTmuFIZNG6KBkuRVnzA41GeIB7belsB5OvWSlzwxkGa+AxR9BMfnMMXZT
 RrHpUc2hgiY6EyPrBX0Fm1zm2/gk/xq9LNjrezVGsYUxjO7+0Vu4enAO4pPx7Idr7x+y
 dYDGjc3uHEc9HDi7VY9ASaMwKgemKiTMMk6/ChHba6gAdLawaUuHkIMxXIAZ3lzFewWp
 DUsX66nFGQI3NcUgabjIbqQkgPonJfBOAHeK2qqtlFhviY7DbwpJCd1cX9scq+PAUPjs
 XVKQ==
X-Gm-Message-State: AOAM532LPxQvBihPx3ugnpC3ValroK1Ntfntv157j3DcjbKuvu6ExjUW
 rIYq4eRwEs6qfUk8ixMCpqwpelAG8vsBYx+cd/3g2w==
X-Google-Smtp-Source: ABdhPJw2QbmHUiI/GwToKTEaqQh0Zuz+Twwt1bbE9HNroKUywRwDzkiE+5/3vMcFtQ03MmF306AtYkLK232VndIfrlc=
X-Received: by 2002:a25:8b91:: with SMTP id j17mr8337744ybl.228.1628200348144; 
 Thu, 05 Aug 2021 14:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
 <162758560739.714452.5782743329332725952@swboyd.mtv.corp.google.com>
 <CAGETcx8YYrkCV0UObtOqHUnS29Q-raC54KUh14wqyBDMJ4e46g@mail.gmail.com>
 <16392318.geO5KgaWL5@diego>
In-Reply-To: <16392318.geO5KgaWL5@diego>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 5 Aug 2021 14:51:52 -0700
Message-ID: <CAGETcx-H1U3YPq+Uh4PuKygTut3n0V4Y_YNSdr4JoJexA+KrtA@mail.gmail.com>
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Stephen Boyd <sboyd@kernel.org>, Yunhao Tian <t123yh@outlook.com>,
 t123yh.xyz@gmail.com, 
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210805_145232_642535_B524332D 
X-CRM114-Status: GOOD (  45.28  )
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

T24gTW9uLCBBdWcgMiwgMjAyMSBhdCAxMjoyNiBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEhpIFNhcmF2YW5hLAo+Cj4gQW0gTW9udGFnLCAyLiBBdWd1c3Qg
MjAyMSwgMjA6MjQ6NTYgQ0VTVCBzY2hyaWViIFNhcmF2YW5hIEthbm5hbjoKPiA+IE9uIFRodSwg
SnVsIDI5LCAyMDIxIGF0IDEyOjA2IFBNIFN0ZXBoZW4gQm95ZCA8c2JveWRAa2VybmVsLm9yZz4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IFF1b3RpbmcgSGVpa28gU3TDvGJuZXIgKDIwMjEtMDctMjggMDI6
NTM6NTQpCj4gPiA+ID4gQW0gRGllbnN0YWcsIDI3LiBKdWxpIDIwMjEsIDAzOjA4OjEwIENFU1Qg
c2NocmllYiBTdGVwaGVuIEJveWQ6Cj4gPiA+ID4gPiBRdW90aW5nIFl1bmhhbyBUaWFuICgyMDIx
LTA3LTIxIDA1OjQ4OjE2KQo+ID4gPiA+ID4gPiBDdXJyZW50bHksIG5vIGRyaXZlciBzdXBwb3J0
IGZvciBERFIgbWVtb3J5IGNvbnRyb2xsZXIgKERNQykgaXMgcHJlc2VudCwKPiA+ID4gPiA+ID4g
YXMgYSByZXN1bHQsIG5vIGRyaXZlciBpcyBleHBsaWNpdGx5IGNvbnN1bWluZyB0aGUgZGRycGh5
IGNsb2NrLiBUaGlzIG1lYW5zCj4gPiA+ID4gPiA+IHRoYXQgVlBMTDEgKHBhcmVudCBvZiBkZHIg
Y2xvY2spIHdpbGwgYmUgc2h1dGRvd24gaWYgd2UgZW5hYmxlCj4gPiA+ID4gPiA+IGFuZCB0aGVu
IGRpc2FibGUgYW55IGNoaWxkIGNsb2NrIG9mIFZQTEwxIChlLmcuIFNDTEtfSTJTMF84Q0hfVFgp
Lgo+ID4gPiA+ID4gPiBJZiBWUExMMSBpcyBkaXNhYmxlZCwgdGhlIHdob2xlIHN5c3RlbSB3aWxs
IGZyZWV6ZSwgYmVjYXVzZSB0aGUgRERSCj4gPiA+ID4gPiA+IGNvbnRyb2xsZXIgd2lsbCBsb3Nl
IGl0cyBjbG9jay4gU28sIGl0J3MgbmVjZXNzYXJ5IHRvIHByZXZlbnQgVlBMTDEgZnJvbQo+ID4g
PiA+ID4gPiBzaHV0dGluZyBkb3duLCBieSBtYXJraW5nIHRoZSBkZHJwaHk0eCBDTEtfSVNfQ1JJ
VElDQUwuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoaXMgYnVnIHdhcyBkaXNjb3ZlcmVkIHdo
ZW4gSSB3YXMgcG9ydGluZyByb2NrY2hpcF9pMnNfdGRtIGRyaXZlciB0bwo+ID4gPiA+ID4gPiBt
YWlubGluZSBrZXJuZWwgZnJvbSBSb2NrY2hpcCA0LjQga2VybmVsLiBJIGd1ZXNzIHRoYXQgb3Ro
ZXIgUm9ja2NoaXAKPiA+ID4gPiA+ID4gU29DcyB3aXRob3V0IERNQyBkcml2ZXIgbWF5IG5lZWQg
dGhlIHNhbWUgcGF0Y2guIElmIHRoaXMgYXBwbGllcyB0bwo+ID4gPiA+ID4gPiBvdGhlciBkZXZp
Y2VzLCBwbGVhc2UgbGV0IHVzIGtub3cuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1v
ZmYtYnk6IFl1bmhhbyBUaWFuIDx0MTIzeWhAb3V0bG9vay5jb20+Cj4gPiA+ID4gPiA+IC0tLQo+
ID4gPiA+ID4gPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzMwOC5jIHwgMiArLQo+ID4g
PiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGstcmszMzA4LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzA4LmMKPiA+ID4gPiA+
ID4gaW5kZXggMmMzYmQwYzc0OWYyLi42YmUwNzcxNjYzMzAgMTAwNjQ0Cj4gPiA+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYwo+ID4gPiA+ID4gPiArKysgYi9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzA4LmMKPiA+ID4gPiA+ID4gQEAgLTU2NCw3ICs1
NjQsNyBAQCBzdGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszMzA4X2Nsa19icmFu
Y2hlc1tdIF9faW5pdGRhdGEgPSB7Cj4gPiA+ID4gPiA+ICAgICAgICAgQ09NUE9TSVRFKFNDTEtf
RERSQ0xLLCAiY2xrX2RkcnBoeTR4X3NyYyIsIG11eF9kcGxsX3ZwbGwwX3ZwbGwxX3AsIENMS19J
R05PUkVfVU5VU0VELAo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICBSSzMzMDhf
Q0xLU0VMX0NPTigxKSwgNiwgMiwgTUZMQUdTLCAwLCAzLCBERkxBR1MsCj4gPiA+ID4gPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgIFJLMzMwOF9DTEtHQVRFX0NPTigwKSwgMTAsIEdGTEFHUyks
Cj4gPiA+ID4gPiA+IC0gICAgICAgR0FURSgwLCAiY2xrX2RkcnBoeTR4IiwgImNsa19kZHJwaHk0
eF9zcmMiLCBDTEtfSUdOT1JFX1VOVVNFRCwKPiA+ID4gPiA+ID4gKyAgICAgICBHQVRFKDAsICJj
bGtfZGRycGh5NHgiLCAiY2xrX2RkcnBoeTR4X3NyYyIsIENMS19JR05PUkVfVU5VU0VEIHwgQ0xL
X0lTX0NSSVRJQ0FMLAo+ID4gPiA+ID4KPiA+ID4gPiA+IElzIGl0IG5vdCBlbmFibGVkIGJ5IGRl
ZmF1bHQ/Cj4gPiA+ID4KPiA+ID4gPiBBbGwgZ2F0ZXMgYXJlIGVuYWJsZWQgYnkgZGVmYXVsdCwg
YnV0IHRoaXMgZ2F0ZSBzaGFyZXMgYSBjb21tb24gcGFyZW50Cj4gPiA+ID4gdHJlZSBkb3duIHRv
IGEgcGxsLCBzbyBpZiBhbm90aGVyIGxlYWYtdXNlciBpcyBkaXNhYmxpbmcgdGhlaXIgcGFydCwg
dGhpcwo+ID4gPiA+IHVudHJhY2tlZCBjbG9jayB3b3VsZCBnZXQgZGlzYWJsZWQgYXMgd2VsbC4K
PiA+ID4KPiA+ID4gUmlnaHQsIHRoaXMgcHJvYmxlbSBpcyBjcm9wcGluZyB1cCBpbiBkaWZmZXJl
bnQgcGxhY2VzIGZvciB2YXJpb3VzCj4gPiA+IGRyaXZlcnMuCj4gPiA+Cj4gPiA+ID4KPiA+ID4g
PiBPbiB0aGF0IG5vdGUsIEkgcmVtZW1iZXIgYSBzb3J0IG9mIENMS19IQU5ET0ZGIHdhcyBwbGFu
bmVkIHdheSBiYWNrCj4gPiA+ID4gaW4gdGhlIHBhc3QsIG1lYW5pbmcgY2xvY2sgaXMgY3JpdGlj
YWwgdW50aWwgYSBkcml2ZXIgcGlja3MgaXQgdXAsIGFmdGVyIHRoaXMgdGhlCj4gPiA+ID4gZHJp
dmVyIGlzIHJlc3BvbnNpYmxlIGZvciBpdC4gRGlkIHRoYXQgZ2V0IGFueSBtb21lbnR1bT8KPiA+
ID4gPgo+ID4gPgo+ID4gPiBMYXN0IEkgc2F3IFNhcmF2YW5hIHNlbnQgYSBwYXRjaCB0byBzb3J0
IG9mIGNvbm5lY3QgQ0xLX0hBTkRPRkYgdG8KPiA+ID4gZGV2aWNlIGRyaXZlciBzeW5jX3N0YXRl
KCkgY2FsbGJhY2suIEkgdGhpbmsgd2UgbmVlZCB0byBhdCBsZWFzdCBzdGFzaAo+ID4gPiBhd2F5
IHRoYXQgYSBjbGsgaXMgZW5hYmxlZCBhdCBib290IGFuZCB0aGVuIGZpZ3VyZSBvdXQgaG93IHRv
IHRpZSBpbgo+ID4gPiBzeW5jX3N0YXRlIGFuZC9vciBzb21ldGhpbmcgZWxzZS4KPiA+Cj4gPiBZ
ZWFoLCBteSBjbGtfc3luY19zdGF0ZSgpIHNlcmllcyBzaG91bGQgZG8gdGhhdC4gSSdsbCBnZXQg
YmFjayBvbiB0aGF0Cj4gPiBwYXRjaCB0aGlzIHdlZWsgb3IgbmV4dC4KPiA+Cj4gPiBZdW5oYW8s
Cj4gPgo+ID4gSXMgdGhlcmUgYXQgbGVhc3Qgc29tZSBEVCBkZXZpY2UgdGhhdCBjb25zdW1lcyB0
aGUgRERSIHBoeSBjbG9jaz8gQ2FuCj4gPiB5b3UgcG9pbnQgbWUgdG8gdGhlIERUIGZvciB0aGlz
IGJvYXJkIChub3QgdGhlIFNvQykgc28gSSBjYW4gdGFrZSBhCj4gPiBsb29rIGF0IGl0IGxhdGVy
Pwo+Cj4gTm90IGZvciB0aGUgcmszMzA4LiBJZiB5b3UncmUgbG9va2luZyBmb3IgbGl2ZS1leGFt
cGxlcyBvZiBoYW5kb2ZmIGNsb2NrcywKPiBJIGNhbiBwcm92aWRlIGFub3RoZXIgZXhhbXBsZXMg
dGhvdWdoOgo+Cj4KPiByb2NrY2hpcC9jbGstcmszMjg4LmMgLSBwY2xrX3JrcHdtIChpbiB0aGUg
c2VwYXJhdGUgY3JpdGljYWwgY2xvY2sgbGlzdCkgLi4uIHdpdGgKPiBhcmNoL2FybS9ib290L2R0
cy9yazMyODguZHRzaSAtIGNsb2NrIGlzIHN1cHBseWluZyBwd20gbm9kZXMuCj4KPiBBcyB0aGUg
Y29tbWVudCBpbiB0aGUgY2xvY2sgZHJpdmVyIHN1Z2dlc3RzIChsaW5lIDg1MCksIHNvbWUgYm9h
cmRzIHVzZQo+IHB3bS1yZWd1bGF0b3JzIGZvciBjZW50cmFsIGNvbXBvbmVudHMuIFRoZSBwd20t
cmVndWxhdG9ycyBhcmUgY29uZmlndXJlZAo+IGF0IGJvb3QgYWxyZWFkeSwgc28gdGhlIGNsb2Nr
IHNob3VsZG4ndCBiZSBkaXNhYmxlZCB0aWxsIHRoZSBwd20tcmVndWxhdG9yIHRha2VzCj4gb3Zl
ci4KCklmIHlvdSBjYW4gcmVwcm9kdWNlIHRoZSBpc3N1ZSBvbiB5b3VyIGVuZCBpZiB5b3UgcmVt
b3ZlIHRoZQpwY2xrX3JrcHdtIGNsb2NrIGZyb20gdGhlIGNyaXRpY2FsIGNsb2NrIGxpc3QsIHRo
ZW4gY2FuIHlvdSB0cnkgdGhpcwpzZXJpZXM/Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwv
MjAyMTA0MDcwMzQ0NTYuNTE2MjA0LTEtc2FyYXZhbmFrQGdvb2dsZS5jb20vCgpJdCBzaG91bGQg
a2VlcCB0aGUgcGNsa19ya3B3bSBjbG9jayBvbiB0aWxsIGFsbCB0aGUgY29uc3VtZXJzIG9mIHRo
ZQpjbG9jayBoYXZlIHByb2JlZC4gQW5kIGFmdGVyIHRoYXQgaXQnbGwgYWN0dWFsbHkgYWxsb3cg
dGhlIGNsb2NrIHRvIGJlCnR1cm5lZCBvZmYgaW5zdGVhZCBvZiBrZWVwaW5nIGl0IG9uIGZvcmV2
ZXIuCgotU2FyYXZhbmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
