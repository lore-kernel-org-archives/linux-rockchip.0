Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19C2DC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 21:24:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CCDB76109E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 21:24:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CCDB76109E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Krx3xi6IGDvv9r5/0YUdPf5hQZjLiFSBrGzQkAmnjTM=; b=IuGHh/C4Co7zT5
	n1VpqtUzxFTzErY0j3f2rg5h8XnyRivetGIK2JHz1QD9dLBn2Qj32PRp7xQIZ2vSdQwyYrwUBZMhP
	FHToVWlbSpHrEcR5K6E8nkUqFQeYoy6gA3jOxYEwkDGlYHijgSnXlSMXSTlKGaCcISuX3xB4jFgFW
	b4cpr54/P+Dew2n/ne7Htum3rlCpOGa2fn2LA/0SR7r1xfDoN7Vd4WPzBmqS8VEmDoK79dHTDKzxP
	lBejlE2iWUdGWFHUO3KS5V5LRk4f8sz6ADbseGeLxp/U3IZ3XwSpDWaa+4Az/Z/bxyfVi2ok7FJ5R
	LSZrkLpD4Jw6IXRRLPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvnt5-008UUp-Fx; Tue, 22 Jun 2021 21:24:51 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvnss-008URk-I3
 for linux-rockchip@lists.infradead.org; Tue, 22 Jun 2021 21:24:40 +0000
Received: by mail-qt1-x830.google.com with SMTP id r20so581441qtp.3
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Jun 2021 14:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=sfd2SRJTsylTEdVXKK1imeQ1mJ8YmpFBATLIhwxJuSA=;
 b=iOuLqjnzRpczw03xMHNbDOpvjiSjpeBLx4b6nNf5F+gbxeNOxdbAz9CQuIATyomTgw
 AzlviNhu+j868LtcVmo2t32CBQgGvmkg0QMTrACNukoVKyxYVgzN35NBE0ZBIU18wVyk
 GAb3GZSXrR+RMr6bscs96/2I4EQyfoKaoRwZg5G+pnugKhzpVRlEoWrov91u/jSscsF9
 dG4XWEGfuxtCxouf9tpzuNZ8/brsSNzmQKnDrmjn6ZLBRDJlVQbpzpj3UP1bt41Ayx31
 9amwx+iqSYX8jVjbbADlWYo2fYSR/wWwCCSzSi/VYDmlNr2fsxspx7RJSTKwMhtJ9iCn
 eR/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=sfd2SRJTsylTEdVXKK1imeQ1mJ8YmpFBATLIhwxJuSA=;
 b=hmaq131uooo1E0rBTeOSWvjN9z5gT/C71Smf6Ox6TB2DTKNTH8zggGizNcEtlhLTed
 KEJO1INvsN9W+2NNDQKVNcVRXjWjmrMhyQpSPAaV7xz7X5OHRColLGmlPVjpIZYwPHtR
 MAxe/VHtpHTxGHE9l7iblXv+jO407IulRrmqWuVUCucmLctrmMJCBYichybM6zga57Hl
 BQzUumaU74SZVrd5RdJj3rHYbWB0u+Ijffl9zfhdX6KTG/EbIslzhBiqcPUCj/V6LvJT
 FR1ZgJEhnNQULij43IklJINBl+P/Io5I7dKOEl699Whk7RpbmgOWFizKhfjn8m4kQPSO
 FjVg==
X-Gm-Message-State: AOAM530ztKggybopE+zcTzni86quJGwefnT6ggEwxui+d0gUQt3bsWZg
 XMMxSLOrKHQfvGv97b97EzrzGQ==
X-Google-Smtp-Source: ABdhPJwnHbeux5j214Xe+/kzO0fRpysuZtsvb1k/KLiUHg9h+yNmMZHE4XLzVRRCCJn/KwoEHQ4xXA==
X-Received: by 2002:aed:306f:: with SMTP id 102mr739209qte.197.1624397076845; 
 Tue, 22 Jun 2021 14:24:36 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id x8sm13587249qkh.130.2021.06.22.14.24.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 14:24:36 -0700 (PDT)
Message-ID: <be4b635675df2111cb7c095013323b3ba1ac246e.camel@ndufresne.ca>
Subject: Re: [PATCH v3 4/8] media: Add P010 video format
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de,  mchehab@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, gregkh@linuxfoundation.org,
 mripard@kernel.org,  paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net,  emil.l.velikov@gmail.com,
 andrzej.p@collabora.com, jc@kynesim.co.uk,  jernej.skrabec@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 22 Jun 2021 17:24:34 -0400
