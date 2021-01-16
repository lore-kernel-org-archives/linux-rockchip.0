Return-Path: <SRS0=CLqi=GT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76B0C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jan 2021 13:35:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CC0D22B49
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jan 2021 13:35:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CC0D22B49
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=snqrWYW8IiXtlCKi7Wqy61pyBOoOZ+8X4CvwS/HlOUk=; b=chnIKoTm19biZFGMTrTNSqJD+
	4F+XUkyoq6UgvEIojLyzMyDrY51LEDDbQYbXihe4C+LfuhWu75ugsEF+kGKRwGLAqJcR3ZTKXlLXM
	4CwSqAd5ZfYyyvQlNDKDBeXkH1Slh5kcMNcZ+VX8d1iXmYnh9PdF1QsScxG12yArh4J1nRVtl6LXl
	kBN1sV5DfCv+Pd38f7TA8sSvpIWVAc2bTQZJ2M3g/QjvIo8F5T8nPdOT8Df5Nvr57oKZJ66hkFgn3
	gx0KAr6srUcszrY/aPIUTdKztHCiYC8QIzz76HOV5GAcQCYL4nk8KnyjrNbVs3T8YmisIJ8TPd7bC
	GzrQ2+2EQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0ljC-0000Z8-0x; Sat, 16 Jan 2021 13:34:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0lj8-0000YR-O1
 for linux-rockchip@lists.infradead.org; Sat, 16 Jan 2021 13:34:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 879931F40864
Subject: Re: [PATCH v4 3/3] media: rockchip: rkisp1: extend uapi array sizes
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
References: <20210115163829.217131-1-heiko@sntech.de>
 <1739328.QCnGb9OGeP@diego>
 <06d42f41-d570-7327-daca-40a52978d4f9@collabora.com>
 <2554499.uZKlY2gecq@diego>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <1635e481-364a-f99b-8a0c-3d3e33440ed1@collabora.com>
