Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283A6606A33D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 14:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AJlIG01/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=ragnatech.se header.i=@ragnatech.se header.a=rsa-sha256 header.s=fm2 header.b=MWLtuwuu;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=D+5OHO+Z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=H/TpKrvmNtIxkLgDxIzH/m6IT6yZDR8U0w739vzsj9E=; b=AJlIG01/3bACD6s4ftyyceYiSC
	skbLX2ypQv8Uu0F8aQHGhU+YVMKtaj9Cugg7lP7pL/8b9QCJoZcx+IrtYVcCw3hqWqpQA3IcqueBO
	PfGd66q0uwZjUBKm/CN9cefdwuJpAW7WIN620AcJ6ug+ZxhKyxbG8C2bGQHErhpxCIA54soztASu/
	6RIDPZ5Elc7x9LecLnYvwdSw0K5/m+AenJjUw9o1Q+cRzQ+jzmtpeTic3de76nWVi6sAVPuQ5wl5z
	vcgLsSyqbJHKwsTVPl2cbqTsL60m/JCjVaf5f6R58lDnWB3OWXYWRq0iRLpHMuwMFj8SblldTF/bm
	4iyFdZDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xObtR-00000005cPr-3VGV;
	Wed, 04 Nov 2026 14:23:13 +0000
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xObtO-00000005cNA-3Xd8
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 14:23:12 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 9C3237A0199
	for <linux-rockchip@lists.infradead.org>; Wed,  4 Nov 2026 09:23:07 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Wed, 04 Nov 2026 09:23:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1793802185;
	 x=1793888585; bh=wZ3DRmkWaygrCw95oypD39+/CKzDxSTN6BAmdjxj1PI=; b=
	MWLtuwuu0wnyjYpIp54smeZq7WcRSqXglLa8THDdAN9Ds1ri6Igg+IPfAg8lrtwz
	syBtZSJk5c2jI71W+YagrodTBD6u2PzCOYVw3U3bGZT7Jv1UBp0AbI5e5HVSIvO0
	FJaWMCYf2DPVIFqNofJhO/AjsLy9rtDwKKe/GW1RC4wxdzYG6geoobbf/Oe+aaVZ
	H23oTkWWZmRbqp/HWhC0QpezPB3X9EBoIwTekTn4kvvHResFgZe0b9jSCWj7BOUh
	InXDW6GEn3gPRfDq/ZpjsZl927g1CW68XpSCkxAHcnKr4CdrdjaLgzrb06Qu7e5F
	s0K8MFO13/15DzQawNbpFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1793802185; x=
	1793888585; bh=wZ3DRmkWaygrCw95oypD39+/CKzDxSTN6BAmdjxj1PI=; b=D
	+5OHO+Zo7roGHU8xsWDxiv+wOBv7dQQitozCCJW/17gC4G5SE1+TBqiXTk9QgJO0
	tapcjj2a3SB9eI6nDQukrl1kqh6s7K9pArxrHYatfC/NSoHW2yH6c4uMqwQKAJoQ
	/PD9hGU5YNBYbtwVhgYyCo2AiAOz0gsugDeEgrNeHqDzxGP60Jt3TTVTkYUQTLyT
	PrRL7uIX8B3ig6dL7fTsTshvuDJO7VMw3MGcgiD236T0m48t+kIw8cTFOVXsFkda
	1nXYdQ8Q7B2Ot1Kb6dN0dvDBKhOHYa0yQ3rrIXDvJXLOEg6tVQ7zse3eMzhYGyUa
	thjARxKERbx2ljJ+Y3GKQ==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-08;
	repo=github.com/dkim2wg/interop; date=2026-10-28; sw=lmtpprox;
	action=sign d=ragnatech.se a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1793802185; d=ragnatech.se;
	mf=PG5pa2xhcy5zb2Rlcmx1bmRAcmFnbmF0ZWNoLnNlPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm2:rsa-sha256:UdJt726RJ8HVxO1zZNzEUJWNfKeppi+wDG/+LBe/VpotNkA
	n54w8PUXZtDsA1akyp6K5wUlLK9RFttb3vKBc9yxyLIxIUSmW31W+Eqt/TpLru7D
	lmr1RZJcuy2k5B9soJQddXi1ZUYgLNLHYZTAt1h1UJs4KIyIkANIZ2Jg5/Dw11kl
	D/jV7LWx5yYN3CSAlTJkr3KX/04uc81yOSbeKLW6eNeu18BN/HutVEGnFyIJAw6t
	UB1d6KWd0c2A8yoBEBs/lpwsNxLQP7KbW6I3fQCspDObMVSneeXfPiTPv+Rkj4I/
	fVUHZ8t7ePe/OeHAdivZguOofxRfyymM4ywx6Cg==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-08;
	repo=github.com/dkim2wg/interop; date=2026-10-28; sw=lmtpprox;
	action=mi-m=1; hc=13;
	hn=cc,content-disposition,content-transfer-encoding,
	content-type,date,feedback-id,from,in-reply-to,message-id,
	mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:8WiOfuZyMdap+bE48SVdsCssOjsRm1RgtdPkx6M+cZc=:3dKkUVLANeDhIDjo92f1TgMhswlkcL7fJFLihtnLb64=;