In-Reply-To: <fbf31c292fde2f7dafb1441fc85a1ead34fdf96d.camel@collabora.com>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
 <20210618131526.566762-5-benjamin.gaignard@collabora.com>
 <fbf31c292fde2f7dafb1441fc85a1ead34fdf96d.camel@collabora.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_142438_635831_D10A7F6C 
X-CRM114-Status: GOOD (  17.28  )
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

TGUgdmVuZHJlZGkgMTgganVpbiAyMDIxIMOgIDE2OjM4IC0wMzAwLCBFemVxdWllbCBHYXJjaWEg
YSDDqWNyaXTCoDoKPiBIaSBCZW5qYW1pbiwKPiAKPiBPbiBGcmksIDIwMjEtMDYtMTggYXQgMTU6
MTUgKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gUDAxMCBpcyBhIFlVViBmb3Jt
YXQgd2l0aCAxMC1iaXRzIHBlciBwaXhlbCB3aXRoIGludGVybGVhdmVkIFVWLgo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFi
b3JhLmNvbT4KPiA+IC0tLQo+ID4gdmVyc2lvbiAyOgo+ID4gwqAtIEFkZCBkb2N1bWVudGF0aW9u
IGFib3V0IFAwMTAgcGFkZGluZwo+ID4gwqAtIEZpeCB0aGUgbnVtYmVyIG9mIGJpdHMgcGVyIGNv
bXBvbmVudCAoMTYpCj4gPiAKPiA+IMKgLi4uL21lZGlhL3Y0bC9waXhmbXQteXV2LXBsYW5hci5y
c3TCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDc4ICsrKysrKysrKysrKysrKysrKy0KPiA+IMKgZHJp
dmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jb21tb24uY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDEg
Kwo+ID4gwqBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmPCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgIDEgKwo+ID4gwqBpbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEgKwo+ID4gwqA0IGZpbGVzIGNoYW5nZWQsIDc5
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3BpeGZtdC15dXYtcGxhbmFyLnJzdCBi
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvcGl4Zm10LXl1di1wbGFuYXIu
cnN0Cj4gPiBpbmRleCAwOTBjMDkxYWZmZDIuLmFmNDAwZDM3YzhmZCAxMDA2NDQKPiA+IC0tLSBh
L0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvcGl4Zm10LXl1di1wbGFuYXIu
cnN0Cj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL3BpeGZt
dC15dXYtcGxhbmFyLnJzdAo+ID4gQEAgLTEwMCw4ICsxMDAsMTMgQEAgQWxsIGNvbXBvbmVudHMg
YXJlIHN0b3JlZCB3aXRoIHRoZSBzYW1lIG51bWJlciBvZiBiaXRzIHBlciBjb21wb25lbnQuCj4g
PiDCoMKgwqDCoMKgwqAgLSBDYiwgQ3IKPiA+IMKgwqDCoMKgwqDCoCAtIE5vCj4gPiDCoMKgwqDC
oMKgwqAgLSA2NHgzMiBtYWNyb2Jsb2Nrcwo+ID4gLQo+ID4gLcKgwqDCoMKgwqDCoMKgIEhvcml6
b250YWwgWiBvcmRlcgo+ID4gK8KgwqDCoCAqIC0gVjRMMl9QSVhfRk1UX1AwMTAKPiAKPiBEbyB3
ZSBoYXZlIHN1cHBvcnQgaW4gR1N0cmVhbWVyIChvciBlbHNld2hlcmUpIGZvciB0aGlzPwoKSSBi
ZWxpZXZlIHlvdSB3YW50ZWQgdG8gYXNrIGZvciBwYXRjaGVkIGZyYW1ld29yayB0byBleGVyY2lz
ZSB0aGlzID8gU2luY2UgYm90aApGRk1QRUcgYW5kIEdTVHJlYW1lciBoYXZlIGhhZCB0aGF0IGZv
cm1hdCBmb3IgYWdlcy4gRm9yIEdTdHJlYW1lcjoKCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9nc3RyZWFtZXIvZ3N0LXBsdWdpbnMtYmFzZS8tL2Jsb2IvbWFzdGVyL2dzdC1saWJzL2dz
dC92aWRlby92aWRlby1mb3JtYXQuaCNMMTAyCgpObyBWNEwyIG1hcHBpbmcgdXBzdHJlYW0sIGJ1
dCB0aGlzIGlzIGEgYml0IG5vcm1hbCwgY2FuJ3QgdXBzdHJlYW0gYSBtYXBwaW5nIGZvcgpzb21l
dGhpbmcgdGhhdCBkb2VzIG5vdCBleGlzdCB5ZXQuCgo+IAo+IFRoYW5rcywKPiBFemVxdWllbAo+
IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
