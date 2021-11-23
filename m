Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B92FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Nov 2021 19:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6iFh65aqvTJs7tqJ6FqedoXewqAKk4zp5JjvKlHV4M=; b=Uhg1Q0yS1i0War
	6XdoR1Nfd0xhc4p2dDRhAbUz0pC6fzEGxfbk/eBZ9l33yt4Eov0eNKdKtbGjweB1uIZk4TVqSNyHB
	V88xq3bZofLTBu14giCYo3TNNroYilV95qmMk8HxYaSYvE1lNmWTHwiPhZ7rhh1zpZu5s3zMS4F7W
	v4HtcE2RwoQphk7gTqf2pPweIRyZSF8Vm+k4FcF9zwhSJwEqxUzs7bTx8fAdvVHxaTy2glPZ0WG7O
	IdVZAwrVHxvarxVlFcHPI4VCjCMHkxX52ihejxLFGDO6HWcW19pJP/rBfudJD/zeYk2IaQFB3J89z
	tsJO5VgaGEq5rCMwY29g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpbdL-003L1E-2C; Tue, 23 Nov 2021 19:39:15 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpbdF-003Kxl-NK
 for linux-rockchip@lists.infradead.org; Tue, 23 Nov 2021 19:39:11 +0000
Received: by mail-qk1-x736.google.com with SMTP id m186so296528qkb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 23 Nov 2021 11:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=Om+g4Uz2JjyBuvHdfGl4XTjXS4Di5g1zmNyuqruDMDc=;
 b=fpKETfU+H9nCsr/emEcye4fztYexowbT6ApwFyHjIBI50Q6+FuVwVrL4XuF1PhJGwE
 Xrln16g6s63oPEXKPak7a9q6zbN4t80xBz/oOn6Yl9FmsZUjsHkzILhvp1g+KBfm65q4
 nJLz2KOy1DpQARp+xz/D1/NxOm/XtDqKpqukSSbtwgT/QNMw7pf6tqCT2Yeo/HTVr3u8
 5gwGkC4iNnGqU9qw3Jz9NDq+OSKwYXJQr8EvJ7sggfUF+83LK/gG57hQMKG3pkOZT9qv
 +FRlPt7Q4CSIsQOALUvDH2ZQYsSE6Er3V7swlS2mqYBXGWliur5j07f0w9PpPQtcPPyV
 ZIfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=Om+g4Uz2JjyBuvHdfGl4XTjXS4Di5g1zmNyuqruDMDc=;
 b=fuR5Kae6+fdGJQfGwbScVEnzoxfT3AnVSoyM/iEJLWz/tY+p8P8npYi/l1Ai5g0B6f
 kEHeTqjDENcLTz6JeTuwYuGOLnTkLcLW78/cVYQ2xV8fg5rkzdfe7uPcTNKP9xJtkVNU
 7VgcZwnG2EMomoTgMZVtPV5M+LqYDRh+jCIrNdZTzzS58EvFEbles+BGrlyGTPMahxsF
 n85A0qug5oWRwwTNy2apE7v0UitNhvguaqiBrkGxEvZ3tvR+B+f0VBA5fjpW6FCcy+Ju
 DYcsgkCZfMVX89bogpy+bFuQNAzZzJ28r5fuRlv56HP+riFekJnHtyZWGaemFRF9ion5
 XteQ==
X-Gm-Message-State: AOAM531W/7lfbF4ZIXEeThK+PwNrZ/iPGBEayeoaRSf/s3u7DPBEmAcl
 pFMWMDoWC2cDjDIpKkyW3hm84A==
X-Google-Smtp-Source: ABdhPJx1LXmah08Wco9CfLO9RABE+JD1pVOug1JHcDqvoXVWgrZxQ1pJzQ9DMaQNTN5GEAZhiIiitw==
X-Received: by 2002:a37:a081:: with SMTP id j123mr7167214qke.503.1637696348305; 
 Tue, 23 Nov 2021 11:39:08 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id y20sm6772061qkj.24.2021.11.23.11.39.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 11:39:07 -0800 (PST)