X-ME-Sender: <xms:yD_raojYF3IyExQ-LjzAu8nfHElZKaRYXc_38-x5nLQbbD9ILo-vjg>
    <xme:yD_rahfVu8FDSYOdoMrU4E-ZWf_i4AQNWICPNr_snBlI4NYPDiWGCUHjtMxxRIjWm
    omvq0Wp9uk-D2McUuuMo7vfmVWcfghMSo3VTTdCj0XeIaH1qytLJR4>
X-ME-Received: <xmr:yD_rav3UgwI2n1R5uQgrMn8BWX-h1WtTNICkspWZCQb63v4K1pJRoPdedDec5nEfRlEPTklLbHTD8nwRcAZKLL_fbGeJtlQ>
X-ME-Proxy-Cause: dmFkZTEo1+WJsU4C+3nNiXfFO8SI/WuAp2HlmE9Ie61JliHIvX6Ui2NijT+UPECYV7P9wZ
    xk47MtoDmoxkGIougV8QR/uK4i1WE9zO3Nw4ZMD5zce8v+BFodocnhpXB5g0wehRzQid49
    EJr+qfgq38hgeWjHslRVK5RqlghPLSxV6ASMX864XEgLeOwO3NErmY+HjgtqRN1slSDhkS
    cI2Tfet0cQgfDpxvE6LJkjJ/XGLBYUo8DK7GOOKZdr+sK61a/S9pvdi0niS/ELLM7rsX4c
    V/vYP9GQNT4I9qQi73IIJb81AZELdlZw3x2TpB/luLNbNug+TfMu/Kxy2Iz+byXDmU9rUK
    6j6XLOATrryMHg0iU3Nbby5DGUvfQZRJw7NG4i35oAlblzCyfAGv0JSdk8XPKcFQH2zoGm
    jsjNywbiU3dxeXIJD21bJPCozkEANJOXEWi1Ek0coPSpDmz1f7uWe/rzVDmyk+gLxr3oQs
    HjVQikGEU5ny3+8iFMHdxKLssOGpYwRltQ3M54StYYzO2RQu7nE+oCqJsxvfaH34oeUqTY
    NkIfzTPv5Bdjt6jy+W9VbhVtlSOz1sOJGi//s5vTSkKtUkFAyZdGDz6jKdAnH8h+k0xWl4
    eFuK/68kN0PsjEwTavY10UvFgn+FvV5yaNVLQm7Lh3kobJXIkckqKIOaE0Qw
X-ME-Proxy: <xmx:yD_ralrNSpmY6UHe6-d5yYhr4D0nJySoZBKlrqriQAlqMOzl3BXvIw>
    <xmx:yD_ravhV--6M9cOyi2NsUjFOlKKdh26bZaYmNFvo9imb4PPcFnnScQ>
    <xmx:yD_rahnKk5RSII8E9JV0YCmarLnq_AyAywuXB4iotmyEea7T1OCsvg>
    <xmx:yD_raooK3RtjX7GDLuo4BqmBXZSDLgpGZNwPloVr2nEhLSrKPqOlzg>
    <xmx:yT_ramiihEUsoZLwtfFpUQbyWdCIVIEbImImt0rRrugz4sr4dc5mngvf>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Nov 2026 09:23:04 -0500 (EST)
