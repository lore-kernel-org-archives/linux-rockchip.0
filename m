Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31E05EDF158
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Feb 2026 12:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuYlTooWv9B1V+7ermA8sBwaDrsAuuEG55mOpKrJ9/U=; b=RAW8fglGBC6hic
	Iy6cFYlIyfN1bMaMIbnc8GMsrO8fLZ1b2/1VsjbiqfTw0yVHEqbSo7C4oRVjWwVAHkIYsJHRTbbFx
	xWUlI/rKVhI4f9ovrXU7FDutkywef/IxHxKlT75pphYCigsZYNp31DKwBAXXfevAlnfQNOjJZjgS/
	nRHFHxFfQ/PBcrRyaUq43f7XXfs3xf5swxSZdDnxKyL1HPPWkbROUS30m00S6kAHC9LDXR1ZcTKF3
	RNF190C++qv3DBNtiP0kBDWdLDRHmTurzKzwg0LZluibCbc96RNIPJmma1o2KqleG/mDKPr//bHK+
	WrQuQif0zGca8HXeKC8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqsZ1-00000003SfO-3P2t;
	Fri, 13 Feb 2026 12:46:27 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqsYz-00000003Sf3-1nO0
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Feb 2026 12:46:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1770986779; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=eRqEHUu6cX6Lyc1t6SMLfFccyojxkiD/lnfxg07cPsxRLFo+JtM7nOjOOohRWtsH1atzu8HmBi+8EIX5ZEcYYkc2BCFAbkaQNvpU8Ixze/mGC9Zh32pPYySr8pAwGS3o6wLIKUGdfi4Tcln38OlofFE+M+3Aql4Nb/tYqKsQ3Fs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1770986779; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4DG1L87kErUXJrKvSMCQJ+WEeY3HjwLz3JfGGAnE+K0=; 
	b=Sc3lUmqFcYzW5h9Ocos2vVw+DLVdzoVPjqezqMiAzaVpzB1FXxAa/WeD0mGth2b6lOLMlD/XaDwTwPtI9l25jw0dUTqEsjg4urL2LlnK1GndDsiDclNWBXjiMqCfdae50vKZAvStJdpkIn9okvk2fbEuhrDF24gbfXCKZC+LUgw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1770986779;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4DG1L87kErUXJrKvSMCQJ+WEeY3HjwLz3JfGGAnE+K0=;
	b=TXpqgEUSweghW1v7LmJhuCbB+fkmaOL6BC1iKC4n3T8mnOq/QsHphVC+vcel8eLo
	qSX46ABByrUCWYLPXbqvqymT/MB5XypCHLWb1gXOlXR75JVl3cR0qTakTkDkr6BSIcQ
	bTOJMEEjp8+TgD02by32VSRRLzCdMGHbf14q6jrc=
Received: by mx.zohomail.com with SMTPS id 177098677813555.01548820549135;
	Fri, 13 Feb 2026 04:46:18 -0800 (PST)
Message-ID: <476df663-2391-46ef-a5ae-2000bb418d73@collabora.com>
Date: Fri, 13 Feb 2026 15:46:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: hdmirx: snps, rk: Fix EDID injection with proper
 HPD toggle on RK3588
To: Ross Cawston <ross@r-sc.ca>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 ezequiel@collabora.com, benjamin.gaignard@collabora.com
References: <20260209061654.54757-1-ross@r-sc.ca>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20260209061654.54757-1-ross@r-sc.ca>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_044625_533401_5565F56B 
X-CRM114-Status: GOOD (  17.95  )
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

