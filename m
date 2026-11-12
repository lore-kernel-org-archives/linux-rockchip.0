Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DC6606A337
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 08:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ueKsDej1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Dov5eEhJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=o67cLRauRyaYw5DWiHCjfiUD1Xghd/37L4q/MJcdvgY=; b=ueKsDej1c72BZo/vTcSgWNkA2M
	bNIGSzH0BfAOImam0p13QaQW+fqd98DiY5tdibtxYNO1HES5z0OohX62XLhlfqdIP9vVnZL7NHeMN
	xcIz9w9ekthGWwvM67UdVcxBoXgqrpB1e1aXBV4dhpOfvMZJqplsOXBT7O6xYKhq1YxsWRSn6FE5K
	E55HMP6mgaEwc/BuN54EBWL1kaWt9UcLd/J8fA19zHiOxoStaQqvjqZsuKpRupzIShZXPo1GyT1Xj
	u07yduX3Eqzim1vKS/GjtK8k5nlRFKCI0omaN5Sqke82yCNYhRa+SZ5cP6gFl2NUg3t65AEInOCPm
	qfKUEHQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPrT-000000091yT-0BBg;
	Thu, 12 Nov 2026 08:08:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPrR-000000091y3-2x8q
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 08:08:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 161FF45BFC
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 08:08:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4FD41F00A0D
	for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 08:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794470924;
	bh=f/K/dT4G7j/2V0oqueVsADMWh93CbLx6C63d9vDA5x8=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=Dov5eEhJPw9J1UHAeJgAmdh8myoy8L7sxELnUxlL/7fc3MfsnL3rY+pt0+8hcD/OX
	 NfKVKmZHCSPoyWy7mkKoLnoIxDvrxRcNuwJaJ9nUegaE+61xlN8qMxTFSaSlBvNVnM
	 gC8nuPC892qUwVuaHk/xtalK+nZ69SYCg9ic+yG4lnTAG2TEzmO6zRtZcNRgERsSEa
	 f4s1T3y4PWKuTZHs3r2JvaQZMdIEGarXDsPEIPQ2w+5RPQzKNCKE3W65gGTBhc8RhV
	 pZcgN21CCgADnpJFba1R4Eg+I1DPL3CxzqpVrpcroyk8Fpo0RI9VkvMLVOWn6sVHZh
	 DApu0rN2toQBg==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3ab30b3212aso31623611fa.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2026 00:08:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AL+hErEZ2wJYa9FmLENf7EIbEE6VHraQ5cduVYM1ra/fVKe0G9CflVE6CCTXeygXHuFVLtyybMhXszIY+8lFeJmOPQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8ivpJZUcJ0LbJKtVNSlAa1kHMSNlMMU7SbWGz/qPcXEhdt6Nbb
	TLvkrUUID2o9KXNQutNnU+9I8apqpMVsmWogmikOX0wocE6opVmO2ZXguR5KZQk5LFL7BfAgbEA
	bsAViiH8SvHPbo3at/oJGzemlJg+hqR0=
X-Received: by 2002:a05:651c:31cb:b0:3ac:ff0a:9d9f with SMTP id
 38308e7fff4ca-3ae1266bd28mr10702011fa.5.1794470923286; Thu, 12 Nov 2026
 00:08:43 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261110-usb-port-pairing-v1-0-9307e29d2ed2@gmail.com>
 <20261110-usb-port-pairing-v1-1-9307e29d2ed2@gmail.com> <CAGb2v65goAuKgYu-849171FGeCxZ8Cq3GUxQLDLaHLbhRTMmqA@mail.gmail.com>
 <CAEy9hNV9saBWyKxuMR5unmLjzBM2+S7u+FewEevuLV-6yo1ztw@mail.gmail.com>
In-Reply-To: <CAEy9hNV9saBWyKxuMR5unmLjzBM2+S7u+FewEevuLV-6yo1ztw@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 12 Nov 2026 17:08:31 +0900
X-Gmail-Original-Message-ID: <CAGb2v64xjbc2t+fMegBUSptiwT5FQBqc8aqiVkLjwfaB+3FV0A@mail.gmail.com>
X-Gm-Features: AclHuK-4Nt4Ya-T8NosoJJyqrIsgDGmHMB4Vbzc5kPzl1tQ_x9NWcs04d9vsDrI
Message-ID: <CAGb2v64xjbc2t+fMegBUSptiwT5FQBqc8aqiVkLjwfaB+3FV0A@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: usb: generic-ehci: Allow describing the
 root hub ports
To: Arun Iyengar <aiyengar1990@gmail.com>
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

