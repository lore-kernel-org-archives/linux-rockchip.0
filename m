Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F40DCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 13:45:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B87A860F11
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 13:45:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B87A860F11
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYMNYlUSu54RtTY3cVEd/RNFQaIfVBadyX2w21RThfg=; b=0Q590tbxnHnnkM
	YJWgJWMw0USJfY+8NZw78BlcNbppPNhs7/H5AvCi3yENl+8JEkzXkj5vppuAWYd9pxyJ1y2junKgS
	PHBf4mlozAhS6JL9CMfdQnnE1+L2bLwWkRZPT7my40noQrGJ6DIKKSit1h0vQ9OiCMN9pcl4Ci6l4
	J9WLsbu1SR5MeuD/qyV+p3LSToF1t216/tTx8xcug+x2+UNXZGAlAWJrtu8Ls4hfA76WiStbH96QS
	Jxt9u1X1GRkzs3v05W/8sbKTQB9m93Thp/vij+nPDNGuWenWi+OpJufjoHtJhDV+xr41yWIHZX6Xk
	grSAOR+scSjY2N+c4pNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maeZp-00Gyxp-2J; Wed, 13 Oct 2021 13:45:49 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maeV2-00GxG0-EZ
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 13:40:55 +0000
Received: by mail-qk1-x734.google.com with SMTP id bl14so2194489qkb.4
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Oct 2021 06:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=fOYbDlxyEHO5mkyCfKHOpCUjsLY9l97TCTcV9KNabAI=;
 b=XEMDZnEQl+Zq4wdmUGLLkjtYBSRaidWKvmxJuA15ySkjsui1JPqSa1ZWzleiUodnS4
 4kEGOVz0bH/AxD0L3s6/3RIDu4RfcqE2LLDhVlB6gfyzxNSPDLjn8nKwor3ZW4B2trQ4
 bqYp7O2eM/tWm58CSJcTcb+uzkk6SVgv7INyUW35WUFBcOYiq7WIEzKL+hjzXHiCejph
 QHpMYkfvIuDNhSItQqmJ+Vc1XYqrKQgGHazI8WnHTrCsouXpwYyiAYgiM2QEsVF5gHdz
 ZJLvnUp5Oc2Rp0xJOZhR7zuun0gEe51MGZSvFVnEu+r4qI4EqOf+bJ6xWqK0udAIUOEO
 2D7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=fOYbDlxyEHO5mkyCfKHOpCUjsLY9l97TCTcV9KNabAI=;
 b=4YUtwpoxz/VlnoAEHY6yf31PFSTKXzPcuDK3bYMsSaJHvVmMWKd4zbeA2bryBMsipp
 hsVDk5cRQu5JGIQSdRm0GpgfalR8M2zoQF4nxnw2FiZhqyCJQr5h6nq3k9BXn3pr25M/
 wG05ZXfXyuXmNlTCTpcpcnhhPpIFwMKwCezCm9ZRoG4MLvaowIyvgK715Z8FPeCwrYKu
 H7qXG+LZSrDjIg/q+GeF5diKGJODU72FN0Ieq/JZDBQeCMkrO99B55UG0XA6dK2QVZbJ
 Dgqq7h/iZzi6+2Lnj4wx3Tv56bKMgPLU/a1E7akyfvdwRVFNrei53VMKh6EWslDRUZ85
 8/QQ==
X-Gm-Message-State: AOAM531AdFoPEObnZRHmpxVldw6DAB6KViW9xPoUJ6Vsp2OTDQ4o8F9b
 EREq3SEfUmby+C/5SWt/+JZbPA==
X-Google-Smtp-Source: ABdhPJzOTaRXeM7E9FNDf2aud4bzU/5ORGrb5nxt55vCz9M67pEiwG1gJqMRtM1pQtJ5njQL8zGp2w==
X-Received: by 2002:a37:a754:: with SMTP id q81mr18304335qke.303.1634132449920; 
 Wed, 13 Oct 2021 06:40:49 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id p2sm4953006qtq.41.2021.10.13.06.40.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 06:40:49 -0700 (PDT)
Message-ID: <ff0769efee51e15451d48e23860f8b1710593cd7.camel@ndufresne.ca>
Subject: Re: [PATCH 0/2] media: rkvdec: Align decoder behavior with Hantro
 and Cedrus
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Linux Media Mailing List
 <linux-media@vger.kernel.org>,  "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, linux-staging@lists.linux.dev, LKML
 <linux-kernel@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>
