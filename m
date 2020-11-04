Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047CC388F7
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 11:16:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D8D4F21556
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 11:16:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FhYeEfAk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D8D4F21556
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fivetechno.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e/3+UuO1sAQkefLoPBkjYlKZwIovpBo4SrQp0i0DXSI=; b=FhYeEfAkE0Ym/VVOoOLdrXi5X
	fYHkL3jSsWKiji3F0GCYx+eQ4+gdNBZreZyD1eihvhtWsX39983Oeh4KhYk9Nx6alJxExrMly0Rds
	OZMAy6qWN2OQWHIOvheT0sRTODB7pBXL5OQEp7NBerqTetgog2QH2PX3hZpRSCzB2PbCcCQbL2ODb
	o7sf1SpFuY+EsTjJu6nWhrEz5OMv2aGI1a3xlaX0F92IBi9qc8fLqerfiTd+8rh5r18Fgq/tuYNfK
	beLsJSoUTSMkg8HBNpcxdxZZTKIIUKdzh99V4GtdjGcjLa9CVygoGNqspRbrx8hLo6mgik1RVY5BO
	b0AA/EHJg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaGly-0006WO-LT; Wed, 04 Nov 2020 11:16:14 +0000
Received: from wp126.webpack.hosteurope.de ([80.237.132.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaGls-0006Ut-KM; Wed, 04 Nov 2020 11:16:13 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1kaGlj-0007fJ-NY; Wed, 04 Nov 2020 12:15:59 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 0A4BFwZR010767
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
 Wed, 4 Nov 2020 12:15:58 +0100
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
References: <20201104094950.2096-1-m.reichl@fivetechno.de>
 <4984701.vSXMUKeAfh@diego>
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
Message-ID: <4f4a83f2-3c9b-9549-0acf-057257b4255d@fivetechno.de>
Date: Wed, 4 Nov 2020 12:15:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <4984701.vSXMUKeAfh@diego>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1604488568;
 20de08b6; 
X-HE-SMSGID: 1kaGlj-0007fJ-NY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_061608_836450_0A5F1A67 
X-CRM114-Status: GOOD (  22.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpBbSAwNC4xMS4yMCB1bSAxMTo1MSBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+
IEhpIE1hcmt1cywKPiAKPiBBbSBNaXR0d29jaCwgNC4gTm92ZW1iZXIgMjAyMCwgMTA6NDk6NDUg
Q0VUIHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPj4gUmVjZW50bHkgaW50cm9kdWNlZCBhc3luYyBw
cm9iZSBvbiBtbWMgZGV2aWNlcyBjYW4gc2h1ZmZsZSBibG9jayBJRHMuCj4+IFBpbiB0aGVtIHRv
IGZpeGVkIHZhbHVlcyB0byBlYXNlIGJvb3RpbmcgaW4gZXZpcm9ubWVudHMgd2hlcmUgVVVJRHMK
Pj4gYXJlIG5vdCBwcmFjdGljYWwuIFVzZSBuZXdseSBpbnRyb2R1Y2VkIGFsaWFzZXMgZm9yIG1t
Y2JsayBkZXZpY2VzIGZyb20gWzFdLgo+PiAKPj4gWzFdCj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvcGF0Y2gvMTE3NDc2NjkvCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgUmVp
Y2hsIDxtLnJlaWNobEBmaXZldGVjaG5vLmRlPgo+PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpIHwgNSArKysrKwo+PiAgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0c2kKPj4gaW5kZXggZTdhNDU5ZmE0MzIyLi5iYzk0ODJiNTk0
MjggMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Yy1wYy5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Yy1wYy5kdHNpCj4+IEBAIC0xMyw2ICsxMywxMSBAQCAvIHsKPj4gIAltb2RlbCA9ICJGaXJlZmx5
IFJPQy1SSzMzOTktUEMgQm9hcmQiOwo+PiAgCWNvbXBhdGlibGUgPSAiZmlyZWZseSxyb2Mtcmsz
Mzk5LXBjIiwgInJvY2tjaGlwLHJrMzM5OSI7Cj4+ICAKPj4gKwlhbGlhc2VzIHsKPj4gKwkJbW1j
MCA9ICZzZG1tYzsKPj4gKwkJbW1jMSA9ICZzZGhjaTsKPj4gKwl9Owo+PiArCj4gCj4gQW55IHJl
YXNvbiBmb3IgdGhpcyBvZGVyaW5nPwoKV2l0aG91dCBwaW5uaW5nIHJvYy1wYyBtb3N0bHkgYm9v
dGVkIGFzCm1tY2JsazAgPSBzZG1tYyA9IMK1U0QKbW1jYmxrMSA9IHNkaGNpID0gZU1NQwpzbyBJ
IGtlcHQgdGhpcyBiZWhhdmlvdXIgaW4gYWxpYXNlcwoKcm9jLXBjLW1lenphbmluZSB3aXRoIHBv
cHVsYXRlZCBTRElPLU0yLXNsb3QgYm9vdGVkCm1tYzAgPSBzZGlvID0gKG5vIG1tY2JsaykKbW1j
YmxrMSA9IHNkbW1jID0gwrVTRAptbWNibGsyID0gc2RoY2kgPSBlTU1DCgpXaXRoIG15IGFsaWFz
ZXMgYm90aCBib2FyZHMgYmVoYXZlIHRoZSBzYW1lIG5vdyBhbmQgdGhlIG9wdGlvbmFsIFNESU8g
c2xvdApnb2VzIG91dCBvZiB0aGUgd2F5IHRvIG1tYzIuCgo+IAo+IEkuZS4gc29tZSBwcmV2aW91
cyBpbmNhcm5hdGlvbnMgaGFkIGl0IG9yZGVyZWQgYXMgKGVtbWMsIG1tYywgc2RpbykuCj4gVGhp
cyBpcyBhbHNvIHRydWUgZm9yIHRoZSBDaHJvbWVPUyBvdXQtb2YtdHJlZSB1c2FnZSBvZiB0aG9z
ZSwgdGhlCj4gcmszMzk5IGR0cyBpbiB0aGUgY2hyb21lb3MtNC40IHRyZWUgYWxzbyBvcmRlcnMg
dGhpcyBhcyBzZGhjaSwgc2RtbWMsIHNkaW8uCgpUaGUgYm9hcmRzIGZyb20gbXkgem9vIChleHlu
b3MsIHJrMzM5OSkgbW9zdGx5IGNvbWUgdXAgd2l0aCBTRC1jYXJkIGFzIG1tYzAKYW5kIGVNTUMg
YXMgbW1jMSBpbiBtYWlubGluZSBhcyBvcHBvc2VkIGluIHNvbWUgdmVuZG9yIGtlcm5lbHMuCmJ1
dCBJIGhhdmUgbm8gb2JqZWN0aW9uIHRvIHNldCBpdCB0aGUgb3RoZXIgd2F5IHJvdW5kIGlmIHRo
aXMgaXMgbW9yZSBjb21tb24Kd2l0aCByazMzOTkgYm9hcmRzLgoKPiAKPiBBbmQgSSBndWVzcyBh
IGZ1cnRoZXIgcXVlc3Rpb24gd291bGQgYmUgd2hlbiB3ZSdyZSBkb2luZyBhcmJpdGFyeSBvcmRl
cmluZ3MKPiBhbnl3YXksIHdoeSBpcyB0aGlzIG5vdCBpbiByazMzOTkuZHRzaSA7LSkgPwoKSSBy
ZXN0cmljdGVkIHRoZSBvcmRlcmluZyB0byB0aGUgYm9hcmRzIEkgaGF2ZSwgbm90IHRvIGNvbmZ1
c2Ugb3RoZXIgZXN0YWJsaXNoZWQKdXNlIGNhc2VzLCBidXQgaWYgYSBzdGFuZGFyZCBvcmRlcmlu
ZyBpcyBkZXNpcmVkIHRoaXMgY2FuIGdvIHRvIHJrMzM5OS5kdHNpLgoKPiAKPiAKPiBIZWlrbwo+
IAo+IAoKR3J1w58sCi0tIApNYXJrdXMgUmVpY2hsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
