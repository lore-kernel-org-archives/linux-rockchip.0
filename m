Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E2FC3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 09:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/M7eXSxRl2ZfJH9Oex42IiF65zPXsfh7r+yDSu+NfLY=; b=S7XvRc0OVT2U9g
	bRZ9WgV0Combe0IVTMT86v4kUVQdgm/Dk5Yd+xbXDeYP277GOtMVwyIgCoamBaIruZ4LUgev1uo5/
	5/jNL6g+dLcY7zmY1/UkvHRb9Qh39VfrPLJN8Og1FEvbeJd6SktS/OMSiHfk3jngNmPqpXBlV1Opz
	4+C1qZoF5WBAXFTmUVfw1zukD6GuzJBFXadQrv0e35+rDv9FUpPFpL/DO7yvduTrAzeqllzfGkDC3
	eJop9OkapJvEz7MuiGK+qCxdZVdr2h6AKGlIanCG6XyFKt5V8d8QcDVVBEMyXGOavVdpC8Z6X0gim
	briIaD4K5TzAuPLjSujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2nwO-00000009tKL-183X;
	Thu, 10 Apr 2025 09:11:20 +0000
Received: from mail-m32120.qiye.163.com ([220.197.32.120])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2njO-00000009q1U-0tE6
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Apr 2025 08:57:56 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1160c0ad2;
	Thu, 10 Apr 2025 16:57:46 +0800 (GMT+08:00)
Message-ID: <11fa4ae4-2765-8d10-176f-602bf9d81d4b@rock-chips.com>
Date: Thu, 10 Apr 2025 16:57:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enable L0S capability
To: Niklas Cassel <cassel@kernel.org>
References: <1744248981-43371-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_eEw-l6SG-lF_7R@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <Z_eEw-l6SG-lF_7R@ryzen>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgfQlYfTksdHU8fSBgZTR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a961eeb67ce09cckunm1160c0ad2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M0k6Kxw5DTJJQzARMSEMSxoj
	HA4KFAJVSlVKTE9PSUxOT01MSUpIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhCSEo3Bg++
DKIM-Signature: a=rsa-sha256;
	b=DxzR6flkJJfZ2y5DXmXLBgdMMmPnAx1sGQbgFWd/hnsibiQy78TS4qTBKtzd/LG4GVmoZ2+YdcsgQ+IhivI7Ww+hQ0WK8IzA2to4eLsuWXLnFtR12FQNGhZBrxAvpshxBpEp2f78mWwhMfVdrdSvNjKalINLA82M+Arr7sltrKU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=KGUyqCpZlkneH9bPtD1oxyi9RUc2m083c5vFMnUGzPs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_015754_715535_2D7880BB 
X-CRM114-Status: GOOD (  24.88  )
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

