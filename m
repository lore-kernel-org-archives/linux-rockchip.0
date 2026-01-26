Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38BFAD13C23
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 14:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Tm+0bB3z1Fo/N+hU3Ij0K8kk/xL2EecLmiIIbVpYRo=; b=l1Urii9GqMdXTF
	SJdrRso2enhoNUbSlLDleAw7fSRQM8moDpaGGEXAxmK0MJsEGpK1a2LnQ94amseBHMCFGSNOJy+1V
	xHwkMs+73elMtyAp+V7pebIdj1AJkNePYf8y39Qlu6ZJ57KdT06f3SuZTeOK4dNuFp/yRa6E44Xie
	LWHuQpWzhS4l83DE1ZaW7CMISoUwzAtLG/qdgR6qrMd0bpByjlhKAYljTvYvgxtjsGrtOHGGb9P8Q
	3dzi127l1YsofBpvmXtcVRaogUpyJPo/0uVZp/P6fwWt1lGWzCU+FD67Iz4+v3n2RRdx7vMqpd27L
	G65Sxrn2iv3+mLrl8JDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkNs7-0000000CiZF-3W3x;
	Mon, 26 Jan 2026 14:47:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkNs4-0000000CiY6-2r48;
	Mon, 26 Jan 2026 14:47:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769438821; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=g7QZPLCFJG4diwhCtqex30R/0irfBRYPcfcikzCMvM5y+qBwyhb+JayIBxqGW7JvwAYrweeMfHk/G5Ibg7SEBUOVS6obQ0fKM0f0m2unudjrI+lgbSWaUFNCxxYK8MtngNpONm+yeI4QamIGBoYF7DvlTWH+QneTCrJVEgLD1tU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769438821; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3ssbdTUHNW+Tvz0qqW64nDulngnRtrkUBEpIXz/HKr8=; 
	b=E7q2ZLT6DX7svkaJf5hOSioRIS1KZ1HEBBDZEl7E0oQciCVRnvxb6NR2xX2su5posSyc1l9ab7qmJy8rByyRMJhWL4vEUkuT+RQcTTaoH6j9TLnCYsyYrIPZ1J/MCx5bFM96uxBxlRzm6TlFedmZ157hBfdOoNYUk0yJu/kmzOo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769438821;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=3ssbdTUHNW+Tvz0qqW64nDulngnRtrkUBEpIXz/HKr8=;
	b=IvusYAoCZolGFd1MCeYIUo9SgrSLUSraYPZ1Ar5Ng5TYTHxH822JgqW6UooSAP5H
	8AsMs1ug4g22pPboNBT9+o+63xfFDZ1PEZos7kPOMlcOKjbHx1xPVO89/lWKuXdOR4W
	dDXmu8vNI6yIEGRDlgW8WUReRXMVEGHR1ah1kEtk=
Received: by mx.zohomail.com with SMTPS id 1769438819623670.7730935133327;
	Mon, 26 Jan 2026 06:46:59 -0800 (PST)
Message-ID: <ad70a610-f5a8-4091-8f32-e5c2caee9685@collabora.com>
Date: Mon, 26 Jan 2026 15:46:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/7] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <aWZui-rn5RDPwpEO@willie-the-truck>
 <68a49f8b-178c-4fa2-b4a9-315ad602271d@collabora.com>
 <aWeTQ50DOtntcniN@willie-the-truck>
 <db0950f1-b357-47c2-9829-e33262ab456d@collabora.com>
 <aW4kb5EbxbrhTOxK@willie-the-truck>
 <b8f43fe8-3e07-4d98-a50d-817c31370710@collabora.com>
 <aXDL2JH_4RCDmAJv@willie-the-truck>
 <4b33b50f-f0c3-4db8-b394-dd2d4d6e3a55@collabora.com>
 <aXOsdlGMVzhHOrUr@willie-the-truck>
 <8fd2c508-cbe9-4050-ba02-85b22fcff10d@collabora.com>
 <aXd4CXE0fqWiKJXl@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aXd4CXE0fqWiKJXl@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_064716_775196_C12A70B4 
