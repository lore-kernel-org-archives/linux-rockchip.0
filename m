Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 227F9D1A431
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPaCHz74vFCP2wtsRH7AABox96pu8ei4GTSFIskoYCc=; b=5GWtOrfTKlo5xQ
	HT83H5k2H4vF/eZhPdhbotXE6is3FcjhgMhRwF49jmTdEyGJezM0yJtoMeg250hK1M48x5eSmG6H1
	BpHWw2sUItZDnAOwRgtAp6aXSFY1OG52jGnLHD6whZO4Pti5AVGs035hUUefCbZq4a7boKkKQsQdZ
	dPYhCa+s3xBLOG22cNHuO2rwaCJ4TQVyRzp0R1Mpj6yxeB1yyTniyBHYf+jqIsW27C1Hptqcrdqio
	nzxeoiImADHKWnWeRkQKvzb8bsg68BcUX27o9bukgcaLi3/0F88gIPIj5RIlqyfTsfpPhw8avPB3x
	dFwjuOVd4d18W9J/8eWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szVW5-00000000dBq-47uz;
	Sat, 12 Oct 2024 06:22:17 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szVUV-00000000d2J-20Qk
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 06:20:41 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-20c714cd9c8so21738565ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2024 23:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728714038; x=1729318838; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Vvc97tx45kd3GdJFZQqd4tuk2ye7G9u+HV8rsNF8eb8=;
        b=ty3bAX5bWE33ejnyuLGle8dKQH/bcP4KR80P4YxVzYc1GPQIctB5eUDSE8BXz86WQG
         qKiDh+CYVMTHx/uZD7kSya//NFrjJ0gaDo6E/15nilrJUREAzjpDNHJP5vOyuTUzIlJc
         L+hbWTQSawx+m5ypeuAIpf08qB/HInJ5Lte9bzm7eq53rZsbZuWGqe1qEiDPozSAo76v
         fbPzrDfTbO2X37SoQTMEellYImsruAuBn0iabdI73rdM16YvZz98xEI1ZqODKwS0C7ux
         EngjyqhWVur3BkYJsKhHl9EIvE7ckCSiySrYWHUaa7UDX7dn6iLpxVY7U+EG1tr8lECC
         hPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728714038; x=1729318838;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vvc97tx45kd3GdJFZQqd4tuk2ye7G9u+HV8rsNF8eb8=;
        b=l3toVTAs68f35fJ8EVX1tUl6kDLDreAiF3U/giMj+80w/O6CkaEnxrSHWG5uSFVsQZ
         o9PFXmV53Rov6VR9aj9unIuceRdCzKIZBy7xKBQuJTRKBSjUwDU/nzTKbC/X0r/OEWCA
         om/o8pJu4FwRlWSAsKntPcCf/zNUAX8uRP5nFKKIGbi+7Axxa8c2bz0TShGnz04u/bQa
         CXYpmRJs1bM0JLF0yb0b3YqAiP6pLsh+en/ZQD1fOtNe2JWtCJK3KtfvuYWI+u/Exunk
         R18k3jZLfBJzzW5318H6/FOX9q/j2rl6qLzg32zeK3qCB4u1PY0bkZ948IyKSvgt0e8v
         SGJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWg/GTd1b9qXgvODBG8yNKdIihHmBy3L4+e+R9Vd27u4NFrD8IHK0QmSOSGSFusuLALQCCg0oOri30xrx9BLw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyofFa9cvh++O9HznHhH+PfVqWTQKRduCOFAIHYDVw693vAT5c5
	r1FIf4ydnydGGviz7adN3M3EYzBCAvtozDdd/JQvourKKPdVR0J5m1gkCaK86Q==
X-Google-Smtp-Source: AGHT+IE9MibCsUxYlp5xvQC7TUKij7uDrYwOeTEXKfHPdmVzk+hiCpUdru94Jk7kYya9WtbYeISqmQ==
X-Received: by 2002:a17:902:dad2:b0:20c:7be3:2832 with SMTP id d9443c01a7336-20cbb1ae2f7mr24955435ad.31.1728714038373;
        Fri, 11 Oct 2024 23:20:38 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc3cea4sm32451225ad.115.2024.10.11.23.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 23:20:37 -0700 (PDT)
Date: Sat, 12 Oct 2024 11:50:33 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 3/3] PCI: rockchip: Refactor
 rockchip_pcie_disable_clocks() function signature