Message-ID: <85e9830ff0c2ed5eb77ce52ec7fde82a08368a2a.camel@ndufresne.ca>
Subject: Re: [PATCH] media: hantro: Hook up RK3399 JPEG encoder output
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Date: Tue, 23 Nov 2021 14:39:06 -0500
In-Reply-To: <CAGXv+5Gf-gsB7JXnLiZF_R=0RdxXS7CDZaFftyZ+aESXLXy1Ew@mail.gmail.com>
References: <20211119074654.470729-1-wenst@chromium.org>
 <5d23258a954eb0076cacf89d6c88b5e6ef13695f.camel@ndufresne.ca>
 <CAGXv+5Gf-gsB7JXnLiZF_R=0RdxXS7CDZaFftyZ+aESXLXy1Ew@mail.gmail.com>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_113909_803659_041E3059 
X-CRM114-Status: GOOD (  26.64  )
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

TGUgbHVuZGkgMjIgbm92ZW1icmUgMjAyMSDDoCAxMTo1NyArMDgwMCwgQ2hlbi1ZdSBUc2FpIGEg
w6ljcml0wqA6Cj4gT24gU2F0LCBOb3YgMjAsIDIwMjEgYXQgMTI6MDAgQU0gTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+ID4gCj4gPiBMZSB2ZW5kcmVkaSAx
OSBub3ZlbWJyZSAyMDIxIMOgIDE1OjQ2ICswODAwLCBDaGVuLVl1IFRzYWkgYSDDqWNyaXQgOgo+
ID4gPiBUaGUgSlBFRyBlbmNvZGVyIGZvdW5kIGluIHRoZSBIYW50cm8gSDEgZW5jb2RlciBibG9j
ayBvbmx5IHByb2R1Y2VzIGEKPiA+ID4gcmF3IGVudHJvcHktZW5jb2RlZCBzY2FuLiBUaGUgZHJp
dmVyIGlzIHJlc3BvbnNpYmxlIGZvciBidWlsZGluZyBhIEpQRUcKPiA+ID4gY29tcGxpYW50IGJp
dHN0cmVhbSBhbmQgcGxhY2luZyB0aGUgZW50cm9weS1lbmNvZGVkIHNjYW4gaW4gaXQuIFJpZ2h0
Cj4gPiA+IG5vdyB0aGUgZHJpdmVyIHVzZXMgYSBib3VuY2UgYnVmZmVyIGZvciB0aGUgaGFyZHdh
cmUgdG8gb3V0cHV0IHRoZSByYXcKPiA+ID4gc2NhbiB0by4KPiA+ID4gCj4gPiA+IEluIGNvbW1p
dCBlNzY1ZGJhMTFlYzIgKCJoYW50cm86IE1vdmUgaGFudHJvX2VuY19idWZfZmluaXNoIHRvIEpQ
RUcKPiA+ID4gY29kZWNfb3BzLmRvbmUiKSwgdGhlIGNvZGUgdGhhdCBjb3BpZXMgdGhlIHJhdyBz
Y2FuIGZyb20gdGhlIGJvdW5jZQo+ID4gPiBidWZmZXIgdG8gdGhlIGNhcHR1cmUgYnVmZmVyIHdh
cyBtb3ZlZCwgYnV0IHdhcyBvbmx5IGhvb2tlZCB1cCBmb3IgdGhlCj4gPiA+IEhhbnRybyBIMSAo
dGhlbiBSSzMyODgpIHZhcmlhbnQuIFRoZSBSSzMzOTkgdmFyaWFudCB3YXMgYnJva2VuLAo+ID4g
PiBwcm9kdWNpbmcgYSBKUEVHIGJpdHN0cmVhbSB3aXRob3V0IHRoZSBzY2FuLCBhbmQgdGhlIGNh
cHR1cmUgYnVmZmVyJ3MKPiA+ID4gLmJ5dGVzdXNlZCBmaWVsZCB1bnNldC4KPiA+ID4gCj4gPiA+
IEZpeCB0aGlzIGJ5IGR1cGxpY2F0aW5nIHRoZSBjb2RlIHRoYXQgaXMgZXhlY3V0ZWQgd2hlbiB0
aGUgSlBFRyBlbmNvZGVyCj4gPiA+IGZpbmlzaGVzIGVuY29kaW5nIGEgZnJhbWUuIEFzIHRoZSBl
bmNvZGVkIGxlbmd0aCBpcyByZWFkIGJhY2sgZnJvbQo+ID4gPiBoYXJkd2FyZSwgYW5kIHRoZSB2
YXJpYW50cyBoYXZpbmcgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dHMsIHRoZQo+ID4gPiBjb2Rl
IGlzIGR1cGxpY2F0ZWQgcmF0aGVyIHRoYW4gc2hhcmVkLgo+ID4gPiAKPiA+ID4gRml4ZXM6IGU3
NjVkYmExMWVjMiAoImhhbnRybzogTW92ZSBoYW50cm9fZW5jX2J1Zl9maW5pc2ggdG8gSlBFRyBj
b2RlY19vcHMuZG9uZSIpCj4gPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RA
Y2hyb21pdW0ub3JnPgo+ID4gPiAtLS0KPiA+ID4gVGhpcyB3YXMgZGV2ZWxvcGVkIG9uIHRoZSBk
b3duc3RyZWFtIENocm9tZU9TIDUuMTAga2VybmVsICh3aXRoIGEgaGFjawo+ID4gPiBmb3IgLmRh
dGFfb2Zmc2V0KSBhbmQgdGVzdGVkIHdpdGggQ2hyb21lT1MncyBqcGVnX2VuY29kZV9hY2NlbGVy
YXRvcl91bml0dGVzdAo+ID4gPiBwYXRjaGVkIHRvIGFjY2VwdCBub24tSkZJRiBKUEVHIHN0cmVh
bXMgKGh0dHBzOi8vY3JyZXYuY29tL2MvMzI5MTQ4MCkuCj4gPiA+IAo+ID4gPiBUaGlzIHdhcyB0
aGVuIGZvcndhcmQtcG9ydGVkIHRvIG1haW5saW5lIChuYW1lIGFuZCBmaWxlbmFtZSBjaGFuZ2Vz
KSBhbmQKPiA+ID4gY29tcGlsZSB0ZXN0ZWQgb25seS4KPiA+IAo+ID4gVGVzdGVkIHdpdGggR1N0
cmVhbWVyIG9uIHRvcCBvZiA1LjE2LXJjMSBmcm9tIG1lZGlhX3N0YWdlLmdpdC4gTm90IHBlcmZl
Y3QgYnV0Cj4gPiBhdCBsZWFzdCB0aGUgdGhlIG91dHB1dCBpdCB2YWxpZC4gVGVzdCBjb21tYW5k
IHdhczoKPiA+IAo+ID4gICBnc3QtbGF1bmNoLTEuMCB2aWRlb3Rlc3RzcmMgbnVtLWJ1ZmZlcnM9
MiAhIHY0bDJqcGVnZW5jICEgZmlsZXNpbmsKPiA+IGxvY2F0aW9uPXRlc3QuanBnCj4gPiAKPiA+
IE5vdGljZSB0aGF0IEkgZW5jb2RlIHR3byBmcmFtZXMsIGl0IHNlZW1zIGxpa2UgdGhlIGRyYWlu
aW5nIGZsb3cgaXMgYnJva2VuIGluCj4gPiB0aGlzIGRyaXZlci4gR1N0cmVhbWVyIHdpbGwgcXVl
dWUgdGhlIGZyYW1lIGFuZCBpc3N1ZSBDTURfU1RBUlQgaW1tZWRpYXRlbHksIHRoZQo+ID4gZHJp
dmVyIHdpbGwgc2tpcCB0aGUgZW5jb2RlLCBsZWF2aW5nIG1lIHdpdGggYW4gZW1wdHkgZmlsZS4K
PiAKPiBUaGUgaGFudHJvIGRyaXZlciBkb2Vzbid0IGltcGxlbWVudCBFTkNfQ01ELCB3aGljaCBJ
SVJDIGlzIHVzZWQgZm9yIHRoZQo+IGRyYWluaW5nIGZsb3cuIEkgZ3Vlc3MgdGhhdCdzIHNvbWV0
aGluZyB0byBmaXgsIHNpbmNlIHRoZSBtZW0ybWVtIHN0YXRlZnVsCj4gZW5jb2RlciBzcGVjIHNl
ZW1zIHRvIHJlcXVpcmUgaXQuIE9yIGRvZXMgdGhhdCBzcGVjIG5vdCBhcHBseSB0byB0aGUgSlBF
Rwo+IGVuY29kZXJzPwoKSSdtIHByZXR0eSBzdXJlIGl0cyByZXF1aXJlZC4gQnV0IHRoaXMgaXNu
J3QgYSByZWdyZXNzaW9uIGZyb20gdGhpcyBwYXRjaC4KCj4gCj4gPiBUZXN0ZWQtYnk6IE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiAKPiBUaGFua3Mh
Cj4gCj4gQ2hlbll1CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