5ZyoIDIwMjUvMDQvMTAg5pif5pyf5ZubIDE2OjQzLCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBI
ZWxsbyBTaGF3biwKPiAKPiBPbiBUaHUsIEFwciAxMCwgMjAyNSBhdCAwOTozNjoyMUFNICswODAw
LCBTaGF3biBMaW4gd3JvdGU6Cj4+IEwwUyBjYXBhYmlsaXR5IGlzbid0IGVuYWJsZWQgb24gYWxs
IFNvQ3MgYnkgZGVmYXVsdCwgc28gZW5hYmxpbmcgaXQKPj4gaW4gb3JkZXIgdG8gbWFrZSBBU1BN
IEwwUyB3b3JrIG9uIFJvY2tjaGlwIHBsYXRmb3Jtcy4gV2UgaGF2ZSBiZWVuCj4+IHRlc3Rpbmcg
aXQgZm9yIHF1aXRlIGEgbG9uZyB0aW1lIGFuZCB0aGUgZGVmYXVsdCBGVFMgbnVtYmVyIHByb3Zp
ZGVkCj4+IGJ5IERXQyBjb3JlIGlzIGJyb2tlbiBzaW5jZSBpdCBmaXRzIG9ubHkgZm9yIERXQyBQ
SFkgSVAgYnV0IG5vdCBmb3IKPj4gb3RoZXIgdHlwZXMgb2YgUEhZIElQIGZyb20gb3RoZXIgdmVu
ZG9ycy4KPiAKPiBJZiB3ZSB0YWtlIHRoZSByazM1ODggU29DIGZvciBleGFtcGxlLAo+IHNvbWUg
UENJZSBjb250cm9sbGVycyB1c2UgUEhZOgo+IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1uYW5lbmctY29tYnBoeS5jCj4gc29tZSBQQ0llIGNvbnRyb2xsZXJzIHVzZSBQSFk6Cj4g
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNucHMtcGNpZTMuYwo+IAo+IFRoaXMg
c2Vjb25kIFBIWSBpcyBvYnZpb3VzbHkgYSBTeW5vcHN5cyBQSFkuCj4gCj4gU28sIEkgdGhpbmsg
dGhlIGNvbW1pdCBtZXNzYWdlIGlzIGEgYml0IGNvbmZ1c2luZy9taXNsZWFkaW5nLAo+IHNpbmNl
IElNTyB0aGUgc2Vjb25kIFBIWSBkcml2ZXIgaXMgZm9yIGEgRFdDIFBIWSBJUC4KPiAKPiBJcyB0
aGlzIE5fRlRTIHZhbHVlIGNvcnJlY3QgZm9yIGJvdGggb2YgdGhlc2UgUEhZcz8KCnllcywgdGhl
IHZhdWxlIGlzIFBIWSBkZXBlbmRzLCBidXQgd2UgZG9uJ3Qga25vdyB3aGljaCBQSFkgaXMKdXNl
ZCBjdXJyZW50bHkuIFNvIHRoZSBzYWZlc3Qgb25lIGlzIDI1NSB3aGljaCBpcyB0aGUgbWF4IGRl
ZmluZWQKaW4gc3BlYywgc2VlbXMgd29yayBmaW5lIGZvciBib3RoIHVuZGVyIG1hc3NpdmUgdGVz
dC4KCj4gCj4gCj4gSGF2aW5nIHRoaXMgY29kZSBpbiAtPnN0YXJ0X2xpbmsoKSBsb29rcyBpbmNv
cnJlY3QuCj4gCj4gcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoKSwgY2FsbHMgZHdfcGNpZV9o
b3N0X2luaXQoKS4KPiAKPiBkd19wY2llX2hvc3RfaW5pdCgpIGZpcnN0IGNhbGxzIGR3X3BjaWVf
c2V0dXBfcmMoKSwgd2hpY2ggY2FsbHMgZHdfcGNpZV9zZXR1cCgpLgo+IGR3X3BjaWVfc2V0dXAo
KSB3aWxsIHdyaXRlIHBjaS0+bl9mdHNbMF0gLyBwY2ktPm5fZnRzWzFdLgo+IAo+IGR3X3BjaWVf
aG9zdF9pbml0KCkgdGhlbiBjYWxscyBkd19wY2llX3N0YXJ0X2xpbmsoKQo+ICh3aGljaCBjYWxs
cyAtPnN0YXJ0X2xpbmsoKSkuCj4gCj4gU28sIHNldHRpbmcgcGNpLT5uX2Z0c1swXSAvIHBjaS0+
bl9mdHNbMV0gaW4gLT5zdGFydF9saW5rKCkgaXMgdGh1cyB0b28gbGF0ZS4KPiAKCk9vcHMsIEkg
ZGlkIG1vdmUgbl9mdHMgYSBiaXQgYWZ0ZXJ3YXJkIGFmdGVyIHRlc3RpbmcsIGluIG9yZGVyIHRv
IGxvb2sKbW9yZSByZWFzb25hYmxlIHVudGlsIHdlIGVuYWJsZSBMMFMgY2FwYWJpbGl0eS4gTGV0
IG1lIHNlZSBob3cgdG8gZml4Cml0LgoKVGhhbm5rcyBmb3IgdGhlIHJldmlldy4KCj4gCj4gS2lu
ZCByZWdhcmRzLAo+IE5pa2xhcwo+IAo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4g
PHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+ICAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMTQgKysrKysrKysrKysrKysKPj4gICAx
IGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4+IGluZGV4IDIxZGM5OWMuLjU2YWNmZWEg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2No
aXAuYwo+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlw
LmMKPj4gQEAgLTE4NSw2ICsxODUsMjAgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2xpbmtf
dXAoc3RydWN0IGR3X3BjaWUgKnBjaSkKPj4gICBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfc3Rh
cnRfbGluayhzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+PiAgIHsKPj4gICAJc3RydWN0IHJvY2tjaGlw
X3BjaWUgKnJvY2tjaGlwID0gdG9fcm9ja2NoaXBfcGNpZShwY2kpOwo+PiArCXUzMiBjYXAsIGxu
a2NhcDsKPj4gKwo+PiArCS8qIEVuYWJsZSBMMFMgY2FwYWJpbGl0eSBmb3IgYWxsIFNvQ3MgKi8K
Pj4gKwljYXAgPSBkd19wY2llX2ZpbmRfY2FwYWJpbGl0eShwY2ksIFBDSV9DQVBfSURfRVhQKTsK
Pj4gKwlpZiAoY2FwKSB7Cj4+ICsJCS8qIERlZmF1bHQgZnRzIG51bWJlcigyMTApIGlzIGJyb2tl
biwgb3ZlcnJpZGUgaXQgKi8KPj4gKwkJcGNpLT5uX2Z0c1swXSA9IDI1NTsgLyogR2VuMSAqLwo+
PiArCQlwY2ktPm5fZnRzWzFdID0gMjU1OyAvKiBHZW4yKyAqLwo+PiArCQlsbmtjYXAgPSBkd19w
Y2llX3JlYWRsX2RiaShwY2ksIGNhcCArIFBDSV9FWFBfTE5LQ0FQKTsKPj4gKwkJbG5rY2FwIHw9
IFBDSV9FWFBfTE5LQ0FQX0FTUE1fTDBTOwo+PiArCQlkd19wY2llX2RiaV9yb193cl9lbihwY2kp
Owo+PiArCQlkd19wY2llX3dyaXRlbF9kYmkocGNpLCBjYXAgKyBQQ0lfRVhQX0xOS0NBUCwgbG5r
Y2FwKTsKPj4gKwkJZHdfcGNpZV9kYmlfcm9fd3JfZGlzKHBjaSk7Cj4+ICsJfQo+PiAgIAo+PiAg
IAkvKiBSZXNldCBkZXZpY2UgKi8KPj4gICAJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHJvY2tj
aGlwLT5yc3RfZ3BpbywgMCk7Cj4+IC0tIAo+PiAyLjcuNAo+Pgo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