X-CRM114-Status: GOOD (  23.51  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDI2LzAxLzIwMjYgw6AgMTU6MTksIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gTW9u
LCBKYW4gMjYsIDIwMjYgYXQgMTA6MDM6MTlBTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IExlIDIzLzAxLzIwMjYgw6AgMTg6MTQsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4+
PiBPbiBXZWQsIEphbiAyMSwgMjAyNiBhdCAwMjo1MDoxOFBNICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPj4+PiBMZSAyMS8wMS8yMDI2IMOgIDEzOjUxLCBXaWxsIERlYWNvbiBhIMOp
Y3JpdMKgOgo+Pj4+PiBPbiBNb24sIEphbiAxOSwgMjAyNiBhdCAwMzowMzo0NFBNICswMTAwLCBC
ZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+Pj4+Pj4+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IGlvbW11X29wcyB2c2lfaW9tbXVfb3BzID0gewo+Pj4+Pj4+Pj4+Pj4gKwkuaWRlbnRpdHlfZG9t
YWluID0gJnZzaV9pZGVudGl0eV9kb21haW4sCj4+Pj4+Pj4+Pj4+PiArCS5yZWxlYXNlX2RvbWFp
biA9ICZ2c2lfaWRlbnRpdHlfZG9tYWluLAo+Pj4+Pj4+Pj4+Pj4gKwkuZG9tYWluX2FsbG9jX3Bh
Z2luZyA9IHZzaV9pb21tdV9kb21haW5fYWxsb2NfcGFnaW5nLAo+Pj4+Pj4+Pj4+Pj4gKwkub2Zf
eGxhdGUgPSB2c2lfaW9tbXVfb2ZfeGxhdGUsCj4+Pj4+Pj4+Pj4+PiArCS5wcm9iZV9kZXZpY2Ug
PSB2c2lfaW9tbXVfcHJvYmVfZGV2aWNlLAo+Pj4+Pj4+Pj4+Pj4gKwkucmVsZWFzZV9kZXZpY2Ug
PSB2c2lfaW9tbXVfcmVsZWFzZV9kZXZpY2UsCj4+Pj4+Pj4+Pj4+PiArCS5kZXZpY2VfZ3JvdXAg
PSBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAsCj4+Pj4+Pj4+Pj4+PiArCS5vd25lciA9IFRI
SVNfTU9EVUxFLAo+Pj4+Pj4+Pj4+Pj4gKwkuZGVmYXVsdF9kb21haW5fb3BzID0gJihjb25zdCBz
dHJ1Y3QgaW9tbXVfZG9tYWluX29wcykgewo+Pj4+Pj4+Pj4+Pj4gKwkJLmF0dGFjaF9kZXYJCT0g
dnNpX2lvbW11X2F0dGFjaF9kZXZpY2UsCj4+Pj4+Pj4+Pj4+PiArCQkubWFwX3BhZ2VzCQk9IHZz
aV9pb21tdV9tYXAsCj4+Pj4+Pj4+Pj4+PiArCQkudW5tYXBfcGFnZXMJCT0gdnNpX2lvbW11X3Vu
bWFwLAo+Pj4+Pj4+Pj4+Pj4gKwkJLmZsdXNoX2lvdGxiX2FsbAk9IHZzaV9pb21tdV9mbHVzaF90
bGJfYWxsLAo+Pj4+Pj4+Pj4+PiBUaGlzIGhhcyBubyBjYWxsZXJzIGFuZCBzbyB5b3VyIHVubWFw
IHJvdXRpbmUgYXBwZWFycyB0byBiZSBicm9rZW4uCj4+Pj4+Pj4+Pj4gSXQgaXMgYSBsZWZ0b3Zl
ciBvZiBwcmV2aW91cyBhdHRlbXB0IHRvIGFsbG93IHZpZGVvIGRlY29kZXIgdG8gY2xlYW4vZmx1
c2gKPj4+Pj4+Pj4+PiB0aGUgaW9tbXUgYnkgdXNpbmcgYSBmdW5jdGlvbiBmcm9tIHRoZSBBUEku
Cj4+Pj4+Pj4+Pj4gTm93IGl0IGlzIHVzaW5nIHZzaV9pb21tdV9yZXN0b3JlX2N0eCgpLgo+Pj4+
Pj4+Pj4+IEkgd2hpbGUgcmVtb3ZlIGl0IGluIHZlcnNpb24gMTIuCj4+Pj4+Pj4+PiBEb24ndCB5
b3Ugc3RpbGwgbmVlZCBzb21lIGludmFsaWRhdGlvbiBvbiB0aGUgdW5tYXAgcGF0aD8KPj4+Pj4+
Pj4gSW4gdnNpX2lvbW11X3VubWFwX2lvdmEoKSBwYWdlIGlzIGludmFsaWRlZCBieSBjYWxsaW5n
IHZzaV9ta19wdGVfaW52YWxpZCgpLgo+Pj4+Pj4+IEJ1dCB0aGF0IGp1c3Qgd3JpdGVzIGFuIGlu
dmFsaWQgZGVzY3JpcHRvciBhbmQgZG9lc24ndCBhcHBlYXIgdG8gaW52YWxpZGF0ZQo+Pj4+Pj4+
IHRoZSBUTEIgYXQgYWxsLgo+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoYXQgY2xlYXIgQklUKDApIHNvIHRo
ZSBoYXJkd2FyZSBrbm93cyB0aGUgcGFnZSBpcyBpbnZhbGlkLgo+Pj4+Pj4+PiBEbyBJIGhhdmUg
bWlzcyBzb21ldGhpbmcgaGVyZSA/Cj4+Pj4+Pj4gWWVzLCB0aGUgVExCIHN0cnVjdHVyZSBuZWVk
cyB0byBiZSBpbnZhbGlkYXRlZCBzbyB0aGF0IHRoZSBwYWdlLXRhYmxlCj4+Pj4+Pj4gd2Fsa2Vy
IHNlZXMgdGhlIG5ldyB2YWx1ZSB0aGF0IHlvdSBoYXZlIHdyaXR0ZW4gaW4gbWVtb3J5Lgo+Pj4+
Pj4+Cj4+Pj4+Pj4gVGhlIHJvY2tjaGlwIGRyaXZlciBnZXRzIHRoaXMgY29ycmVjdC4uLgo+Pj4+
Pj4gUm9ja2NoaXAgaGFyZHdhcmUgaGF2ZSBhIFpBUF9PTkVfTElORSByZWdpc3RlciB3aGljaCBk
aWRuJ3QgZXhpc3Qgb24gVmVyaXNpbGljb24KPj4+Pj4+IGhhcmR3YXJlLgo+Pj4+PiBQcmVzdW1h
Ymx5IHlvdSBoYXZlIHNvbWUgc29ydCBvZiBWZXJpc2lsaWNvbiBkYXRhc2hlZXQgb3IgZG93bnN0
cmVhbSBkcml2ZXIKPj4+Pj4gZnJvbSB3aGljaCB5b3UgY2FuIGluZmVyIHRoZSBUTEIgaW52YWxp
ZGF0aW9uIHJ1bmVzPwo+Pj4+IEkgaGF2ZSBvbmx5IHRoaXMgZG93bnN0cmVhbSBkcml2ZXI6Cj4+
Pj4gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9ibG9iL2RldmVsb3At
Ni4xL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUtYXYxZC5jCj4+Pj4gTm8gZGF0YXNoZWV0
Li4uCj4+Pj4KPj4+Pj4+IEkgaGF2ZSB0cmllZCB0byB1c2UgVlNJX01NVV9CSVRfRkxVU0ggb24g
VlNJIGRyaXZlciBhZnRlciB1bm1hcHBpbmcgaW92YQo+Pj4+Pj4gYnV0IGl0IGRvZXNuJ3Qgd29y
ay4KPj4+Pj4gV2hhdCBkbyB5b3UgbWVhbiBieSAiZG9lc24ndCB3b3JrIj8gSWYgaXQgd29ya3Mg
d2l0aG91dCBkb2luZyBhbnkKPj4+Pj4gaW52YWxpZGF0aW9uIGF0IGFsbCwgdGhlbiBpdCdzIHZl
cnkgcGVjdWxpYXIgdGhhdCBhZGRpbmcgdGhlIGludmFsaWRhdGlvbgo+Pj4+PiB3b3VsZCBpbnRy
b2R1Y2UgaXNzdWVzLgo+Pj4+IEkgbWVhbiBWU0lfTU1VX0JJVF9GTFVTSCByZWdpc3RlciBjYW4n
dCBiZSB1c2VkIHRvIGludmFsaWQgdGhlIFRMQi4KPj4+PiBJIHRoaW5rIHRoZSBoYXJkd2FyZSBp
dGVyYXRlcyBvdmVyIHRoZSBwYWdlcyB0YWJsZXMgaW4gbWVtb3J5IGFuZAo+Pj4+IGNoZWNrIHRo
ZSB2YWxpZC9pbnZhbGlkIGJpdC4KPj4+IEkgYmV0IGl0IGRvZXNuJ3Q6IHRoYXQgd291bGQgYmUg
aG9ycmlibGUgZm9yIHBlcmZvcm1hbmNlLgo+Pj4KPj4+IFRoZSBoYXJkd2FyZSBjbGVhcmx5IGhh
cyBUTEIgaW52YWxpZGF0aW9uIHN1cHBvcnQsIGFzIHRoZSBkb3duc3RyZWFtIGRyaXZlcgo+Pj4g
dGhhdCB5b3UgbGlua2VkIGFib3ZlIGltcGxlbWVudHMgYXYxX2lvbW11X2ZsdXNoX3RsYl9hbGwo
KSB0byBwb2tlIGl0Lgo+Pj4gSWYgdGhlIGhhcmR3YXJlIGhhcyBhIFRMQiwgdGhlbiB1bm1hcHBp
bmcgYSBwYWdlLXRhYmxlIG1lYW5zIHlvdSBuZWVkIHRvOgo+Pj4KPj4+IDEuIENsZWFyIHRoZSB2
YWxpZCBiaXQgZnJvbSB0aGUgZGVzY3JpcHRvciBpbiBtZW1vcnkKPj4+IDIuIEhhdmUgc29tZSBz
b3J0IG9mIG1lbW9yeSBiYXJyaWVyCj4+PiAzLiBJbnZhbGlkYXRlIHRoZSBUTEIKPj4+IDQuIFdh
aXQgZm9yIHRoZSBpbnZhbGlkYXRpb24gdG8gY29tcGxldGUKPj4gVGhhdCBleGFjdGx5IHdoYXQg
SSBoYWQgdHJpZWQgdG8gZG8gYnkgY2FsbGluZyB2c2lfaW9tbXVfZmx1c2hfdGxiX2FsbCgpICht
aW51eCB0aGUgbG9jaykKPj4gYWZ0ZXIgY2FsbGluZyB2c2lfaW9tbXVfdW5tYXBfaW92YSgpIGlu
IHZzaV9pb21tdV91bm1hcCgpIGJ1dCB0aGF0IGRvZXNuJ3Qgd29yawo+PiBhbmQgZXZlbiBtYWtl
IHRoZSBzeXN0ZW0gY3Jhc2ggc29tZXRpbWVzLgo+IFRoZW4gaXQgc291bmRzIGxpa2UgeW91IGhh
dmUgc29tZSBkZWJ1Z2dpbmcgdG8gZG8uLi4KPgo+IEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIGVs
aWRlIHRoZSBUTEIgaW52YWxpZGF0aW9uIGp1c3QgYmVjYXVzZSB5b3UKPiBjb3VsZG4ndCBnZXQg
aXQgdG8gd29yay4KCkl0IGlzIHdvcmtpbmcgYnV0IG5vdCBpbiB0aGUgb3JkZXIgeW91IGV4cGVj
dC4KVExCIGludmFsaWRhdGlvbiBvY2N1cnMgYmVmb3JlIGVhY2ggZGVjb2RpbmcgZnJhbWVzIGJ5
IGNhbGxpbmcgdnNpX2lvbW11X3Jlc3RvcmVfY3R4KCkuCkFmdGVyIHRoYXQgZGVjb2RlciBtYXAg
YWxsIHRoZSBuZWVkZWQgYnVmZmVyIGFuZCBwZXJmb3JtIGRlY29kaW5nLgoKQmVuamFtaW4KCj4K
PiBXaWxsCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
