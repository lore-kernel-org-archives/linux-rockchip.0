Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CCE606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 02:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DNnNCcZD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KjpTvGb/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uhsTHtuIjgce2DqLAph5pnRNqddfr3iCPyAUaKEfu14=; b=DNnNCcZD+0H52BuAF2CrR/HVig
	kdrFGgTA2MtryWo7WhNPXWxIrioG6PHJ9njE8qWw46YTLGm3MIY2JmBk2sHdYgriW8+G8pQX9kADS
	4JlrSGOfrHlbebaj4zSCmBcntnE2cdd5UZLR6tO31P5NDg6N+UPY+P/vutbCNnFAa2WKnPuRj5Iu2
	SxunQGAHwAN09Iclvy3lYuY9dhapRXHveunubx4N7W3hp5XzhQDDCab9dwKq1r/osEtJg8o2Vd90t
	jeeIBj6yLiuBVzVwW6EugZ9smut9WCNw36zuRxb50EksxR+eqVPBppQ6W3VDFBuVDruqNros9dsdO
	fJyo/RXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyBQ-00000005Sv6-1tYQ;
	Wed, 11 Nov 2026 02:35:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQyBO-00000005Suk-1glw
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 02:35:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CE50941FE3
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 02:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1FC71F00A03
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 02:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794364529;
	bh=/TGkmkl5EXAQoGi2DbHL8eyxYqMYYgybSMdpzQ49ATc=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=KjpTvGb/4X9mKEH810dOhhaUHOo5iLr8WVxnxqmWYRpJuVVJU2ofYZVL93GJ5cgju
	 saSlTXA5okLlbwFk3Vx248sug+H1celxydL/n8VJ3zCmI6R1kESsERdAVMYN6P9/cq
	 im7CyIwzgDfu/3dZnhOlNWeBR6DVpOANkbo4m+ePKATjzCXWAgUTKachbkzbU/+OoL
	 bOrf4m24aoleTvqhKcsuJRDPbarAzEIKLzm3bkPj3ljzAtlxdUz/fvkF2Qdl3Tikb4
	 wHT23gf6FnFbm94HxmTH1LKmXDLJZvs0qMgaqrT6K+hY5Od4/rNrPoCp/NCo+/U/bZ
	 YjnjAbs9w8euA==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3acd239776cso19978541fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 18:35:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErGW/XsRkV+KCW4uE7xvKo888U69u2LtxItpT0ycrA4ctmkiMzh7a3JqyRllgxLrRcG3InGFT5zufPEVAfCXMw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/xmRerUKCuNUivqei2FRKvXHIdv0WzocOvdFgAWl0xxDlaIaJK
	OUb1aMFftGkSHYX1WBAVRpWokJPNbGX7kgZJ7At7gMxX4+Fm6ho406dkFghTNP02+T9oD43owu6
	L8+fWem4neDrWc/U6PTQxFjf78tJ7LEI=
X-Received: by 2002:a2e:bc03:0:b0:3a9:9a60:2c47 with SMTP id
 38308e7fff4ca-3ae126ed0f1mr1190701fa.29.1794364528033; Tue, 10 Nov 2026
 18:35:28 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-usb-port-pairing-v1-0-9307e29d2ed2@gmail.com> <20261110-usb-port-pairing-v1-1-9307e29d2ed2@gmail.com>
In-Reply-To: <20261110-usb-port-pairing-v1-1-9307e29d2ed2@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 11 Nov 2026 11:35:15 +0900
X-Gmail-Original-Message-ID: <CAGb2v65goAuKgYu-849171FGeCxZ8Cq3GUxQLDLaHLbhRTMmqA@mail.gmail.com>
X-Gm-Features: AclHuK9N0O7U9-W_pxCYXlT-RQ5jch4QkX4b2hO5JJ4vf-cajfPSp8p0sSn_nO4
Message-ID: <CAGb2v65goAuKgYu-849171FGeCxZ8Cq3GUxQLDLaHLbhRTMmqA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: usb: generic-ehci: Allow describing the
 root hub ports
