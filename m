Return-Path: <SRS0=VuRY=NW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4570C4320E
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 14:33:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 648A361051
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Aug 2021 14:33:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 648A361051
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kynesim.co.uk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pB4aTdg4LH8hVDBDz4dVQwAnyhKZPzH8647mpcxNjaY=; b=a8pTxi6bqot5ix
	iOegXmHNSijhCrDngZSMbGD2mlCk4aZAYmTEYM1TcvCLl2WtZSLlobdsqEQ59EsD4QQuSeg1STsvi
	V/NIhh5/o5KZGDoFpACJnu1yrAG4q3W0RSbC/w8izecqsux7J5SdWO6d0R9oL0HgvVAS9WkcO7Apx
	jkOHrlCK348RrZ29bFygPr+grDaP0tDn50Y4PuxvEnMqbgBOipoAAo3cnSVqInlugZ9WbkM28HQfx
	mb9J8SKuHtn2ksQkYtzLEL+uxvcBUD0Z8fxaALxn17Ds0g407nN3+ssCMO/bGMU4Sb/rVTNvss1Yc
	rMdhz88mh1n9X3gCDeCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mL4pf-002YP2-0Q; Tue, 31 Aug 2021 14:33:47 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mL4pQ-002YMt-CQ
 for linux-rockchip@lists.infradead.org; Tue, 31 Aug 2021 14:33:35 +0000
Received: by mail-wr1-x42d.google.com with SMTP id v10so28090453wrd.4
 for <linux-rockchip@lists.infradead.org>; Tue, 31 Aug 2021 07:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kynesim-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:references:in-reply-to
 :user-agent:mime-version:content-transfer-encoding;
 bh=smPFOktGxjGC+Ka43r7/WQHSP01FF5/7pAB/RUjJpV4=;
 b=AsLarEwC2DIl28aNaxfHmcVDR7gDLzrwBaNfCtVmbTjYTzeuBYYtVHy299w2bZPviv
 ETmWhowsY0U9rXtNQNPN4MKmznVwFEVDZsyytb1jSoRUrrH5aforeiajolKjky2Nzibr
 7geWsndye6eIADa/BAjii6HRRxaVMhT6flG/c4dNOipJem/jjNwFaZE4Ja4PZi0o+Oyb
 e44rtVA6eMzcSBCXdh8RSrhh02I/fN0M07w7kxnTsAjmewoeBhgkJn2cCS69NLt+Y63H
 qj/51daTnKPEeLbhhy+Rkg0uLCJFpYMPb6EPbDLd+CpVYotV13Pt1jyL2fIjBjZ/63OL
 3WIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:references
 :in-reply-to:user-agent:mime-version:content-transfer-encoding;
 bh=smPFOktGxjGC+Ka43r7/WQHSP01FF5/7pAB/RUjJpV4=;
 b=ORDHgQ+5ovMk7A68fsgxIzJl9nxzAh5jgqjRn7BgMyHZfgEn3kz/EDNfN1kgz7O3Me
 ZR43R5CHWNGuosW8Da14o64uQGLmrJGLLcESgv+0z9C3/6qqEHG7hzHlv4CunWKEhnAC
 83ECFhTL+Xu/krGMVjn1/zdjDjvhGO4ZC7vGmRhp+JrIFPR2SE34BTlNHaw3IYER7wJK
 OPemTi48BNL+HT7csJHEGXj03ZBCSOofhTJWGwaxRjsnildRpNqQi0DGBQry44iw2egU
 LGIUrsrdHLd3IIneXFBpAT5C5uCOtF3RSVk4d6uiLOVvBxlgYq/lOmOw4dTHG9El3cxI
 8RIg==
X-Gm-Message-State: AOAM533epXpBy8j03lSSyWOXMnnaxchBhcP946gCpvGMNM9tMbu/+wZn
 j5Ldzhe+9yo/RR1sfF00j7E0Ew==
X-Google-Smtp-Source: ABdhPJyTTR6zGQEBSRbTCv9IzZ2WJeGXy2X5XoQq/beWXTSp/UY3OL+GBF9XPwA6D7i3seGROy3HXw==
X-Received: by 2002:a5d:49cd:: with SMTP id t13mr31334228wrs.175.1630420410752; 
 Tue, 31 Aug 2021 07:33:30 -0700 (PDT)