Date: Wed, 4 Nov 2026 15:23:02 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Daniel Scally <dan.scally@ideasonboard.com>
Cc: Jacopo Mondi <jacopo.mondi+renesas@ideasonboard.com>,
	Jai Luthra <jai.luthra+renesas@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Keke Li <keke.li@amlogic.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/7] Introduce v4l2-isp reset buffers
Message-ID: <20261104142302.GK1959885@ragnatech.se>
References: <20261104-v4l2-isp-resume-v1-0-06aeb8cf2940@ideasonboard.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261104-v4l2-isp-resume-v1-0-06aeb8cf2940@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_062311_082717_8C97E6B9 
X-CRM114-Status: GOOD (  36.93  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgRGFuaWVsLAoKT24gMjAyNi0xMS0wNCAxMjoyODoxNSArMDAwMCwgRGFuaWVsIFNjYWxseSB3
cm90ZToKPiBUaGUgVjRMMiBnZW5lcmljIElTUCBwYXJhbWV0ZXJzIGJ1ZmZlcnMgZGVzY3JpYmVk
IGluCj4gRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL21lZGlhL3Y0bDItaXNwLnJzdCBoYXMgYSBw
cm9ibGVtIGluIHRoYXQgaWYKPiBhIGRyaXZlciB1c2luZyB0aGUgcGFyYW1ldGVycyBmb3JtYXQg
aXMgcnVubmluZyBhIHN0cmVhbSBhbmQgdGhlCj4gZGV2aWNlIGlzIHN1c3BlbmRlZCB0byBSQU0g
YW5kIGxhdGVyIHJlc3VtZWQsIHVzZXJzcGFjZSB3aWxsIG5vdCB0ZW5kCj4gdG8gcmVjb25maWd1
cmUgaXQgd2l0aCBfYWxsXyBvZiB0aGUgcG9zc2libGUgcGFyYW1ldGVyIGJsb2Nrcy4gVGhlCj4g
Zm9ybWF0IGFsbG93cyBvbmx5IGEgc3Vic2V0IHRvIGJlIHBvcHVsYXRlZCBpbnRvIHRoZSBidWZm
ZXIgcXVldWVkIHRvCj4gdGhlIGRyaXZlciBhbmQgdGhpcyBpcyB0aGUgY29tbW9uIHByYWN0aWNl
IGluIGxpYmNhbWVyYS4gVGhlIGVmZmVjdAo+IHdpbGwgYmUgdGhhdCBhIHJlc3VtZWQgZGV2aWNl
IHdpbGwgaGF2ZSBsb3N0IGFueSBjb25maWd1cmF0aW9uIHRoYXQKPiB0ZW5kcyB0byBiZSBzZW50
IG9ubHkgYSBzaW5nbGUgdGltZSBhdCB0aGUgc3RhcnQgb2YgYSBzdHJlYW0sIGZvcgo+IGV4YW1w
bGUgbGVucyBzaGFkaW5nIHRhYmxlIHNldHRpbmdzLgo+IAo+IFRoaXMgc2VyaWVzIHBlcmZvcm1z
IHNvbWUgcHJlbGltaW5hcnkgY2xlYW51cCBhbmQgdGhlbiBhZGRzIHRoZSAicmVzZXQKPiBidWZm
ZXIiIGNvbmNlcHQgdG8gdjRsMi1pc3AuIFRoaXMgaXMgYSBtZWNoYW5pc20gdGhyb3VnaCB3aGlj
aCB1c2VyCj4gc3BhY2UgY2FuIGZsYWcgYSBzdHJ1Y3QgdjRsMl9pc3BfYmxvY2tfaGVhZGVyLmZs
YWdzIGFzIG5lZWRpbmcgdG8gYmUKPiByZWFwcGxpZWQgb24gZGV2aWNlIHJlc2V0LCBzdWNoIHRo
YXQgdGhlIHY0bDItaXNwIGZyYW1ld29yayB3aWxsIHN0b3JlCj4gdGhhdCBibG9jayBpbnRvIGEg
YnVmZmVyIGFsbG9jYXRlZCBmb3IgdGhlIHB1cnBvc2Ugd2hlbiBpdCB2YWxpZGF0ZXMKPiB0aGUg
YmxvY2suIAo+IAo+IFRoZSBsYXN0IHBhdGNoIGluIHRoZSBzZXJpZXMgdXBkYXRlcyB0aGUgcmtp
c3AxIGRyaXZlciB0byB1c2UgdGhlCj4gdjRsMi1pc3AgcmVzZXQgYnVmZmVyIHRvIHJlYXBwbHkg
dGhhdCBzYXZlZCBjb25maWd1cmF0aW9uIG9uIHJlc3VtZS4KPiAKPiBBbiBhbHRlcm5hdGl2ZSBh
cHByb2FjaCBtaWdodCBzaW1wbHkgYmUgdG8gc3RvcmUgdGhlICJsYXN0IHNlZW4iIGNvcHkKPiBv
ZiBhbnkgYmxvY2sgaW4gdGhlIHJlc2V0IGJ1ZmZlciAtIHRoaXMgd291bGQgYmUgYSBzaW1wbGUg
Y2hhbmdlLgo+IFRoYXQgaW1wbGllcyBhIGxvdCBtb3JlIHByb2Nlc3Npbmcgb24gdGhlIG1ham9y
aXR5IG9mIGZyYW1lcywgYXMgd2UnbGwKPiB0aGVuIGFsd2F5cyBjb3B5IGF0IGxlYXN0IHNvbWV0
aGluZywgYnV0IGl0IHJlZHVjZXMgdGhlIHJpc2sgb2YgbG9zaW5nCj4gYSBzZXR0aW5nLiBUaGF0
IGFtb3VudCBvZiBwcm9jZXNzaW5nIGVhY2ggZnJhbWUgc2VlbXMgdmVyeSB1bmRlc2lyYWJsZQo+
IHRvIG1lIHRob3VnaCwgcGFydGljdWxhcmx5IGdpdmVuIHRoZSBzY2VuZSB3aWxsIHByZXN1bWFi
bHkgaGF2ZSBjaGFuZ2VkCj4gYWZ0ZXIgcmVzdW1lIGFuZCBzbyB0aGUgc2V0dGluZ3MgbGlrZSBB
V0IgZ2FpbnMgdGhhdCBhcmUgYXBwbGllZCBmb3IKPiBtb3N0IGZyYW1lcyBhcmUgcHJvYmFibHkg
b3V0IG9mIGRhdGUgYW55d2F5LiBPbiB0aGUgb3RoZXIgaGFuZCB3ZSBtYXkKPiBlbmQgdXAgZmxh
Z2dpbmcgYSBsb3Qgb2YgYmxvY2tzLCBhcyB0aGVyZSdzIHBhcmFtZXRlcnMgdGhhdCBtaWdodCBi
ZQo+IGNoYW5nZWQgbWlkLXN0cmVhbSAobGlrZSBnYW1tYSkgYnV0IHdvdWxkIG5vdCBiZSBzbyBy
ZWd1bGFybHkgY2hhbmdlZAo+IHRoYXQgd2UgY291bGQganVzdCByZWx5IG9uIHRoZW0gYmVpbmcg
c2VudCBuYXR1cmFsbHkgb24gcmVzdW1lLCBzbyBhCj4gdGhpcmQgYXBwcm9hY2ggbWlnaHQgYmUg
dG8gaW52ZXJ0IHRoZSBtZWFuaW5nIG9mIHRoZSBmbGFnIGFuZCBzdG9yZQo+IGFueSBibG9jayB0
aGF0IF9pc24ndF8gZmxhZ2dlZCBhcyBfbm90XyBuZWVkaW5nIHRvIGJlIHJlYXBwbGllZC4KCklz
IHRoZXJlIGFueSByZWFzb24gbm90IHNhdmluZyBhbmQgcmVzdG9yaW5nIGFsbCByZWxldmFudCBJ
U1AgcmVnaXN0ZXJzIApkaXJlY3RseSBpbiB0aGUgc3VzcGVuZCgpIC8gcmVzdW1lICgpIGNhbGxi
YWNrcz8gQUZJSyB0aGlzIGlzIHdoYXQgbW9zdCAKZHJpdmVycyBkbyBoZXJlIGFuZCBpdCdzIG5v
dCBjbGVhciB0byBtZSB3aHkgdGhpcyB3b3VsZCBub3Qgd29yayBoZXJlPwoKPiAKPiBJJ20gb3Bl
biB0byBvcGluaW9ucyBvbiBob3cgYmVzdCB0byBzZXQgdGhlIGJhbGFuY2UhCj4gCj4gUGxlYXNl
IG5vdGUgdGhhdCB0aGUgY2hhbmdlcyBmb3IgdGhlIEMzIGFuZCBEcmVhbWNoaXAgYXJlIG9ubHkg
Y29tcGlsZQo+IHRlc3RlZC4KPiAKPiBUaGFua3MKPiBEYW4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBE
YW5pZWwgU2NhbGx5IDxkYW4uc2NhbGx5QGlkZWFzb25ib2FyZC5jb20+Cj4gLS0tCj4gRGFuaWVs
IFNjYWxseSAoNyk6Cj4gICAgICAgbWVkaWE6IHJwcHgxOiBEcm9wIG1heF9zaXplIHBhcmFtIGZy
b20gcnBweDFfcGFyYW1zKCkKPiAgICAgICBtZWRpYTogdjRsMi1pc3A6IEhvbGQgdjRsMi1pc3Ag
ZGF0YSBpbiBjZW50cmFsIHN0cnVjdAo+ICAgICAgIG1lZGlhOiB2NGwyLWlzcDogVXBkYXRlIHVz
ZXJzIHRvIGluaXRpYWxpc2UgYW5kIHZhbGlkYXRlIG5ldyBzdHJ1Y3QKPiAgICAgICBtZWRpYTog
djRsMi1pc3A6IFVzZSBjZW50cmFsbHktaGVsZCBkYXRhIGluIGZyYW1ld29yawo+ICAgICAgIG1l
ZGlhOiB2NGwyLWlzcDogQWRkIHY0bDJfaXNwX3BhcmFtc19mb3JfZWFjaF9ibG9jaygpCj4gICAg
ICAgbWVkaWE6IHY0bDItaXNwOiBJbnRyb2R1Y2UgInJlc2V0IGJ1ZmZlciIgY29uY2VwdAo+ICAg
ICAgIG1lZGlhOiBya2lzcDE6IFJlLWFwcGx5IHY0bDItaXNwIHJlc2V0IGJ1ZmZlciBvbiByZXN1
bWUKPiAKPiAgRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC92NGwyLWlzcC5y
c3QgfCAgMTkgKysrKwo+ICAuLi4vbWVkaWEvcGxhdGZvcm0vYW1sb2dpYy9jMy9pc3AvYzMtaXNw
LWNvbW1vbi5oICB8ICAgMiArCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9hbWxvZ2ljL2MzL2lzcC9j
My1pc3AtcGFyYW1zLmMgIHwgIDI4ICsrKy0tCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9hcm0vbWFs
aS1jNTUvbWFsaS1jNTUtY29tbW9uLmggIHwgICAxICsKPiAgLi4uL21lZGlhL3BsYXRmb3JtL2Fy
bS9tYWxpLWM1NS9tYWxpLWM1NS1wYXJhbXMuYyAgfCAgMjggKystLS0KPiAgLi4uL21lZGlhL3Bs
YXRmb3JtL2RyZWFtY2hpcC9ycHB4MS9ycHBfcGFyYW1zLmMgICAgfCAgMzAgKysrLS0KPiAgZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9kcmVhbWNoaXAvcnBweDEvcnBweDEuYyAgICAgfCAgIDggKysK
PiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9kcmVhbWNoaXAvcnBweDEvcnBweDEuaCAgICAgfCAg
IDUgKwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JlbmVzYXMvcmNhci1pc3AvY29yZS1pby5j
ICB8ICAgMyArLQo+ICAuLi4vbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1j
b21tb24uaCB8ICAgMyArCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2lzcDEvcmtp
c3AxLXBhcmFtcy5jIHwgIDYxICsrKysrKy0tLS0KPiAgZHJpdmVycy9tZWRpYS92NGwyLWNvcmUv
djRsMi1pc3AuYyAgICAgICAgICAgICAgICAgfCAxMjYgKysrKysrKysrKysrKysrKysrKy0tCj4g
IGluY2x1ZGUvbWVkaWEvcnBweDEuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAy
ICstCj4gIGluY2x1ZGUvbWVkaWEvdjRsMi1pc3AuaCAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgMTA5ICsrKysrKysrKysrKysrLS0tLQo+ICBpbmNsdWRlL3VhcGkvbGludXgvbWVkaWEvdjRs
Mi1pc3AuaCAgICAgICAgICAgICAgICB8ICAgMSArCj4gIDE1IGZpbGVzIGNoYW5nZWQsIDMzMSBp
bnNlcnRpb25zKCspLCA5NSBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogMDAxNzhl
ZGEzMDVhMzMyZjMwMjg4Mjg0OWZmNzM3NGQ0MTY5YmU4Ygo+IGNoYW5nZS1pZDogMjAyNjEwMzAt
djRsMi1pc3AtcmVzdW1lLTQxZmFkNzMxZGYyOAo+IHByZXJlcXVpc2l0ZS1jaGFuZ2UtaWQ6IDIw
MjYxMDI4LXJraXNwMS1zdXNwZW5kLWFuZC1yZXN1bWUtN2Q0ZjM4OGE5YTYxOnYxCj4gcHJlcmVx
dWlzaXRlLXBhdGNoLWlkOiA4ZjZiNDk5ZWY3ODk4MjI5YzViMDJlOTg3ODIyZGQ2NzZhMGNmZDc0
Cj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiA1NmQwODUyOTgzYzZmNDY1MzdjMDNjYTNiZWM3MWUw
Y2U0MDQ2NDMxCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiAwYjllZGQyMWQyNGEyNWM2MjA3OTJk
ZmE2OTJkOTEzNDZjZWNjZGRlCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiAzYjk0MjUwMjhjZDYy
YjYwYjNkYzNkYmQyZmMzYjVhODkxMmExZmI0Cj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiA3NzFm
OTg2ZTI3NTQzODNlN2I1YTkyMGIyNWJmMTYwOWRjOTZmMGI0Cj4gcHJlcmVxdWlzaXRlLXBhdGNo
LWlkOiA3OWM5NWQ2Mzc1ZDY2MmE0Zjc1Y2NjZDg2NTBiM2ZhYjA1ZTRlNjZjCj4gcHJlcmVxdWlz
aXRlLXBhdGNoLWlkOiBlMmZmMjQ2M2RiNDkzNGU3MDdhZmJmMGEyMzkyNzBkMjZkYmY4MTg5Cj4g
cHJlcmVxdWlzaXRlLXBhdGNoLWlkOiA1YTkyM2I3NjA2ZjdjYzYwZmQ2Yjc1YmUyZDczMjMxNDcw
MDQzYmNiCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBmYjgwNzQ4YTFhMjQzMTZjZGQ3NzQ4MWI2
MDkzNmY3MTZmZDBhYTcxCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiAxNDUwZjdkMWY0YjFhNDFl
N2NlNjVlYTZkMmZiZDQ1MGQzYTE5OGFkCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBkMWQyYmE5
OTI3NTM2YjExMGY3ZmJjMGM2ODY5OGQwOGFmYjc0YzI3Cj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlk
OiBjMmFlNmY5MWNiOTY2MjMwN2Y5MDA3MDUyMzk0NWVlMDNhNzljNGMzCj4gcHJlcmVxdWlzaXRl
LXBhdGNoLWlkOiA4N2I0MjViZGU0NGZlODg5MzY3YTkzMzAyNjI5ZGMwMTFhM2VjODhhCj4gcHJl
cmVxdWlzaXRlLXBhdGNoLWlkOiAyNWU0YzllZTc2N2RjNjE0MDZhZGNmMWUxNDYzNzk2YTc5ODMy
Nzk1Cj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiA4MjM4OGY3NjI3MDBkYmNmMzlmZGM0M2U2YmE1
NmMxZmViNTU3MzNhCj4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBhNGFkMmZiMmM3Zjg2NTljNmQ5
YmRjZDk3MThhN2VlNjlmMTI0ODM4Cj4gCj4gQmVzdCByZWdhcmRzLAo+IC0tIAo+IERhbmllbCBT
Y2FsbHkgPGRhbi5zY2FsbHlAaWRlYXNvbmJvYXJkLmNvbT4KPiAKCi0tIApLaW5kIFJlZ2FyZHMs
Ck5pa2xhcyBTw7ZkZXJsdW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
