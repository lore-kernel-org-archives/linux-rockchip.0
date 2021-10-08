Return-Path: <SRS0=p+QF=O4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31B9CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:48:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6A4660F6F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Oct 2021 15:48:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E6A4660F6F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/17g2A2zaQIP2K+KdBIiGi2PsainYvwkI3U25NEswoI=; b=LglxTrTGkP1yo9
	S77Awo//ZewOt/ejgSN8zzGXjF4GpnXHQwyFfjFwq3MXYO9kpXW4ECJehQz7L0/TND6rULR9V1fv8
	vWy/ZfwF6saRjkHlG91ofkjiNmtDW+9B8MyL1FwtdVJ2LTXC2D/sPOr90ZunpJ7wbK3j+F6MneLgn
	f4n0TIX4CmixuCcBWaH2+kzQRaX+W9VqHMoYztrBALWSBCBeJntgd/dTZ7m4H7R5eq29tTknQYpPJ
	MkddvCYdt5fSws0+zQ/FmZZrSYZafHMppzPBiIIxkY0M6EH0gmwozZhwkQxm1nRalh3jOS0RK4sgF
	BqgcA5C1TgE5db1aEk+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYs76-003Jq3-DB; Fri, 08 Oct 2021 15:48:48 +0000
Received: from mail-qk1-x735.google.com ([2607:f8b0:4864:20::735])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYs73-003JjU-A1
 for linux-rockchip@lists.infradead.org; Fri, 08 Oct 2021 15:48:46 +0000
Received: by mail-qk1-x735.google.com with SMTP id z40so8447501qko.7
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Oct 2021 08:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=l3PEMMPfXxjXjuD/So1WBTTo0/C4bwAxd2b6X1tJZs8=;
 b=hz44myI2e9hT99CcaOMwcPVlnQnJbFO3h/0o8xHijXj70TxjuCcD0tZhUCfCk+yqXz
 XwpMs5vk04TCBD7HIVSnK8kf3Oq8Lmo//xOzsYbLjIV3YvvJwK0a5EYvw7JnNvIsemUF
 yDUx2KPPhAHJ3l79xy2cohXDh3ykEIB4//OacdN6yUQgHVibPtocf3xiesR7r9zVkIpC
 G0DrmWqg+8xfpT8bFTI4MAurT4OTdlvhgjgmEwBmiDJ+Mw3vj7pkV0gHORF2lySeWuzp
 qSQmEAdEjCrR4XwB8MBDrKlKJz1OPqYArGJX4gtPSMnz/lzMutKV583HPAYyaYvlbRi6
 VSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=l3PEMMPfXxjXjuD/So1WBTTo0/C4bwAxd2b6X1tJZs8=;
 b=pLywT1ATAGDSLXCS3FNqZQwEZlDSvbhFH7vuY9KwXiDZrlnXS/S2mUrcxuP8pDYLEv
 W9+MKb3j9M+en248xQqlKZL9FX9r2OiDf+iB6ghdIy6ZOr8Qfbv42n9FG/Xq4tNz/XE0
 aGR+XCFBeYPWldrOWD3S2ZxUG00y70Dd/2v+ZMCmtghNl78CY+1np6Z1uZOxTxZ2RrEe
 YueMV+zMfHF+D6Fc8WJhQkwd6Winr2TQ1KBFHEdQYVSMKDoR9GTJzPTkMIthDKT2eqVI
 GCXWO1rYTF/meEjylXZO3Zw1QN7Wp8hxHMp2k6aIMgsv52n+/ssCbIMCjHzAlHJ8l5oz
 r4jQ==
X-Gm-Message-State: AOAM530X4AQCfkvMNCLBwGH3jjVTv2J7YohQ8xNl1wyl9vRkpVs0M7wN
 hHrMvwiYsqs2mEaHHRMXc+Xwcw==
X-Google-Smtp-Source: ABdhPJzY04tEl4nAarIutljMkJuT3pDnLioval4mb3+ZBoihi3Uh3E7RjIRdP27pTSBVzuYrLOLRfA==
X-Received: by 2002:a05:620a:4548:: with SMTP id
 u8mr3616083qkp.253.1633708123733; 
 Fri, 08 Oct 2021 08:48:43 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id y6sm2312972qkj.26.2021.10.08.08.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Oct 2021 08:48:43 -0700 (PDT)
Message-ID: <44b1a16754d9b44f98da5a02ae1b06bd7adcdcd3.camel@ndufresne.ca>
Subject: Re: [PATCH 1/2] media: rkvdec: Do not override sizeimage for output
 format
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Chen-Yu Tsai <wenst@chromium.org>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>,  stable@vger.kernel.org
Date: Fri, 08 Oct 2021 11:48:42 -0400
In-Reply-To: <20211008100423.739462-2-wenst@chromium.org>
References: <20211008100423.739462-1-wenst@chromium.org>
 <20211008100423.739462-2-wenst@chromium.org>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_084845_366383_498E5F36 
X-CRM114-Status: GOOD (  20.71  )
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