Received: from CTHALPA.outer.uphall.net
 (cpc1-cmbg20-2-0-cust759.5-4.cable.virginm.net. [86.21.218.248])
 by smtp.gmail.com with ESMTPSA id c9sm16291108wrf.77.2021.08.31.07.33.29
 (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
 Tue, 31 Aug 2021 07:33:30 -0700 (PDT)
From: John Cox <jc@kynesim.co.uk>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl,
 ezequiel@vanguardiasur.com.ar, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: [PATCH 1/2] media: hevc: Remove RPS named flags
Date: Tue, 31 Aug 2021 15:33:30 +0100
Message-ID: <l0fsigdnavn1n1n33a8a2ftfuj81tgv3if@4ax.com>
References: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
 <20210831094900.203283-2-benjamin.gaignard@collabora.com>
 <4g2sigpsttf80t72c7spdqqjvvijnths2d@4ax.com>
 <fdf6417e-09cd-f0a0-a351-fccd64bfc8c7@collabora.com>
In-Reply-To: <fdf6417e-09cd-f0a0-a351-fccd64bfc8c7@collabora.com>
User-Agent: ForteAgent/8.00.32.1272
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210831_073332_521778_13B04B4C 
X-CRM114-Status: GOOD (  25.03  )
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

PkxlIDMxLzA4LzIwMjEgw6AgMTM6MDgsIEpvaG4gQ294IGEgw6ljcml0wqA6Cj4+PiBNYXJraW5n
IGEgcGljdHVyZSBhcyBsb25nLXRlcm0gcmVmZXJlbmNlIGlzIHZhbGlkIGZvciBEUEIgYnV0IG5v
dCBmb3IgUlBTLgo+Pj4gQ2hhbmdlIGZsYWcgbmFtZSB0byBtYXRjaCB3aXRoIGl0IGRlc2NyaXB0
aW9uIGluIEhFVkMgc3BlYyBjaGFwaXRlcgo+Pj4gIjguMy4yIERlY29kaW5nIHByb2Nlc3MgZm9y
IHJlZmVyZW5jZSBwaWN0dXJlIHNldCIuCj4+PiBSZW1vdmUgdGhlIG90aGVyIHVudXNlZCBSUFMg
ZmxhZ3MuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWlu
LmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+IERvY3VtZW50YXRpb24vdXNlcnNw
YWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCB8IDYgKystLS0tCj4+PiBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jICAgICAgICAgfCAy
ICstCj4+PiBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMg
ICAgICAgICAgfCAyICstCj4+PiBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCA0ICstLS0KPj4+IDQgZmlsZXMgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgYi9Eb2N1bWVu
dGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QKPj4+IGlu
ZGV4IDM4NjVhY2I5ZTBmZC4uZWZmMzNjNTExMDkwIDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4+PiArKysg
Yi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5y
c3QKPj4+IEBAIC0zMTM4LDEwICszMTM4LDggQEAgZW51bSB2NGwyX21wZWdfdmlkZW9faGV2Y19z
aXplX29mX2xlbmd0aF9maWVsZCAtCj4+PiAJOmM6dHlwZTpgdGltZXZhbGAgaW4gc3RydWN0IDpj
OnR5cGU6YHY0bDJfYnVmZmVyYCB0byBhIF9fdTY0Lgo+Pj4gICAgICAqIC0gX191OAo+Pj4gICAg
ICAgIC0gYGBycHNgYAo+Pj4gLSAgICAgIC0gVGhlIHJlZmVyZW5jZSBzZXQgZm9yIHRoZSByZWZl
cmVuY2UgZnJhbWUKPj4+IC0gICAgICAgIChWNEwyX0hFVkNfRFBCX0VOVFJZX1JQU19TVF9DVVJS
X0JFRk9SRSwKPj4+IC0gICAgICAgIFY0TDJfSEVWQ19EUEJfRU5UUllfUlBTX1NUX0NVUlJfQUZU
RVIgb3IKPj4+IC0gICAgICAgIFY0TDJfSEVWQ19EUEJfRU5UUllfUlBTX0xUX0NVUlIpCj4+PiAr
ICAgICAgLSBMb25nIHRlcm0gZmxhZyBmb3IgdGhlIHJlZmVyZW5jZSBmcmFtZQo+Pj4gKyAgICAg
ICAgKFY0TDJfSEVWQ19EUEJfRU5UUllfTE9OR19URVJNX1JFRkVSRU5DRSkKPj4+ICAgICAgKiAt
IF9fdTgKPj4+ICAgICAgICAtIGBgZmllbGRfcGljYGAKPj4+ICAgICAgICAtIFdoZXRoZXIgdGhl
IHJlZmVyZW5jZSBpcyBhIGZpZWxkIHBpY3R1cmUgb3IgYSBmcmFtZS4KPj4gSWYgeW91IGFyZSBn
b2luZyB0byByZW1vdmUgYWxsIHRoZSBSUFMgdmFsdWVzIGV4Y2VwdCBmb3IgTG9uZyBUZXJtCj4+
IHdvdWxkbid0IGl0IGJlIGJldHRlciB0byByZW5hbWUgdGhlIGZpZWxkIHRvbywgZWl0aGVyIHRv
ICJmbGFncyIgb3IgYQo+PiBib29sICJpc19sb25nX3Rlcm0iPyAgSWYgd2UgaGF2ZSBhIGZpZWxk
IGNhbGxlZCBSUFMgaXQgcmVhbGx5IHNob3VsZCBiZQo+PiBhYmxlIHRvIGhhdmUgYSB2YWx1ZSBm
b3IgYW55IG9mIHRoZSA1IHZhbGlkIFJlZmVyZW5jZSBQaWN0dXJlIFNldHMgdGhhdAo+PiBhIERQ
QiBlbnRyeSBjYW4gYmVsb25nIHRvLgo+Cj5JIHdpbGwgc2VuZCBhIHYyIGFuZCByZW5hbWUgcnBz
IGludG8gZmxhZ3MuCgpPSy4gSSB3YXMgZ29pbmcgdG8gc2F5IHRoYXQgeW91IHNob3VsZCBtZXJn
ZSB0aGUgImZpZWxkX3BpYyIgZW50cnkgaW50bwphIGZsYWdzIGJpdGZpZWxkLCBidXQgdGhlbiBJ
IHJlbWVtYmVyZWQgdGhhdCBIMjY1IGRvZXNuJ3QgaGF2ZSB0aGUKY29uY2VwdCBvZiBmaWVsZF9w
aWNzIGluIHRoZSB3YXkgdGhhdCBIMjY0IGRvZXMgYW5kIEkgYmVsaWV2ZSB0aGF0IGJvdGgKaXQg
YW5kIHBpY19vcmRlcl9jb3VudFsxXSBhcmUgcmVkdW5kYW50IChpLmUuIGNhbiBuZXZlciBiZSB1
c2VkKS4gQnV0IEkKZ3Vlc3MgdGhhdCBpcyB0aGUgc3ViamVjdCBvZiB5ZXQgYW5vdGhlciBwYXRj
aC4KClJlZ2FyZHMKCkpvaG4gQ294Cgo+PiBBcyBhIHNpZGUgbm90ZSwgaXQgaXMgaW1wb3J0YW50
IHRvIG15IGNvZGUgdGhhdCB0aGUgRFBCIGFycmF5IGNvbnRhaW5zCj4+IGFsbCB0aGUgRFBCIGVu
dHJpZXMgbm90IGp1c3QgdGhlIG9uZXMgdGhhdCBhcmUgaW4gdXNlIGluIHRoaXMgZnJhbWUuICBJ
Cj4+IG5lZWQgdGhlbSBzbyBJIGNhbiB0cmFjayB3aGljaCBmcmFtZXMgaGF2ZSBsZWZ0IHRoZSBE
UEIgc28gSSBjYW4KPj4gcmV1c2UvZnJlZSB0aGUgTVYgdGFibGVzIGFzc29jaWF0ZWQgd2l0aCB0
aGVtICh5ZXMgSSBjb3VsZCBrZWVwIG9uZSBmb3IKPj4gZXZlcnkgZW50cnkgaW4gdGhlIGNhcHR1
cmUgUSBidXQgdGhhdCBpcyBnZW5lcmFsbHkgd2FzdGVmdWwgb24gbWVtb3J5Cj4+IGFuZCB0aGUg
UGkgaXMgb2Z0ZW4gbWVtb3J5IGNvbnN0cmFpbmVkKS4gU28gbWF5YmUgdXBkYXRlIHRoZSBkb2Nu
IG9uIERQQgo+PiB0byBtYWtlIHRoaXMgZXhwbGljaXQgcGxlYXNlPyAoSSBzdXNwZWN0IHRoYXQg
Y3VycmVudCBjb2RlIGRvZXMgdGhpcwo+PiBhbnl3YXkgYXMgaXQgaXMgZ2VuZXJhbGx5IGVhc2ll
ciB0byBkbyB0aGFuIHRvIG5vdC4pCj4KPlRoYXQgc2hvdWxkIGJlIGluIGFub3RoZXIgcGF0Y2gg
Oi0pCj4KPkJlbmphbWluCj4KPj4KPj4gSm9obiBDb3gKPj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jIGIvZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYwo+Pj4gaW5kZXggOWVhODY0
Y2E1NjI1Li5iZTQ2YjNjMjhiMTcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4+PiBAQCAtNTAzLDcgKzUwMyw3IEBA
IHN0YXRpYyBpbnQgc2V0X3JlZihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+Pj4gCQljb21wcmVz
c19sdW1hX2FkZHIgPSBsdW1hX2FkZHIgKyBjb21wcmVzc19sdW1hX29mZnNldDsKPj4+IAkJY29t
cHJlc3NfY2hyb21hX2FkZHIgPSBsdW1hX2FkZHIgKyBjb21wcmVzc19jaHJvbWFfb2Zmc2V0Owo+
Pj4KPj4+IC0JCWlmIChkcGJbaV0ucnBzID09IFY0TDJfSEVWQ19EUEJfRU5UUllfUlBTX0xUX0NV
UlIpCj4+PiArCQlpZiAoZHBiW2ldLnJwcyA9PSBWNEwyX0hFVkNfRFBCX0VOVFJZX0xPTkdfVEVS
TV9SRUZFUkVOQ0UpCj4+PiAJCQlkcGJfbG9uZ3Rlcm1fZSB8PSBCSVQoVjRMMl9IRVZDX0RQQl9F
TlRSSUVTX05VTV9NQVggLSAxIC0gaSk7Cj4+Pgo+Pj4gCQkvKgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+Pj4gaW5kZXggZWYwMzEx
YTE2ZDAxLi42MDg2Y2MzNWU4Y2MgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVk
aWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+Pj4gQEAgLTE2OSw3ICsxNjksNyBAQCBz
dGF0aWMgdm9pZCBjZWRydXNfaDI2NV9yZWZfcGljX2xpc3Rfd3JpdGUoc3RydWN0IGNlZHJ1c19k
ZXYgKmRldiwKPj4+IAkJdW5zaWduZWQgaW50IGluZGV4ID0gbGlzdFtpXTsKPj4+IAkJdTggdmFs
dWUgPSBsaXN0W2ldOwo+Pj4KPj4+IC0JCWlmIChkcGJbaW5kZXhdLnJwcyA9PSBWNEwyX0hFVkNf
RFBCX0VOVFJZX1JQU19MVF9DVVJSKQo+Pj4gKwkJaWYgKGRwYltpbmRleF0ucnBzID09IFY0TDJf
SEVWQ19EUEJfRU5UUllfTE9OR19URVJNX1JFRkVSRU5DRSkKPj4+IAkJCXZhbHVlIHw9IFZFX0RF
Q19IMjY1X1NSQU1fUkVGX1BJQ19MSVNUX0xUX1JFRjsKPj4+Cj4+PiAJCS8qIEVhY2ggU1JBTSB3
b3JkIGdhdGhlcnMgdXAgdG8gNCByZWZlcmVuY2VzLiAqLwo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1
ZGUvbWVkaWEvaGV2Yy1jdHJscy5oIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPj4+IGlu
ZGV4IGVmNjNiYzIwNTc1Ni4uZjU4NzQ0OGVmNDk1IDEwMDY0NAo+Pj4gLS0tIGEvaW5jbHVkZS9t
ZWRpYS9oZXZjLWN0cmxzLmgKPj4+ICsrKyBiL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4+
PiBAQCAtMTI3LDkgKzEyNyw3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19wcHMgewo+Pj4gCV9f
dTY0CWZsYWdzOwo+Pj4gfTsKPj4+Cj4+PiAtI2RlZmluZSBWNEwyX0hFVkNfRFBCX0VOVFJZX1JQ
U19TVF9DVVJSX0JFRk9SRQkweDAxCj4+PiAtI2RlZmluZSBWNEwyX0hFVkNfRFBCX0VOVFJZX1JQ
U19TVF9DVVJSX0FGVEVSCTB4MDIKPj4+IC0jZGVmaW5lIFY0TDJfSEVWQ19EUEJfRU5UUllfUlBT
X0xUX0NVUlIJCTB4MDMKPj4+ICsjZGVmaW5lIFY0TDJfSEVWQ19EUEJfRU5UUllfTE9OR19URVJN
X1JFRkVSRU5DRQkweDAxCj4+Pgo+Pj4gI2RlZmluZSBWNEwyX0hFVkNfRFBCX0VOVFJJRVNfTlVN
X01BWAkJMTYKPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
