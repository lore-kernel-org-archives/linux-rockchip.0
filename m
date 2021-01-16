Return-Path: <SRS0=CLqi=GT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1085C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jan 2021 09:06:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 674A423A56
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Jan 2021 09:06:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 674A423A56
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hhlMxNM6yg3+60tdy03BbYc8M24GLHYbSinNpkVs/iQ=; b=gHaJcZ5rn0HnBjKCddDZsoSTX
	NV3S9fHBvSN6E8fA1D8MR+pTjZcQ6WvdaSeDEC1YLlrQB9Pd9DMFHtiyfJqCgnMOrd/tqa8Pb2XSZ
	XhHhyQkWoBM6co0P9xY75FnO1UU4yBdwYQtoPibAI5PkrwGryvBSumzgAl2SeXSgVcBlwDvptIkI5
	n3J/mk/3uMQDOMJdMDwUNOZSe0C0mCVMOAS3UlL74BYbV8nd/KYRNfNQXWIO3ZYItiBFgBJrotZYf
	R9TW9xOhFG2QeQdOAeAAR6XKOA2VosF21oNxDOHySTtGMIl7nUTaa23hYcvi7ymN/GLdAKYCEv3ni
	VfAQgJkWA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0hWl-0007rh-8w; Sat, 16 Jan 2021 09:05:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0hWi-0007rJ-KX
 for linux-rockchip@lists.infradead.org; Sat, 16 Jan 2021 09:05:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 637CE1F460B4
Subject: Re: [PATCH v4 3/3] media: rockchip: rkisp1: extend uapi array sizes
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
References: <20210115163829.217131-1-heiko@sntech.de>
 <20210115163829.217131-4-heiko@sntech.de>
 <6a1a7cb2-7c37-6cbc-43e7-45e5b0b80e21@collabora.com>
 <1739328.QCnGb9OGeP@diego>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <06d42f41-d570-7327-daca-40a52978d4f9@collabora.com>
Date: Sat, 16 Jan 2021 10:05:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1739328.QCnGb9OGeP@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210116_040544_836509_6FFE2C2E 
X-CRM114-Status: GOOD (  24.50  )
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