TGUgdmVuZHJlZGkgMDggb2N0b2JyZSAyMDIxIMOgIDE4OjA0ICswODAwLCBDaGVuLVl1IFRzYWkg
YSDDqWNyaXTCoDoKPiBUaGUgcmt2ZGVjIEguMjY0IGRlY29kZXIgY3VycmVudGx5IG92ZXJyaWRl
cyBzaXplaW1hZ2UgZm9yIHRoZSBvdXRwdXQKPiBmb3JtYXQuIFRoaXMgY2F1c2VzIGlzc3VlcyB3
aGVuIHVzZXJzcGFjZSByZXF1aXJlcyBhbmQgcmVxdWVzdHMgYSBsYXJnZXIKPiBidWZmZXIsIGJ1
dCBlbmRzIHVwIHdpdGggb25lIG9mIGluc3VmZmljaWVudCBzaXplLgo+IAo+IEluc3RlYWQsIG9u
bHkgcHJvdmlkZSBhIGRlZmF1bHQgc2l6ZSBpZiBub25lIHdhcyByZXF1ZXN0ZWQuIFRoaXMgZml4
ZXMKPiB0aGUgdmlkZW9fZGVjb2RlX2FjY2VsZXJhdG9yX3Rlc3RzIGZyb20gQ2hyb21pdW0gZmFp
bGluZyBvbiB0aGUgZmlyc3QKPiBmcmFtZSBkdWUgdG8gaW5zdWZmaWNpZW50IGJ1ZmZlciBzcGFj
ZS4gSXQgYWxzbyBhbGlnbnMgdGhlIGJlaGF2aW9yCj4gb2YgdGhlIHJrdmRlYyBkcml2ZXIgd2l0
aCB0aGUgSGFudHJvIGFuZCBDZWRydXMgZHJpdmVycy4KPiAKPiBGaXhlczogY2QzM2M4MzA0NDhi
ICgibWVkaWE6IHJrdmRlYzogQWRkIHRoZSBya3ZkZWMgZHJpdmVyIikKPiBDYzogPHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJv
bWl1bS5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgy
NjQuYyB8IDUgKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMtaDI2NC5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5j
Cj4gaW5kZXggNzZlOTdjYmUyNTEyLi45NTFlMTkyMzFkYTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gQEAgLTEwMTUsOCArMTAxNSw5IEBAIHN0
YXRpYyBpbnQgcmt2ZGVjX2gyNjRfYWRqdXN0X2ZtdChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LAo+
ICAJc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKmZtdCA9ICZmLT5mbXQucGl4X21wOwo+
ICAKPiAgCWZtdC0+bnVtX3BsYW5lcyA9IDE7Cj4gLQlmbXQtPnBsYW5lX2ZtdFswXS5zaXplaW1h
Z2UgPSBmbXQtPndpZHRoICogZm10LT5oZWlnaHQgKgo+IC0JCQkJICAgICAgUktWREVDX0gyNjRf
TUFYX0RFUFRIX0lOX0JZVEVTOwo+ICsJaWYgKCFmbXQtPnBsYW5lX2ZtdFswXS5zaXplaW1hZ2Up
Cj4gKwkJZm10LT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlID0gZm10LT53aWR0aCAqIGZtdC0+aGVp
Z2h0ICoKPiArCQkJCQkgICAgICBSS1ZERUNfSDI2NF9NQVhfREVQVEhfSU5fQllURVM7CgpOb3Rl
IHRoYXQgdGhlIHRlc3QgaXMgbW9yZSBzdHJpY3QgdGhlbiB0aGUgc3BlYywgc2luY2UgdGhpcyBi
ZWhhdmlvdXIgaXMgd2l0aGluCnNwZWMuIEJ1dCBpbiBnZW5lcmFsLCB0aGUgYXBwbGljYXRpb24g
bWF5IGhhdmUgbW9yZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUKaW5jb21pbmcgc3RyZWFtLCB0aGUg
bWF4aW11bSBlbmNvZGVkIGZyYW1lIHNpemUgd291bGQgZXZlbiBiZSBlbmNvZGVkIGluIHRoZQpj
b250YWluZXIgKHdoaWNoIGlzIHBhcnNlZCBpbiB1c2Vyc3BhY2UpLiBTbyBJIGFncmVlIGl0IHdp
bGwgYmUgbW9yZSBmbGV4aWJsZSB0bwphY2NlcHQgdXNlcnNwYWNlIGRlc2lyZWQgc2l6ZS4gSWYg
dGhhdCBzaXplIGlzIHRvbyBzbWFsbCwgdXNlcnNwYWNlIHdpbGwgZmFpbCBhdApmaWxsaW5nIGl0
IGluIHRoZSBmaXJzdCBwbGFjZSwgYW5kIGRlY29kaW5nIHdvbid0IGJlIHBvc3NpYmxlLCB0aGF0
J3MgYWxsLgoKUGVyaGFwcyB3ZSBjb3VsZCBtYWtlIGEgcmVjb21tZW5kYXRpb24gaW4gdGhhdCBz
ZW5zZSBpbiB0aGUgc3BlYyA/CgpSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xh
cy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