Date: Sat, 16 Jan 2021 14:34:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2554499.uZKlY2gecq@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210116_083451_020040_BB3EF18A 
X-CRM114-Status: GOOD (  25.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, tfiga@chromium.org,
 ezequiel@collabora.com, christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpBbSAxNi4wMS4yMSB1bSAxMjo1NyBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEhpIERhZm5h
LAo+IAo+IEFtIFNhbXN0YWcsIDE2LiBKYW51YXIgMjAyMSwgMTA6MDU6MzkgQ0VUIHNjaHJpZWIg
RGFmbmEgSGlyc2NoZmVsZDoKPj4gQW0gMTYuMDEuMjEgdW0gMDA6NTIgc2NocmllYiBIZWlrbyBT
dMO8Ym5lcjoKPj4+IEFtIEZyZWl0YWcsIDE1LiBKYW51YXIgMjAyMSwgMTg6NDE6MDYgQ0VUIHNj
aHJpZWIgRGFmbmEgSGlyc2NoZmVsZDoKPj4+PiBBbSAxNS4wMS4yMSB1bSAxNzozOCBzY2hyaWVi
IEhlaWtvIFN0dWVibmVyOgo+Pj4+PiBGcm9tOiBIZWlrbyBTdHVlYm5lciA8aGVpa28uc3R1ZWJu
ZXJAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+Pj4+Pgo+Pj4+PiBMYXRlciB2YXJpYW50cyBvZiB0
aGUgcmtpc3AxIGJsb2NrIHVzZSBtb3JlIGVudHJpZXMgaW4gc29tZSBhcnJheXM6Cj4+Pj4+Cj4+
Pj4+IFJLSVNQMV9DSUZfSVNQX0FFX01FQU5fTUFYICAgICAgICAgICAgICAgICAyNSAtPiA4MQo+
Pj4+PiBSS0lTUDFfQ0lGX0lTUF9ISVNUX0JJTl9OX01BWCAgICAgICAgICAgICAgMTYgLT4gMzIK
Pj4+Pj4gUktJU1AxX0NJRl9JU1BfR0FNTUFfT1VUX01BWF9TQU1QTEVTICAgICAgIDE3IC0+IDM0
Cj4+Pj4+IFJLSVNQMV9DSUZfSVNQX0hJU1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRSAyOCAtPiA4
MQo+Pj4+Cj4+Pj4gSSBzZWUgeW91IGRpZG4ndCBjaGFuZ2UgdGhlIHZhbHVlIGZvciB0aGF0IGRl
ZmluZS4KPj4+Cj4+PiBJbiB0aGUgYmVsb3cgcGF0Y2ggSSBmaW5kCj4+Pgo+Pj4gQEAgLTEwMyw3
ICsxMTEsOSBAQAo+Pj4gKiBIaXN0b2dyYW0gY2FsY3VsYXRpb24KPj4+ICovCj4+PiAvKiBMYXN0
IDMgdmFsdWVzIHVudXNlZC4gKi8KPj4+IC0jZGVmaW5lIFJLSVNQMV9DSUZfSVNQX0hJU1RPR1JB
TV9XRUlHSFRfR1JJRFNfU0laRSAyOAo+Pj4gKyNkZWZpbmUgUktJU1AxX0NJRl9JU1BfSElTVE9H
UkFNX1dFSUdIVF9HUklEU19TSVpFX1YxMCAyOAo+Pj4gKyNkZWZpbmUgUktJU1AxX0NJRl9JU1Bf
SElTVE9HUkFNX1dFSUdIVF9HUklEU19TSVpFX1YxMiA4MQo+Pj4gKyNkZWZpbmUgUktJU1AxX0NJ
Rl9JU1BfSElTVE9HUkFNX1dFSUdIVF9HUklEU19TSVpFICAgICBSS0lTUDFfQ0lGX0lTUF9ISVNU
T0dSQU1fV0VJR0hUX0dSSURTX1NJWkVfVjEyCj4+Pgo+Pj4gc28gSSdtIG5vdCBzdXJlIEkgdW5k
ZXJzdGFuZCB3aGF0IHlvdSBtZWFuIGV4Y2VwdCB0aGlzLgo+Pgo+PiBPcHBzLCBJIHNvbWVob3cg
bWlzc2VkIHRoYXQuCj4+IEJ1dCBub3cgc2luY2Ugd2UgaGF2ZSA4MSBlbnRyaWVzLCBpdCBtYWtl
cyBubyBzZW5zZSB0bwo+PiBkZWZpbmUgaXQgdG8gMjggZm9yIFYxMCBhbmQgZG9jdW1lbnRpbmcg
Ikxhc3QgMyB2YWx1ZXMgdW51c2VkIiAoc2VlIGp1c3QgYWJvdmUgdGhlIGRlZmluaXRpb24pLgo+
PiBXZSBjYW4gc2V0IGl0IGp1c3QgdG8gMjUsIHdlIGhhdmUgNTYgKDgxLTI1KSB1bnVzZWQgdmFs
dWVzIGFueXdheS4KPiAKPiBUaGUgcmtpc3AxX2hzdF9jb25maWcoKSBmdW5jdGlvbiBpdGVyYXRl
cyBvdmVyIGl0cyByZWdzLWFycmF5IGFuZCBhY2Nlc3Nlcwo+IDQgd2VpZ2h0IHZhbHVlcyBpbiBl
YWNoIHN0ZXAgYW5kIHdyaXRpbmcgdGhlbSB0byB0aGUgcmVnaXN0ZXI6Cj4gCj4gc3RhdGljIGNv
bnN0IHUzMiBoaXN0X3dlaWdodF9yZWdzW10gPSB7Cj4gCVJLSVNQMV9DSUZfSVNQX0hJU1RfV0VJ
R0hUXzAwVE8zMF9WMTAsIC4uLiB3ZWlnaHQwLTMKPiAJUktJU1AxX0NJRl9JU1BfSElTVF9XRUlH
SFRfNDBUTzIxX1YxMCwgLi4uIHdlaWdodDQtNwo+IAlSS0lTUDFfQ0lGX0lTUF9ISVNUX1dFSUdI
VF8zMVRPMTJfVjEwLCAuLi4gd2VpZ2h0OC0xMQo+IAlSS0lTUDFfQ0lGX0lTUF9ISVNUX1dFSUdI
VF8yMlRPMDNfVjEwLCAuLi4gd2VpZ2h0MTItMTUKPiAJUktJU1AxX0NJRl9JU1BfSElTVF9XRUlH
SFRfMTNUTzQzX1YxMCwgLi4uIHdlaWdodDE2LTE5Cj4gCVJLSVNQMV9DSUZfSVNQX0hJU1RfV0VJ
R0hUXzA0VE8zNF9WMTAsIC4uLiB3ZWlnaHQyMC0yMwo+IAlSS0lTUDFfQ0lGX0lTUF9ISVNUX1dF
SUdIVF80NF9WMTAsIC4uLiB3ZWlnaHQyNC0yNwo+IH07Cj4gCj4gYW5kIHllcyB0aGUgbGFzdCBz
dGVwIG9ubHkgdXNlcyAxIHZhbHVlIHRvIHdyaXRlIHRvIHRoZSByZWdpc3Rlci4KPiBCdXQgSSBn
dWVzcyBpZiB3ZSByZWFsbHkgd2FudCB0byByZWR1Y2UgdGhlIG1heCB2YWx1ZSwgd2Ugc2hvdWxk
IG1vdmUKPiB0aGF0IGxhc3QgcGFydCBpbnRvIGEgc2VwYXJhdGUgd3JpdGUsIHNvIHRoYXQgd2Ug
ZG9uJ3QgYWNjZXNzIHBhcnRzIHdlIGNsYWltCj4gdG8gbm90IGFjY2VzcyA7LSkKPiAKPj4+PiBU
aGUgdXNhZ2Ugb2YgaXQgaXMgYSBiaXQgbW9yZSBjb21wbGljYXRlZC4KPj4+PiBJdCBpcyB1c2Vk
IGluIGZ1bmN0aW9uIHJraXNwMV9oc3RfY29uZmlnLgo+Pj4KPj4+IFllYWgsIHRob3VnaCB0aGUg
Zm9yLWxvb3AgaXRlcmF0ZXMgb3ZlciA0KjcgZW50cnkgdmFsdWVzLCBzbyBzdGF5cwo+Pj4gYmVs
b3cgdGhlIFJLSVNQMV9DSUZfSVNQX0hJU1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRV9WMTAgaW4g
YWxsIGNhc2VzLgo+Pj4KPj4+Cj4+Pj4gQWN0dWFsbHkgdGhlIHJlYWwgbnVtYmVyIG9mIHdlaWdo
dCB2YWx1ZXMgYXJlIDI1ICg1eDUpIGZvciByazMzOTksCj4+Pj4gdGhlIGxhc3QgMyBhcmUgbm90
IHVzZWQuIEkgdGhpbmsgdGhhdCBpbiBvcmRlciB0byBzdXBwb3J0IGJvdGgKPj4+PiA1eDUgYW5k
IDl4OSB0aGUgY29kZSBpbiBya2lzcDEtcGFyYW1zLmMgc2hvdWxkIGNoYW5nZS4gSSdsbAo+Pj4+
IHNlbmQgYSBwYXRjaCBmaXhpbmcgaXQuCj4+Pgo+Pj4gSWYgeW91IGxvb2sgYXQgbXkgVjEyLXBh
dGNoIFswXSB0aGUgd2VpZ2h0IGhhbmRsaW5nIGlzIGRvbmUgZGlmZmVyZW50IHRoZXJlCj4+PiBh
bmQgZnJvbSB0aGUgcmVnaXN0ZXJzLCBpdCBsb29rcyBsaWtlIHRoZXkgZXhjaGFuZ2VzIHRoYXQg
cGFydCBvZiB0aGUgaXNwLgo+Pj4KPj4+IFswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1tZWRpYS8yMDIxMDEwODE5MzMxMS4zNDIzMjM2LTExLWhlaWtvQHNudGVjaC5kZS8KPj4+IHZv
aWQgcmtpc3AxX2hzdF9jb25maWdfdjEyKCkgYXMgYSBzZWFyY2ggdGVybQo+Pj4KPj4+IFsuLi5d
Cj4+Cj4+IFJpZ2h0LCB0aGVyZSBpcyBubyBuZWVkIHRvIGNoYW5nZSB0aGUgcmVsZXZhbnQgY29k
ZSBpbiBya2lzcDEtcGFyYW0uYyB3aGVuIHNldHRpbmcgdGhlCj4+IFJLSVNQMV9DSUZfSVNQX0hJ
U1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRSB0byAyNS4KPiAKPiBvaywgc2hvdWxkIHdlIGFkZCBh
IDR0aCBwYXRjaCBmaXhpbmcgdGhhdCBhbmQgbW92aW5nIHRoZSBsYXN0IHdyaXRlIG91dCBvZiB0
aGUgbG9vcD8KCkkgdGhpbmsgY2hhbmdpbmcgdGhlIHJlbGF0ZWQgY29kZSBpbiB0aGUgcmtpc3Ax
LXBhcmFtcy5jIGNhbiBiZSBkb25lIGxhdGVyIGluIGEgc2VwYXJhdGUgcGF0Y2guCkkgdGhpbmsg
eW91IGNhbiBjaGFuZ2UgaXQgdG8gMjUgaW4gdGhlIHNhbWUgcGF0Y2ggdGhhdCBhZGRzIFYxMiBz
dXBwb3J0IGFuZCB3cml0ZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UKdGhhdCBiZWNhdXNlIHRoZSBh
cnJheSBzaXplIGlzIG5vdyA4MSwgdGhlcmUgaXMgbm8gcG9pbnQgZGVmaW5pbmcgdGhlIGdyaWQg
c2l6ZSBmb3IgVjEwIHRvIDI4CmFuZCBpbiBhZGRpdGlvbiBkb2N1bWVudGluZyB0aGF0IHRoZSBs
YXN0IDMgdmFsdWVzIGFyZSBub3QgdXNlZC4KClRoYW5rcywKRGFmbmEKCj4gCj4gCj4gSGVpa28K
PiAKPj4+Pj4gQEAgLTg2Miw4ICs4OTgsMTYgQEAgc3RydWN0IHJraXNwMV9jaWZfaXNwX2FmX3N0
YXQgewo+Pj4+PiAgICAgICoKPj4+Pj4gICAgICAqIEBoaXN0X2JpbnM6IG1lYXN1cmVkIGJpbiBj
b3VudGVycwo+Pj4+PiAgICAgICoKPj4+Pj4gLSAqIE1lYXN1cmVtZW50IHdpbmRvdyBkaXZpZGVk
IGludG8gMTYgc3ViLXdpbmRvd3MsIHNldAo+Pj4+PiAtICogd2l0aCBJU1BfSElTVF9YWFgKPj4+
Pj4gKyAqIE1lYXN1cmVtZW50IHdpbmRvdyBkaXZpZGVkIGludG8gMTYgc3ViLXdpbmRvd3MgZm9y
IFYxMC9WMTAKPj4+Pj4gKyAqIGFuZCAzMiBzdWItd2luZG93cyBmb3IgVjEyL1YxMywgc2V0IHdp
dGggSVNQX0hJU1RfWFhYCj4+Pj4KPj4+PiBJdCBpcyBhY3R1YWxseSBub3Qgd2luZG93cyBidXQg
aGlzdG9ncmFtIGJpbnMuIENvdWxkIHlvdSBjaGFuZ2UgaXQgdG86Cj4+Pj4gIlRoZSBoaXN0b2dy
YW0gdmFsdWVzIGRpdmlkZWQgaW50byAxNiBiaW5zIGZvciBWMTAvVjExIGFuZCAzMiBiaW5zCj4+
Pj4gZm9yIFYxMi9WMTMuIEl0IGlzIGNvbmZpZ3VyZWQgd2l0aGluIHRoZSBzdHJ1Y3Qgcmtpc3Ax
X2NpZl9pc3BfaHN0X2NvbmZpZy4KPj4+Cj4+PiBJJ3ZlIGNoYW5nZWQgdGhpcyBsaWtlIHlvdXIg
c3VnZ2VzdGlvbnMgYW5kIHdpbGwgZ2l2ZSBhIGJpdCBvZiB0aW1lIGZvcgo+Pj4gdGhlIHN0dWZm
IGFib3ZlLiBCdXQgSSBndWVzcyBJIGNhbiBzZW5kIGEgdjUgc29tZSB0aW1lIHRvbW9ycm93Pwo+
Pj4KPj4+Cj4+PiBUaGFua3MgZm9yIHlvdXIgaW5wdXQKPj4+IEhlaWtvCj4+Pgo+Pj4KPj4KPiAK
PiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
