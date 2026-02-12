Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46859EEA864
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 22:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bMUhEXmC+Xz5x66f3Klep5K6k+3iyGK+R/oSiQ5WnQ=; b=kT6p/BALUmDLtP
	6iCRfahWSmo2iCdjQIbemzGlYZfhjtEUSLIfrP7fR2VKXlXv/CIUbGRhsSnQZlxGqWYyWzjZQQP3C
	OC1vIOUzkYmuZyROVsFgkeL3CLO1WutPfzlMFSVYu+Rx2WPXWNRJ2dHUjAd11myjnRDWARA/xHEcC
	i8J9JJnOX8Z0SmZzWPvZhS/LxGWkFP0z0I8EwCaUzxRyPTTBPPIjO4gjOoABKbA6ZcPGmnumKN9Rb
	tdRsle1JgA0Z04sfe6f0BKodKWA94R/MJ6+fq42YzDnforka61x2OK99/KUTADw9HKtuji+BiR+m2
	MUuTx+6y43rnWbDUa2Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqenc-00000002gQV-0YlL;
	Thu, 12 Feb 2026 22:04:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqenZ-00000002gPo-2iKM;
	Thu, 12 Feb 2026 22:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770933870;
	bh=pgou1iAOo03EeIFUgC5tazbjBU6EIspSIgadED/BlSQ=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=AsmeFdtk4nzmEGGCH0TaWKY4Mc+L909ckX7EIlyLRduCbSzoTfKa+GLp/YGC1DEP5
	 kYrOsZiGNdH2e0qGu8qh2tQjADPh3PxWHw4y37b9VWwjjOjUvRVxmkA2dAIstkaINZ
	 w6E+Ya336ifoxNxZlVVJYBeoUjRWE4BTHxICRGViXmIGSt2HG2J7+OaPa8ALKKCB/Z
	 Ahv0te1cv0fEDfPRRq2zG/JIXEtPQLXFsR4Onu1F9nUh620EzKUbab9GXw4ociPylp
	 9CEAV3Hw6KLKhzsbsDOABmbaQ0siY+mhBpEcxAF8SCoD8d2MKDCOu0ir5fI9bVPsYl
	 iwMyKXN2kNcXw==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 098E617E127F;
	Thu, 12 Feb 2026 23:04:29 +0100 (CET)
Message-ID: <8e410a11-bd7b-4a12-a711-0514a59409c0@collabora.com>
Date: Fri, 13 Feb 2026 00:04:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION] HDMI monitor not working on Radxa Rock 5B after phy
 rockchip samsung hdptx HDMI 2.1 FRL patchset
To: dubito@online.de, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, regressions@lists.linux.dev
References: <b32164001947ba922aefb6ca86a8dc59e9323d2b.camel@online.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <b32164001947ba922aefb6ca86a8dc59e9323d2b.camel@online.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140433_918602_42B68B35 
X-CRM114-Status: GOOD (  19.21  )
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

