Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64C8CC00A5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 00:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQ1iscyAXQSZql8nAy+FK0SptjUrb79YRJfT9HQU/ZI=; b=Kl7KO2pkyivznW
	uhRBySBjiZiditnhM2HTqbX45DH1eFOQjZkcqLZw9Bf+fntIUZJFOlTu8GWfd/77E9iYIeNQuYLaR
	XL4lcxzzswaSoHE3vZi2fUO5/RkZQCpj9CszFMw8Brrim38M+cFXoQ8CHK7IJh8ZN0HSz8hCSH5mu
	Kf55yBfAJfganDzobENmsDeUIWGOGeg10Td59g3jYoJNsRPPbGPssuYZedoDlp0ZNYuuXuu/cnCy7
	eR/IBxXtiCNBCAyEeGyJ7nQ5tdW/Lr1XX5LjLp0JZG5W+uhfGWpc0SYzjznnf0Nit3WEJAwMUvUhZ
	SF53b1E4f++6DyBuSq6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHvtu-00GIoP-JE; Wed, 18 Jan 2023 00:01:58 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHvtr-00GInl-Gl; Wed, 18 Jan 2023 00:01:57 +0000
Received: by mail-wr1-x433.google.com with SMTP id z5so31261880wrt.6;
        Tue, 17 Jan 2023 16:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VM4KU2n0HRrYiCXcfwwNwOnDUUhhKsRzFTZMgsrTMWQ=;
        b=Mn26nH7X4O6fTQ38DDIJSJ9ir/bBQxjzAy0eyNGjUQNQHKD2AaThmMuu9uq0PdPwft
         T9FDz74tQjO1j0wOsoj85xFePqaime8vdQEa+mgSGx4ZQoktguIgUW32228cnJB9t5NK
         IFDhy6mKXsdM8fjCM49oipmhbGQZ0I47J2xiz59OadODBEzIQx8pq/mKpNVAGusB8rAs
         Ek2GgndQiI213ZsMO/8+c9G5n923+DqwVu+y5HTbICqgxbczAfL60Ibk5wW+3uz4XeZm
         2G9TSuV+ATOMOqBPzYe4XbpytScrwyWEO+fI187XMZTqPg4mMv51o7PcCR/G3RfGIvUw
         j1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VM4KU2n0HRrYiCXcfwwNwOnDUUhhKsRzFTZMgsrTMWQ=;
        b=DNNNkrSJFeagv7AcPHWa0QM+Eqeum6ODt12zZlGSowTXI+tZOZxpG5s84ft8VRImLA
         skyLIjbATerCq/JP65+P4YwW/DL6MJqGNHmtu17p1cXJKYGW1oJ3Us2nWlAaGwb4jcnt
         ZDErdtJHow/qpsh0OPDPDgyquGBVnP7sW15uav2JD/yiNob3BhCAX/w/R3zR+w7modgA
         XNW+2MCOUxDqKngbqMfs7b6nGVagPC8R4AO0S82gQmDfoutYJ12LMvVbW5Kzy59J8UYG
         ef4CIJ8E6VsAjcf3YNX0DcLXZLFgEXkCko+CZ8Hds2I/G63ancDghX0i+LYSp8F855YU
         eBag==
X-Gm-Message-State: AFqh2kq8csaXHlu18FEt2cOREPrWLFuA8lDwVP8LFAwCMP6mGh5Zz6d7
	fppnmykBljXsbANt46eyNKo=
X-Google-Smtp-Source: AMrXdXvj2R9S/8u6fGMV9/RE1Ku4IlUwQRFE1HUaitb0X8DZCxUK464M/KOHVH6841uiGhus5n88JA==
X-Received: by 2002:adf:e385:0:b0:2bd:d136:9eac with SMTP id e5-20020adfe385000000b002bdd1369eacmr4079144wrm.9.1674000110342;
        Tue, 17 Jan 2023 16:01:50 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id g1-20020a5d46c1000000b00241cfe6e286sm29625200wrs.98.2023.01.17.16.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:01:49 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, Shengyu Qu <wiagn233@outlook.com>,
 devicetree@vger.kernel.org, heiko@sntech.de, jacob-chen@iotwrt.com,
 kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, michael.riesch@wolfvision.net,
 robh+dt@kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date: Wed, 18 Jan 2023 01:01:48 +0100
