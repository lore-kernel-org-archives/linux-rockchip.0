Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36CBEC19F4F
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 23:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pF4BVnEzyUb9trSc8+XOHnAWBXFnE/qfaYLIKmlh7A=; b=Gq/ZDXRQ24I8x+
	+FYMZXeig6Kl1E6AUapfX1kXE/3xqltIoPYs5AHzl0MWQCIxgM6xWFAS7CgWuiyeJX3ruaGq/6qEH
	NdjC4DXLYUibWCkX3h53RSuQ1Nq+iqwcI7//krsYbcxYFEOYYBjtHv8ZmmWkRXQdEENaSfqwtRE6A
	k/Xo9EN9nwYfj1VQrhyF7iObUZJqwxwUB8f9QD7eeagc/04ZOwlInlY56pl8efBbS249quzC8tI7i
	C4xZ7AuA3PTYqpjAxImQJZTcNYEyWqqtSFQ5IwaVi14f0e2LXmX0Fzo6v9PX1ZAe/a+y+NEIgsQBt
	vahn/6qdt1WWlZzEsn6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Ubi-0000000DPOW-1cim;
	Tue, 07 May 2024 23:52:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Ubf-0000000DPN1-2ONE
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 23:52:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 22FB16194B;
	Tue,  7 May 2024 23:52:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F2D4C2BBFC;
	Tue,  7 May 2024 23:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715125940;
	bh=flVj7RZb0AT5hfErHsd362JN98Gup7/B3ZzRrEJKWBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KCt7rlYPdGVR3gfL7yhbSKdrP3rjNiKyJ+kXXvhPVuBYLnyHn/QJRlcsl5CNddrb2
	 R/BoFsyGgpmZKiyuSKwTE1Kg4/k3jf7OHX+kHUMqKWR/CYl7dAcpBCCKUZpFvsiy39
	 IsD7Hblx8upmbmil4PsAibENqtxrAGBVbQYd1PxOvW+5MA9wDVfefIkx/VEJrESDB9
	 TXGgAiDNb78rVZQOod00NkCSElkjh2chYpjRIeheO78skN0KWNVn9JaySZ2qYlKjzp
	 BuZrJZGbamCSgwoKajDx6tL5c+qivWVglBzJuexqeFQzBT4RRX0J3c8gdCHblIII/y
	 ksCBwYGdiQBVA==
Date: Wed, 8 May 2024 01:52:14 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 14/14] arm64: dts: rockchip: Add rock5b overlays for
 PCIe endpoint mode
Message-ID: <Zjq-rqVdL0r-Wque@ryzen.lan>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-14-a0f5ee2a77b6@kernel.org>
 <20240504173730.GK4315@thinkpad>
 <2986540.X9hSmTKtgW@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2986540.X9hSmTKtgW@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_165223_846492_553912A0 