Message-ID: <20241012062033.2w7jbfiptvdlklzl@thinkpad>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
 <20241012050611.1908-4-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241012050611.1908-4-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_232039_589376_5A63E4E1 
X-CRM114-Status: GOOD (  16.70  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTA6MzY6MDVBTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBSZWZhY3RvciB0aGUgcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2Nsb2NrcyBmdW5jdGlvbiB0
byBhY2NlcHQgYQo+IHN0cnVjdCByb2NrY2hpcF9wY2llIHBvaW50ZXIgaW5zdGVhZCBvZiBhIHZv
aWQgcG9pbnRlci4gVGhpcyBjaGFuZ2UKPiBpbXByb3ZlcyB0eXBlIHNhZmV0eSBhbmQgY29kZSBy
ZWFkYWJpbGl0eSBieSBleHBsaWNpdGx5IHNwZWNpZnlpbmcKPiB0aGUgZXhwZWN0ZWQgZGF0YSB0
eXBlLgo+IAo+IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4
LmFtb29uQGdtYWlsLmNvbT4KPiAtLS0KPiB2NzogTm9uZQo+IHY2OiBGaXggdGhlIHN1YmplY3Qs
IGFkZCB0aGUgbWlzc2luZyAoKSBpbiB0aGUgZnVuY3Rpb24gbmFtZS4KCkRpZCB5b3UgcmVtb3Zl
IGl0IGluIHY3PyBQbGVhc2UgZG9uJ3QgZG8gdGhhdCwgaXQganVzdCBpbmNyZWFzZXMgdGhlIGJ1
cmRlbiBvbgpyZXZpZXdlcnMuCgotIE1hbmkKCj4gdjU6IEZpeCB0aGUgY29tbWl0IG1lc3NhZ2Ug
YW5kIGFkZCByLWIgTWFuaXZhbm5hbi4KPiB2NDogTm9uZQo+IHYzOiBOb25lCj4gdjI6IE5vCj4g
LS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIHwgMyArLS0KPiAg
ZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggfCAyICstCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gaW5kZXggOWExMThlMmI4Y2JkLi5jMzE0NzExMWYx
YTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMK
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+IEBAIC0yNjks
OSArMjY5LDggQEAgaW50IHJvY2tjaGlwX3BjaWVfZW5hYmxlX2Nsb2NrcyhzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXApCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocm9ja2NoaXBfcGNp
ZV9lbmFibGVfY2xvY2tzKTsKPiAgCj4gLXZvaWQgcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2Nsb2Nr
cyh2b2lkICpkYXRhKQo+ICt2b2lkIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9jbG9ja3Moc3RydWN0
IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+ICB7Cj4gLQlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAq
cm9ja2NoaXAgPSBkYXRhOwo+ICAKPiAgCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHJvY2tj
aGlwLT5udW1fY2xrcywgcm9ja2NoaXAtPmNsa3MpOwo+ICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIGIvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9wY2llLXJvY2tjaGlwLmgKPiBpbmRleCAyNzYxNjk5ZjY3MGIuLjdmMGY5MzhlOTE5NSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gQEAgLTM0Nyw3ICszNDcs
NyBAQCBpbnQgcm9ja2NoaXBfcGNpZV9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJv
Y2tjaGlwKTsKPiAgaW50IHJvY2tjaGlwX3BjaWVfZ2V0X3BoeXMoc3RydWN0IHJvY2tjaGlwX3Bj
aWUgKnJvY2tjaGlwKTsKPiAgdm9pZCByb2NrY2hpcF9wY2llX2RlaW5pdF9waHlzKHN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCk7Cj4gIGludCByb2NrY2hpcF9wY2llX2VuYWJsZV9jbG9j
a3Moc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKTsKPiAtdm9pZCByb2NrY2hpcF9wY2ll
X2Rpc2FibGVfY2xvY2tzKHZvaWQgKmRhdGEpOwo+ICt2b2lkIHJvY2tjaGlwX3BjaWVfZGlzYWJs
ZV9jbG9ja3Moc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKTsKPiAgdm9pZCByb2NrY2hp
cF9wY2llX2NmZ19jb25maWd1cmF0aW9uX2FjY2Vzc2VzKAo+ICAJCXN0cnVjdCByb2NrY2hpcF9w
Y2llICpyb2NrY2hpcCwgdTMyIHR5cGUpOwo+ICAKPiAtLSAKPiAyLjQ0LjAKPiAKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