T24gMi85LzI2IDA5OjE2LCBSb3NzIENhd3N0b24gd3JvdGU6Cj4gVGhlIGV4aXN0aW5nIFZJRElP
Q19TX0VESUQgaW1wbGVtZW50YXRpb24gd3JpdGVzIEVESUQgZGF0YSBidXQgZG9lcyBub3QKPiBw
cm9wZXJseSB0cmlnZ2VyIHNvdXJjZSByZW5lZ290aWF0aW9uIG9uIFJLMzU4OCBib2FyZHMuIFRo
aXMgcmVzdWx0cyBpbgo+IG5vIHZpc2libGUgY2hhbmdlIHRvIHRoZSBzb3VyY2UgZGV2aWNlIGRl
c3BpdGUgdGhlIGlvY3RsIHN1Y2NlZWRpbmcuCj4gCj4gRXZlbiByZS1wbHVnZ2luZyB0aGUgSERN
SSBjYWJsZSBkb2VzIG5vdCB0cmlnZ2VyIHJlbmVnb3RpYXRpb24gb24gcHJldmlvdXMKPiB2ZXJz
aW9ucyBvZiB0aGUgZHJpdmVyLiBUaGlzIHZlcnNpb24gcmVsaWFibHkgdHJpZ2dlcnMgcmVuZWdv
dGlhdGlvbiBvbgo+IEVESUQgaW5qZWN0aW9uIG9uIHRlc3RlZCBoYXJkd2FyZS4KPiAKPiBGaXgg
YnkgbWlycm9yaW5nIHRoZSB2ZW5kb3IgQlNQIGJlaGF2aW9yOgo+IC0gRGlzYWJsZSBIRE1JIGFu
ZCBETUEgSVJRcyB0byBhdm9pZCByYWNlcy4KPiAtIFNpbXVsYXRlIHBsdWdvdXQgaWYgNVYgcG93
ZXIgaXMgcHJlc2VudC4KPiAtIFRvZ2dsZSBIUEQgbG93IGJlZm9yZSB3cml0ZS4KPiAtIFNjaGVk
dWxlIGEgZGVsYXllZCBob3RwbHVnIHdvcmtxdWV1ZSAoMTAwMG1zKSB0byByZS1lbmFibGUgSFBE
IGFuZAo+ICAgZm9yY2UgcmVuZWdvdGlhdGlvbi4KPiAKPiBCdW1wIFdBSVRfU0lHTkFMX0xPQ0tf
VElNRSBmcm9tIDMwMG1zIHRvIDYwMG1zIHRvIGVuc3VyZSBsb2NrLgo+IAo+IFRoaXMgZW5zdXJl
cyBjdXN0b20gRURJRHMgdGFrZSBlZmZlY3QgcmVsaWFibHksIGFsbG93aW5nIHVzZXJzcGFjZSB0
bwo+IGZvcmNlIHNwZWNpZmljIHJlc29sdXRpb25zL3RpbWluZ3MuCj4gCj4gVGVzdGVkIG9uIE9y
YW5nZSBQaSA1IFVsdHJhIGFuZCBSYWR4YSBSb2NrIDVCIOKAlCBzb3VyY2VzIG5vdyBjb3JyZWN0
bHkKPiByZS1kZXRlY3QgYW5kIGxvY2sgdG8gdGhlIG5ldyBFRElEIG1vZGVzLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFJvc3MgQ2F3c3RvbiA8cm9zc0ByLXNjLmNhPgo+IAo+IC0tLQo+ICBkcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3N5bm9wc3lzL2hkbWlyeC9zbnBzX2hkbWlyeC5jIHwgNDMgKysrKysr
KysrKysrKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lu
b3BzeXMvaGRtaXJ4L3NucHNfaGRtaXJ4LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N5bm9w
c3lzL2hkbWlyeC9zbnBzX2hkbWlyeC5jCj4gaW5kZXggYWJjMTIzLi5kZWY0NTYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9oZG1pcngvc25wc19oZG1pcngu
Ywo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lub3BzeXMvaGRtaXJ4L3NucHNfaGRt
aXJ4LmMKPiBAQCAtODgsNiArODgsMTAgQEAKPiAgCUhETUlSWF9OVU1fUlNULAo+ICB9OwoKSGVs
bG8gUm9zcywKCkkgd2FzIGFibGUgdG8gcmVwcm9kdWNlIHRoZSBwcm9ibGVtIGFuZCBjb25maXJt
IHRoYXQgdGhpcyBwYXRjaCBmaXhlcwppdC4gV2lsbCBuZWVkIG1vcmUgdGltZSB0byB1bmRlcnN0
YW5kIHdoYXQncyBnb2luZyBvbiBhcyBwcmV0dHkgc3VyZQpFRElEIHdhcyB3b3JraW5nIHByb3Bl
cmx5IGxhc3QgdGltZSBJIHdhcyB0ZXN0aW5nIGl0LCB3aWxsIGdldCBiYWNrIHRvCnlvdSBhZnRl
ci4KCkJUVywga2VybmVsJ3Mgc291cmNlIGNvZGUgaGFzIC4vc2NyaXB0cy9nZXRfbWFpbnRhaW5l
ci5wbCB0aGF0IHlvdQpzaG91bGQgdXNlIGJlZm9yZSBzZW5kaW5nIHBhdGNoIHRvIE1MIHRvIGZp
bmQgcmVsZXZhbnQgZW1haWwgcmVjaXBpZW50cwpvZiB0aGUgcGF0Y2gsIG90aGVyd2lzZSBpdCBt
YXkgc3RheSB1bm5vdGljZWQgZm9yIGEgbG9uZyB0aW1lLgoKLS0gCkJlc3QgcmVnYXJkcywKRG1p
dHJ5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