T24gVGh1LCBOb3YgMTIsIDIwMjYgYXQgNTowMOKAr1BNIEFydW4gSXllbmdhciA8YWl5ZW5nYXIx
OTkwQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBDaGVuLVl1LAo+Cj4gT24gV2VkLCBOb3YgMTEs
IDIwMjYgYXQgMDI6MzUgVVRDLCBDaGVuLVl1IFRzYWkgd3JvdGU6Cj4gPiBXb3VsZCB0aGlzIHBh
dGNoIGNvdmVyaW5nIGFsbCBIQ0RzIGJlIGJldHRlcj8KPiA+Cj4gPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvMjAyNjEwMTQwODIwMzcuMTc3NDY3Mi0yLXdlbnN0QGNocm9taXVtLm9yZy8K
PiA+Cj4gPiBBbHNvIHNlZSBSb2IncyBjb21tZW50IGFib3V0IGNvdmVyaW5nIHRoZSBwb3J0IG51
bWJlcnMuCj4KPiBZZXMsIHlvdXJzIGlzIGJldHRlcjogaXQgY292ZXJzIGV2ZXJ5IGhvc3QgY29u
dHJvbGxlciwgYW5kCj4gZ2VuZXJpYy1laGNpLnlhbWwgZ2V0cyBpdCB0aHJvdWdoIHVzYi1oY2Qu
eWFtbC4gUm9iJ3MgcG9pbnQgYWJvdXQgdGhlCj4gcG9ydCBudW1iZXJzIGFwcGxpZXMgdG8gbXkg
cGF0Y2ggdG9vLgo+Cj4gdjIgZHJvcHMgdGhpcyBwYXRjaCBhbmQgYnVpbGRzIG9uIHlvdXIgcGF0
Y2ggMSBpbnN0ZWFkLiBPbmx5IHRoZQo+IE9yYW5nZSBQaSA1LzVCIERUIHBhdGNoLCB3aGljaCBu
b3cgZ29lcyB0byB0aGUgUm9ja2NoaXAgdHJlZSBvbiBpdHMKPiBvd24sIG5lZWRzIGl0OyB0aGF0
IERUIHBhc3NlcyBkdGJzX2NoZWNrIHdpdGggeW91ciBwYXRjaCBhcHBsaWVkLCBhbmQKPiBhbHNv
IHdpdGggJ3JlZycgbGltaXRlZCB0byAxIGFuZCB1cCBhcyBSb2Igc3VnZ2VzdGVkLgo+Cj4gVGhl
IHYyIGNvdmVyIGhhcyBvbmUgcXVlc3Rpb24gZm9yIHlvdTogcGF0Y2ggMSB0aGVyZSBsb29rcyB0
aGUgZ3JhcGgKPiBwb3J0cyB1cCBieSByb290IGh1YiBwb3J0IG51bWJlciwgd2hpbGUgeW91IGhh
dmUgc2FpZCByb290IGh1YiBncmFwaAo+IHBvcnRzIHNob3VsZCB1c2UgdGhlIHJhdyB4SENJIHBv
cnQgbnVtYmVyLiBXaGljaCBvbmUgZG8geW91IHdhbnQ/CgpJIGRvbid0IHNlZSBhIHYyIHlldC4g
U28gdGhhdCdzIHBhdGNoIDIgb2YgdjEuCgpJdCBzaG91bGQgZGVmaW5pdGVseSB1c2UgdGhlIHJh
dyBwb3J0IG51bWJlciwgc2luY2UgdGhhdCBpcyB3aGF0IGlzCnN1cHBvc2VkIHRvIGJlIHVzZWQg
aW4gRFQgKGFuZCB3aGF0IGlzIHVzZWQgaW4gQUNQSSkuCgpGV0lXIEknbSBhbHNvIHB1c2hpbmcg
YSBzZXJpZXMgdG8gd2lyZSB1cCBVU0Igb24gTS4yIGNvbm5lY3RvcnMgWzFdLgpUaGF0IGFsc28g
aGFzIHNvbWUgY29kZSB0aGF0IGRvZXMgT0YgZ3JhcGggbG9va3VwLiBJIHN0aWxsIG5lZWQgdG8K
cHVzaCBhIHYxMC4gQW5kIEkgaGF2ZSBhIGZldyBvdGhlciBwYXRjaGVzIHRoYXQgZml4IHVwIHBv
cnQgbG9va3VwCmluIG90aGVyIGJpdHMgb2YgVVNCIE9GIGNvZGUuCgoKQ2hlbll1CgpbMV0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTE2MDc1NzQ1LjM1NDk5NTMtMS13ZW5zdEBj
aHJvbWl1bS5vcmcvCgo+IFRoYW5rcywKPiBBcnVuCj4KPiBPbiBUdWUsIE5vdiAxMCwgMjAyNiBh
dCA2OjM14oCvUE0gQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+
IE9uIFR1ZSwgTm92IDEwLCAyMDI2IGF0IDQ6MjDigK9QTSBBcnVuIEl5ZW5nYXIgdmlhIEI0IFJl
bGF5Cj4gPiA8ZGV2bnVsbCthaXllbmdhcjE5OTAuZ21haWwuY29tQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+ID4gPgo+ID4gPiBGcm9tOiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+
Cj4gPiA+Cj4gPiA+IFRoZSBVU0IgMi4wIGxpbmVzIGFuZCB0aGUgU3VwZXJTcGVlZCBsYW5lcyBv
ZiBhIFVTQiAzIGNvbm5lY3RvciBkb24ndAo+ID4gPiBhbHdheXMgcmVhY2ggdGhlIHNhbWUgaG9z
dCBjb250cm9sbGVyLiBPbiB0aGUgUm9ja2NoaXAgUkszNTg4LCB0aGUKPiA+ID4gU3VwZXJTcGVl
ZC1vbmx5IFVTQiAzLjAgaG9zdCAyICh4SENJKSBpcyBwYWlyZWQgb24gdGhlIGJvYXJkIHdpdGgg
b25lCj4gPiA+IG9mIHRoZSBzZXBhcmF0ZSBVU0IgMi4wIGhvc3RzIChFSENJL09IQ0kpLiBPbmx5
IHRoZSBkZXZpY2UgdHJlZSBrbm93cwo+ID4gPiB3aGljaCBFSENJIHJvb3QgaHViIHBvcnQgc2hh
cmVzIGEgY29ubmVjdG9yIHdpdGggd2hpY2ggU3VwZXJTcGVlZCBwb3J0Lgo+ID4gPgo+ID4gPiBU
aGUgVVNCIGNvcmUgYWxyZWFkeSByZWFkcyBhIGh1YidzIE9GIGdyYXBoLCB3aXRoIG9uZSBncmFw
aCBwb3J0IHBlcgo+ID4gPiBkb3duc3RyZWFtIHBvcnQsIGFuZCB1c2VzIGl0IGZvciB0aGUgcG9y
dCBjb25uZWN0IHR5cGUuIEFsbG93IHRoZSBzYW1lCj4gPiA+ICJwb3J0cyIgbm9kZSBvbiBFSENJ
IGNvbnRyb2xsZXJzLCBzbyB0aGF0IGEgcm9vdCBodWIgcG9ydCBjYW4gYmUgbGlua2VkCj4gPiA+
IHRvIGl0cyB1c2ItY29ubmVjdG9yIG5vZGUuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFy
dW4gSXllbmdhciA8YWl5ZW5nYXIxOTkwQGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2dlbmVyaWMtZWhjaS55YW1sIHwgMTMg
KysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiA+
ID4KPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
c2IvZ2VuZXJpYy1laGNpLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dXNiL2dlbmVyaWMtZWhjaS55YW1sCj4gPiA+IGluZGV4IDkwOGIwMmQ5MTc1ZS4uOWRjYmE1Mzlk
NjBkIDEwMDY0NAo+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dXNiL2dlbmVyaWMtZWhjaS55YW1sCj4gPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy91c2IvZ2VuZXJpYy1laGNpLnlhbWwKPiA+ID4gQEAgLTE2MCw2ICsxNjAsMTkg
QEAgcHJvcGVydGllczoKPiA+ID4gICAgICAgIC0gaG9zdAo+ID4gPiAgICAgICAgLSBvdGcKPiA+
ID4KPiA+ID4gKyAgcG9ydHM6Cj4gPiA+ICsgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMv
cHJvcGVydGllcy9wb3J0cwo+ID4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gPiArICAgICAgVGhl
IHJvb3QgaHViJ3MgZG93bnN0cmVhbSBmYWNpbmcgcG9ydHMsIGxpbmtlZCB0byB0aGUgY29ubmVj
dG9ycyB0aGV5Cj4gPiA+ICsgICAgICBhcmUgd2lyZWQgdG8uIE5lZWRlZCB3aGVuIGEgY29ubmVj
dG9yJ3MgU3VwZXJTcGVlZCBsYW5lcyBnbyB0byBhCj4gPiA+ICsgICAgICBkaWZmZXJlbnQgaG9z
dCBjb250cm9sbGVyLCB3aGljaCB0aGVuIHBhaXJzIHdpdGggdGhlIHJvb3QgaHViIHBvcnQKPiA+
ID4gKyAgICAgIHRocm91Z2ggdGhlIGNvbm5lY3Rvci4KPiA+ID4gKwo+ID4gPiArICAgIHBhdHRl
cm5Qcm9wZXJ0aWVzOgo+ID4gPiArICAgICAgIl5wb3J0QFsxLTlhLWZdWzAtOWEtZl0qJCI6Cj4g
PiA+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+
ID4gPiArICAgICAgICBkZXNjcmlwdGlvbjogUm9vdCBodWIgcG9ydCwgbnVtYmVyZWQgZnJvbSAx
Lgo+ID4gPiArCj4gPgo+ID4gV291bGQgdGhpcyBwYXRjaCBjb3ZlcmluZyBhbGwgSENEcyBiZSBi
ZXR0ZXI/Cj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYxMDE0MDgyMDM3
LjE3NzQ2NzItMi13ZW5zdEBjaHJvbWl1bS5vcmcvCj4gPgo+ID4gQWxzbyBzZWUgUm9iJ3MgY29t
bWVudCBhYm91dCBjb3ZlcmluZyB0aGUgcG9ydCBudW1iZXJzLgo+ID4KPiA+IENoZW5ZdQo+ID4K
PiA+ID4gIHJlcXVpcmVkOgo+ID4gPiAgICAtIGNvbXBhdGlibGUKPiA+ID4gICAgLSByZWcKPiA+
ID4KPiA+ID4gLS0KPiA+ID4gMi41NS4wCj4gPiA+Cj4gPiA+Cj4gPiA+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