Date: Wed, 13 Oct 2021 09:40:48 -0400
In-Reply-To: <CAGXv+5FnFq1mN79sqUp-o6pHirYvp55gurnsUCgqYvEAX2=4oQ@mail.gmail.com>
References: <20211008100423.739462-1-wenst@chromium.org>
 <f108f23dadc846222c63c88af826dae9c5082d83.camel@ndufresne.ca>
 <CAGXv+5FnFq1mN79sqUp-o6pHirYvp55gurnsUCgqYvEAX2=4oQ@mail.gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_064052_519279_25D74A76 
X-CRM114-Status: GOOD (  44.54  )
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

TGUgbWVyY3JlZGkgMTMgb2N0b2JyZSAyMDIxIMOgIDE1OjA1ICswODAwLCBDaGVuLVl1IFRzYWkg
YSDDqWNyaXTCoDoKPiBIaSwKPiAKPiBPbiBGcmksIE9jdCA4LCAyMDIxIGF0IDExOjQyIFBNIE5p
Y29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPiB3cm90ZToKPiA+IAo+ID4gSGkg
Q2hlbi1ZdSwKPiA+IAo+ID4gdGhhbmtzIGZvciBsb29raW5nIGludG8gdGhpcy4KPiA+IAo+ID4g
TGUgdmVuZHJlZGkgMDggb2N0b2JyZSAyMDIxIMOgIDE4OjA0ICswODAwLCBDaGVuLVl1IFRzYWkg
YSDDqWNyaXQgOgo+ID4gPiBIaSBldmVyeW9uZSwKPiA+ID4gCj4gPiA+IFdoaWxlIHdvcmtpbmcg
b24gdGhlIHJrdmRlYyBILjI2NCBkZWNvZGVyIGZvciBDaHJvbWVPUywgSSBub3RpY2VkIHNvbWUK
PiA+ID4gYmVoYXZpb3JhbCBkaWZmZXJlbmNlcyBjb21wYXJlZCB0byBIYW50cm8gYW5kIENlZHJ1
czoKPiA+ID4gCj4gPiA+IDEuIFRoZSBkcml2ZXIgYWx3YXlzIG92ZXJyaWRlcyB0aGUgc2l6ZWlt
YWdlIHNldHRpbmcgZ2l2ZW4gYnkgdXNlcnNwYWNlCj4gPiA+ICAgIGZvciB0aGUgb3V0cHV0IGZv
cm1hdC4gVGhpcyByZXN1bHRzIGluIGluc3VmZmljaWVudCBidWZmZXIgc3BhY2Ugd2hlbgo+ID4g
PiAgICBydW5uaW5nIHRoZSBDaHJvbWVPUyB2aWRlb19kZWNvZGVfYWNjZWxlcmF0b3JfdGVzdHMg
dGVzdCBwcm9ncmFtLAo+ID4gPiAgICBsaWtlbHkgZHVlIHRvIGEgc21hbGwgaW5pdGlhbCByZXNv
bHV0aW9uIGZvbGxvd2VkIGJ5IGR5bmFtaWMKPiA+ID4gICAgcmVzb2x1dGlvbiBjaGFuZ2UuCj4g
PiA+IAo+ID4gPiAyLiBEb2Vzbid0IHN1cHBvcnQgZHluYW1pYyByZXNvbHV0aW9uIGNoYW5nZS4K
PiA+ID4gCj4gPiA+IFRoaXMgc21hbGwgc2VyaWVzIGZpeGVzIGJvdGggYW5kIGFsaWducyB0aGUg
YmVoYXZpb3Igd2l0aCB0aGUgb3RoZXIgdHdvCj4gPiA+IHN0YXRlbGVzcyBkZWNvZGVyIGRyaXZl
cnMuIFRoaXMgd2FzIHRlc3RlZCBvbiB0aGUgZG93bnN0cmVhbSBDaHJvbWVPUwo+ID4gPiA1LjEw
IGtlcm5lbCB3aXRoIENocm9tZU9TLiBBbHNvIGNvbXBpbGVkIHRlc3RlZCBvbiBtYWlubGluZSBi
dXQgSSBkb24ndAo+ID4gPiBoYXZlIGFueSBvdGhlciBSSzMzOTkgZGV2aWNlcyBzZXQgdXAgdG8g
dGVzdCB2aWRlbyBzdHVmZiwgc28gdGVzdGluZwo+ID4gPiB3b3VsZCBiZSB2ZXJ5IG11Y2ggYXBw
cmVjaWF0ZWQuCj4gPiA+IAo+ID4gPiBBbHNvLCBJJ20gbm90IHN1cmUgaWYgdXNlciBhcHBsaWNh
dGlvbnMgYXJlIHJlcXVpcmVkIHRvIGNoZWNrIHRoZSB2YWx1ZQo+ID4gPiBvZiBzaXplaW1hZ2Ug
dXBvbiBTX0ZNVCByZXR1cm4uIElmIHRoZSB2YWx1ZSBpcyBkaWZmZXJlbnQgb3IgdG9vIHNtYWxs
LAo+ID4gPiB3aGF0IGNhbiB0aGUgYXBwbGljYXRpb24gZG8gYmVzaWRlcyBmYWlsPyBBRkFJQ1Qg
aXQgY2FuJ3Qgc3BsaXQgdGhlCj4gPiA+IGRhdGEgb2Ygb25lIGZyYW1lIChvciBzbGljZSkgYmV0
d2VlbiBkaWZmZXJlbnQgYnVmZmVycy4KPiA+IAo+ID4gV2hpbGUgbW9zdCBzb2Z0d2FyZSBvdXQg
dGhlcmUganVzdCBhc3N1bWVzIHRoYXQgZHJpdmVyIHdpbGwgZG8gaXQgcmlnaHQgYW5kCj4gPiBj
cmFzaCB3aGVuIGl0J3Mgbm90IHRoZSBjYXNlLCBhcHBsaWNhdGlvbiB0aGF0IGRvIG1hcCB0aGUg
YnVmZmVyIHRvIENQVSBtdXN0Cj4gPiByZWFkIGJhY2sgdGhlIGZtdCBzdHJ1Y3R1cmUgYXMgdGhl
IGRyaXZlcnMgYXJlIGFsbCBmYWlsLXNhZmUgYW5kIHdpbGwgbW9kaWZ5Cj4gPiB0aGF0IHN0cnVj
dHVyZSB0byBhIHNldCBvZiB2YWxpZCB2YWx1ZSBzIGZvciB0aGUgY29udGV4dC4KPiAKPiBJIGJl
bGlldmUgd2hhdCBpcyBoYXBwZW5pbmcgaW4gQ2hyb21pdW0gaXMgdGhhdCB0aGUgZGVjb2RlciBp
cyBvcGVuZWQgd2l0aAo+IHNvbWUgZGVmYXVsdCBzZXR0aW5ncywgaW5jbHVkaW5nIHRoZSBzbWFs
bGVzdCB2aWFibGUgcmVzb2x1dGlvbiBmb3IgdGhlCj4gb3V0cHV0IHNpZGUsIGFuZCB0aGUgYnVm
ZmVycyBhbGxvY2F0ZWQgYWNjb3JkaW5nbHkuIFdoZW4gZHluYW1pYyByZXNvbHV0aW9uCj4gY2hh
bmdlIGhhcHBlbnMsIHRoZSBkZWNvZGVyIGRvZXMgbm90IGNoZWNrIGlmIHRoZSBjdXJyZW50IGJ1
ZmZlcnMgYXJlCj4gc3VmZmljaWVudGx5IHNpemVkOyBpdCBqdXN0IGFzc3VtZXMgdGhhdCB0aGV5
IGFyZS4gQW5kIHdoZW4gaXQgc3RhcnRzCj4gcHVzaGluZyBkYXRhIGludG8gdGhlIGJ1ZmZlcnMs
IGl0IHJlYWxpemVzIHRoZXkgYXJlIHRvbyBzbWFsbCBhbmQgZmFpbHMuCj4gCj4gVGhlIHNwZWMg
YWxzbyBzYXlzOgo+IAo+ICAgICBDbGllbnRzIGFyZSBhbGxvd2VkIHRvIHNldCB0aGUgc2l6ZWlt
YWdlIGZpZWxkIGZvciB2YXJpYWJsZSBsZW5ndGgKPiAgICAgY29tcHJlc3NlZCBkYXRhIGZsYWdn
ZWQgd2l0aCBWNEwyX0ZNVF9GTEFHX0NPTVBSRVNTRUQgYXQgaW9jdGwKPiAgICAgVklESU9DX0VO
VU1fRk1ULCBidXQgdGhlIGRyaXZlciBtYXkgaWdub3JlIGl0IGFuZCBzZXQgdGhlIHZhbHVlIGl0
c2VsZiwKPiAgICAgb3IgaXQgbWF5IG1vZGlmeSB0aGUgcHJvdmlkZWQgdmFsdWUgYmFzZWQgb24g
YWxpZ25tZW50IHJlcXVpcmVtZW50cyBvcgo+ICAgICBtaW5pbXVtL21heGltdW0gc2l6ZSByZXF1
aXJlbWVudHMuCj4gCj4gVGhlIHNwZWMgb25seSBndWFyYW50ZWVzIHRoYXQgdGhlIGJ1ZmZlcnMg
YXJlIG9mIHN1ZmZpY2llbnQgc2l6ZSBmb3IgdGhlCj4gcmVzb2x1dGlvbiBjb25maWd1cmVkIGF0
IHRoZSB0aW1lIHRoZXkgd2VyZSBhbGxvY2F0ZWQvcmVxdWVzdGVkLgo+IAo+IFNvIEkgdGhpbmsg
bXkgZmlyc3QgcGF0Y2ggaXMgYSB3b3JrYXJvdW5kIGZvciBhIHNvbWV3aGF0IGJyb2tlbiB1c2Vy
c3BhY2UuCj4gQnV0IGl0IHNlZW1zIHRoZSBvdGhlciBzdGF0ZWxlc3MgZHJpdmVycyBhcmUgcHJv
dmlkaW5nIHNpbWlsYXIgYmVoYXZpb3IsCj4gYXMgSSBwcmV2aW91c2x5IG1lbnRpb25lZC4KClRo
YXQncyB3aGF0IEkgbWVhbiwgdGhpcyBpcyBub3QgYSBkcml2ZXIgYnVnIHN0cmljdGx5IHNwZWFr
aW5nIChhc3N1bWluZyBpdCBkb2VzCmd1YXJhbnR5IHRoZSBidWZmZXIgc2l6ZSBpcyBzdWZmaWNp
ZW50KSBidXQgaXQgaXMgd2l0aG91dCB5b3VyIGNoYW5nZQppbmNvbnZlbmllbnQsIGFzIHVzZXJz
cGFjZSBtYXkgYmUgYXdhcmUgb2YgdGhlIGxhcmdlc3QgcmVzb2x1dGlvbiBpdCB3aWxsCmRlY29k
ZSwgYW5kIG1heSB3YW50IHRvIGFsbG9jYXRlIGxhcmdlciBidWZmZXIgdXBmcm9udC4KCkFzIHBl
ciBDaHJvbWl1bSBidWcsIHRoaXMgaXMgYmVpbmcgYWRkcmVzc2VkIGFscmVhZHkuIFRoYW5rcyBm
b3IgdGhpcyBkcml2ZXIKaW1wcm92ZW1lbnQuCgo+IAo+ID4gQXMgZm9yIG9wcG9zaXRlIGRpcmVj
dGlvbiAob3V0cHV0IHZzIGNhcHR1cmUpIGZvcm1hdCBiZWluZyBjaGFuZ2VkLCB0aGlzIHNob3Vs
ZAo+ID4gYmUgZG9jdW1lbnRlZCBpbiB0aGUgc3BlYywgaWYgeW91IGZpbmQgaXQgdG9vIHVuY2xl
YXIgb3IgbWlzc2luZyBmb3Igc2F0ZWxlc3MKPiA+IGNvZGVjIChJIGtub3cgaXQncyB0aGVyZSBm
b3Igc3RhdGVmdWwgYnV0IGNhbid0IHJlbWVtYmVyLCB3b3VsZCBoYXZlIHRvIHJlLXJlYWQsCj4g
PiBmb3Igc3RhdGVsZXNzKSBsZXQgdXMga25vdy4KPiAKPiBBRkFJQ1QgdGhlIGNhcHR1cmUgc2lk
ZSBpcyB3b3JraW5nIE9LIGFuZCB0byBzcGVjLgo+IAo+IAo+IFJlZ2FyZHMKPiBDaGVuWXUKPiAK
PiA+IHJlZ2FyZHMsCj4gPiBOaWNvbGFzCj4gPiAKPiA+ID4gCj4gPiA+IEFuZHJ6ZWosIEkgYmVs
aWV2ZSB0aGUgc2Vjb25kIHBhdGNoIHdvdWxkIGNvbmZsaWN0IHdpdGggeW91ciBWUDkgc2VyaWVz
Lgo+ID4gPiAKPiA+ID4gCj4gPiA+IFJlZ2FyZHMKPiA+ID4gQ2hlbll1Cj4gPiA+IAo+ID4gPiBD
aGVuLVl1IFRzYWkgKDIpOgo+ID4gPiAgIG1lZGlhOiBya3ZkZWM6IERvIG5vdCBvdmVycmlkZSBz
aXplaW1hZ2UgZm9yIG91dHB1dCBmb3JtYXQKPiA+ID4gICBtZWRpYTogcmt2ZGVjOiBTdXBwb3J0
IGR5bmFtaWMgcmVzb2x1dGlvbiBjaGFuZ2VzCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jIHwgIDUgKy0tCj4gPiA+ICBkcml2ZXJzL3N0YWdp
bmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jICAgICAgfCA0MCArKysrKysrKysrKy0tLS0tLS0tLS0t
Cj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygt
KQo+ID4gPiAKPiA+IAo+ID4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