X-CRM114-Status: GOOD (  20.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

T24gU3VuLCBNYXkgMDUsIDIwMjQgYXQgMDI6MTQ6NDVQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gU2Ftc3RhZywgNC4gTWFpIDIwMjQsIDE5OjM3OjMwIENFU1Qgc2NocmllYiBN
YW5pdmFubmFuIFNhZGhhc2l2YW06Cj4gPiBPbiBUdWUsIEFwciAzMCwgMjAyNCBhdCAwMjowMTox
MVBNICswMjAwLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiBBZGQgcm9jazViIG92ZXJsYXlz
IGZvciBQQ0llIGVuZHBvaW50IG1vZGUgc3VwcG9ydC4KPiA+ID4gCj4gPiAKPiA+IEknbSBub3Qg
YXdhcmUgb2YgbWFpbmxpbmUgdXNpbmcgb3ZlcmxheXMuIElzIHRoaXMgYSBuZXcgb25lPwo+IAo+
IEkgZ3Vlc3MgeW91IGNvdWxkIHN0aWxsIGNhbGwgaXQgbmV3J2lzaCA7LSkKPiAKPiBCdXQgdGhl
IG1haW5saW5lIGtlcm5lbCBkb2VzIGNhcnJ5IGEgbnVtYmVyIG9mIG92ZXJsYXlzIGFscmVhZHkg
WzBdIC4KPiBUaGlzIGRvZXMgb2YgY291cnNlIG5vdCBoYW5kbGUgdGhlIGFjdHVhbCBhcHBsaWNh
dGlvbiBvZiBvdmVybGF5cywKPiB3aGljaCBJIGd1ZXNzIGJvb3Rsb2FkZXJzIGRvIG9ubHkgYXQg
dGhpcyBwb2ludC4KClllcywgQUZBSUNULCB0aGUgYWN0dWFsIGFwcGxpY2F0aW9uIGlzIGhhbmRs
ZWQgYnkgYm9vdGxvYWRlcnMuCihXZWxsLCB0aGVyZSBpcyBhICJPdmVybGF5IGluLWtlcm5lbCBB
UEkiLCBidXQgbm90IGEgdXNlciBBUEkuKQoKCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZQo+ID4gPiBpbmRleCBmOTA2YTg2OGI3MWEuLmQ4Mjc0MzJkNTExMSAxMDA2NDQK
PiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4gPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPiA+IEBAIC0xMTcs
NiArMTE3LDggQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1uYW5vcGMt
dDYuZHRiCj4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LW9yYW5n
ZXBpLTUtcGx1cy5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1
ODgtcXVhcnR6cHJvNjQuZHRiCj4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0g
cmszNTg4LXJvY2stNWIuZHRiCj4gPiA+ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0g
cmszNTg4LXJvY2stNWItcGNpZS1lcC5kdGJvCj4gPiA+ICtkdGItJChDT05GSUdfQVJDSF9ST0NL
Q0hJUCkgKz0gcmszNTg4LXJvY2stNWItcGNpZS1zcm5zLmR0Ym8KPiA+ID4gIGR0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtdGlnZXItaGFpa291LmR0Ygo+ID4gPiAgZHRiLSQo
Q09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC10b3licmljay14MC5kdGIKPiA+ID4gIGR0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtdHVyaW5nLXJrMS5kdGIKPiA+ID4g
QEAgLTEyNywzICsxMjksNiBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4
cy1uYW5vcGktcjZzLmR0Ygo+ID4gPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJr
MzU4OHMtbmFub3BpLXI2Yy5kdGIKPiA+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSAr
PSByazM1ODhzLXJvY2stNWEuZHRiCj4gPiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszNTg4cy1vcmFuZ2VwaS01LmR0Ygo+ID4gPiArCj4gPiA+ICsjIEVuYWJsZSBzdXBwb3J0
IGZvciBkZXZpY2UtdHJlZSBvdmVybGF5cwo+ID4gPiArRFRDX0ZMQUdTX3JrMzU4OC1yb2NrLTVi
ICs9IC1ACgpOb3RlIHRoYXQgdGhpcyBEVEMgY29tcGlsZXIgZmxhZyBpcyBuZWVkZWQgZm9yIHRo
ZSBvdmVybGF5IGZvciB0aGUKYm9vdGxvYWRlciB0byBiZSBhYmxlIHRvIGFwcGx5IHRoZSBvdmVy
bGF5IHN1Y2Nlc3NmdWxseS4KCihJbiBvcmRlciB0byBzdXBwbHkgdGhlIC5kdGJvIGNvbXBpbGVk
IGJ5IHRoZSBrZXJuZWwgZGlyZWN0bHkgdG8gdS1ib290LikKCkknbSBub3Qgc3VyZSBob3cgdGhl
IG90aGVyIHJvY2tjaGlwIG92ZXJsYXlzIGNvbXBpbGVkIGJ5IHRoZSBrZXJuZWwgY2FuCndvcmsg
d2hlbiBzdXBwbGluZyB0aGVtIHRvIHUtYm9vdC4KCkknbSBndWVzc2luZyB0aGF0IHRoZXkgY29t
cGlsZSB0aGVtIGV4dGVybmFsbHkvbWFudWFsbHkgb3V0c2lkZSB0aGUgc291cmNlCnRyZWUgd2l0
aCB0aGUgLUAgZmxhZyBlbmFibGVkLgoKCklmIHdlIGxvb2sgYXQgb3RoZXIgYXJtNjQgZGV2aWNl
IHRyZWUgb3ZlcmxheXMgaW4gdGhlIGtlcm5lbCwgZS5nLiBUSSwKdGhleSBzZWVtIHRvIHN1cHBs
eSAtQCBmb3IgYWxsIHRoZWlyIC5kdHNvIGZpbGVzOgoKJCBnaXQgZ3JlcCAtLSAiLUAiIGFyY2gv
YXJtNjQvCgoKS2luZCByZWdhcmRzLApOaWtsYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
