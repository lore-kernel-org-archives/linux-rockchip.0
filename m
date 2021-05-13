Return-Path: <SRS0=l1tV=KI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4CDC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 20:13:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5B0F613CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 May 2021 20:13:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5B0F613CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9v8EL5HXAm8XwkVoemoeXsf5zfhk6eXqdTyRZMHpLmY=; b=pL22md2yXt+A8+jsAiPhyHEsp
	/HMoxV4fO7lAt6WYm9QeE1C7fu9CfmClENUvXqDeRUkAmYAu5d/1o/fk0T+YBPeFyRX+NHNS/47sf
	qhE47ZuOF1kGg0FUGM+RoWoMh/5QzWL3RJgDUvaRiEIoxJX00YjBW4CXf2Z+DE9R4vV5q3VeLqJPP
	W3xktb62tBPZx/+6SjUsXyhZO7SlW70yMXdVIgGm7lL3jF76JwTHkTAK2O9bZ7M41WspPhdDSuk+4
	eeFRs4rAFOtMlvpXKVMB+ZY5u474aHcuQ8I/+YK+Rk9FuzGThBBFaUx9Vt9ArxLKqHjDo+FJDPKLI
	BZDQzw1Ow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhHhM-006Ml7-6y; Thu, 13 May 2021 20:12:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhHg2-006Mf5-Bi
 for linux-rockchip@desiato.infradead.org; Thu, 13 May 2021 20:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Transfer-Encoding
 :Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=w/tzSs3pMNhmQae+nTddF81fyXP89tQ8kavFT4k6oOw=; b=b/+FTQvS2C8taI9absT8RVh6uA
 CShC0e3lKCXYTesBDwckb2EdpUK97uMXvOUJ+MW2K0SCIQIssGUmkyp1oqe1XyeUtePPaSV3EiF2R
 j2DB41LUkR7hdQi3MBs8uAA/JHzTVjfMf4Fr4KxZb7a28GmmJ40OhOPijbJ9maRA8CsNHSrDxUM/4
 4S3qOo1hGM4mR/yY8wKwpTdNcwNXOR/KPzLwgDd3yEX6DnMB8slAquC2sVeN8I4w+BrW67yVvRrcr
 sgTOZEgG8yX7niE5Z0O6rOu4X4sK1TcHvcha83X25z+atzfQ9COFGIBua2ORyoSPgQiHKVUBsCd/O
 XbEWuEHg==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhHfz-00BVBh-6l
 for linux-rockchip@lists.infradead.org; Thu, 13 May 2021 20:11:20 +0000
Received: by mail-wr1-x42a.google.com with SMTP id x5so28012049wrv.13
 for <linux-rockchip@lists.infradead.org>; Thu, 13 May 2021 13:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=w/tzSs3pMNhmQae+nTddF81fyXP89tQ8kavFT4k6oOw=;
 b=GIwGyzP59MWwIr1FkBw+UOSvsPwKQpzftwq0kuw95r6SKAR7s0UtWfKUCYA/RU+Eq3
 izVL+EO/kZ4pv610a4asj1Vfb1jfdrqPL5NNsP0+Vy14W35aoIRleY4dTgRJZb0sSbIg
 slK25fbZNNWrtdP3Wc7bieqWuzC1gGXFgheCqKuYNNIcyaSOC+nf2BqaEOWo+BuQHY2I
 BfwAbqJRwcEPonmZ+FiRsuouoJ3pninGs0mLy6iBXq4VUq7ljrz9+Rf2kggfZ9DYUijb
 6bfwSvK/eczrmOHVedTaVIz8NauJ+PZnR3eShz96+IeVt38PRaRqu+POZ6VYGsnb6Q9y
 vw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=w/tzSs3pMNhmQae+nTddF81fyXP89tQ8kavFT4k6oOw=;
 b=TE5IoMAXr7LqsH5itKoqlM8uN3qDrTG1l7s8KF3Udp+r+i3fI3KgBgY2lSy+oIfr2H
 zt62Udw7+tpiSXXpZzfCWt3fEJJ0NGnCOjoiEU1YZ+fCcP64E/I0ONXA6Tl/KRZLD+bt
 /jyRvtgoZsEvbuTTY+GkjC2CO2ADC/eOaYFq2NXeMUjE15SWedmeI4kYVgi2wvq4Spvb
 VLjWkpmHIdOjeAmJa6e5TbyyKdKfQZ6w9f6U6Tdvt5mnat1/bVN1KqYVA0mMFm8VElet
 Kvu1zupm2OWcCMsXXLmCyIuGMh2PCn7xv+pB8C4TDBmHQtL/s+3yBWGcJAcFxinDklRB
 SoSA==