SGkgVGhvbWFzLAoKT24gMi8xMS8yNiAxMToyMCBQTSwgVGhvbWFzIE5pZWRlcnByw7xtIHdyb3Rl
Ogo+IEhpLAo+IAo+IEknbSBydW5uaW5nIGEgUmFkeGEgUm9jayA1QiAocmszNTg4KSBvbiBhIDEw
KyB5ZWFyIG9sZCBTYW1zdW5nIFRWIHNjcmVlbgo+IGNvbm5lY3RlZCB2aWEgSERNSS4gVGhpcyB3
b3JrZWQgZmxhd2xlc3NseSBpbiA2LjE4LjcgYnV0IGRvZXMgbm90IHdvcmsgb24gbGludXgtCj4g
bmV4dC4gSSBiaXNlY3RlZCB0aGUgcHJvYmxlbSBhbmQgaWRlbnRpZmllZCBjb21taXQgMzQ4MWZj
MDQgdG8gYmUgdGhlIGZpcnN0IGJhZAo+IGNvbW1pdC4gVGhpcyBwb2ludHMgdG8gdGhlIHBoeSBQ
TEwgY2xvY2sgcmF0ZSBjYWxjdWxhdGlvbiB0byBiZSB0aGUgcHJvYmxlbSBpbgo+IGNvbm5lY3Rp
b24gd2l0aCBteSBtb25pdG9yLiBBcyBpdCBzZWVtcyByZWxldmFudCwgSSBhdHRhY2hlZCB0aGUg
RURJRCBvZiBteQo+IG1vbml0b3IuCj4gCj4gSSdtIGJvb3RpbmcgdGhlIGtlcm5lbCBvdXQgb2Yg
RURLMiBhZnRlciB3aGljaCBlZmlmYiBpcyBjb3JyZWN0bHkgdGFraW5nIG92ZXIKPiB0aGUgaW5p
dGlhbGl6ZWQgZGlzcGxheSBhbmQgSSBjYW4gc2VlIHRoZSBpbml0aWFsIGtlcm5lbCBib290IG1l
c3NhZ2VzIG9uIHRoZQo+IEhETUkgb3V0cHV0LiBBZnRlciB0aGUgZHJtL2ttcyBpbiB0aGUga2Vy
bmVsIHRha2VzIG92ZXIgdGhlIHNjcmVlbiBzaG9ydGx5IHR1cm5zCj4gYmxhY2ssIGNoYW5nZXMg
cmVzb2x1dGlvbiwgYW5kIHRoZW4gY29ycmVjdGx5IGRpc3BsYXlzIG9uIDYuMTguNy4gSG93ZXZl
ciwgaW4KPiBsaW51eC1uZXh0IHRoZSBzY3JlZW4gcmVtYWlucyBibGFjayBhZnRlciBrbXMgdG9v
ayBvdmVyLiBJIGNhbm5vdCBzZWUgYW55Cj4gb2J2aW91cyBkaWZmZXJlbmNlcyBpbiB0aGUgYm9v
dCBsb2dzIGJ1dCBJIGF0dGFjaGVkIHR3byBib290IGxvZ3MsIG9uZSBmb3IgdGhlCj4gd29ya2lu
ZyA2LjE4Ljcga2VybmVsIGFuZCBvbmUgZm9yIHRoZSBub24td29ya2luZyBsaW51eC1uZXh0IGtl
cm5lbC4KPiAKPiBXaGVuIHJldmVydGluZyAzNDgxZmMwNC4uZGU1ZGJhODMgKGkuZS4gdGhlIGZh
dWx0eSBjb21taXQgYW5kIHRoZSBvbmVzIHRoYXQKPiBmb2xsb3dlZCBpbiB0aGUgSERNSSAyLjEg
RlJMIHNlcmllcykgSSBjYW4gYnVpbGQgYSB3b3JraW5nIGtlcm5lbCBmcm9tIGxpbnV4LQo+IG5l
eHQuCj4gCj4gSSBkb24ndCBrbm93IHdoZXJlIHRvIGRpZyBmcm9tIGhlcmUgYnV0IEknbSBoYXBw
eSB0byBydW4gYW55IHRlc3QgbmVjZXNzYXJ5IHRvCj4gdHJhY2sgZG93biB0aGUgcHJvYmxlbS4K
Ckl0J2QgYmUgaGVscGZ1bCBpZiB5b3UgY291bGQgcmVzZW5kIHRoZSBsb2dzIGFmdGVyIGJvb3Rp
bmcgYm90aCBrZXJuZWxzIHdpdGggdGhlCmZvbGxvd2luZyBwYXJhbXMgKHJlcXVpcmVzIENPTkZJ
R19EWU5BTUlDX0RFQlVHPXkpOgoKICByb2NrY2hpcGRybS5keW5kYmc9K3AgZHdfaGRtaV9xcC5k
eW5kYmc9K3AgcGh5X3JvY2tjaGlwX3NhbXN1bmdfaGRwdHguZHluZGJnPStwCgpBcyB3ZWxsIGFz
IHJ1bm5pbmcgdGhlIGNvbW1hbmQgYmVsb3cgYmVmb3JlIGNvbm5lY3RpbmcgeW91ciBkaXNwbGF5
L1RWOgoKICAkIGVjaG8gMHg0ID4gL3N5cy9tb2R1bGUvZHJtL3BhcmFtZXRlcnMvZGVidWcKCkkn
dmUgbm90aWNlZCB5b3UncmUgZm9yY2luZyAidmlkZW89SERNSS1BLTE6MTkyMHgxMDgwTUA2MCIs
IHdoaWNoIHNob3VsZCBiZQphbnl3YXkgdGhlIHByZWZlcnJlZCBtb2RlIChhY2NvcmRpbmcgdG8g
dGhlIEVESUQpLgoKRGlkIHlvdSB0cnkgY2hvb3NpbmcgYSBkaWZmZXJlbnQgb25lLCBlLmcuIDE5
MjB4MTA4MEA1MCBvciAxOTIweDEwODBAMzAgKHRoZXkKYXJlIHN1cHBvcnRlZCBhY2NvcmRpbmcg
dG8gdGhlIGxpc3RpbmcgaW4gQ1RBLTg2MSBFeHRlbnNpb24gQmxvY2spLiBUaGF0J3MgbW9yZQph
IHRlc3QgdG8gY29uZmlybSB0aGUgaXNzdWUgYWZmZWN0cyBhIHBhcnRpY3VsYXIgbW9kZWxpbmUs
IG9yIGlzIG1vcmUgZ2VuZXJhbC4KCkZXSVcgSSd2ZSB0ZXN0ZWQgb3ZlciA0MCBtb2RlcyB3aXRo
IGRpZmZlcmVudCBkaXNwbGF5cy9UVnMgYW5kIGRpZG4ndCBub3RpY2UgYW55CnJlZ3Jlc3Npb24s
IGhlbmNlIEknbSBwcm9iYWJseSBtaXNzaW5nIHNvbWV0aGluZyBoZXJlLgoKVGhhbmtzIGZvciB0
aGUgcmVwb3J0IQoKQ3Jpc3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