To: aiyengar1990@gmail.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVHVlLCBOb3YgMTAsIDIwMjYgYXQgNDoyMOKAr1BNIEFydW4gSXllbmdhciB2aWEgQjQgUmVs
YXkKPGRldm51bGwrYWl5ZW5nYXIxOTkwLmdtYWlsLmNvbUBrZXJuZWwub3JnPiB3cm90ZToKPgo+
IEZyb206IEFydW4gSXllbmdhciA8YWl5ZW5nYXIxOTkwQGdtYWlsLmNvbT4KPgo+IFRoZSBVU0Ig
Mi4wIGxpbmVzIGFuZCB0aGUgU3VwZXJTcGVlZCBsYW5lcyBvZiBhIFVTQiAzIGNvbm5lY3RvciBk
b24ndAo+IGFsd2F5cyByZWFjaCB0aGUgc2FtZSBob3N0IGNvbnRyb2xsZXIuIE9uIHRoZSBSb2Nr
Y2hpcCBSSzM1ODgsIHRoZQo+IFN1cGVyU3BlZWQtb25seSBVU0IgMy4wIGhvc3QgMiAoeEhDSSkg
aXMgcGFpcmVkIG9uIHRoZSBib2FyZCB3aXRoIG9uZQo+IG9mIHRoZSBzZXBhcmF0ZSBVU0IgMi4w
IGhvc3RzIChFSENJL09IQ0kpLiBPbmx5IHRoZSBkZXZpY2UgdHJlZSBrbm93cwo+IHdoaWNoIEVI
Q0kgcm9vdCBodWIgcG9ydCBzaGFyZXMgYSBjb25uZWN0b3Igd2l0aCB3aGljaCBTdXBlclNwZWVk
IHBvcnQuCj4KPiBUaGUgVVNCIGNvcmUgYWxyZWFkeSByZWFkcyBhIGh1YidzIE9GIGdyYXBoLCB3
aXRoIG9uZSBncmFwaCBwb3J0IHBlcgo+IGRvd25zdHJlYW0gcG9ydCwgYW5kIHVzZXMgaXQgZm9y
IHRoZSBwb3J0IGNvbm5lY3QgdHlwZS4gQWxsb3cgdGhlIHNhbWUKPiAicG9ydHMiIG5vZGUgb24g
RUhDSSBjb250cm9sbGVycywgc28gdGhhdCBhIHJvb3QgaHViIHBvcnQgY2FuIGJlIGxpbmtlZAo+
IHRvIGl0cyB1c2ItY29ubmVjdG9yIG5vZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIEl5ZW5n
YXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwgfCAxMyArKysrKysrKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiBpbmRl
eCA5MDhiMDJkOTE3NWUuLjlkY2JhNTM5ZDYwZCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2dlbmVyaWMtZWhjaS55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9nZW5lcmljLWVoY2kueWFtbAo+IEBAIC0x
NjAsNiArMTYwLDE5IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIC0gaG9zdAo+ICAgICAgICAtIG90
Zwo+Cj4gKyAgcG9ydHM6Cj4gKyAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0
aWVzL3BvcnRzCj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgVGhlIHJvb3QgaHViJ3MgZG93
bnN0cmVhbSBmYWNpbmcgcG9ydHMsIGxpbmtlZCB0byB0aGUgY29ubmVjdG9ycyB0aGV5Cj4gKyAg
ICAgIGFyZSB3aXJlZCB0by4gTmVlZGVkIHdoZW4gYSBjb25uZWN0b3IncyBTdXBlclNwZWVkIGxh
bmVzIGdvIHRvIGEKPiArICAgICAgZGlmZmVyZW50IGhvc3QgY29udHJvbGxlciwgd2hpY2ggdGhl
biBwYWlycyB3aXRoIHRoZSByb290IGh1YiBwb3J0Cj4gKyAgICAgIHRocm91Z2ggdGhlIGNvbm5l
Y3Rvci4KPiArCj4gKyAgICBwYXR0ZXJuUHJvcGVydGllczoKPiArICAgICAgIl5wb3J0QFsxLTlh
LWZdWzAtOWEtZl0qJCI6Cj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJv
cGVydGllcy9wb3J0Cj4gKyAgICAgICAgZGVzY3JpcHRpb246IFJvb3QgaHViIHBvcnQsIG51bWJl
cmVkIGZyb20gMS4KPiArCgpXb3VsZCB0aGlzIHBhdGNoIGNvdmVyaW5nIGFsbCBIQ0RzIGJlIGJl
dHRlcj8KCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MTAxNDA4MjAzNy4xNzc0Njcy
LTItd2Vuc3RAY2hyb21pdW0ub3JnLwoKQWxzbyBzZWUgUm9iJ3MgY29tbWVudCBhYm91dCBjb3Zl
cmluZyB0aGUgcG9ydCBudW1iZXJzLgoKQ2hlbll1Cgo+ICByZXF1aXJlZDoKPiAgICAtIGNvbXBh
dGlibGUKPiAgICAtIHJlZwo+Cj4gLS0KPiAyLjU1LjAKPgo+Cj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