X-Gm-Message-State: AOAM532diSllM9PSGymCm58RWCDq3J89EPRUSEW3uK0EdR7RxRnwYqix
 ZDFL/KDLWPkWm64Y+1+8qI6PEg==
X-Google-Smtp-Source: ABdhPJwNIcd0EDRfG3jhOFUxpQlxO8GboAJpcG/rEHXU0psLBmv6fJiIiBBxr9hEMER99bKq9zCqOg==
X-Received: by 2002:a5d:4e52:: with SMTP id r18mr52497343wrt.179.1620936676923; 
 Thu, 13 May 2021 13:11:16 -0700 (PDT)
Received: from dell ([91.110.221.215])
 by smtp.gmail.com with ESMTPSA id y12sm3138587wma.47.2021.05.13.13.11.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 May 2021 13:11:16 -0700 (PDT)
Date: Thu, 13 May 2021 21:11:14 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210513201114.GE805368@dell>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210505140854.15929-2-macroalpha82@gmail.com>
 <20210510162329.GD751702@dell>
 <20210513150122.GA8450@wintermute.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210513150122.GA8450@wintermute.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210513_131119_312674_1F89805C 
X-CRM114-Status: GOOD (  37.47  )
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

T24gVGh1LCAxMyBNYXkgMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBPbiBNb24sIE1heSAx
MCwgMjAyMSBhdCAwNToyMzoyOVBNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBXZWQs
IDA1IE1heSAyMDIxLCBDaHJpcyBNb3JnYW4gd3JvdGU6Cj4gPiAKPiA+ID4gRnJvbTogQ2hyaXMg
TW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+ID4gCj4gPiA+IEFkZCByazgxNyBj
b2RlYyBzdXBwb3J0IGNlbGwgdG8gcms4MDggbWZkIGRyaXZlci4KPiA+ID4gCj4gPiA+IFRlc3Rl
ZC1ieTogTWFjaWVqIE1hdHVzemN6eWsgPG1hY2NyYWZ0MTIzbWNAZ21haWwuY29tPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+ID4g
Cj4gPiBOaXQ6IFRoZXNlIHNob3VsZCBiZSBjaHJvbm9sb2dpY2FsLgo+IAo+IEFja25vd2xlZGdl
ZC4gSSB3aWxsIG1ha2Ugc3VyZSB0byBkbyB0aGlzIGlmIGEgdjEwIGlzIG5lY2Vzc2FyeS4KPiAK
PiA+IAo+ID4gPiAtLS0KPiA+ID4gQ2hhbmdlcyBpbiB2OToKPiA+ID4gIC0gQWRkIGNvdmVyIGxl
dHRlci4KPiA+ID4gIC0gUmVtb3ZlIGRvY3VtZW50YXRpb24gZm9yIGludGVycnVwdCBwYXJlbnQg
cGVyIFJvYiBIZXJyaW5nJ3MgcmVxdWVzdC4KPiA+ID4gIC0gUmVtb3ZlIHVudXNlZCBNT0RVTEVf
REVWSUNFX1RBQkxFIHRvIGZpeCBhIGJ1ZyBpZGVudGlmaWVkIGJ5IGtlcm5lbCB0ZXN0Cj4gPiA+
ICAgIHJvYm90Lgo+ID4gPiBDaGFuZ2VzIGluIHY4Ogo+ID4gPiAgLSBBZGRlZCBhZGRpdGlvbmFs
IGRvY3VtZW50YXRpb24gZm9yIG1pc3NpbmcgcHJvcGVydGllcyBvZiAjc291bmQtZGFpLWNlbGxz
LAo+ID4gPiAgICBpbnRlcnJ1cHQtcGFyZW50LCBhbmQgd2FrZXVwLXNvdXJjZSBmb3IgbWZkIGRv
Y3VtZW50YXRpb24uCj4gPiA+ICAtIENvcnJlY3RlZCBvcmRlciBvZiBlbGVtZW50cyBkZXNjcmlw
dGlvbnMgaW4gZGV2aWNlIHRyZWUgZG9jdW1lbnRhdGlvbi4KPiA+ID4gIC0gQ2hhbmdlZCBuYW1l
IG9mICJtaWMtaW4tZGlmZmVyZW50aWFsIiB0byAicm9ja2NoaXAsbWljLWluLWRpZmZlcmVudGlh
bCIuCj4gPiA+ICAtIENoYW5nZWQgbmFtZSBvZiBzb3VuZCBjYXJkIGZyb20gInJvY2tjaGlwLHJr
ODE3LWNvZGVjIiB0byAiQW5hbG9nIi4KPiA+ID4gIC0gUmVtb3ZlZCB1bnVzZWQgcmVzZXRzIGFu
ZCByZXNldC1uYW1lcyBmcm9tIHRoZSBpMnMxXzJjaCBub2RlLgo+ID4gPiBDaGFuZ2VzIGluIHY3
Ogo+ID4gPiAgLSBSZW1vdmVkIGlmZGVmIGFyb3VuZCByZWdpc3RlciBkZWZpbml0aW9ucyBmb3Ig
TUZELgo+ID4gPiAgLSBSZXBsYWNlZCBjb2RlYyBkb2N1bWVudGF0aW9uIHdpdGggdXBkYXRlcyB0
byBNRkQgZG9jdW1lbnRhdGlvbi4KPiA+ID4gIC0gUmVvcmRlcmVkIGVsZW1lbnRzIGluIGV4YW1w
bGUgdG8gY29tcGx5IHdpdGggdXBzdHJlYW0gcnVsZXMuCj4gPiA+ICAtIEFkZGVkIGJpbmRpbmcg
dXBkYXRlIGJhY2sgZm9yIE9kcm9pZCBHbyBBZHZhbmNlIGFzIHJlcXVlc3RlZC4KPiA+ID4gIC0g
U3VibWl0dGluZyBwYXRjaGVzIGZyb20gZ21haWwgbm93Lgo+ID4gPiBDaGFuZ2VzIGluIHY2Ogo+
ID4gPiAgLSBJbmNsdWRlZCBhZGRpdGlvbmFsIHByb2plY3QgbWFpbnRhaW5lcnMgZm9yIGNvcnJl
Y3Qgc3Vic3lzdGVtcy4KPiA+ID4gIC0gUmVtb3ZlZCB1bm5lZWRlZCBjb21wYXRpYmxlIGZyb20g
RFQgZG9jdW1lbnRhdGlvbi4KPiA+ID4gIC0gUmVtb3ZlZCBiaW5kaW5nIHVwZGF0ZSBmb3IgT2Ry
b2lkIEdvIEFkdmFuY2UgKHdpbGwgZG8gaW4gc2VwZXJhdGUgc2VyaWVzKS4KPiA+ID4gQ2hhbmdl
cyBpbiB2NToKPiA+ID4gIC0gTW92ZSByZWdpc3RlciBkZWZpbml0aW9ucyBmcm9tIHJrODE3X2Nv
ZGVjLmggdG8gbWFpbiByazgwOC5oIHJlZ2lzdGVyCj4gPiA+ICAgIGRlZmluaXRpb25zLgo+ID4g
PiAgLSBBZGQgdm9sYXRpbGUgcmVnaXN0ZXIgZm9yIGNvZGVjIGJpdHMuCj4gPiA+ICAtIEFkZCBk
ZWZhdWx0IHZhbHVlcyBmb3IgY29kZWMgYml0cy4KPiA+ID4gIC0gUmVtb3ZlZCBvZl9jb21wYXRp
YmxlIGZyb20gbXRkIGRyaXZlciAobm90IG5lY2Vzc2FyeSkuCj4gPiA+ICAtIFN3aXRjaGVkIHRv
IHVzaW5nIHBhcmVudCByZWdtYXAgaW5zdGVhZCBvZiBwcml2YXRlIHJlZ21hcCBmb3IgY29kZWMu
Cj4gPiA+IENoYW5nZXMgaW4gdjQ6Cj4gPiA+ICAtIENyZWF0ZWQgc2V0X3BsbCgpIGNhbGwuCj4g
PiA+ICAtIENyZWF0ZWQgdXNlciB2aXNpYmxlIGdhaW4gY29udHJvbCBpbiBtaWMuCj4gPiA+ICAt
IENoZWNrIGZvciByZXR1cm4gdmFsdWUgb2YgY2xrX3ByZXBhcmVfZW5hYmxlKCkuCj4gPiA+ICAt
IFJlbW92ZWQgZHVwbGljYXRlIGNsa19wcmVwYXJlX2VuYWJsZSgpLgo+ID4gPiAgLSBTcGxpdCBE
VCBkb2N1bWVudGF0aW9uIHRvIHNlcGFyYXRlIGNvbW1pdC4KPiA+ID4gQ2hhbmdlcyBpbiB2MzoK
PiA+ID4gIC0gVXNlIERBUE0gbWFjcm9zIHRvIHNldCBhdWRpbyBwYXRoLgo+ID4gPiAgLSBVcGRh
dGVkIGRldmljZXRyZWUgYmluZGluZyAoYXMgZXZlcnkgcms4MTcgaGFzIHRoaXMgY29kZWMgY2hp
cCkuCj4gPiA+ICAtIENoYW5nZWQgZG9jdW1lbnRhdGlvbiB0byB5YW1sIGZvcm1hdC4KPiA+ID4g
IC0gU3BsaXQgTUZEIGNoYW5nZXMgdG8gc2VwYXJhdGUgY29tbWl0Lgo+ID4gPiBDaGFuZ2VzIGlu
IHYyOgo+ID4gPiAgLSBGaXhlZCBhdWRpbyBwYXRoIHJlZ2lzdGVycyB0byBzb2x2ZSBzb21lIGJ1
Z3MuCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9tZmQvcms4MDguYyAgICAgICB8IDg1ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgaW5jbHVkZS9saW51eC9tZmQv
cms4MDguaCB8IDgxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMTY2IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21mZC9yazgwOC5jIGIvZHJpdmVycy9tZmQvcms4MDguYwo+ID4gPiBpbmRl
eCBhZDkyM2RkNGUwMDcuLjkyMzEyMDkxODRlMCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9t
ZmQvcms4MDguYwo+ID4gPiArKysgYi9kcml2ZXJzL21mZC9yazgwOC5jCj4gPiA+IEBAIC02NSw2
ICs2NSw3IEBAIHN0YXRpYyBib29sIHJrODE3X2lzX3ZvbGF0aWxlX3JlZyhzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHVuc2lnbmVkIGludCByZWcpCj4gPiA+ICAJc3dpdGNoIChyZWcpIHsKPiA+ID4gIAlj
YXNlIFJLODE3X1NFQ09ORFNfUkVHIC4uLiBSSzgxN19XRUVLU19SRUc6Cj4gPiA+ICAJY2FzZSBS
SzgxN19SVENfU1RBVFVTX1JFRzoKPiA+ID4gKwljYXNlIFJLODE3X0NPREVDX0RUT1BfTFBUX1NS
U1Q6Cj4gPiA+ICAJY2FzZSBSSzgxN19JTlRfU1RTX1JFRzA6Cj4gPiA+ICAJY2FzZSBSSzgxN19J
TlRfU1RTX1JFRzE6Cj4gPiA+ICAJY2FzZSBSSzgxN19JTlRfU1RTX1JFRzI6Cj4gPiA+IEBAIC0x
NjMsNiArMTY0LDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWZkX2NlbGwgcms4MTdzW10gPSB7
Cj4gPiA+ICAJCS5udW1fcmVzb3VyY2VzID0gQVJSQVlfU0laRShyazgxN19ydGNfcmVzb3VyY2Vz
KSwKPiA+ID4gIAkJLnJlc291cmNlcyA9ICZyazgxN19ydGNfcmVzb3VyY2VzWzBdLAo+ID4gPiAg
CX0sCj4gPiA+ICsjaWZkZWYgQ09ORklHX1NORF9TT0NfUks4MTcKPiA+ID4gKwl7Cj4gPiA+ICsJ
CS5uYW1lID0gInJrODE3LWNvZGVjIiwKPiA+ID4gKwl9LAo+ID4gPiArI2VuZGlmCj4gPiAKPiA+
IE5vICNpZmVyeSBwbGVhc2UuCj4gPiAKPiA+IEp1c3QgcmVwbGFjZSBpdCB3aXRoIGEgY29tbWVu
dC4KPiA+IAo+ID4gSWYgbm8gYXNzb2NpYXRlZCBkcml2ZXIgZXhpc3RzLCBpdCBqdXN0IHdvbid0
IG1hdGNoL2JpbmQuCj4gCj4gSSBkaWQgdGhlICJpZiIgaGVyZSBiZWNhdXNlIEkgbm90aWNlZCB0
aGF0IGlmIEkgaGF2ZSBhIHJrODE3IGFuZCBkbyBub3QKPiB1dGlsaXplIHRoZSBjb2RlYyBJIHJl
Y2VpdmUgYSBkbWVzZyB3YXJuaW5nLiBJIHB1dCB0aGUgaWYgaGVyZSB0byBzaWxlbmNlCj4gaXQg
aW4gdGhlIGV2ZW50IHRoYXQgc29tZW9uZSB3YXMgdXNpbmcgdGhpcyBQTUlDIGJ1dCBkaWRuJ3Qg
d2FudCB0byB1c2UKPiB0aGUgYXVkaW8gY29kZWMuIEkgd2lsbCBtYWtlIHRoZSBjaGFuZ2UgaWYg
eW91IHNheSBzbyB0aG91Z2gsIGJ1dCBJIGp1c3QKPiB3YW50IHRvIGNvbmZpcm0gdGhhdCBpdCdz
IGFjY2VwdGFibGUgdG8gaGF2ZSBhIHdhcm5pbmcgZm9yIGFsbCByazgxN3MKPiB0aGF0IGRvIG5v
dCB1c2UgdGhlIGNvZGVjIGFib3V0IGEgbWlzc2luZyBjb2RlYy4gIFRoZSBoYXJkd2FyZSBpcyBh
bHdheXMKPiBwcmVzZW50LCBJIGp1c3QgY2FuJ3Qgc2F5IGZvciBjZXJ0YWluIGl0IHdpbGwgYWx3
YXlzIGJlIHVzZWQuCgpXaGF0IGlzIHRoZSBkbWVzZyB3YXJuaW5nIHlvdSByZWNlaXZlPwoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIg
U2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0Nz
CkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
