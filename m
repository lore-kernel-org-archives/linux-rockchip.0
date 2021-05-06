Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2724C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 13:11:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1FE82610FA
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 13:11:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1FE82610FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3XHDb9RANA37bsK9qRfOxWCuiP8+qm4vg4H9Mb6AZk=; b=Nnsr3w1xPsr4ZnRPxokRbRX20
	nJJ+LEksb0Dv/rbfAuywf1OFiMrKRPJUay3hAdjIuZ+tiH0HLoSQp/cRH98HvmNJY67EhlfAsghzA
	o5iAphakKmdQldrE15oEijqojYbWAkIDjBvZj8S2IadqTmKYL4Emy4Q0/X4u0VQuixNlEFkDrdypl
	xxsnbQauN+04zH2lDPVo9nw0Ts00OqmpVufF0i6dQ/8mxsGmAA+O1+29pOQy03ALYfIMJnTog/Y3Z
	uS7BeQBBs3Fut4pVTUSEFiNyNpFAq4JFvT5bjjUz27UMdicG4JPQet/mNNo5orR0ltKpBluKL9Pi6
	gRYgMN81g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lednB-004Hgj-27; Thu, 06 May 2021 13:11:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledmy-004Hfo-9N
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 13:11:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:In-Reply-To:References:Message-ID:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=zLVLoCTZSwdGtIWCx1oxuHJ77KyosnHNt8+6TJIcliM=; b=GXIbrRuq2sDkapzrvO99gRXtI3
 PmQ2hJzorYSSgYEkaJOt+4+FStuQXFrpULO0RGNsWxQYgiFfmRtWJtESdj/reiYPLSikwNOZ3+JiK
 tSKdw0YPKy6XQXNGw+WkeDkr6dUJQmCKE6QPhn/lnEBVQEN7osOnCbDzdXZypOWbHcWFawwSOtw44
 utTnR+ChJ57jZOXptRD+04/ER2v/0jMarFhXgdxzL7WAfdP2utxU21YDZyy83cPUBLjJ3iU/5RcKF
 KAFNH+wBWLRAlMgbY3heUmZwtyeNdBvvjw5YYk/R6ZDOfqtWSfjmHgbTy0Qwr9Ff5THkamaH2FHVU
 Zrq9U2Vg==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledmv-00636H-BV
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 13:11:35 +0000
Received: by mail-wr1-x435.google.com with SMTP id m9so5577475wrx.3
 for <linux-rockchip@lists.infradead.org>; Thu, 06 May 2021 06:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=zLVLoCTZSwdGtIWCx1oxuHJ77KyosnHNt8+6TJIcliM=;
 b=mwcIAoYD9bw60tZhtCdcXNldYBx2EearFFTehyAs9iqn222cg8NMecuNxW0fPkCh4f
 5vItp1Rr75DpnXnO7H7tZcnrnWKua0e/wjVZD17WTc37h+vKMH2rICEDZkrzH6aBdRO/
 tI6A70RsA9biUwMn5TLQNlPdPyIobZ/u5GciHqAblW9ly9CIow1Ie9sF8K2iruSkSXTX
 CYij1rlm69oVBMeTn5LB7tKJAVVhwgyffHVaG8wXPLSJCpDbX2H9QGuZEDWHzbF2BsHi
 ywcMrlGFk1CW/fMA2G1cwJYOSJ9nhtPqgn99ih8scAmYp80KM2+biCGzISJb3bEW4zyl
 aqjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=zLVLoCTZSwdGtIWCx1oxuHJ77KyosnHNt8+6TJIcliM=;
 b=SY8Ss4LdfahtHcM7XCcYYdyh5n8rnNKzv/obpn+w8KRmf3/WpcRoXXOwA/gal+0yeR
 tz357a0s7TEIoO025vYm19642/I2Op/i/6obXCbirOFiwhNZDhq6CGPzPtolhFggK7WM
 9BonaQF9xrRYH21+Liwn3xYtUgGvggXaXaUUTJdtZQXAeSYJLKTVKCRjaw0gcVYrYU6A
 04DtTR0fbfy2Bm2K8ePbSdnrlnbT/EI6DagkT+4fECApEI/MbNvdpP+Lacccxnmi3TAs
 tLp6tF6xc+Jp7pVEbs6xHRx7b+rGOWSFXALs1tH4eRS3G0Fj8mZiGAOlQDRu1+1Lfe2h
 l6jw==