Message-ID: <5241675.okTXgP3Kn8@archbook>
In-Reply-To: <20230117124114.GF23495@pengutronix.de>
References:  <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <20221123092841.GB13042@pengutronix.de>
 <20230117124114.GF23495@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_160155_582400_A16698BB 
X-CRM114-Status: GOOD (  44.49  )
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

T24gRGllbnN0YWcsIDE3LiBKYW51YXIgMjAyMyAxMzo0MToxNCBDRVQgTWljaGFlbCBUcmV0dGVy
IHdyb3RlOgo+IE9uIFdlZCwgMjMgTm92IDIwMjIgMTA6Mjg6NDEgKzAxMDAsIE1pY2hhZWwgVHJl
dHRlciB3cm90ZToKPiA+IE9uIFR1ZSwgMjIgTm92IDIwMjIgMjA6NDc6NDkgKzAxMDAsIE5pY29s
YXMgRnJhdHRhcm9saSB3cm90ZToKPiA+ID4gT24gRGllbnN0YWcsIDIyLiBOb3ZlbWJlciAyMDIy
IDAwOjEwOjI1IENFVCBQZXRlciBHZWlzIHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwgTm92IDIxLCAy
MDIyIGF0IDEyOjM0IFBNIEV6ZXF1aWVsIEdhcmNpYQo+ID4gPiA+IDxlemVxdWllbEB2YW5ndWFy
ZGlhc3VyLmNvbS5hcj4gd3JvdGU6Cj4gPiA+ID4gPiBPbiBNb24sIE5vdiAyMSwgMjAyMiBhdCAy
OjEzIFBNIFNoZW5neXUgUXUgPHdpYWduMjMzQG91dGxvb2suY29tPiB3cm90ZToKPiA+ID4gPiA+
ID4gSSByZW1lbWJlciBzb21lb25lIHNhaWQgdGhhdCByZ2EyIGhhcyBvbmx5IDMyYml0IGFkZHJl
c3Mgc3BhY2UgYnV0IG5vdAo+ID4gPiA+ID4gPiBoYXZpbmcgYSBtbXUgb3IgbW11IG5lZWRzIHRv
IGJlIGNvbmZpZ3VyZWQuIEJldHRlciBhc2sgYnkgeW91cnNlbGYgaW4KPiA+ID4gPiA+ID4gcGlu
ZTY0IGRpc2NvcmQgc2luY2UgSSdtIG5vdCBzdXJlIGFib3V0IHRoYXQuCj4gPiA+ID4gPiA+IOS6
jiAyMDIy5bm0MTHmnIgyMuaXpSBHTVQrMDg6MDAg5LiK5Y2IMTI6NDE6MTYsIE1pY2hhZWwgVHJl
dHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPiDlhpnliLA6Cj4gPiA+ID4gPiA+ID5PbiBU
dWUsIDIyIE5vdiAyMDIyIDAwOjAxOjI4ICswODAwLCBTaGVuZ3l1IFF1IHdyb3RlOgo+ID4gPiA+
ID4gPiA+PiBTb21lb25lIGZyb20gcGluZTY0IGRpc2NvcmQgZm91bmQgdGhhdCBSR0EyIGRvZXNu
J3Qgd29yayBwcm9wZXJseSBvbiBvdmVyCj4gPiA+ID4gPiA+ID4+Cj4gPiA+ID4gPiA+ID4+IDRH
QiBtZW1vcnkgUkszNTY4IGRldmljZXMuIEFyZSB5b3Ugc3VyZSBjdXJyZW50IGRyaXZlciB3b3Jr
cyBub3c/Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPkkgYW0gYWJzb2x1dGVseSBzdXJlIHRo
YXQgdGhlIGRyaXZlciB3b3JrcyBvbiBhIDJHQiBST0NLM0EgYm9hcmQuCj4gPiA+ID4gPiA+ID5V
bmZvcnR1bmF0ZWx5LCBJIGRvbid0IGhhdmUgYSBkZXZpY2Ugd2l0aCA0R0Igb3IgbW9yZSBtZW1v
cnkgYW5kIEkgY2Fubm90IHRlc3QKPiA+ID4gPiA+ID4gPnRoZSBkcml2ZXIgd2l0aCBzdWNoIGEg
ZGV2aWNlLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID5BcyB0aGUgZG9jdW1lbnRhdGlvbiBm
b3IgdGhlIFJHQTIgaXMgdGhlIHNhbWUgaW4gdGhlIFRSTSBvZiB0aGUgcmszMjg4IGFuZAo+ID4g
PiA+ID4gPiA+cmszNTY4LCBJIHdvdWxkIGd1ZXNzIHRoYXQgdGhlIGRyaXZlciBkb2Vzbid0IHdv
cmsgb24gYSByazMyODggd2l0aCBtb3JlIHRoYW4KPiA+ID4gPiA+ID4gPjRHQiAoaWYgdGhlcmUg
aXMgc3VjaCBhIHRoaW5nKSBlaXRoZXIgYW5kIHRoZSBkcml2ZXIgbmVlZHMgdG8gYmUgZml4ZWQg
Zm9yCj4gPiA+ID4gPiA+ID5ib3RoIFNvQ3MuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBJbiBhbnkgY2FzZSwgaWYgdGhlcmUncyBzb21lIGtpbmQgb2YgaXNzdWUgaXQgbXVzdCBi
ZSBpbiB0aGUgZHJpdmVyLAo+ID4gPiA+ID4gYW5kIG5vdCBpbiB0aGUgZGV2aWNlIHRyZWUgYmlu
ZGluZyAoaS5lLiB0aGlzIHBhdGNoc2V0KS4KPiA+ID4gPiAKPiA+ID4gPiBBbiB1bmZvcnR1bmF0
ZSBudW1iZXIgb2YgUm9ja2NoaXAgZHJpdmVycyBicmVhayBvbiByazM1NnggYm9hcmRzIHdpdGgK
PiA+ID4gPiBtb3JlIHRoYW4gNEdCIG9mIHJhbS4gSSd2ZSBmb3VuZCByZXF1ZXN0aW5nIG1lbW9y
eSBhbGxvY2F0aW9ucyB3aXRoCj4gPiA+ID4gdGhlIEdGUF9ETUEgZmxhZyBzb2x2ZXMgdGhlIHBy
b2JsZW0sIGFzIHRoZSBrZXJuZWwgb25seSBhbGxvY2F0ZXMKPiA+ID4gPiAzMmJpdCBhZGRyZXNz
ZXMgZm9yIERNQSBvbiByazM1NnguIFRoaXMgaXMgc2ltaWxhciB0byB0aGUgYnVnIHdpdGggdGhl
Cj4gPiA+ID4gSVRTIE1TSSBhbGxvY2F0aW9ucy4KPiA+ID4gCj4gPiA+IHRoZSBwcm9ibGVtIGlu
IHRoaXMgY2FzZSBhdCBsZWFzdCBwYXJ0bHkgc2VlbXMgdG8gYmUgZG93biB0byB0aGUgZHJpdmVy
Cj4gPiA+IGFzc3VtaW5nIDMyIGJpdCBhZGRyZXNzZXMsIHNlZSBlLmcuIFsxXSAoaWYgSSB1bmRl
cnN0YW5kIHRoZSBjb2RlCj4gPiA+IGNvcnJlY3RseSkgYW5kIFsyXS4gV2hlbiBJIGFza2VkIGlu
IHRoZSAjYXJtbGludXggSVJDIG9uIExpYmVyYS5jaGF0Cj4gPiA+IGFib3V0IHRoaXMsIFJvYmlu
IE11cnBoeSByZW1hcmtlZDoKPiA+ID4gCj4gPiA+ICAgPHJvYm11cjAxPiB5ZWVzaCwgdGhlIHZp
cnRfdG9fcGh5cy9kbWFfc3luYyBhYnVzZSBpcyBldmVuIHdvcnNlCj4gPiA+ICAgLSBpbiB0aGF0
IHBhcnRpY3VsYXIgaW5zdGFuY2UgSSdkIGJlIGluY2xpbmVkIHRvIHJlcGxhY2UKPiA+ID4gICB7
c3JjLGRzdH1fbW11X3BhZ2VzIHdpdGggcHJvcGVyIGNvaGVyZW50IERNQSBidWZmZXJzCj4gPiA+
IAo+ID4gPiBTbyB0aGUgZHJpdmVyIGluIGdlbmVyYWwgbmVlZHMgc29tZSBjbGVhbnVwLCB3aGlj
aCBjb250cmlidXRlcyB0byB0aGUKPiA+ID4gcHJvYmxlbS4KPiA+IAo+ID4gQXMgZmFyIGFzIEkg
dW5kZXJzdGFuZCB0aGUgNEdCIGFyZSBhIGhhcmR3YXJlIGxpbWl0YXRpb24uCj4gPiAKPiA+IEFj
Y29yZGluZyB0byB0aGUgcmszNTY4IFRSTSwgdGhlIFJHQTJfTU1VX1NSQ19CQVNFIGhhcyAyOCBi
aXRzIGZvciB0aGUgdXBwZXIKPiA+IDI4IGJpdHMgb2YgdGhlIGFkZHJlc3Mgb2YgdGhlIE1NVSBU
TEIuIFRodXMgdGhlIE1NVSBUTEIgbXVzdCBiZSBsb2NhdGVkIHdpdGhpbgo+ID4gNEdCIG1lbW9y
eS4KPiA+IAo+ID4gQW5kIHdpdGhpbiB0aGUgTU1VIFRMQiwgdGhlIGFkZHJlc3NlcyBhcmUgMzIg
Yml0IGFzIHdlbGwgKHVubGVzcyBJIGFtIG1pc3NpbmcKPiA+IHNvbWV0aGluZyBpbXBvcnRhbnQp
LiBVbmZvcnR1bmF0ZWx5LCBJIGNvdWxkbid0IGZpbmQgYW55IGRvY3VtZW50YXRpb24gZm9yIHRo
ZQo+ID4gVExCLiBUaGUgZG93bnN0cmVhbSBkcml2ZXIgd3JpdGVzIG9ubHkgMzIgYml0IGFkZHJl
c3NlcyB0byB0aGUgVExCIGFzIHdlbGwuCj4gPiBUaHVzLCBJIGFzc3VtZSB0aGF0IGFsbCB2aWRl
byBidWZmZXJzIG11c3QgYmUgbG9jYXRlZCB3aXRoaW4gNEdCIG1lbW9yeSwgdG9vLgo+ID4gCj4g
PiBXaGlsZSBJIGFncmVlIHRoYXQgdGhlIGRyaXZlciBuZWVkcyBzb21lIGNsZWFudXAgYW5kIG1h
eSB1c2UgY29ycmVjdCB0eXBlcyBmb3IKPiA+IGhhbmRsaW5nIHRoZSBiaXQgc2l6ZSBsaW1pdGF0
aW9uLCBJIHRoaW5rIHRoaXMgaXNuJ3Qgc29tZSBkcml2ZXIgbGltaXRhdGlvbi4KPiA+IE1heWJl
IHRoZSBkcml2ZXIgc2hvdWxkIHNldCB0aGUgZG1hIG1hc2sgdG8gMzIgYml0cyBhbmQgc2hvdWxk
IGJlIGV4cGxpY2l0bHkKPiA+IGF3YXJlIG9mIHRoZSAzMiBiaXQgbGltaXQuCj4gPiAKPiA+ID4g
Cj4gPiA+IEJ1dCBhcyB3YXMgc2FpZCwgdGhpcyBpc24ndCBhIHByb2JsZW0gd2l0aCB0aGUgZGV2
aWNlIHRyZWUsIHNvIGl0IHNob3VsZAo+ID4gPiBzdGlsbCBtYWtlIGl0IGluLiBJdCBqdXN0IG1l
YW5zIHRoYXQgdGhlIGRyaXZlciBpcyBicm9rZW4gb24gOEdCIFJLMzU2eC4KPiAKPiBOaWNvbGFz
OiBJcyB0aGlzIHlvdXIgQWNrZWQtQnk/Cj4gCj4gV2hvIHdvdWxkIHBpY2sgdXAgdGhlIHBhdGNo
PyBIZWlrbz8KPiAKPiBNaWNoYWVsCj4gCgpTdXJlLAoKQWNrZWQtYnk6IE5pY29sYXMgRnJhdHRh
cm9saSA8ZnJhdHRhcm9saS5uaWNvbGFzQGdtYWlsLmNvbT4KClRob3VnaCBJJ20gbm90IHN1cmUg
aG93IG11Y2ggd2VpZ2h0IG15IEFja2VkLWJ5IGNhcnJpZXMgaGVyZS4KCkZvciBhcHBseWluZyB0
aGUgcGF0Y2gsIHllcyB0aGF0IHdvdWxkIGJlIGRvbmUgYnkgSGVpa28uCgpDaGVlcnMsCk5pY29s
YXMgRnJhdHRhcm9saQoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