CgpBbSAxNi4wMS4yMSB1bSAwMDo1MiBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+IEhpIERhZm5h
LAo+IAo+IEFtIEZyZWl0YWcsIDE1LiBKYW51YXIgMjAyMSwgMTg6NDE6MDYgQ0VUIHNjaHJpZWIg
RGFmbmEgSGlyc2NoZmVsZDoKPj4KPj4gQW0gMTUuMDEuMjEgdW0gMTc6Mzggc2NocmllYiBIZWlr
byBTdHVlYm5lcjoKPj4+IEZyb206IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0aGVv
YnJvbWEtc3lzdGVtcy5jb20+Cj4+Pgo+Pj4gTGF0ZXIgdmFyaWFudHMgb2YgdGhlIHJraXNwMSBi
bG9jayB1c2UgbW9yZSBlbnRyaWVzIGluIHNvbWUgYXJyYXlzOgo+Pj4KPj4+IFJLSVNQMV9DSUZf
SVNQX0FFX01FQU5fTUFYICAgICAgICAgICAgICAgICAyNSAtPiA4MQo+Pj4gUktJU1AxX0NJRl9J
U1BfSElTVF9CSU5fTl9NQVggICAgICAgICAgICAgIDE2IC0+IDMyCj4+PiBSS0lTUDFfQ0lGX0lT
UF9HQU1NQV9PVVRfTUFYX1NBTVBMRVMgICAgICAgMTcgLT4gMzQKPj4+IFJLSVNQMV9DSUZfSVNQ
X0hJU1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRSAyOCAtPiA4MQo+Pgo+PiBJIHNlZSB5b3UgZGlk
bid0IGNoYW5nZSB0aGUgdmFsdWUgZm9yIHRoYXQgZGVmaW5lLgo+IAo+IEluIHRoZSBiZWxvdyBw
YXRjaCBJIGZpbmQKPiAKPiBAQCAtMTAzLDcgKzExMSw5IEBACj4gKiBIaXN0b2dyYW0gY2FsY3Vs
YXRpb24KPiAqLwo+IC8qIExhc3QgMyB2YWx1ZXMgdW51c2VkLiAqLwo+IC0jZGVmaW5lIFJLSVNQ
MV9DSUZfSVNQX0hJU1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRSAyOAo+ICsjZGVmaW5lIFJLSVNQ
MV9DSUZfSVNQX0hJU1RPR1JBTV9XRUlHSFRfR1JJRFNfU0laRV9WMTAgMjgKPiArI2RlZmluZSBS
S0lTUDFfQ0lGX0lTUF9ISVNUT0dSQU1fV0VJR0hUX0dSSURTX1NJWkVfVjEyIDgxCj4gKyNkZWZp
bmUgUktJU1AxX0NJRl9JU1BfSElTVE9HUkFNX1dFSUdIVF9HUklEU19TSVpFICAgICBSS0lTUDFf
Q0lGX0lTUF9ISVNUT0dSQU1fV0VJR0hUX0dSSURTX1NJWkVfVjEyCj4gCj4gc28gSSdtIG5vdCBz
dXJlIEkgdW5kZXJzdGFuZCB3aGF0IHlvdSBtZWFuIGV4Y2VwdCB0aGlzLgoKT3BwcywgSSBzb21l
aG93IG1pc3NlZCB0aGF0LgpCdXQgbm93IHNpbmNlIHdlIGhhdmUgODEgZW50cmllcywgaXQgbWFr
ZXMgbm8gc2Vuc2UgdG8KZGVmaW5lIGl0IHRvIDI4IGZvciBWMTAgYW5kIGRvY3VtZW50aW5nICJM
YXN0IDMgdmFsdWVzIHVudXNlZCIgKHNlZSBqdXN0IGFib3ZlIHRoZSBkZWZpbml0aW9uKS4KV2Ug
Y2FuIHNldCBpdCBqdXN0IHRvIDI1LCB3ZSBoYXZlIDU2ICg4MS0yNSkgdW51c2VkIHZhbHVlcyBh
bnl3YXkuCgo+IAo+PiBUaGUgdXNhZ2Ugb2YgaXQgaXMgYSBiaXQgbW9yZSBjb21wbGljYXRlZC4K
Pj4gSXQgaXMgdXNlZCBpbiBmdW5jdGlvbiBya2lzcDFfaHN0X2NvbmZpZy4KPiAKPiBZZWFoLCB0
aG91Z2ggdGhlIGZvci1sb29wIGl0ZXJhdGVzIG92ZXIgNCo3IGVudHJ5IHZhbHVlcywgc28gc3Rh
eXMKPiBiZWxvdyB0aGUgUktJU1AxX0NJRl9JU1BfSElTVE9HUkFNX1dFSUdIVF9HUklEU19TSVpF
X1YxMCBpbiBhbGwgY2FzZXMuCj4gCj4gCj4+IEFjdHVhbGx5IHRoZSByZWFsIG51bWJlciBvZiB3
ZWlnaHQgdmFsdWVzIGFyZSAyNSAoNXg1KSBmb3IgcmszMzk5LAo+PiB0aGUgbGFzdCAzIGFyZSBu
b3QgdXNlZC4gSSB0aGluayB0aGF0IGluIG9yZGVyIHRvIHN1cHBvcnQgYm90aAo+PiA1eDUgYW5k
IDl4OSB0aGUgY29kZSBpbiBya2lzcDEtcGFyYW1zLmMgc2hvdWxkIGNoYW5nZS4gSSdsbAo+PiBz
ZW5kIGEgcGF0Y2ggZml4aW5nIGl0Lgo+IAo+IElmIHlvdSBsb29rIGF0IG15IFYxMi1wYXRjaCBb
MF0gdGhlIHdlaWdodCBoYW5kbGluZyBpcyBkb25lIGRpZmZlcmVudCB0aGVyZQo+IGFuZCBmcm9t
IHRoZSByZWdpc3RlcnMsIGl0IGxvb2tzIGxpa2UgdGhleSBleGNoYW5nZXMgdGhhdCBwYXJ0IG9m
IHRoZSBpc3AuCj4gCj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1lZGlhLzIw
MjEwMTA4MTkzMzExLjM0MjMyMzYtMTEtaGVpa29Ac250ZWNoLmRlLwo+IHZvaWQgcmtpc3AxX2hz
dF9jb25maWdfdjEyKCkgYXMgYSBzZWFyY2ggdGVybQo+IAo+IFsuLi5dCgpSaWdodCwgdGhlcmUg
aXMgbm8gbmVlZCB0byBjaGFuZ2UgdGhlIHJlbGV2YW50IGNvZGUgaW4gcmtpc3AxLXBhcmFtLmMg
d2hlbiBzZXR0aW5nIHRoZQpSS0lTUDFfQ0lGX0lTUF9ISVNUT0dSQU1fV0VJR0hUX0dSSURTX1NJ
WkUgdG8gMjUuCgpUaGFua3MsCkRhZm5hCgo+IAo+Pj4gQEAgLTg2Miw4ICs4OTgsMTYgQEAgc3Ry
dWN0IHJraXNwMV9jaWZfaXNwX2FmX3N0YXQgewo+Pj4gICAgICoKPj4+ICAgICAqIEBoaXN0X2Jp
bnM6IG1lYXN1cmVkIGJpbiBjb3VudGVycwo+Pj4gICAgICoKPj4+IC0gKiBNZWFzdXJlbWVudCB3
aW5kb3cgZGl2aWRlZCBpbnRvIDE2IHN1Yi13aW5kb3dzLCBzZXQKPj4+IC0gKiB3aXRoIElTUF9I
SVNUX1hYWAo+Pj4gKyAqIE1lYXN1cmVtZW50IHdpbmRvdyBkaXZpZGVkIGludG8gMTYgc3ViLXdp
bmRvd3MgZm9yIFYxMC9WMTAKPj4+ICsgKiBhbmQgMzIgc3ViLXdpbmRvd3MgZm9yIFYxMi9WMTMs
IHNldCB3aXRoIElTUF9ISVNUX1hYWAo+Pgo+PiBJdCBpcyBhY3R1YWxseSBub3Qgd2luZG93cyBi
dXQgaGlzdG9ncmFtIGJpbnMuIENvdWxkIHlvdSBjaGFuZ2UgaXQgdG86Cj4+ICJUaGUgaGlzdG9n
cmFtIHZhbHVlcyBkaXZpZGVkIGludG8gMTYgYmlucyBmb3IgVjEwL1YxMSBhbmQgMzIgYmlucwo+
PiBmb3IgVjEyL1YxMy4gSXQgaXMgY29uZmlndXJlZCB3aXRoaW4gdGhlIHN0cnVjdCBya2lzcDFf
Y2lmX2lzcF9oc3RfY29uZmlnLgo+IAo+IEkndmUgY2hhbmdlZCB0aGlzIGxpa2UgeW91ciBzdWdn
ZXN0aW9ucyBhbmQgd2lsbCBnaXZlIGEgYml0IG9mIHRpbWUgZm9yCj4gdGhlIHN0dWZmIGFib3Zl
LiBCdXQgSSBndWVzcyBJIGNhbiBzZW5kIGEgdjUgc29tZSB0aW1lIHRvbW9ycm93Pwo+IAo+IAo+
IFRoYW5rcyBmb3IgeW91ciBpbnB1dAo+IEhlaWtvCj4gCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