X-Gm-Message-State: AOAM533K40xerhV/NlLqgMci9V4lIxZFqYr8xLlmNogrq0vnW4SCHcBx
 gGasif/cfu8ZiRlSW7Y7ItCGvw==
X-Google-Smtp-Source: ABdhPJy08fvoyofymLrgTx2HJxauv5qh8y5Pod7Fm4yzLYyhRzL+8NBXfEaygWMS1PPMEEwnRLiNCA==
X-Received: by 2002:adf:fa50:: with SMTP id y16mr5231928wrr.63.1620306689920; 
 Thu, 06 May 2021 06:11:29 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id q12sm8757823wmj.7.2021.05.06.06.11.28
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Thu, 06 May 2021 06:11:29 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, ezequiel@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, kernel@collabora.com,
 cphealy@gmail.com
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
Date: Thu, 06 May 2021 14:11:28 +0100
Message-ID: <n7q79gl86gvdo00sgsg1r5beittohsu4ta@4ax.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
 <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
In-Reply-To: <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_061133_463028_05815D67 
X-CRM114-Status: GOOD (  25.81  )
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

Pk9uIDA1LzA1LzIwMjEgMTc6MjAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiAKPj4gTGUg
MDUvMDUvMjAyMSDDoCAxNjo1NSwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+PiBPbiAyMC8w
NC8yMDIxIDE0OjEwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+PiBUaGUgSEVWQyBIQU5U
Uk8gZHJpdmVyIG5lZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAgYXQKPj4+
PiB0aGUgYmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4+Pj4gVGhhdCBpcyBhIGhhcmR3
YXJlIHNwZWNpZmljIHJlcXVpcmVtZW50IHNvIGNyZWF0ZSBhIGRlZGljYXRlZCBjb250cm9sCj4+
Pj4gZm9yIHRoaXMgcHVycG9zZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4+IC0tLQo+Pj4+ICAg
Li4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0ICAgIHwgMTkgKysrKysr
KysrKysrKysrKysrKwo+Pj4+ICAgLi4uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRl
eC5yc3QgICAgIHwgIDEgKwo+Pj4+ICAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggICAgICAg
ICAgICAgICAgICAgIHwgMTMgKysrKysrKysrKysrKwo+Pj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAz
MyBpbnNlcnRpb25zKCspCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+Pj4+Cj4+Pj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3Qg
Yi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+
Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmNkOTc1NGI0
ZTAwNQo+Pj4+IC0tLSAvZGV2L251bGwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+Pj4gQEAgLTAsMCArMSwxOSBAQAo+Pj4+
ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+Pj4+ICsKPj4+PiArSGFudHJv
IHZpZGVvIGRlY29kZXIgZHJpdmVyCj4+Pj4gKz09PT09PT09PT09PT09PT09PT09PT09PT09PQo+
Pj4+ICsKPj4+PiArVGhlIEhhbnRybyB2aWRlbyBkZWNvZGVyIGRyaXZlciBpbXBsZW1lbnRzIHRo
ZSBmb2xsb3dpbmcgZHJpdmVyLXNwZWNpZmljIGNvbnRyb2xzOgo+Pj4+ICsKPj4+PiArYGBWNEwy
X0NJRF9IQU5UUk9fSEVWQ19TTElDRV9IRUFERVJfU0tJUCAoaW50ZWdlcilgYAo+Pj4+ICsgICAg
U3BlY2lmaWVzIHRvIEhhbnRybyBIRVZDIHZpZGVvIGRlY29kZXIgZHJpdmVyIHRoZSBudW1iZXIg
b2YgZGF0YSAoaW4gYml0cykgdG8KPj4+PiArICAgIHNraXAgaW4gdGhlIHNsaWNlIHNlZ21lbnQg
aGVhZGVyLgo+Pj4+ICsgICAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBnbyBm
cm9tIHN5bnRheCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4+Pj4gKyAgICB0byBiZWZvcmUg
c3ludGF4IGVsZW1lbnQgInNsaWNlX3RlbXBvcmFsX212cF9lbmFibGVkX2ZsYWciLgo+Pj4+ICsg
ICAgSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+
Pj4gKyAgICAoc2VwYXJhdGVfY29sb3VyX3BsYW5lX2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4+
PiBJJ20gbm90IHZlcnkga2VlbiBvbiB0aGlzLiBXaXRob3V0IHRoaXMgaW5mb3JtYXRpb24gdGhl
IHZpZGVvIGRhdGEgY2Fubm90IGJlCj4+PiBkZWNvZGVkLCBvciB3aWxsIGl0IGp1c3QgYmUgc3Vi
b3B0aW1hbD8KPj4gCj4+IFdpdGhvdXQgdGhhdCBpbmZvcm1hdGlvbiB0aGUgdmlkZW8gY2FuJ3Qg
YmUgZGVjb2RlZC4KPj4gCj4+Pgo+Pj4gVGhlIHByb2JsZW0gaXMgdGhhdCBhIGdlbmVyaWMgZGVj
b2RlciB3b3VsZCBoYXZlIHRvIGtub3cgdGhhdCB0aGUgSFcgaXMgYSBoYW50cm8sCj4+PiBhbmQg
dGhlbiBjYWxsIHRoaXMgY29udHJvbC4gSWYgdGhleSBkb24ndCAoYW5kIGFyZSB0ZXN0aW5nIG9u
IG5vbi1oYW50cm8gSFcpLCB0aGVuCj4+PiBpdCB3b24ndCB3b3JrLCB0aHVzIGRlZmVhdGluZyB0
aGUgcHVycG9zZSBvZiB0aGUgSFcgaW5kZXBlbmRlbnQgZGVjb2RlciBBUEkuCj4+Pgo+Pj4gU2lu
Y2UgaGFudHJvIGlzIHdpZGVseSB1c2VkLCBhbmQgaWYgdGhlcmUgaXMgbm8gb3RoZXIgd2F5IHRv
IGRvIHRoaXMgYmVzaWRlIGV4cGxpdGVseQo+Pj4gc2V0dGluZyB0aGlzIGNvbnRyb2wsIHRoZW4g
cGVyaGFwcyB0aGlzIHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBzdGFuZGFyZCBIRVZDIEFQSS4KPj4+
IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVkIHRoaXMgY2FuIGp1c3Qgc2tpcCBp
dC4KPj4gCj4+IEV2ZW4gaWYgSSBwdXQgdGhpcyBwYXJhbWV0ZXIgaW4gZGVjb2RlX3BhcmFtcyBz
dHJ1Y3R1cmUgdGhhdCB3b3VsZCBtZWFucyB0aGF0IGEgZ2VuZXJpYwo+PiB1c2VybGFuZCBkZWNv
ZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0aGUgY29tcHV0ZSB0aGlzIHZhbHVlIGZvciBoYW50
cm8gSFcgc2luY2UgaXQKPj4gaXNuJ3Qgc29tZXRoaW5nIHRoYXQgY291bGQgYmUgZG9uZSBvbiBr
ZXJuZWwgc2lkZS4KPgo+QnV0IHNpbmNlIGhhbnRybyBpcyB2ZXJ5IGNvbW1vbiwgYW55IHVzZXJs
YW5kIGRlY29kZXIgd2lsbCBuZWVkIHRvIGNhbGN1bGF0ZSB0aGlzIGFueXdheS4KPlNvIHBlcmhh
cHMgaXQgaXMgYmV0dGVyIHRvIGhhdmUgdGhpcyBhcyBwYXJ0IG9mIHRoZSBkZWNvZGVfcGFyYW1z
Pwo+Cj5JJ2QgbGlrZSB0byBrbm93IHdoYXQgb3RoZXJzIHRoaW5rIGFib3V0IHRoaXMuCgpJIGRv
bid0IGtub3cgZXhhY3RseSB3aGF0IEkgdGhpbmsgb24gdGhpcyAtIGl0cyBhbGwgYSBiaXQgb2Yg
YSBtZXNzLiBJCmRvbid0IHRoaW5rIHRoaXMgaXMgZ29pbmcgdG8gYmUgdGhlIGxhc3QgSEVWQyBk
ZWNvZGVyIHRoYXQgbmVlZHMgc29tZQpub24tc3RhbmRhcmQgc2V0dXAgdGhhdCBjYW4ndCBiZSB0
cml2aWFsbHkgZXh0cmFjdGVkIGZyb20gYSBzdGFuZGFyZApzbGljZSBoZWFkZXIgcGFyc2UuIFNv
IGlmIGZ1dHVyZSBkZWNvZGVycyBhcmUgZ29pbmcgdG8gaGF2ZSB0byBnZW5lcmF0ZQpjdXN0b20g
YXR0cmlidXRlcyB0byBjb3BlIHdpdGggdGhlaXIgcXVpcmtzIHRoZW4gSGFudHJvIHByb2JhYmx5
IHNob3VsZAp0b28uIEFuZCBpZiBIYW50cm8gaXMgY29tbW9uIHRoZW4gdGhlIHVzZXJzcGFjZSBw
cm9ncyB3aWxsIGF0IGxlYXN0IGhhdmUKYSBmcmFtZXdvcmsgZm9yIGRlYWxpbmcgd2l0aCB0aGlz
IHNvcnQgb2YgdGhpbmcgc28gd2hlbiB0aGUgbmV4dCBvZGRpdHkKY29tZXMgYWxvbmcuCgpSZWdh
cmRzCgpKb2huIENveAoKPlJlZ2FyZHMsCj4KPglIYW5zCj4KPj4gCj4+IAo+PiBSZWdhcmRzLAo+
PiBCZW5qYW1pbgo+PiAKPj4+Cj4+PiBSZWdhcmRzLAo+Pj4KPj4+IAlIYW5zCj4+Pgo+Pj4+ICsK
Pj4+PiArLi4gbm90ZTo6Cj4+Pj4gKwo+Pj4+ICsgICAgICAgIFRoaXMgY29udHJvbCBpcyBub3Qg
eWV0IHBhcnQgb2YgdGhlIHB1YmxpYyBrZXJuZWwgQVBJIGFuZAo+Pj4+ICsgICAgICAgIGl0IGlz
IGV4cGVjdGVkIHRvIGNoYW5nZS4KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91c2Vy
c3BhY2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4+Pj4gaW5kZXggMWE5MDM4ZjVmOWZhLi4x
MmUzYzUxMmQ3MTggMTAwNjQ0Cj4+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL21lZGlhL2RyaXZlcnMvaW5kZXgucnN0Cj4+Pj4gQEAgLTMzLDYgKzMzLDcgQEAgRm9y
IG1vcmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0aGUgc291cmNlIGRpc3RyaWJ1
dGlvbiBvZiBMaW51eC4KPj4+PiAgIAo+Pj4+ICAgCWNjcwo+Pj4+ICAgCWN4MjM0MXgtdWFwaQo+
Pj4+ICsgICAgICAgIGhhbnRybwo+Pj4+ICAgCWlteC11YXBpCj4+Pj4gICAJbWF4MjE3NQo+Pj4+
ICAgCW1leWUtdWFwaQo+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMu
aCBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+Pj4gaW5kZXggOGUwMTA5ZWVhNDU0Li5i
NzEzZWVlZDE5MTUgMTAwNjQ0Cj4+Pj4gLS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgK
Pj4+PiArKysgYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+Pj4+IEBAIC0yMjQsNCArMjI0
LDE3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19kZWNvZGVfcGFyYW1zIHsKPj4+PiAgIAlfX3U2
NAlmbGFnczsKPj4+PiAgIH07Cj4+Pj4gICAKPj4+PiArLyogIE1QRUctY2xhc3MgY29udHJvbCBJ
RHMgc3BlY2lmaWMgdG8gdGhlIEhhbnRybyBkcml2ZXIgYXMgZGVmaW5lZCBieSBWNEwyICovCj4+
Pj4gKyNkZWZpbmUgVjRMMl9DSURfQ09ERUNfSEFOVFJPX0JBU0UJCQkJKFY0TDJfQ1RSTF9DTEFT
U19DT0RFQyB8IDB4MTIwMCkKPj4+PiArLyoKPj4+PiArICogVjRMMl9DSURfSEFOVFJPX0hFVkNf
U0xJQ0VfSEVBREVSX1NLSVAgLQo+Pj4+ICsgKiB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMp
IHRvIHNraXAgaW4gdGhlCj4+Pj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+Pj4+ICsgKiBJ
ZiBub24tSURSLCB0aGUgYml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQg
InBpY19vdXRwdXRfZmxhZyIKPj4+PiArICogdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGlj
ZV90ZW1wb3JhbF9tdnBfZW5hYmxlZF9mbGFnIi4KPj4+PiArICogSWYgSURSLCB0aGUgc2tpcHBl
ZCBiaXRzIGFyZSBqdXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+Pj4gKyAqIChzZXBhcmF0ZV9jb2xv
dXJfcGxhbmVfZmxhZyBpcyBub3Qgc3VwcG9ydGVkKS4KPj4+PiArICovCj4+Pj4gKyNkZWZpbmUg
VjRMMl9DSURfSEFOVFJPX0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAJKFY0TDJfQ0lEX0NPREVDX0hB
TlRST19CQVNFICsgMCkKPj4+PiArCj4+Pj4gICAjZW5kaWYKPj4+Pgo+Pj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
